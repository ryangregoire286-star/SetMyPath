function SetPath(path)
    return Paths(path)
end

function Paths(path)
    return os.execute(path)
end

function CommandSetPaths(command)
    return command
end

function SetupWindows(isRunnable, commandPassed)
    if isRunnable then
        print(UpperString("Application is Running"))
        return SetPath(commandPassed)
    end
end

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

function ApplicationRun:Run(command)
    SetupWindows(true, command)
end

function UpperString(str)
    return string.upper(str)
end

function Run()
    print(CommandSetPaths(UpperString("Enter Path for Appliction: ")))
    local path = io.read()
    ApplicationRun:Run(CommandSetPaths("set PATH=%''" .. path));
    ApplicationRun:Print(path)
end

Run()
