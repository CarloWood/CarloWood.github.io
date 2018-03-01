with (document)
{
  var rootpos = location.href.lastIndexOf("libcw.sourceforge.net");
  if (rootpos != -1)
    rootpath = location.href.substring(0,rootpos) + "libcw.sourceforge.net/";
  else
  {
    rootpos = location.pathname.lastIndexOf("www");
    if (rootpos != -1) 
      rootpath = location.pathname.substring(0,rootpos) + "www/";
    else
      rootpath = "http://www.xs4all.nl/~carlo17/libcw/sourceforge/www/";
  }
  write("<LINK REL=StyleSheet HREF=\"" + rootpath + "styles/main.css\" TYPE=\"text/css\">");
  if (need_style_tag_cw == 1)
    write("<LINK REL=StyleSheet HREF=\"" + rootpath + "styles/tag-cw.css\" TYPE=\"text/css\">");
  if (is_nav)
  {
    write("<LINK REL=StyleSheet HREF=\"" + rootpath + "styles/ns/main.css\" TYPE=\"text/css\">");
    if (is_unix)
      write("<LINK REL=StyleSheet HREF=\"" + rootpath + "styles/ns/linux/main.css\" TYPE=\"text/css\">");
  }
}
