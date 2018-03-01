// From http://developer.netscape.com/docs/examples/javascript/browser_type.html
var a=navigator.userAgent.toLowerCase();
var j=parseInt(navigator.appVersion);
var n=parseFloat(navigator.appVersion);
var is_nav=a.indexOf('mozilla')!=-1&&a.indexOf('spoofer')==-1&&a.indexOf('compatible')==-1&&a.indexOf('opera')==-1&&a.indexOf('webtv')==-1;
var is_nav2=is_nav&&j==2;
var is_nav3=is_nav&&j==3;
var is_nav4=is_nav&&j==4;
var is_nav4up=is_nav&&j>=4;
var is_navonly=is_nav&&(a.indexOf(";nav")!=-1||a.indexOf("; nav")!=-1);
var is_nav5=is_nav&&j==5;
var is_nav5up=is_nav&&j>=5;
var is_ie=a.indexOf("msie")!=-1;
var is_ie3=is_ie&&(j<4);
var is_ie4=is_ie&&j==4&&a.indexOf("msie 5.0")==-1;
var is_ie4up=is_ie&&j>=4;
var is_ie5=is_ie&&j==4&&a.indexOf("msie 5.0")!=-1;
var is_ie5up=is_ie&&!is_ie3&&!is_ie4;
var is_aol=a.indexOf("aol")!=-1;
var is_aol3=is_aol&&is_ie3;
var is_aol4=is_aol&&is_ie4;
var is_opera=a.indexOf("opera")!=-1;
var is_webtv=a.indexOf("webtv")!=-1;
var is_js;
if(is_nav2||is_ie3)is_js=1.0
else if(is_nav3||is_opera)is_js=1.1
else if((is_nav4&&n<=4.05)||is_ie4)is_js=1.2
else if((is_nav4&&n>4.05)||is_ie5)is_js=1.3
else if(is_nav5)is_js=1.4
else if(is_nav&&j>5)is_js=1.4
else if(is_ie&&j>5)is_js=1.3
else is_js=0.0;
var is_win=a.indexOf("win")!=-1||a.indexOf("16bit")!=-1;
var is_win95=a.indexOf("win95")!=-1||a.indexOf("windows 95")!=-1;
var is_win16=a.indexOf("win16")!=-1||a.indexOf("16bit")!=-1||a.indexOf("windows 3.1")!=-1||a.indexOf("windows 16-bit")!=-1; 
var is_win31=a.indexOf("windows 3.1")!=-1||a.indexOf("win16")!=-1||a.indexOf("windows 16-bit")!=-1;
var is_win98=a.indexOf("win98")!=-1||a.indexOf("windows 98")!=-1;
var is_winnt=a.indexOf("winnt")!=-1||a.indexOf("windows nt")!=-1;
var is_win32=is_win95||is_winnt||is_win98||(j>=4&&navigator.platform=="Win32")||a.indexOf("win32")!=-1||a.indexOf("32bit")!=-1;
var is_os2=a.indexOf("os/2")!=-1||navigator.appVersion.indexOf("OS/2")!=-1||a.indexOf("ibm-webexplorer")!=-1;
var is_mac=a.indexOf("mac")!=-1;
var is_mac68k=is_mac&&(a.indexOf("68k")!=-1||a.indexOf("68000")!=-1);
var is_macppc=is_mac&&(a.indexOf("ppc")!=-1||a.indexOf("powerpc")!=-1);
var is_sun=a.indexOf("sunos")!=-1;
var is_sun4=a.indexOf("sunos 4")!=-1;
var is_sun5=a.indexOf("sunos 5")!=-1;
var is_suni86=is_sun&&a.indexOf("i86")!=-1;
var is_irix=a.indexOf("irix")!=-1;
var is_irix5=a.indexOf("irix 5")!=-1;
var is_irix6=a.indexOf("irix 6")!=-1||a.indexOf("irix6")!=-1;
var is_hpux=a.indexOf("hp-ux")!=-1;
var is_hpux9=is_hpux&&a.indexOf("09.")!=-1;
var is_hpux10=is_hpux&&a.indexOf("10.")!=-1;
var is_aix=a.indexOf("aix")!=-1;
var is_aix1=a.indexOf("aix 1")!=-1; 
var is_aix2=a.indexOf("aix 2")!=-1; 
var is_aix3=a.indexOf("aix 3")!=-1; 
var is_aix4=a.indexOf("aix 4")!=-1; 
var is_linux=a.indexOf("inux")!=-1;
var is_sco=a.indexOf("sco")!=-1||a.indexOf("unix_sv")!=-1;
var is_unixware=a.indexOf("unix_system_v")!=-1;
var is_mpras=a.indexOf("ncr")!=-1;
var is_reliant=a.indexOf("reliantunix")!=-1;
var is_dec=a.indexOf("dec")!=-1||a.indexOf("osf1")!=-1||a.indexOf("dec_alpha")!=-1||a.indexOf("alphaserver")!=-1||a.indexOf("ultrix")!=-1||a.indexOf("alphastation")!=-1;
var is_sinix=a.indexOf("sinix")!=-1;
var is_freebsd=a.indexOf("freebsd")!=-1;
var is_bsd=a.indexOf("bsd")!=-1;
var is_unix=a.indexOf("x11")!=-1||is_sun||is_irix||is_hpux||is_sco||is_unixware||is_mpras||is_reliant||is_dec||is_sinix||is_aix||is_linux||is_bsd||is_freebsd;
var is_vms=a.indexOf("vax")!=-1||a.indexOf("openvms")!=-1;
var need_style_tag_cw = 0;
