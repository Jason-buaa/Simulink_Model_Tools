paraModel = bdroot;

% find LookupTable2D_blocks blocks
LookupTable_blocks = find_system(paraModel,'FindAll','on','BlockType','Lookup_n-D');

length_LookupTable_blocks = length(LookupTable_blocks);
    for i = 1:length_LookupTable_blocks
        try
            set_param(LookupTable_blocks(i),'BreakpointsForDimension1DataTypeStr',"Inherit: Inherit from 'Breakpoint data'");
            set_param(LookupTable_blocks(i),'BreakpointsForDimension2DataTypeStr',"Inherit: Inherit from 'Breakpoint data'");
        catch
            % do nothing
        end
    end