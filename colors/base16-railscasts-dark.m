
%% Sets MATLAB GUI colors
% Base16 Railscasts (https://github.com/chriskempson/base16)
% Scheme author: Ryan Bates (http://railscasts.com)

gui00 = '0x2b2b2b';
gui01 = '0x272935';
gui02 = '0x3a4055';
gui03 = '0x5a647e';
gui04 = '0xd4cfc9';
gui05 = '0xe6e1dc';
gui06 = '0xf4f1ed';
gui07 = '0xf9f7f3';
gui08 = '0xda4939';
gui09 = '0xcc7833';
gui0A = '0xffc66d';
gui0B = '0xa5c261';
gui0C = '0x519f50';
gui0D = '0x6d9cbe';
gui0E = '0xb6b3eb';
gui0F = '0xbc9458';
hlsect = [41,42,46]/255;
if base16_opts.alternate
    alt = @(a,b) b;
else
    alt = @(a,b) a;
end

% Don't use system colors
com.mathworks.services.Prefs.setBooleanPref('ColorsUseSystem',0);

% Use autofix highlighting
com.mathworks.services.Prefs.setBooleanPref(...
    'ColorsUseMLintAutoFixBackground',1);
% Highlight current line
com.mathworks.services.Prefs.setBooleanPref(...
    'Editorhighlight-caret-row-boolean', base16_opts.highlight_line);

%% Desktop tool colors
% Text
com.mathworks.services.Prefs.setColorPref( ...
    'ColorsText', java.awt.Color.decode( gui05 ));
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsText'); 
% Background
com.mathworks.services.Prefs.setColorPref( ...
    'ColorsBackground', java.awt.Color.decode( gui00 ));
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsBackground'); 

%% MATLAB syntax hightlighting colors
% Keywords
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Keywords', java.awt.Color.decode( alt(gui0D,gui0E) ));
% Strings
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Strings', java.awt.Color.decode( alt(gui0F,gui0B) ));
% System Commands
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_SystemCommands', java.awt.Color.decode( alt(gui0A,gui0C) ));
% Comments
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Comments', java.awt.Color.decode( alt(gui0C,gui03) ));
% Unterminated Strings
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_UnterminatedStrings', java.awt.Color.decode( gui09 ));
% Syntax Errors
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Errors', java.awt.Color.decode( gui08 ));

%% MATLAB Command Window colors
% Error Text
com.mathworks.services.Prefs.setColorPref( ...
    'Color_CmdWinErrors', java.awt.Color.decode( gui08 ));
% Warning Text
com.mathworks.services.Prefs.setColorPref( ...
    'Color_CmdWinWarnings', java.awt.Color.decode( alt(gui09,gui08) ));
% Hyperlinks
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_HTML_HTMLLinks', java.awt.Color.decode( alt(gui0D,gui09) ));

%% Color analyzer colors
% Warnings
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Warnings', java.awt.Color.decode( alt(gui09,gui08) ));
% Autofix highlight
com.mathworks.services.Prefs.setColorPref( ...
    'ColorsMLintAutoFixBackground', java.awt.Color.decode( gui02 ));
com.mathworks.services.ColorPrefs.notifyColorListeners(...
    'ColorsMLintAutoFixBackground'); 

%% Variable and function colors
% Automatically Highlight
com.mathworks.services.Prefs.setColorPref( ...
    'Editor.VariableHighlighting.Color', java.awt.Color.decode( gui0D ));
% Variables with shared scope
com.mathworks.services.Prefs.setColorPref( ...
    'Editor.NonlocalVariableHighlighting.TextColor', ...
    java.awt.Color.decode( alt(gui0B, gui0C) ));

%% Section display options
% Highlight Sections
com.mathworks.services.Prefs.setColorPref( ...
    'Editorhighlight-lines', java.awt.Color(hlsect(1),hlsect(2),hlsect(3)));
% Text limit line color
com.mathworks.services.Prefs.setColorPref( ...
    'EditorRightTextLimitLineColor', java.awt.Color.decode( gui02 ));
% Current line color
com.mathworks.services.Prefs.setColorPref(... 
    'Editorhighlight-caret-row-boolean-color', ...
    java.awt.Color.decode( gui01 ));

