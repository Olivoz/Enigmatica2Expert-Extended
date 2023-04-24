#modloaded opencomputers

/*

LostUser

https://gist.github.com/Krutoy242/1f18eaf6b262fb7ffb83c4666a93cbcc

*/

val userEEPROM = <opencomputers:storage>.withTag({"oc:data": {"oc:readonly": 0 as byte, node: {visibility: 1, buffer: 0.0},
  "oc:eeprom": [
/*Inject_js(
_.chunk(loadText('hei_bookmarks.ini')
  .match(/id:"opencomputers:storage"[^\n]+?"oc:eeprom":\[B;([-\dB,]+)\]/m)
  ?.[1].replace(/B/gi, '').split(','), 16).map(l => l.map(s => `${s.padStart(4)},`)).map((l, i) => [
  `/*${String(i * 16).padStart(4)}*`+'/ ', ...l, ...(l.length < 16 ? new Array(16 - l.length).fill('') : []),
])
)*/
/*   0*/  108, 111,  99,  97, 108,  32, 105,  61,  91,  91,  10, -92, 108, 111,  99,  97,
/*  16*/  108,  32,  65,  44,  67,  44,  69,  44,  74,  44,  75,  44,  76,  44,  77,  44,
/*  32*/   78,  44,  81,  44,  83,  44,  86,  44,  88,  44,  89,  44,  95,  44,  97,  97,
/*  48*/   44,  98,  97,  44,  99,  97,  61, 112,  97, 105, 114, 115,  44, 116, 121, 112,
/*  64*/  101,  44,  34, 108,  97, 109,  98, 100,  97,  34,  44,  34, 116,  97,  98, 108,
/*  80*/  101,  34,  44, 116, 111, 115, 116, 114, 105, 110, 103,  44,  34, 109,  97, 112,
/*  96*/    1, -23,  83,  34,  44,  95,  71,   1, -38,  81, 111, 111,   1, -13,  88,  99,
/* 112*/  111, 109, 112, 117, 116, 101, 114,  44,   3, -44,   1, -43,  83, 110, 117, 109,
/* 128*/   98,   1, -15,  80,  34,   4, -51,  88,  34,  44, 103, 101, 116, 109, 101, 116,
/* 144*/   97,   4, -31,  90,  34, 114, 101, 116, 117, 114, 110,  32,  34,  44, 115,  10,
/* 160*/  -23,   2, -69,  85, 111, 110, 101, 110, 116,  10,   3,  77, 104,  10,  79,  44,
/* 176*/   80,  44,  87,  44,  85,  44, 117,  44,  84,  61,  86,  46, 112,  97,  99, 107,
/* 192*/   44,  86,  46, 117, 110,   2,  -9,  82,  10, 100, 111,   5, -37, 107,  72,  61,
/* 208*/  123, 125, 102, 111, 114,  10,  70,  44, 120,  10, 105, 110,  10,  65,  40,  99,
/* 224*/   97,  46, 108, 105, 115, 116,  40,  41,  41,   7, -36, 102, 115,  44, 122,  61,
/* 240*/  120,  58, 115, 117,  98,  40,  49,  44,  49,  41,  58, 117, 112, 112, 101, 114,
/* 256*/   40,  41,   1,  15,  91,  46, 112, 114, 111, 120, 121,  40,  70,  41,  78,  91,
/* 272*/  120,   0,  80,  61,   2,  -5,   1, -74,  87, 122,  10, 105, 102,  10,  78,  91,
/* 288*/  115,   0,  89,  61,  61, 110, 105, 108,  10, 111, 114,  40,  72,   1, -13,  83,
/* 304*/   97, 110, 100,  35,   2,  -8,  87,  62,  35, 120,  41, 116, 104, 101, 110,   4,
/* 320*/  -34,  81, 122,  10,   2, -28,  85,  61, 120,  10, 101, 110, 100,   7,  -4,   4,
/* 336*/   65,  89, 102, 117, 110,  99, 116, 105, 111, 110,  10,  72,   1, -96,   4,  14,
/* 352*/   83,  10,  70,  58, 103,   2, 122,  84,  34,  37,  37,  34,  44,   1,  -5,   1,
/* 368*/   -7,  80,  41,  18, -49,  85,  70,  40, 120,  44, 115,  41,   1, 123,  81,  83,
/* 384*/   10,   3,-106,  95,  83,  46,  98, 101, 101, 112,  40,  49,  56,  48,  48,  44,
/* 400*/   48,  46,  53,   3, -51,  82, 101, 114, 114,   2, 103,  85,  40,  75,  40, 120,
/* 416*/   41,  41,   1,  42,  18,-120,  81, 120,  40,   3, -69,  84, 110, 111, 116,  10,
/* 432*/  115,   1,  57,  84,  10, 115,  61,  61,  77,   5,  -8,  80,  48,   3, -16,  82,
/* 448*/  126,  61, 115,   4, -97,   5,  98,  84, 102,  97, 108, 115, 101,   3,  53,   1,
/* 464*/ -124,  80,  67,   1, -62,  89,  61,  61,  34, 110, 117, 109,  98, 101, 114,  34,
/* 480*/    3,  12,   4,  39,  82, 122,  61,  75,   4, -89,  80, 122,   1, -31,  83, 105,
/* 496*/  110, 102,  34,   1, -91,   2, -11,  80,  45,   2, -12,  21, -79,   2,  27,   5,
/* 512*/ -100,  82, 116, 114, 117,   4, -99,  14,  10,  83, 115,  40, 122,  41,   4,  63,
/* 528*/   82,  66,  61,  67,   1, -12,   1,  70,  80,  66,   8,-127,   1,  65,   1, -14,
/* 544*/   80,  89,  11,  81,  80,  88,   1, -50,   9, -89,  80, 120,   1, -65,  80,  97,
/* 560*/    1,  68,  80,  49,   2,  20,  80,  48,  19, -99,  82, 122,  40,  66,   2,  72,
/* 576*/   80,  67,   1,  -7,  82, 126,  61,  74,  11,   4,  80,  75,   1, -27,   8, 107,
/* 592*/   87, 118,  44, 121,  61,  77,  44, 123, 125,  14,  92,  95, 119,  40, 110,  41,
/* 608*/  118,  61, 118,  46,  46,  40, 118,  61,  61,  77,  10,   2,-109,  80,  77,   1,
/* 624*/ -109,  86,  34,  44,  34,  41,  46,  46, 110,   3,  22,  80, 102,   1,  86,  88,
/* 640*/  110,  61,  49,  44,  35,  66,  10, 100, 111,   1, -49,   1, -88,  81,  91, 110,
/* 656*/    0,  82,  41,  41, 121,   1,  -6,  80,  61,   7,   3,   3, -38,  86,  44, 116,
/* 672*/   10, 105, 110,  10,  65,   1, 108,   1, -42,   1,  17,  83, 110, 111, 116,  10,
/* 688*/    2, -39,   3,  28,   2, -58,  80, 110,   1, -86,  88,  34,  61,  34,  46,  46,
/* 704*/   75,  40, 116,  41,   3,  21,   9,  17,  80, 118,  19,  30,  81,  66,  40,   1,
/* 720*/   69,  80,  41,   4,   8,  83, 119,  61, 123, 125,   4, 114,   1,  49,  84,  45,
/* 736*/   40,  49,  45, 118,   2,-104,  80, 119,   2, 120,   4,  84,   5,   4,  80, 119,
/* 752*/   19, -73,  86, 118,  40, 121,  44, 119,  44, 110,   5, -75,  80, 116,   5, -75,
/* 768*/   81, 105,  44,   1,  86,   2,  76,  80, 121,   2,  76,   4,-124,  83, 109,  61,
/* 784*/  119,  40,   1, -24,  80,  41,   2,  62,  80,  10,   3,  68,   1,  52,  83, 120,
/* 800*/   40, 109,  41,   3,  56,  82, 116,  91, 105,   0,  81,  61, 111,   3,  10,  83,
/* 816*/  101, 108, 115, 101,   4, -16,  80, 109,   4, -16,   8,  51,  80, 116,  19,  51,
/* 832*/   89, 121,  40, 115, 101, 108, 102,  44, 110,  44, 116,   5,  46,  81, 105,  10,
/* 848*/    2,  48, 100, 111,  61,  49,  44, 109,  97, 116, 104,  46, 109,  97, 120, 105,
/* 864*/  110, 116, 101, 103, 101, 114,  10,   1,  39,   2,-127,  81, 111, 116,   1,-121,
/* 880*/   83, 116,  40, 111,  41,   4,-124,   5,  31,  80, 105,   3,  18,   8,  97,   2,
/* 896*/   54,  81, 109,  44,   1,  50,   2,  54,   2, -99,   2,  51,  83, 105,  61, 114,
/* 912*/   40,   1, -21,  80,  41,   7,  86,  81, 105,  61,   2,-126,   1, -76,  14,  84,
/* 928*/    4, -78,  14,  84,  82, 119,  40, 110,   5,  91,  82, 116,  61,  67,   1, -12,
/* 944*/    1, 115,  83, 116,  61,  61,  34,   6,  52,  80,  34,  10, 113,  83, 116, 114,
/* 960*/  117, 101,   6, 110,   1, -37,  80,  74,   4, 107,   5,  29,  81,  61,  95,   4,
/* 976*/  -62,  82, 105,  10,  97,   2,  75,  82,  46,  95,  95,   1,   5,   1, -86,  19,
/* 992*/  -64,   9, 107,  81, 102,  97,   2,  76,  18, 103,  82, 110,  40, 116,   5, 103,
/*1008*/   83, 105,  61, 123, 125,   2,   4,  82, 111,  44, 109,   4,   4,  80, 116,   3,
/*1024*/    7,  85, 102,  10,  67,  40, 109,  41,   2, 121,   2,-113,  82, 110, 111, 116,
/*1040*/    1,  51,  81, 109,  41,   3,  79,   2, -46,  82, 114,  44, 103,   4, -46,  80,
/*1056*/  109,   3, -46,  84,  91,  35, 105,  43,  49,   0,  81,  61, 103,   4,-128,   2,
/*1072*/ -116,   6, -19,  80, 109,  15, 109,  80, 105,  19, 113,  83, 116,  40, 105,  44,
/*1088*/    1, 127,   5, 109,   1, -93,   1, 107, 104,  44,  34,  94,  34,  46,  46, 105,
/*1104*/   58, 103, 115, 117,  98,  40,  34,  46,  34,  44,  34,  37,  49,  46,  42,  34,
/*1120*/   41,   2,  82,  82, 106,  44,  99,   4,  82,  80, 111,   7,  82,  80, 106,   1,
/*1136*/   82,  80,  89,   2,  82,  80,  40,   2,  82,  81, 109,  10,   1,  44,  82,  67,
/*1152*/   40,  99,   2,  61,  80,  41,   2,  61,  88, 106,  58, 109,  97, 116,  99, 104,
/*1168*/   40, 103,   4,  59,  83, 114,  91,  35, 114,   2,  77,  80, 106,   7,  97,  88,
/*1184*/   86,  46, 115, 111, 114, 116,  40, 114,  44,   6, 107,  80,  40,   1,-101,   5,
/*1200*/  111,  88, 107,  44, 113,  61,  35, 106,  44,  35,  99,   6,  58,  83, 107,  61,
/*1216*/   61, 113,   2,-108,   1, -87,  88, 117, 112, 112, 101, 114,  40,  41,  60,  99,
/*1232*/    6, -10,   1,  97,  82, 107,  60, 113,   2,   7,  80,  41,   5,  11,  82, 114,
/*1248*/   91,  49,   0,  18,   9,  81, 105,  40,   9,  11,  83,  61, 111,  91, 109,   0,
/*1264*/    1,  54,  86, 114, 126,  61, 110, 105, 108,  10,   4,  90,   4,-109,  83, 117,
/*1280*/   40, 114,  41,   2,  89,   1,  24,  88, 109,  58, 115, 117,  98,  40,  49,  44,
/*1296*/   49,   1,  18,  82,  34,  95,  34,   3,  52,   4,  92,  81, 103,  61,   4, -28,
/*1312*/   80,  50,   5,  76,  82, 106,  61,  88,   1,  19,   1, -81,  80, 106,  14, -76,
/*1328*/   83,  66,  40,  40, 103,  10, -70,  82,  48,  34,  41,   2,  54,  81,  48,  10,
/*1344*/    1,  71,  83,  49,  44, 106,  41,   3,-107,   8,  81,  82, 103,  44, 106,   1,
/*1360*/  -90,  97, 109,  97, 116,  99, 104,  34,  40,  46,  45,  41,  40,  37, 100,  42,
/*1376*/   41,  36,  34,   2, -89,  82, 126,  61,  77,   4,  87,   4,  39,  81,  99,  61,
/*1392*/    2,  46,   3,-116,  83, 119,  40,  99,  41,  10,  61,  85,  84,  40,  99,  40,
/*1408*/   88,  40,   1, -92,   4, -93,  82, 108, 115, 101,   1,  21,  80, 103,   5, -86,
/*1424*/   84,  94,  91,  65,  45,  90,   0,  10,  51,  83,  99,  44, 107,  61,   8,  91,
/*1440*/    1,   7,  82, 111,  91,  99,   0,  84, 126,  61, 110, 105, 108,   4,  51,  81,
/*1456*/  107,  61,   2, -17,   2, -71,   3, -11,  99, 116,  40,  99,  58, 108, 111, 119,
/*1472*/  101, 114,  40,  41,  44, 111,  44, 116, 114, 117, 101,  41,   0,   2,  58,   1,
/*1488*/    1,  80, 107,  10,   1,  85,  35, 103,  61,  61,  49,  10,   2,  18,  83, 117,
/*1504*/   40, 107,  41,   1,  16,  83, 105,  40, 107,  44,   4,-104,  80,  50,   8,   7,
/*1520*/    5,  76,  81, 117,  40,   2, -89,  83, 103,  44, 111,  41,   0,   3,  74,   4,
/*1536*/   27,  92, 102, 117, 110,  99, 116, 105, 111, 110,  10, 111,  40, 109,  41,   4,
/*1552*/    7,  84, 114,  44, 103,  61, 112,   1,  73,  85, 108,  40,  95,  44, 109,  41,
/*1568*/    5,  14,  80, 114,   3,-103,  80, 103,   4,  -6,  83,  46,  95,  95, 113,   3,
/*1584*/  -91,  14, -68,  86, 109,  40, 114,  44,  46,  46,  46,   5, -72,  83, 103,  61,
/*1600*/   79,  40,   4, -72,   4, -22,   2,   6,  86, 110, 111, 116,  10, 103,  91,  49,
/*1616*/    0,   3,   8,  84,  70,  40, 103,  91,  50,   4, 115,   5,  91,  80,  80,   1,
/*1632*/   96,  80,  50,  19,  98,  80, 114,   1,  70,  80, 106,   5,  96,  84,  99,  44,
/*1648*/  107,  61,  34,   4,  42,  80,  32,   6,  64,  80,  40,   7,-119,  88,  32,  34,
/*1664*/   46,  46, 106,  46,  46,  34,  61,   1, 119,  83,  32,  34,  44, 103,   1, -11,
/*1680*/   80,  32,   1,  16,   5, -49,   7,  15,   3, -49,   5,  35,  92, 109,  40,  85,
/*1696*/   40,  99,  46,  46,  97,  97,  46,  46, 107,  44,   1,  -9,  82, 107,  44, 103,
/*1712*/    3,  56,  81,  40,  41,   3,  49,   2,  22,  18,  18,  84, 103,  40, 106,  44,
/*1728*/   99,   5,  20,  83, 107,  61,  67,  40,   6,  97,  81, 113,  10,   1,  23,  84,
/*1744*/  107,  61,  61,  89,  10,   3,  26,  82, 113,  61, 114,   2, -41,  92,  10, 111,
/*1760*/  114,  34, 107,  44, 118,  34,  41, 101, 108, 115, 101,   1, -33,  80, 119,   1,
/*1776*/  -48,   5, -32,  80, 106,   3, -94,   5,  96,  80, 113,   1,  34,  81,  61,  74,
/*1792*/   19,-112,  82, 106,  40,  99,   6,  78,   7,   8,  80, 107,   3,  87,   5,  36,
/*1808*/   82,  84,  40,  99,   3,  41,   7,  78,  81,  84,  61,  11,  17,   4,  63,  89,
/*1824*/   99,  61, 123, 125, 102, 111, 114,  10, 107,  44,   1,  86,  84, 110,  10,  65,
/*1840*/   40,  79,   4, -53,  85, 100, 111,  10,  99,  91, 107,   0,  83,  61, 117,  40,
/*1856*/  113,   3,  12,   5, 112,  80,  80,   1,-118,   2,   1,  80, 117,   8, -76,  10,
/*1872*/    9,   6, -12,  82, 113,  61, 119,   1,  97,  84, 105, 102,  40, 107, 126,   1,
/*1888*/   65,  80,  97,   1,  47,  85, 110, 111, 116,  10, 113,  41,   1,-105,  80, 111,
/*1904*/    1,  71,   3,  21,   5,  29,  80,  99,  19,  34,  82, 108,  40,  98,  16,  34,
/*1920*/   82,  97,  44, 100,   5,  75,  88, 101,  10, 105, 102,  10,  67,  40,  97,  41,
/*1936*/    2, -93,   3, -76,   1, -28,  90,  61, 100,  44,  97,  10, 101,  61, 116, 114,
/*1952*/  117, 101,  10, -82,  84,  44,  71,  61, 103,  40,   6, -57,  80, 104,   2, -57,
/*1968*/    3, 118,   4, -55,   1, -71,  80, 102,   7, -10,  83,  98,  61,  61,  76,   4,
/*1984*/  -78,  82, 104,  61, 118,   1,-110,  85, 102,  41, 101, 108, 115, 101,   4, -25,
/*2000*/   80,  69,  11, -25,  80,  44,   2,-101,   9, -30,  80,  81,   6, -55,  80, 121,
/*2016*/    1,  90,   2, 127,   2, -60,   1,  10,   5, -64,  80,  71,  22, -99,  81, 100,
/*2032*/   44,   7,  35,  82, 112,  44,  73,   6,  15,  82,  97,  91,  73,   0,   1,  63,
/*2048*/   24,-125,  18, -51,   7, -71,   6, -68,  82,  73,  40,  80,   1,  10,   4, 124,
/*2064*/    2, -75,   5, 116,  12,  25, 107, 108, 111,  99,  97, 108,  10, 112,  61, 123,
/*2080*/  125, 102, 111, 114,  10,  73,  10, 105, 110,  10,  65,  40,  97,  41, 100, 111,
/*2096*/   10, 112,   1, 125,  80,  61,   3, -59,   1,  12,  80, 112,   6,  56,   8, 118,
/*2112*/    1,   8,  80, 101,   6,  11,  87,  97,  91, 100,  37,  35,  97,  43,  49,   0,
/*2128*/    3, -97,   1, -14,   0,  84,  61, 110, 105, 108,  59,   1, -25,   3, -64,   8,
/*2144*/   57,  80,  81,   6,   5,  80, 121,   1,  57,  83, 116, 114, 117, 101,   9,  52,
/*2160*/    6,   2,  83, 112,  60,  61, 115,   1,  70,   7,  75,   9,  71,  80, 102,   7,
/*2176*/ -123,   8,  61,  81, 104,  61,   7,   4,  82,  46,  46,  46,   6,   1,  82,  97,
/*2192*/   40, 102,   3, -15,   7,   7,  11,  67,  21, -52,  82, 102,  40,  97,  19, -52,
/*2208*/   11,  75,  81, 102,  97,   1,  29,  81,  44, 102,  10, -87,  80,  71,  20, 107,
/*2224*/   82,  97,  40,  80,   1,  58,  80,  41,  18,-123,  84, 118,  40, 100,  44,  97,
/*2240*/    7, 104,  15,  50,  83, 106,  40,  97,  41,   1,-104,   1,   2,  15,  74,   1,
/*2256*/    8,  80, 101,  29,  11,   1,  14,   2, -57,   6, -90,  23, -39,  81, 100,  44,
/*2272*/    2,   9,   3,  26,  32,  22,   6,-104,  80, 112,   6,-102,  83, 112,  60,  61,
/*2288*/  115,   1,  38,   1,  64,   8, -66,   1,  52,   5, 124,  82, 117,  40, 104,   7,
/*2304*/  -89,  85, 108, 111,  99,  97, 108,  10,   6,  85,  81,  10,  98,   1,  38,   5,
/*2320*/   85,   7,  65,  81, 100,  41,   4, -37,  80, 101,   2,  34,  84, 110, 111, 116,
/*2336*/   10, 113,   7,  20,  80,  97,   7,   6,  84, 101,  61, 110,  40,  99,   8,  41,
/*2352*/   11, -28,  91, 114, 101, 112, 101,  97, 116,  10, 117, 110, 116, 105, 108,   3,
/*2368*/  -65,  84, 120,  40, 100,  40,  41,   7,  35,   7, 106,  80, 101,  14, 106, 103,
/*2384*/   97,  61, 123,  95,  95, 113,  61, 116, 114, 117, 101,  44,  95,  95, 116, 111,
/*2400*/  115, 116, 114, 105, 110, 103,  61,   7,  16,   5,  17,  88,  34,  95,  34,  46,
/*2416*/   46,  40, 113,  10,  97,   1,  21,  80,  75,   1, 123,  83, 111, 114,  34, 123,
/*2432*/    1, -18,  80, 122,   1, 112,  84,  46,  46,  34, 125,  34,   2,  19,  94,  44,
/*2448*/  125,  97,  46,  95,  95, 112, 111, 119,  61, 108,  40,  76,  41,   2, -12,  80,
/*2464*/   98,   1,  53,  83,  61,  98,  40,  69,   3, -13,  82, 100, 105, 118,   1, -25,
/*2480*/    4, -12,  83, 115, 117,  98,  61,   5, -20,  80,  10,   2, -53,  85,  99, 111,
/*2496*/  110,  99,  97, 116,   1, -56,  80,  81,   4, -56,   1,-103,   3, -32,   1, -77,
/*2512*/    3, -32,  83,  98, 120, 111, 114,   3, -49,   4, -41,   4, -20,   5, -19,   2,
/*2528*/  -68,  88, 105, 102,  10, 113,  10, 116, 104, 101, 110,   4, -78,  84,  97, 108,
/*2544*/  108,  61, 106,   1,  89,   5,   8,  86,  98,  97,  40, 123, 125,  44,  97,   3,
/*2560*/    4,   6,  38,  91,  10,  97,  58,  95,  95, 105, 110, 100, 101, 120,  40, 100,
/*2576*/    6, -40,  84, 105,  40,  99,  44, 100,  17, -38,  82, 110, 101, 119,   5, -41,
/*2592*/   88,  44, 101,  41, 114,  97, 119, 115, 101, 116,   2, -41,  84,  44, 117,  40,
/*2608*/  101,  41,  17, -84,  85, 112,  97, 105, 114, 115,  40,   6,-123,   6,-111,  84,
/*2624*/   40, 115, 101, 108, 102,   1, -63,  81, 108, 111,   1,  99,  87,  10, 102,  44,
/*2640*/   71,  61, 110, 101, 120,   2, -71,   1, -82,   5, -42,   1, -80,  80,  71,   2,
/*2656*/   92,  86,  44,  99,  44, 110, 105, 108,  10,  16,  82,  82, 108, 101, 110,   6,
/*2672*/  -87,  81,  35,  99,   3, -31,  18,  32,   4, -96,  83,  99,  61, 123, 125,   5,
/*2688*/ -106,   6,  16,  82, 107,  40, 113,   5,-125,  82, 108,  61, 113,   5, -39,  92,
/*2704*/   98,  61,  49,  10, 119, 104, 105, 108, 101,  10,  98,  60,  61,   1, -84,  81,
/*2720*/  100, 111,   1, -29,  89, 108,  58, 103, 115, 117,  98,  40,  99,  91,  98,   0,
/*2736*/   81,  91,  49,   0,  80,  44,   3,  -8,  80,  50,   0,  85,  41,  98,  61,  98,
/*2752*/   43,  49,  10,-118,   4,  94,  14,-102,  82, 113,  40, 108,   5,  28,  82,  98,
/*2768*/   61, 107,   1, -12,   5,  35,  90,  85,  40,  97,  97,  46,  46,  98,  44,  98,
/*2784*/   44, 108,   9,  89,   7,  33,  82, 108,  40,  98,   1,  64,  85,  99,  91,  35,
/*2800*/   99,  43,  49,   0,  81,  61, 123,   1, -13,  80, 125,   3,  51,  95,  40,  34,
/*2816*/  -30,-109,-112,  34,  44,  34,  32,  97, 110, 100,  32,  34,  41,   3, -16,  80,
/*2832*/  -98,   2, -16,  81, 111, 114,   6, -15,  80, -99,   2, -31,  82, 110, 111, 116,
/*2848*/    6, -31,  80, -95,   2, -47,   4,  94,   5, -50,  81,-110, -81,   1, -66,  85,
/*2864*/   40, 116, 114, 117, 101,  41,   5, -17,   2, -36,  84,  40, 102,  97, 108, 115,
/*2880*/    6, -18,  81,-120,-123,   2,-101,  87,  95,  95, 116, 114,  97, 115, 104,  61,
/*2896*/    3,-105,  87,  40,  96,  46,  43,  96,  41,  34,  44,   6,  37, 104,  40,  98,
/*2912*/   41, 102, 111, 114,  10,  97,  10, 105, 110,  10,  98,  58, 103, 109,  97, 116,
/*2928*/   99, 104,  34,  91,  94,  96,   0,  83,  43,  34, 100, 111,   1,  62,  94,  72,
/*2944*/   40,  97,  58, 115, 117,  98,  40,  49,  44,  49,  41,  41,  44,   6, -14,  82,
/*2960*/   50,  41,  41,   3,  15,   4, 111,  82,  10,  77,  10,   1,   1,   2,  56,  80,
/*2976*/   33,   2, 109,   2, 113,  92, 111,  99,  97, 108,  10,  98,  61, 117,  40,  78,
/*2992*/   41,  85,  61,   7,-108,  88,  97,  44, 100,  44, 101,  44,  46,  46,  46,   5,
/*3008*/  -33,  81, 102,  10,   4, -41,  83,  71,  61,  79,  40,   2, -22,  99, 105, 102,
/*3024*/   10,  71,  46, 110,  62,  48,  10, 116, 104, 101, 110,  10, 102,  61, 117, 123,
/*3040*/  125,   2,  99,  82, 104,  44, 112,   2,  97,  80,  65,   1,  83,   1, 108,  82,
/*3056*/  102,  91, 104,   0,  81,  61, 112,   2,-114,  80,  10,  11, -29,  80,  71,   2,
/*3072*/  -29,   1, -66,  86,  67,  40, 112,  41,  61,  61,  74,   5, -68,   1,  35,  82,
/*3088*/   73,  44,  90,   4, -63,  80, 112,   4, -63,  80,  73,   0,  81,  61,  90,   3,
/*3104*/  -63,   7,  -4,  82, 108, 115, 101,   1,-110,  80,  98,   3, -84,   4,  68,   1,
/*3120*/ -115,  84,  61, 108, 111,  97, 100,   1,  76,  86, 101,  44, 110, 105, 108,  44,
/*3136*/  102,   2,  99,  80, 112,   4, 103,   7, -29,   2,  49,   4, -29,   2, 114,  85,
/*3152*/  114, 101, 116, 117, 114, 110,   1, -37,  80,  97,   1, 101,  80,  70,   1, 122,
/*3168*/    2,  68,   3,  87,  84,  98,  46, 105,  61,  48,   5,  19,  92, 102, 117, 110,
/*3184*/   99, 116, 105, 111, 110,  10,  97,  40, 100,  41,   4,-109,  84, 101,  61,  79,
/*3200*/   40, 109,   1, -14,  80,  41,   2,  18,  87, 102,  61,  49,  44, 101,  46, 110,
/*3216*/   10,   4,  50,  82, 101,  91, 102,   0,   2, -79,  81, 119,  40,   2, -10,  80,
/*3232*/   41,   3,  43,  80,  97,   4, -12,   6,  61,   5,-119,  80, 101,   3,  44,  81,
/*3248*/   87,  61,   6, -96,   9, -94,  80, 113,   1,-106,  89, 119, 104, 105, 108, 101,
/*3264*/   10, 116, 114, 117, 101,   2, -90,   5, 117,  80,  61,   1, -75,  80,  41,   2,
/*3280*/   99,   1,  95,  81,  43,  49,   2,-112,   1,  85,  87,  37,  49,  48,  48,  61,
/*3296*/   61,  57,  57,   4,  19,  91,  98,  46, 115, 108, 101, 101, 112,  40,  48,  46,
/*3312*/   48,  53,   7,-115,   4,  43,  84, 119, 114, 105, 116, 101,   8,-112,  87,  46,
/*3328*/   46,  46,  41,  70,  40, 117, 123,   1,  -8,  81, 125,  44,   2,-105,   3,  94,
/*3344*/    5, -64,  19, 105,  87,  83,  46, 117, 112, 116, 105, 109, 101,   7, 114, 114,
/*3360*/  101,  40,  41,  43,  40, 100,  10, 111, 114,  10,  49,  41, 114, 101, 112, 101,
/*3376*/   97, 116,  10,  83,  46, 112, 117, 108, 108,  83, 105, 103, 110,  97, 108,  40,
/*3392*/  102,  45,   1, -34,  84,  41, 117, 110, 116, 105,   1,  41,  84,  40,  41,  62,
/*3408*/   61, 102,   5, 118,  80,  95,   9,   8,  80,  44,   2, 120,   6,   4,  85,  86,
/*3424*/   46, 112,  97,  99, 107,   3, 101,   1,  34,  84, 101,  46, 110,  62,  48,   4,
/*3440*/   40,   1,  20,  80, 120,   1, 117,   3,  28,  89, 114, 101, 116, 117, 114, 110,
/*3456*/   10, 101,  91,  49,   0,  83, 101, 108, 115, 101,   8, -16,  80,  50,   0,   6,
/*3472*/   14,   5,  94,  83,  44,  71,  61, 103,   1,  62,   5, -49,  82, 117,  40, 102,
/*3488*/    2,  83,  80, 100,   5,  23,  82,  97, 112, 105,  10, 121,  80, 101,   6, -39,
/*3504*/   88,  98,  46, 119, 114, 105, 116, 101,  40, 116,   2, -21,   2,  34,  81,  78,
/*3520*/   41,   3, -50,   4,   8,   1, -41,  81,  61,  82,   2,  11,  80,  68,   2, 108,
/*3536*/   82, 100,  10,  97,   1,  46,  85, 100,  46, 110,  97, 109, 101,   4,  86,  81,
/*3552*/  101,  61,   4, -14,  80,  40,   3,-102,   1,  58,  83, 110, 111, 116,  10,   3,
/*3568*/  -71,  83, 101,  61,  61,  77,   4,  50, 101,  70,  34,  78, 111,  32, 112, 114,
/*3584*/  111, 103, 114,  97, 109,  32, 100, 101, 102, 105, 110, 101, 100,  34,   9, -47,
/*3600*/   87, 115, 104, 101, 108, 108,  65, 114, 103,   3, -93,  95, 101,  58, 115, 117,
/*3616*/   98,  40,  49,  44,  49,  41, 126,  61,  34,  32,  34,   3,-101,  80, 102,   1,
/*3632*/   56,  82, 102,  10, 105,   1,  10,   5, -29, 103,  53,  41,  58, 103, 109,  97,
/*3648*/  116,  99, 104,  34,  37,  83,  34, 100, 111,  10,  83,  46,  98, 101, 101, 112,
/*3664*/   40,   1, -19,  90, 104,  46, 109, 105, 110,  40,  50,  48,  48,  48,  44,   1,
/*3680*/   -5,  84,  43, 102,  58,  98, 121,   1,  35,  89,  41,  42,  49,  48,  41,  44,
/*3696*/   48,  46,  48,  53,   3,  36,   2,  32,  90, 114, 101, 116, 117, 114, 110,  10,
/*3712*/   87,  40, 101,  41,  93,  93, 108, 111,  99,  97, 108,  32, 106,  44, 111,  44,
/*3728*/  115,  44, 108,  44, 112,  44, 102,  61,  49,  44,  34,  34, 119, 104, 105, 108,
/*3744*/  101,  32, 106,  60,  61,  35, 105,  32, 100, 111,  10, 108,  44, 115,  61, 105,
/*3760*/   58,  98, 121, 116, 101,  40, 106,  44, 106,  43,  49,  41, 115,  61, 115,  32,
/*3776*/  111, 114,  32,  48, 108,  61, 108,  43,  40, 108,  62,  49,  51,  32,  97, 110,
/*3792*/  100,  32,  49,  32, 111, 114,  32,  50,  41,  45,  40, 108,  62,  57,  51,  32,
/*3808*/   97, 110, 100,  32,  49,  32, 111, 114,  32,  48,  41, 115,  61, 115,  45,  40,
/*3824*/  115,  62,  49,  51,  32,  97, 110, 100,  32,  49,  32, 111, 114,  32,  48,  41,
/*3840*/   45,  40, 115,  62,  57,  51,  32,  97, 110, 100,  32,  49,  32, 111, 114,  32,
/*3856*/   48,  41, 105, 102,  32, 108,  62,  56,  48, 116, 104, 101, 110,  10, 108,  61,
/*3872*/  108,  45,  56,  48, 111,  61, 111,  46,  46, 105,  58, 115, 117,  98,  40, 106,
/*3888*/   43,  49,  44, 106,  43, 108,  41, 106,  61, 106,  43, 108,  10, 101, 108, 115,
/*3904*/  101, 105, 102,  32, 108,  62,  50,  32, 116, 104, 101, 110,  10, 102,  61,  35,
/*3920*/  111,  43,  40, 115,  45,  50,  53,  51,  41, 119, 104, 105, 108, 101,  32, 108,
/*3936*/   62,  48,  32, 100, 111,  10, 112,  61, 111,  58, 115, 117,  98,  40, 102,  44,
/*3952*/  102,  43, 108,  45,  49,  41, 111,  61, 111,  46,  46, 112,  10, 102,  61, 102,
/*3968*/   43,  35, 112,  10, 108,  61, 108,  45,  35, 112,  10, 101, 110, 100,  10, 106,
/*3984*/   61, 106,  43,  49,  10, 101, 108, 115, 101,  10, 111,  61, 111,  46,  46,  34,
/*4000*/   93,  34, 101, 110, 100,  10, 106,  61, 106,  43,  49,  10, 101, 110, 100,  10,
/*4016*/  114, 101, 116, 117, 114, 110,  32,  97, 115, 115, 101, 114, 116,  40, 108, 111,
/*4032*/   97, 100,  40, 111,  41,  41,  40,  46,  46,  46,  41,
/**/
] as byte[], "oc:label": "§6LostUser v3.4.0",
"oc:userdata": [
  56, 99, 101, 97, 57, 99, 57, 54, 45, 100, 97, 97, 49, 45, 52, 99, 53, 98, 45, 97, 52, 100, 57, 45, 101, 55, 49, 52, 102, 49, 102, 48, 56, 55, 49, 53
] as byte[]},
} + utils.shinigTag(15326208));

recipes.addShapeless('User recipe', userEEPROM, [<opencomputers:storage>, <appliedenergistics2:crank>]);

mods.jei.JEI.addItem(userEEPROM);
