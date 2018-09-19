if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="Rossby_Waves_Main-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import animate;
import graph;
import contour;
import palette;

pen[] pal={

rgb(0,42,215),
rgb(0,43,214),
rgb(0,43,213),
rgb(0,44,212),
rgb(0,44,212),
rgb(0,45,211),
rgb(0,45,210),
rgb(0,46,209),
rgb(7,46,208),
rgb(13,47,207),
rgb(19,47,206),
rgb(23,48,205),
rgb(27,48,204),
rgb(30,49,203),
rgb(33,49,202),
rgb(35,50,201),
rgb(38,50,201),
rgb(40,51,200),
rgb(42,51,199),
rgb(44,52,198),
rgb(46,52,197),
rgb(47,53,196),
rgb(49,53,195),
rgb(51,54,194),
rgb(52,54,193),
rgb(54,55,192),
rgb(55,55,191),
rgb(56,56,191),
rgb(58,56,190),
rgb(59,57,189),
rgb(60,57,188),
rgb(61,57,187),
rgb(62,58,186),
rgb(64,58,185),
rgb(65,59,184),
rgb(66,59,183),
rgb(67,60,182),
rgb(68,60,181),
rgb(69,61,181),
rgb(69,61,180),
rgb(70,62,179),
rgb(71,62,178),
rgb(72,63,177),
rgb(73,63,176),
rgb(74,64,175),
rgb(74,64,174),
rgb(75,64,173),
rgb(76,65,172),
rgb(77,65,172),
rgb(77,66,171),
rgb(78,66,170),
rgb(79,67,169),
rgb(79,67,168),
rgb(80,68,167),
rgb(81,68,166),
rgb(81,69,165),
rgb(82,69,164),
rgb(82,70,163),
rgb(83,70,163),
rgb(84,70,162),
rgb(84,71,161),
rgb(85,71,160),
rgb(85,72,159),
rgb(86,72,158),
rgb(86,73,157),
rgb(87,73,156),
rgb(87,74,155),
rgb(88,74,155),
rgb(88,74,154),
rgb(88,75,153),
rgb(89,75,152),
rgb(89,76,151),
rgb(90,76,150),
rgb(90,77,149),
rgb(91,77,148),
rgb(91,78,147),
rgb(91,78,146),
rgb(92,78,146),
rgb(92,79,145),
rgb(92,79,144),
rgb(93,80,143),
rgb(93,80,142),
rgb(93,81,141),
rgb(94,81,140),
rgb(94,82,139),
rgb(94,82,138),
rgb(94,82,138),
rgb(95,83,137),
rgb(95,83,136),
rgb(95,84,135),
rgb(96,84,134),
rgb(96,85,133),
rgb(96,85,132),
rgb(96,86,131),
rgb(96,86,130),
rgb(97,86,130),
rgb(97,87,129),
rgb(97,87,128),
rgb(97,88,127),
rgb(98,88,126),
rgb(98,89,125),
rgb(98,89,124),
rgb(98,89,123),
rgb(98,90,122),
rgb(98,90,122),
rgb(99,91,121),
rgb(99,91,120),
rgb(99,92,119),
rgb(99,92,118),
rgb(99,92,117),
rgb(99,93,116),
rgb(99,93,115),
rgb(99,94,114),
rgb(99,94,113),
rgb(100,95,113),
rgb(100,95,112),
rgb(100,95,111),
rgb(100,96,110),
rgb(100,96,109),
rgb(100,97,108),
rgb(100,97,107),
rgb(100,98,106),
rgb(100,98,105),
rgb(100,98,104),
rgb(100,99,103),
rgb(100,99,103),
rgb(100,100,102),
rgb(100,100,101),
rgb(101,100,100),
rgb(103,100,99),
rgb(105,100,99),
rgb(106,100,98),
rgb(108,100,97),
rgb(110,100,97),
rgb(111,99,96),
rgb(113,99,96),
rgb(114,99,95),
rgb(116,99,94),
rgb(117,99,94),
rgb(119,99,93),
rgb(120,99,92),
rgb(122,98,92),
rgb(123,98,91),
rgb(125,98,91),
rgb(126,98,90),
rgb(128,98,89),
rgb(129,98,89),
rgb(131,97,88),
rgb(132,97,87),
rgb(134,97,87),
rgb(135,97,86),
rgb(136,97,86),
rgb(138,96,85),
rgb(139,96,84),
rgb(140,96,84),
rgb(142,96,83),
rgb(143,96,82),
rgb(144,95,82),
rgb(146,95,81),
rgb(147,95,81),
rgb(148,95,80),
rgb(150,94,79),
rgb(151,94,79),
rgb(152,94,78),
rgb(154,94,77),
rgb(155,93,77),
rgb(156,93,76),
rgb(158,93,75),
rgb(159,93,75),
rgb(160,92,74),
rgb(161,92,73),
rgb(163,92,73),
rgb(164,91,72),
rgb(165,91,72),
rgb(166,91,71),
rgb(168,91,70),
rgb(169,90,70),
rgb(170,90,69),
rgb(171,90,68),
rgb(173,89,68),
rgb(174,89,67),
rgb(175,89,66),
rgb(176,88,66),
rgb(177,88,65),
rgb(179,88,64),
rgb(180,87,64),
rgb(181,87,63),
rgb(182,86,62),
rgb(183,86,62),
rgb(185,86,61),
rgb(186,85,60),
rgb(187,85,60),
rgb(188,84,59),
rgb(189,84,58),
rgb(191,84,58),
rgb(192,83,57),
rgb(193,83,56),
rgb(194,82,56),
rgb(195,82,55),
rgb(197,81,54),
rgb(198,81,53),
rgb(199,80,53),
rgb(200,80,52),
rgb(201,79,51),
rgb(202,79,51),
rgb(204,78,50),
rgb(205,78,49),
rgb(206,77,48),
rgb(207,77,48),
rgb(208,76,47),
rgb(209,76,46),
rgb(210,75,46),
rgb(212,74,45),
rgb(213,74,44),
rgb(214,73,43),
rgb(215,73,43),
rgb(216,72,42),
rgb(217,71,41),
rgb(218,71,40),
rgb(220,70,39),
rgb(221,69,39),
rgb(222,69,38),
rgb(223,68,37),
rgb(224,67,36),
rgb(225,66,35),
rgb(226,65,35),
rgb(228,65,34),
rgb(229,64,33),
rgb(230,63,32),
rgb(231,62,31),
rgb(232,61,30),
rgb(233,60,29),
rgb(234,59,28),
rgb(235,58,27),
rgb(237,58,27),
rgb(238,56,26),
rgb(239,55,25),
rgb(240,54,24),
rgb(241,53,22),
rgb(242,52,21),
rgb(243,51,20),
rgb(244,50,19),
rgb(246,48,18),
rgb(247,47,17),
rgb(248,46,15),
rgb(249,44,14),
rgb(250,43,13),
rgb(251,41,11),
rgb(252,40,9),
rgb(253,38,8),
rgb(255,36,6),
rgb(255,34,5),
rgb(255,32,3),
rgb(255,30,1),
rgb(255,27,0),
rgb(255,25,0)
};

real m=0.15;
real k=6;
real U=1.0;
real beta=25.0;
real w=U*k-beta/k;

real width=2;
real height=1;

pair[] tracer_positions;
for(int i=-80;i<40;++i)
for(int j=-5;j<25;++j)
{
tracer_positions.push((i*width/40.0,j*height/20.0));
}

picture getframe(real t)
{
picture frame;
size(frame,10cm);


real streamfunc(real x, real y)
{
return -U*y+m*cos(k*x-w*t);
}

real vorticity(real x,real y)
{
return -k*k*m*cos(k*x-w*t);
}

path velocity(pair z)
{
return (0,0)--(U,-m*k*sin(k*z.x-w*t));
}

void draw_tracer(pair pos_0)
{
pair pos=(U*t+pos_0.x,(m/U)*(cos((k*U-w)*t+k*pos_0.x)-cos(k*pos_0.x))+pos_0.y);
if(pos.x>0&&pos.x<width&&pos.y>0&&pos.y<height)
{
fill(frame,circle(pos,0.005));
}
}
image(frame,vorticity,Automatic,(0,0),(width,height),nx=256,ny=1,pal);
draw(frame,contour(streamfunc,(0,0),(width,height),uniform(-1.5,1.5,30)));

for(int i=0;i<tracer_positions.length;++i)
{
draw_tracer(tracer_positions[i]);
}

//add(frame,vectorfield(velocity,(0,0),(width,height),nx=18,ny=9));
xaxis(frame,"x",xmin=0,xmax=width);
yaxis(frame,"y",ymin=0,ymax=height);
return frame;
}

animation A=animation("Rossby waves");
for(int i=0;i<200;++i)
{
write(i);
A.add(getframe(i*(2pi/(w*200.0))));
}
label(A.pdf("autoplay,loop"));
