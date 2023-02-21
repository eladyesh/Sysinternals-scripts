    std::ostringstream stream;
    stream << pi.dwProcessId;
    std::string cmd = std::string("handle.exe -a -p ") + stream.str() + std::string(" > output.txt");
    std::cout << cmd << std::endl;
    system(cmd.c_str());
