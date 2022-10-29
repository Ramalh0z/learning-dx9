workspace "LearningDX9"
    configurations { "Debug", "Profile", "Release" }
    platforms { "Win64" }
    flags { "MultiProcessorCompile" }

project "App"
    kind "ConsoleApp"
    language "C++"
    --cppdialect "C++98"

    targetname "dx9app"
    targetdir "build/%{cfg.buildcfg}"

    outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

    files 
    { 
        "src/**.h",
        "src/**.cpp"
    }

    includedirs
	{
		"%{wks.location}/vendor"
	}

    links
    {
        "%{wks.location}/vendor/build/ImGui",
        "d3d9.lib"
    }

    filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		defines "DEBUG"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Profile"
		defines "PROFILE"
		runtime "Release"
		optimize "on"

include "vendor"