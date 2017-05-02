# CustomTableView
This implementation of UITableView addresses the issue faced where reusable cells with TextFields show unexpected behavior. Textfields with text input can disappear/reappear randomly when the table has more cells than can fit in the window. The reason is that the dequeueReusableCell will reuse these same cell references in other rows of the table. 

http://stackoverflow.com/questions/37652121/in-custom-prototype-cell-in-uitableview-uitextfield-value-replaces-with-other-p
