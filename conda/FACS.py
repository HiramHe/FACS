import sys


def shell_opts(argv):
    pass_args = []
    for arg in argv:
        pass_args.append(arg)
    print(pass_args)


def main():
    shell_opts(sys.argv[1:])


if __name__ == '__main__':
    main()
