#!/usr/bin/env python
import os
import sys
import re
import subprocess
import argparse

ahk_path = "D:/software/ahk/"
ahk_file = 'Hotkeys.ahk'

def push(args):
    short_string = args.short_string
    long_string = args.long_string
    print 'pushing'
    child = subprocess.Popen('echo -e ":C?*:' + short_string + '::' + long_string
            + '" >> ' + ahk_path + '/' + ahk_file, shell = True)
    child.wait()
    restart(args)
    return 0

def pop(args):
    start =args.start
    end = args.end
    if start > end:
        print "Check failed, start_index must be smaller than end_index"
        sys.exit()
    print 'poping'
    
    file = open(ahk_path + '/' + ahk_file, 'r')
    lines = file.readlines()

    child = subprocess.Popen('sed -i \'' + str(len(lines) - end) + ', ' 
            + str(len(lines) - start) + 'd\' ' 
                +  ahk_path + '/' + ahk_file, shell = True)
    child.wait()
    restart(args)
    return 0

def stack(args):
#list all map in the stack
    file = open(ahk_path + '/' + ahk_file, 'r')
    lines = file.readlines()
    for i in range(len(lines)):
        pattern = re.search(';;;;;;stack;;;;;;.*', lines[i])
        if pattern != None:
            count = 0
            for j in range(len(lines) - 1, i, -1):
                string = re.search(':C\?\*:.+::', lines[j]).group(0)
                map_string = re.search('::.*', lines[j]).group(0)
                if len(string) != 0 and len(map_string) != 0:
                    print '[' + str(count) + '] ' + string[5 : -2] + '\t-->\t' + map_string[2 : ]
                    count = count + 1
            break

def restart(args):
    print 'Restarting AutoHotkey'
    print ahk_path
    print ahk_file
    subprocess.Popen('AutoHotkey /r ' + ahk_path + '/' + ahk_file + '&', shell = True)

def argparser():
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(help = 'sub-command help')
    parser_push = subparsers.add_parser("push", help = "push a hot string")
    parser_push.add_argument("short_string", help = "short string", action = "store")
    parser_push.add_argument("long_string", help = "long string", action = "store")
    parser_push.set_defaults(func = push)
    parser_pop = subparsers.add_parser("pop", help = "pop a hot string")
    parser_pop.add_argument("-s", "--start", help = "start index to pop", 
            action = "store", type = int, default = 0)
    parser_pop.add_argument("-e", "--end", help = "end index to pop", 
            action = "store", type = int, default = 0)
    parser_pop.set_defaults(func = pop)
    parser_stack = subparsers.add_parser("stack", help = "stack ahk")
    parser_stack.set_defaults(func = stack)
    parser_restart = subparsers.add_parser("restart", help = "restart ahk")
    parser_restart.set_defaults(func = restart)

    return parser
def main():
    if os.path.exists(ahk_path) == False:
        print ahk_path, " does not exist, please set it to where your Hotkey.ahk is"
        sys.exit()
    child = subprocess.Popen("export AHK_HOME=" + ahk_path, shell = True)
    child.wait()
    parser = argparser()
    args = parser.parse_args()
    print args
    args.func(args)

if __name__ == '__main__':
    main()
