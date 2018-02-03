function setColorBy(x)
{
    var MAXIMUM_COLOR_VALUE= 256;
    var exp = Math.floor(x/MAXIMUM_COLOR_VALUE);
    var mult = Math.pow(MAXIMUM_COLOR_VALUE, exp);
    var operand = x% MAXIMUM_COLOR_VALUE;

    var color = "#" + (operand * mult+ 0xaa0000).toString(16);

    print(x, exp, mult, operand, color)

    return color
}
