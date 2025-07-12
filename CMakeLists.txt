cmake_minimum_required(VERSION 3.16)

project(Qtmonkeytype-cpp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Gui Qml Quick QuickControls2 Charts )


qt_add_executable(appQtmonkeytype-cpp
    main.cpp
)

qt_add_qml_module(appQtmonkeytype-cpp
    URI Qtmonkeytype-cpp
    VERSION 1.0
    QML_FILES
        main.qml
        Components/Button.qml
        Components/PalletListModel.qml
        Components/RowButton.qml
        Components/ScrollBar.qml
        Components/SortFilterModel.qml
        Components/TextField.qml
        Fonts/Fonts.qml
        Fonts/qmldir
    RESOURCES
        Fonts/Lexend_Deca.ttf
        Fonts/Roboto_Mono.ttf
        images/logo.svg
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQtmonkeytype-cpp PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQtmonkeytype-cpp
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQtmonkeytype-cpp PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Quick
    Qt6::Qml
    Qt6::Charts
    Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appQtmonkeytype-cpp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
