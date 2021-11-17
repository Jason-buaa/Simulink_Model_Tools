%------------------------------------------------------------------------------
%   Simulink scrip for show block names.
%   MATLAB version: R2017a
%   Author      : Shibo Jiang 
%   Version     : 0.2
%   Time        : 2017/11/29
%   Instructions: the blocks include MinMax,UnitDelay,Sqrt,Merge,Product,Logic
%                 ,RelationalOperator,Switch,MultiPortSwitch,Goto,From
%                 ,Terminator,ModelReference                          - 0.1
%                 Fix bugs                                            - 0.2
%------------------------------------------------------------------------------

function show_block_name_result = show_ConstantBlockName()

    paraModel = bdroot;

    % find Constant blocks
	constant_blocks = find_system(paraModel,'LookUnderMasks','functional','FindAll','on','BlockType','Constant')

    % all blocks which need hiding names
    show_name_blocks = [constant_blocks'];

    length_show_name_line = length(show_name_blocks);
    for i = 1:length_show_name_line
        try
            set_param(show_name_blocks(i),'ShowName','on')
        catch
            % do nothing
        end
    end
    % report configurate results
    show_block_name_result = 'show block name successful';
end
