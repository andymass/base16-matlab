function colordemo

if system('command -v scrot >/dev/null 2>&1')
    error('requires scrot');
end
if system('command -v wmctrl >/dev/null 2>&1')
    warning('requires wmctrl');
end

system('wmctrl -r "MATLAB R" -e 0,50,50,650,500');

[olddir, oldtl, fid] = deal([]);
try
    olddir = cd('..');
    [~,~] = mkdir('screenshots');

    fid = fopen('Home.md', 'w');

    oldtl = com.mathworks.services.Prefs.getIntegerPref('EditorRightTextLineLimit');
    com.mathworks.services.Prefs.setIntegerPref('EditorRightTextLineLimit', 40);

    cleanup = onCleanup(@() colordemo_cleanup(olddir, oldtl, fid) );
catch
    colordemo_cleanup(olddir, oldtl, fid);
end

files = dir('colors/*.m');
for ii = 1:length(files)
    file = files(ii).name;
    scheme = regexp(file, '(base16-)([\w-]+).m', 'tokens');
    for variant = 1:-1:0
        apply_colors(scheme{1}{2}, 1, variant);

        % force unfocus-focus
        figure(1); drawnow;
        system('wmctrl -R "MATLAB R"');
        pause(0.5);

        if variant
            img = [scheme{1}{:} '.png'];
            alt = [scheme{1}{2} ''];
        else
            img = [scheme{1}{:} '-var.png'];
            alt = [scheme{1}{2} ' alternate'];
        end
        system(['scrot -u screenshots/' img]);
        fprintf(fid, '## %s\n', alt);
        fprintf(fid, '![%s](wiki/screenshots/%s)\n', alt, img);
    end
end

function r = colordemo_cleanup(olddir, oldtl, fid)

if ~isempty(fid)
    fclose(fid);
end
if ~isempty(olddir)
    cd(olddir);
end
if ~isempty(oldtl)
    com.mathworks.services.Prefs.setIntegerPref('EditorRightTextLineLimit', oldtl);
end

r = 0;
