function setColorBy(screenWidth, x)
{
    var MAXIMUM_COLOR_VALUE = 256;

    var currentColor = Math.floor((MAXIMUM_COLOR_VALUE*x /screenWidth));

    var res = "#" + (currentColor + 0xaa0000).toString(16);

    print(currentColor, res)

    return res;
}
