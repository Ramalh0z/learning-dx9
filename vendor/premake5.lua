project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("build/")
	objdir ("build/int/")

	files
	{
		"imgui/imconfig.h",
		"imgui/imgui.h",
		"imgui/imgui.cpp",
		"imgui/imgui_draw.cpp",
		"imgui/imgui_internal.h",
		"imgui/imgui_tables.cpp",
		"imgui/imgui_widgets.cpp",
		"imgui/imstb_rectpack.h",
		"imgui/imstb_textedit.h",
		"imgui/imstb_truetype.h",
		"imgui/imgui_demo.cpp"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Profile"
		runtime "Release"
		optimize "on"

    filter "configurations:Release"
		runtime "Release"
		optimize "on"
        symbols "off"