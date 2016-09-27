function base16_opts = apply_colors(scheme, ...
    base16_highlight_line, base16_alternate)
% example: apply_colors('default-dark');

if nargin < 2
    base16_highlight_line = 1;
end
if nargin < 3
    base16_alternate = 1;
end

root = fileparts(mfilename('fullpath'));
fname = fullfile(root, 'colors', ['base16-' scheme '.m']);

base16_opts.schemefile = fname;
base16_opts.highlight_line = base16_highlight_line;
base16_opts.alternate = base16_alternate;

fid = fopen(fname,'rt');
if fid < 0
    error(['Could not find color scheme ' fname]);
end
source = fread(fid,[1 inf],'*char');
fclose(fid);
eval(source);

