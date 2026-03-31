function Paths(path)
    return os.execute(path)
end

function SetupWindows(isRunnable, commandPassed)
    if isRunnable then
        print(UpperString("Application is Running"))
        return SetPath(commandPassed)
    end
end
