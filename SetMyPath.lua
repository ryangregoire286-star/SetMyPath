require "Windows-Stuff.SetWindows"
require "Globals"


ApplicationRun = {}

ApplicationRun._index = ApplicationRun

function ApplicationRun:new(value)
    local ins = setmetatable({}, ApplicationRun)
    ins.value = value
    return ins;
end

function ApplicationRun:Print(value)
    print(CommandSetPaths(UpperString("You Just Ran " .. value .. " Command")))
end

function ApplicationRun:Exsits(alreadyCreated, fileName)
    if alreadyCreated then
        local message = "Has Already been Created"
        return CommandSetPaths(UpperString(fileName .. message))
    end
end

function ApplicationRun:Reader(fileName, args)
    local file = io.open(fileName, args)
    local isCreated = ApplicationRun:Exsits(true, fileName)

    if isCreated then
        print(ApplicationRun:Exsits())
    end
end

function ApplicationRun:Run(command)
    SetupWindows(true, command)
end

function UpperString(str)
    return string.upper(str)
end

function GetArg(args)
    return args
end

function Empty(emptyMessageArgs)
    if emptyMessageArgs == "" then
        return CommandSetPaths(UpperString("Empty"))
    end
end

function Run()
    print(CommandSetPaths(UpperString("Enter Path for Appliction: ")))
    local path = io.read()

    if Empty(path) then
        print(Empty(path))
    end

    if Empty(path) ~= "" then
        local SavedPathURL = SET_PATH .. path
        ApplicationRun:Run(CommandSetPaths(SavedPathURL));
        ApplicationRun:Print(path)
    end
    ApplicationRun:Reader("main.txt", GetArg("w"))
end

Run()
