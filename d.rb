require 'Win32API'
 
require "win32/clipboard"
include Win32
 
class Win32API
    # type flag
    MB_OK               = 0
    MB_OKCANCEL         = 1
    MB_ABORTRETRYIGNORE = 2
    MB_YESNOCANCEL      = 3
    MB_YESNO            = 4
    MB_RETRYCANCEL      = 5
 
    # return values
    IDOK     = 1
    IDCANCEL = 2
    IDABORT  = 3
    IDRETRY  = 4
    IDIGNORE = 5
    IDYES    = 6
    IDNO     = 7
 
    def Win32API.message_box(text, caption = "", type = MB_OK)
        messagebox = Win32API.new('user32', 'MessageBox', %w(p p p i), 'i')
        messagebox.call(0, text, caption, type)
    end
end
 
if Win32API.message_box("copy 'hello' to Clipboard?", "hello", Win32API::MB_OKCANCEL) == Win32API::IDOK then
    Clipboard.data Clipboard::UNICODETEXT
    Clipboard.set_data "hello"
end
