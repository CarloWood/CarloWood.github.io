changequote([[,]])dnl
define(__PS, <P class="syntax">$1</P>)dnl
define(__S, <SPAN class="syntax">$1</SPAN>)dnl
define(__C, <SPAN class="code">$1</SPAN>)dnl
define(__V, <SPAN class="variable">$1</SPAN>)dnl
define(__CSS, [[ifelse($#, 0, , $#, 1, [[[[$1]]]], [[[[$1, ]]__CSS(shift($@))]])]])dnl
define(__OAB, [[<A HREF="[[#]]$1">&lt;[[$1]]&gt;</A>]])dnl
define(__AB, [[ifelse($#, 0, , $#, 1, [[__OAB([[$1]])]], [[__OAB([[$1]])__AB(shift($@))]])]])dnl
define(__PSA, [[<P class="syntax">__AB(]]$*[[)</P>]])dnl
define(__SA, [[<SPAN class="syntax">__AB(]]$*[[)</SPAN>]])dnl
define(__SLIA, [[<LI><DIV class="syntax">__AB(]]$*[[)</DIV></LI>]])dnl
define(__DTE, </TABLE>)dnl
define(__D,
[[<TR>
    <A name="$1"></A>
    <TD [[$3]]valign=center>
      <P class="tablesyntax">&lt;$1&gt;</P>
    </TD>
    <TD width=40 valign=center><IMG src="../images/isperdef.gif"></TD>
    <TD>
      $2
    </TD>
  </TR>]])dnl
define(__DE,
[[<TR>
    <TD [[$3]]valign=center>
      <P class="tablesyntax">&lt;$1&gt;</P>
    </TD>
    <TD width=40 valign=center><IMG src="../images/isperdef.gif"></TD>
    <TD>
      $2
    </TD>
  </TR>]])dnl
define(__E,
[[<TR>
    <TD [[$3]]valign=center>
      <P class="tablesyntax">&lt;$1&gt;</P>
    </TD>
    <TD width=40 valign=center><IMG src="../images/colon.gif"></TD>
    <TD>
      $2
    </TD>
  </TR>]])dnl
define(__DT,
<TABLE border=0 cellspacing=10 cellpadding=0>
)dnl
define(__VE,
[[<TR>
    <TD [[$3]]valign=center>
      <P class="tablevariable">$1</P>
    </TD>
    <TD width=40 valign=center><IMG src="../images/colon.gif"></TD>
    <TD>
      $2
    </TD>
  </TR>]])dnl
define(__BULLETS, [[define([[__I]],
  <TR>
    <TD width=15 valign=top>
      <IMG src="../images/$1" align=top border=0>
    </TD>
    <TD>
      [[__CSS($]]@[[)]]
    </TD>
  </TR>)dnl
<TABLE width=512 border=0 cellpadding=4 cellspacing=0>$2</TABLE>
undefine([[__I]])dnl]])dnl
define(__N, [[<A href="[[#]]numeric_type_$1">__C($2)</A>]])dnl
define(__TA, [[<A HREF="[[#target_]]$1">[[<I>$1</I>]]</A>]])dnl
define(__TY, [[<A HREF="[[#type_]]$1">[[$1]]</A>]])dnl
define(__Q, &quot;__S($1)&quot;)dnl
define(__NICK, __S(NICK))dnl
define(__NICK1, [[<A HREF="[[#]]m_nick1">__S(NICK)</A>]])dnl
define(__NICK2, [[<A HREF="[[#]]m_nick2">__S(NICK)</A>]])dnl
define(__SERVER, [[<A HREF="[[#]]m_server">__S(SERVER)</A>]])dnl
define(__KILL, [[<A HREF="[[#]]m_kill">__S(KILL)</A>]])dnl
define(__PASS, [[<A HREF="[[#]]m_pass">__S(PASS)</A>]])dnl
define(__ERROR, [[<A HREF="[[#]]m_error">__S(ERROR)</A>]])dnl
define(__END_OF_BURST, [[<A HREF="[[#]]m_end_of_burst">__S(END_OF_BURST)</A>]])dnl
define(__SQUIT, [[<A HREF="[[#]]m_squit">__S(SQUIT)</A>]])dnl
define(__QUIT, [[<A HREF="[[#]]m_quit">__S(QUIT)</A>]])dnl
define(__MODE1, [[<A HREF="[[#]]m_mode1">__S(MODE)</A>]])dnl
define(__MODE2, [[<A HREF="[[#]]m_mode2">__S(MODE)</A>]])dnl
define(__MODE1p, [[<A HREF="[[#]]m_mode1">__S(MODE&nbsp;)__SA(nickname)</A>]])dnl
define(__MODE2p, [[<A HREF="[[#]]m_mode2">__S(MODE&nbsp;)__SA(channel_name)</A>]])dnl
define(__AWAY, [[<A HREF="[[#]]m_away">__S(AWAY)</A>]])dnl
define(__SILENCE, [[<A HREF="[[#]]m_silence">__S(SILENCE)</A>]])dnl
define(__CREATE, [[<A HREF="[[#]]m_create">__S(CREATE)</A>]])dnl
define(__JOIN, [[<A HREF="[[#]]m_join">__S(JOIN)</A>]])dnl
define(__KICK, [[<A HREF="[[#]]m_kick">__S(KICK)</A>]])dnl
define(__PART, [[<A HREF="[[#]]m_part">__S(PART)</A>]])dnl
define(__TOPIC, [[<A HREF="[[#]]m_topic">__S(TOPIC)</A>]])dnl
define(__INVITE, [[<A HREF="[[#]]m_invite">__S(INVITE)</A>]])dnl
define(__BURST, [[<A HREF="[[#]]m_burst">__S(BURST)</A>]])dnl
define(__EOB_ACK, [[<A HREF="[[#]]m_eob_ack">__S(EOB_ACK)</A>]])dnl
define(__ADMIN, [[<A HREF="[[#]]m_admin">__S(ADMIN)</A>]])dnl
define(__GLINE1, [[<A HREF="[[#]]m_gline1">__S(GLINE)</A>]])dnl
define(__GLINE2, [[<A HREF="[[#]]m_gline2">__S(GLINE)</A>]])dnl
define(__INFO, [[<A HREF="[[#]]m_info">__S(INFO)</A>]])dnl
define(__LINKS, [[<A HREF="[[#]]m_links">__S(LINKS)</A>]])dnl
define(__LUSERS, [[<A HREF="[[#]]m_lusers">__S(LUSERS)</A>]])dnl
define(__MOTD, [[<A HREF="[[#]]m_motd">__S(MOTD)</A>]])dnl
define(__NAMES, [[<A HREF="[[#]]m_names">__S(NAMES)</A>]])dnl
define(__PING, [[<A HREF="[[#]]m_ping">__S(PING)</A>]])dnl
define(__RPING1, [[<A HREF="[[#]]m_rping1">__S(RPING)</A>]])dnl
define(__RPING2, [[<A HREF="[[#]]m_rping2">__S(RPING)</A>]])dnl
define(__STATS, [[<A HREF="[[#]]m_stats">__S(STATS)</A>]])dnl
define(__TIME, [[<A HREF="[[#]]m_time">__S(TIME)</A>]])dnl
define(__TRACE, [[<A HREF="[[#]]m_trace">__S(TRACE)</A>]])dnl
define(__VERSION, [[<A HREF="[[#]]m_version">__S(VERSION)</A>]])dnl
define(__WHOIS, [[<A HREF="[[#]]m_whois">__S(WHOIS)</A>]])dnl
define(__WHOWAS, [[<A HREF="[[#]]m_whowas">__S(WHOWAS)</A>]])dnl
define(__DESYNCH, [[<A HREF="[[#]]m_desynch">__S(DESYNCH)</A>]])dnl
define(__NOTICE, [[<A HREF="[[#]]m_notice">__S(NOTICE)</A>]])dnl
define(__PONG, [[<A HREF="[[#]]m_pong">__S(PONG)</A>]])dnl
define(__RPONG1, [[<A HREF="[[#]]m_rpong1">__S(RPONG)</A>]])dnl
define(__RPONG2, [[<A HREF="[[#]]m_rpong2">__S(RPONG)</A>]])dnl
define(__WALLOPS, [[<A HREF="[[#]]m_wallops">__S(WALLOPS)</A>]])dnl
define(__PRIVMSG, [[<A HREF="[[#]]m_privmsg">__S(PRIVMSG)</A>]])dnl
define(__WALLCHOPS, [[<A HREF="[[#]]m_wallchops">__S(WALLCHOPS)</A>]])dnl
define(__CONNECT, [[<A HREF="[[#]]m_connect">__S(CONNECT)</A>]])dnl
define(__UPING, [[<A HREF="[[#]]m_uping">__S(UPING)</A>]])dnl
define(__SETTIME1, [[<A HREF="[[#]]m_settime1">__S(SETTIME)</A>]])dnl
define(__SETTIME2, [[<A HREF="[[#]]m_settime2">__S(SETTIME)</A>]])dnl

dnl
dnl#*************************************************************************
dnl#  HTML document start
dnl#*************************************************************************
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<TITLE>The P10 protocol definition</TITLE>
dnl
dnl#*************************************************************************
dnl#  Style section
dnl#*************************************************************************
[[<STYLE><!--
    H1 { font-family: helvetica; font-size: 32pt }
    H2 { font-family: helvetica; font-size: 24pt }
    H3 { font-family: helvetica; font-size: 18pt }
    H4 { font-family: "helvetica narrow", helvetica; font-size: 18pt }
    H5 { font-family: helvetica; font-size: 14pt }
    PRE { font-size: 12pt }
    BODY {
      background-color: #d0d0c0;
      margin-left: 40px;
      margin-right: 80px;
    }
    P.pgp {
      margin-top: 8px;
    }
    .syntax {
      font-family: "courier";
      font-size: 14pt;
    }
    .variable {
      font-family: "courier";
      font-style: italic;
      font-size: 14pt;
    }
    P.syntax {
      font-family: "courier";
      font-size: 14pt;
      padding-left: 45pt;
    }
    P.tablesyntax {
      font-family: "courier";
      font-size: 14pt;
      padding-left: 36pt;
    }
    P.tablevariable {
      font-family: "courier";
      font-style: italic;
      font-size: 14pt;
      padding-left: 36pt;
    }
    P.context-header {
      margin-left: 24;
      margin-bottom: 0;
      font-weight: bold;
    }
    .code {
      font-family: courier;
      font-size: 14pt;
    }
    P.license {
      font-family: helvetica;
      font-size: 16pt;
    }
    CAPTION {
      font-weight: bold;
      margin-bottom: 10;
    }
    .image-link {
      A:link { text-decoration: none; }
      A:visited { text-decoration: none; }
      A:active { text-decoration: none; }
    }
--></STYLE>]]
dnl
</HEAD>
<BODY>

dnl#*************************************************************************
dnl# Banner
dnl#*************************************************************************
dnl
<CENTER>
<DIV><A HREF="http://ircu.sourceforge.net/" class="image-link">
<IMG src="../images/ircu-dev.png" border=0></IMG>
</A></DIV>
</CENTER>

dnl#*************************************************************************
dnl#  Header
dnl#*************************************************************************
dnl
<H1>The <FONT COLOR="[[#]]ff0000">P10</FONT> <I>server-server</I> protocol</H1>

dnl#*************************************************************************
dnl#  Copyright notice and license
dnl#*************************************************************************
dnl
dnl# The width is an estimate but deliberately too low (at least on 1024x768)
dnl# the hope is that the browser will stretch to precisely the needed
dnl# width because the widest text only contains non-breakable spaces.
<TABLE border=0 width="40%" cellspacing=0 cellpadding=0>
  <TR><TD colspan=3><P><B>Copyright</B> &copy; 1998 - 2000</P></TD></TR>
  <TR><TD colspan=3>&nbsp;</TD></TR>
  dnl# Name and E-mail address
  <TR>
    <TD nowrap><P>Carlo Wood, Run on IRC &nbsp;</P></TD>
    <TD><DIV><A HREF="../anti/spam/bots/dont/like/deep/dirs/mail2.html?run" class="image-link">
      <IMG src="../images/carloatalit.gif" border=0></A></DIV></TD>
    <TD>&nbsp;</TD>
  </TR>
  dnl# PGP fingerprint
  <TR>
    dnl# Class "pgp" causes a slight opening between this lines and the previous one
    <TD colspan=2><P class="pgp">RSA-1024&nbsp;0x624ACAD5&nbsp;1997-01-26</P></TD>
    <TD align=right><P class="pgp">Sign&nbsp;&amp;&nbsp;Encrypt</P></TD>
  </TR>
  <TR><TD colspan=3 nowrap>Fingerprint16 = 32 EC A7 B6 AC DB 65 A6  F6 F6 55 DD 1C DC FF 61</TD></TR>
  <TR><TD colspan=3>&nbsp;</TD></TR>
</TABLE>
<TABLE border=2 width=400 cellspacing=2 cellpadding=10>
  dnl# License
  <TR>
    <TD colspan=3>
    <P class="license">Permission is granted to keep a local copy for <EM>personal</EM> use only.
    It is not allowed to modify this document.
    It is not allowed to distribute this document like for example, but not limited to,
    putting it on a public web site or a public ftp server.</P>
    </TD>
  </TR>
</TABLE>
<P>The latest version of this document can be retrieved from
<A HREF="http://www.xs4all.nl/~carlo17/irc/P10.html">http://www.xs4all.nl/~carlo17/irc/P10.html</A></P>
dnl
dnl#*************************************************************************
dnl#  Under construction picture
dnl#*************************************************************************
dnl
<P><IMG src="../images/UnderConstruction.gif" align=left width=247 height=63 border=0><BR clear=left><BR><BR></P>

dnl
dnl#*************************************************************************
dnl#  Chapter 1.
dnl#*************************************************************************
dnl
<A name="General"></A>
<H2>1. General</H2>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 1.1
dnl#-------------------------------------------------------------------------
dnl
<A name="Connection"></A>
<H3>1.1 The server-server connection</H3>

<P>The communication between two servers is done by means of a binary stream of octets.&nbsp;
The stream must be connected, reliable and ordered.</P>

<P>A server that receives a connection must know that the corresponding stream will use the server-server protocol.&nbsp;
This can for instance be achieved by using a different port number for servers than for other connection types.</P>

<P>A complete stream of octets, from the connection till disconnection, is build up like:</P>

  __PSA(lines, junk, eof)

<P>where</P>

__DT
  __D(lines, [[<LI>Nothing</LI> __SLIA(line, lines)]], [[width=120 ]])
  __D(junk,  [[Any string of octets that is not a __SA(line)]])
  __D(eof,   [[Connection termination (i.e. Calling __C(close()), or __C(read()) returning __C(0))]])
__DTE

<P>Notes:</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[The __SA(junk) octets, if any, are ignored.]])
  __I([[A server is allowed to terminate a connection itself when it detects that it receives __SA(junk)
      (when it receives a __C(null) character or when the message is too long).]])
)

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 1.2
dnl#-------------------------------------------------------------------------
dnl
<A name="line"></A>
<H3>1.2 Line</H3>

<P>A line is build up like</P>

__DT
  __DE(line, __SA(message, eol), [[width=120 ]])
__DTE

<P>where</P>

<A name="eol"></A>
<P class="context-header">Received line</P>

__DT
  __E(message, [[A string of octets (type __C(char)) not containing any __SA(new-line) or __C(null) character.]], [[width=140 ]])
  __DE(eol, __SLIA(new-line) __SLIA(carriage-return, new-line))
__DTE

<P class="context-header">Generated line</P>

__DT
  __E(message, [[A string of octets (type __C(char)) not containing any __SA(new-line) or __C(null) character,
      and not ending on a __SA(carriage-return).]], [[width=140 ]])
  __DE(eol, __SA(new-line))
__DTE

<P>and</P>

__DT
  __D(new-line, [[__C('\n') (ASCII 10)]], [[with=160 ]])
  __D(carriage-return, [[__C('\r') (ASCII 13)]])
__DTE

<P>Notes:</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[A __SA(message) may not contain a&nbsp; __C(null) character so that messages can be treated as __C(null) terminated strings, which
      in turn allows the use of library calls like __C(strtok()) and __C(strchr()).]])
  __I([[The reason that it is not allowed to generate lines that end on __C('\r\n') is for compatibility with P11,
      which will disregard the carriage-return as being special in any way.]])
)

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 1.3
dnl#-------------------------------------------------------------------------
dnl
<A name="message"></A>
<H3>1.3 Message</H3>

<P>Each message is defined as</P>

<P class="context-header">Before authentication</P>

__DT
  __DE(message,
      __SLIA(pre_auth_error)
      __SLIA(pre_auth_pass)
      __SLIA(pre_auth_server),
      [[width=160 ]])
__DTE

<P class="context-header">After authentication</P>

__DT
  __DE(message,
      __SLIA(prefix, space, cmd, space, tokens)
      __SLIA(prefix, space, cmd, space, tokens, space, colon, last_token)
      __SLIA(prefix, space, cmd, space, colon, last_token),
      [[width=160 ]])
__DTE

<P>where</P>

__DT
  __E([[pre_auth_error&gt;<BR>&lt;pre_auth_pass&gt;<BR>&lt;pre_auth_server]],
      [[See <A HREF="[[#]]Authentication messages"><B>Authentication messages</B></A>.]],
      [[width=160 ]])
  __E(prefix, [[A token specifying the origin of the message.&nbsp; See <A HREF="[[#]]prefix"><B>Prefix</B></A>.]])
  __D(space, [[__C(' ') (ASCII 32)]])
  __E(cmd, [[See <A HREF="[[#]]overview"><B>Message overview</B></A>.]])
  __D(tokens, [[__SLIA(token) __SLIA(token, space, tokens)]])
  __D(colon, [[__C(':') (ASCII 58)]])
  __D(last_token, [[A string of octets (type __C(char)) not containing any __SA(new-line) or __C(null) character.]])
__DTE

[[<P>and</P>]]
__DT
  __D(token, [[A string of octets (type __C(char)) not containing any __SA(space), __SA(new-line) or __C(null) character,
      and not starting with a __SA(colon).]])
__DTE

[[<P>Notes:</P>]]

__BULLETS(ball_blue_icon.gif,dnl
  __I([[Since generated messages may not end on a __SA(carriage-return),&nbsp;&nbsp;
      __SA(last_token) may also not end on __SA(carriage-return).&nbsp;
      And if the message ends on a __SA(token) then this last __SA(token) may
      not end on a __SA(carriage-return).]])

  __I([[The minium number of the tokens depends on the actual __SA(cmd).
      However, the exact number is unknown because at a specified place
      it is possible that extra tokens are inserted.&nbsp; These extra tokens
      should be ignored when received.&nbsp; It makes it necessary however to
      refer to a token as either &quot;token number x from the
      beginning&quot; <EM>or</EM> &quot;token number y from the end&quot;.
      See <A HREF="[[#]]overview"><B>Message overview</B></A> for
      the position that is reserved for insertion of extra tokens in
      each message respectively.]])

  __I([[The meaning of the tokens depends on the actual __SA(cmd).&nbsp;
      But whether or not a specific message uses a __SA(colon)
      in front of the last parameter is unspecified (In order words, it
      is possible to receive a message of the form
      __SA(prefix, space, cmd, space, tokens, space, colon, token)).
      However, it is deprecated to use a colon in front of a token that
      can never contain a space or start with a colon.&nbsp; It is also
      deprecated <EM>not</EM> to use a colon in front of the last
      parameter when generating messages that sometimes need the colon
      because the last parameter contains spaces.]])
)

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 1.4
dnl#-------------------------------------------------------------------------
dnl
<A name="prefix"></A>
<H3>1.4 Prefix</H3>

<P>The prefix of <EM>received</EM> authenticated messages includes more possible formats than what may be <EM>generated</EM>.&nbsp;
This is for backwards compatibility with P09 and transition versions of &quot;P10&quot; like the ircu2.10.04 implementation.</P>

<H4>Received message</H4>
__DT
  __DE(prefix, __SLIA(nicknum) __SLIA(servnum) __SLIA(colon, nickname) __SLIA(colon, servname))
__DTE

<H4>Generated message</H4>
__DT
  __DE(prefix, __SLIA(nicknum) __SLIA(servnum))
__DTE

<P>where</P>

__DT
  __E(nickname, [[See the description of the __NICK2 message.]])
  __E(servname, [[See the description of the __SERVER message.]])
  __D(nicknum, [[__SA(servnum, base64, base64)&nbsp;&nbsp;; Must be network-wide unique.]])
  __D(servnum, [[__SA(base64)&nbsp;&nbsp;; Must be network-wide unique.]])
__DTE

<P>and</P>

__DT
  __D(base64, [[<LI>Any of</LI>
                <DIV STYLE="margin-left: 10">__C([['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P',]])<BR>
                __C([['Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f',]])<BR>
                __C([['g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v',]])<BR>
                __C([['w','x','y','z','0','1','2','3','4','5','6','7','8','9','[',']']])</DIV>]])
__DTE

<P>Notes:</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[It is easy to detect if a prefix is a numeric or not:
      A prefix with a __SA(nickname) or a __SA(servname) starts with a __SA(colon),
      while __SA(nicknum) and __SA(servnum) do not.]])
  __I([[The value of __SA(servnum) is read from the configuration file on startup of the server.&nbsp;
      Its uniqueness is the responsibility of the administrator.]])
  __I([[<A NAME="masked numeric"></A>A __SA(base64) corresponds with a number (0..63) as follows: __C('A') corresponds with 0,
      __C('B') corresponds with 1, etc. until __C(']') which corresponds with 63.&nbsp;
      See the table above.
      <DIV STYLE="margin-top: 5">The last two __SA(base64) characters of a __SA(nicknum) need to be bitwise OR-ed with
      the corresponding bits of the __SA(base64) of the __SA(masknum) in order to get the <EM>real</EM>, unique
      identifier of the corresponding client (called the 'masked numeric').</DIV>
      <DIV STYLE="margin-top: 5">For example, if a server with a numeric value of 43 (and thus a __SA(servnum) of __C('r')) uses
      __C('rD]') in its __SERVER message then the __SA(masknum) (__C('D]')) corresponds to a value of 255
      and a __SA(nicknum) of __C('9v') (3951) would <EM>collide</EM> with a __SA(nicknum) of __C('Nv') (879)
      because __C(3951&nbsp;&amp;&nbsp;255 == 879&nbsp;&amp;&nbsp;255 (==&nbsp;111)).&nbsp;
      However, these numerics are not considered to be equivalent in a prefix: if a local client with value 111 exist,
      then a __SA(nicknum) like __C('r9v') in the prefix should be ignored if <A HREF="[[#]]ignore prefix">appropriate</A>.</DIV>]])
)

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 1.5
dnl#-------------------------------------------------------------------------
dnl
<A name="source"></A>
<H3>1.5 Source</H3>

<H4>1.5.1 Definition</H4>

<P>The __NICK2 and __SERVER messages introduce two identifiers each; a numeric handle and a
humable readable name (the client-server protocol handle), for respectively a new <I>client</I> or <I>server</I>.&nbsp;
These two identifiers are the __SA(nicknum) and __SA(nickname) in the case of the __NICK2 message,&nbsp;&nbsp; and __SA(servnum) and
__SA(servname) in the case of the __SERVER message.&nbsp;
The <I>client</I> or <I>server</I> associated with the identifier in the __SA(prefix) will be called the <I>source</I> of a
message in the remainder of this document.&nbsp; Note that the <I>source</I> of a message is not in all cases the real origin of
the message, although it is in most cases and can always be interpreted like that for received messages.</P>

<H4>1.5.2 Direction</H4>

<P>The <I>direction</I> of a <I>source</I> is defined as the <I>link</I> over which the corresponding __NICK2 or
__SERVER message was received, that originally introduced the <I>source</I>.&nbsp; A <I>link</I> is the connection
with another (authenticated) server.</P>

<A NAME="ignore prefix"></A>
<H4>1.5.3 Ignoring messages based on the source and direction</H4>

<P>A message should be ignored, as if it was not received, in the following cases:</P>

<UL>
  <LI><P>No <I>source</I> is associated with the __SA(prefix) (<I>unknown</I>) and __SA(cmd) is <B>not</B> __Q(SQUIT),
  __Q(SQ), __Q(KILL) or __Q(D).</P></LI>
  <LI><P>The <I>direction</I> of the <I>source</I> associated with the __SA(prefix) differs from the <I>link</I> over which the
  message was received.</P></LI>
</UL>

<P>Note:</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[If the <I>source</I> is <I>unknown</I> but the message should not be ignored (because __SA(cmd) is __Q(SQUIT),
      __Q(SQ), __Q(KILL) or __Q(D)), then the server should pretend that the <I>source</I> of the message is the server
      directly behind the <I>link</I> the message was received from.]])
)

<H4>1.5.4 KILL for an <I>unknown</I> numeric nick as <I>source</I> in a __NICK message</H4>

<P>If the <I>source</I> is <I>unknown</I> and __SA(cmd) is __Q(NICK) or __Q(N),&nbsp; and __SA(prefix) is a __SA(nicknum),&nbsp;
then the server must send a __KILL message over the <I>link</I> that the message was received from with as target __SA(nicknum),
itself as <I>source</I> and &quot;Unknown numeric nick&quot; as comment.</P>

<P>Note:</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[Even if the <I>source</I> is <I>unknown</I> one can see whether
      or not the __SA(prefix) is a __SA(nicknum) or not: It does not
      start with a __SA(colon) and is longer than a __SA(servnum).]])
)

dnl
dnl#*************************************************************************
dnl#  Chapter 2.
dnl#*************************************************************************
dnl
<A name="Authentication procedure"></A>
<H2>2. Authentication procedure</H2>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 2.1
dnl#-------------------------------------------------------------------------
dnl
<H3>2.1 State of a link</H3>

<P>A server may initiate a connection, or receive a connection.&nbsp;
In both cases a <I>link</I> structure is created which goes through a
few different <I>states</I> before reaching the <I>authenticated</I>
state after which the server starts to accept prefixed messages of
type __SA(message).</P>

<TABLE width=503 border=1 cellpadding=4 cellspacing=0 bordercolor=black>
<CAPTION>Table 1&nbsp; Initiating a connection</CAPTION>
<TR>
  <TH WIDTH=182>Event</TH>
  <TH WIDTH=204>Action</TH>
  <TH WIDTH=92>State</TH>
</TR>
<TR>
  <TD WIDTH=182>Connection established</TD>
  <TD WIDTH=204>Send own __PASS and __SERVER</TD>
  <TD WIDTH=92><I>challenged</I></TD>
</TR>
<TR>
  <TD WIDTH=182>__PASS message received</TD>
  <TD WIDTH=204>&nbsp;</TD>
  <TD WIDTH=92><I>handshake</I></TD>
</TR>
<TR>
  <TD WIDTH=182>__SERVER message received</TD>
  <TD WIDTH=204>Send <A HREF="#net.burst">net burst</A></TD>
  <TD WIDTH=92><I>authenticated</I></TD>
</TR>
</TABLE>

<BR>

<TABLE width=503 border=1 cellpadding=4 cellspacing=0 bordercolor=black>
<CAPTION>Table 2&nbsp; Receiving connection</CAPTION>
<TR>
  <TH WIDTH=182>Event</TH>
  <TH WIDTH=204>Action</TH>
  <TH WIDTH=92>State</TH>
</TR>
<TR>
  <TD WIDTH=182>Connection accepted</TD>
  <TD WIDTH=204>&nbsp;</TD>
  <TD WIDTH=92><I>unknown</I></TD>
</TR>
<TR>
  <TD WIDTH=182>__PASS message received</TD>
  <TD WIDTH=204>&nbsp;</TD>
  <TD WIDTH=92><I>pass</I></TD>
</TR>
<TR>
  <TD WIDTH=182>__SERVER message received</TD>
  <TD WIDTH=204>Send own __PASS and __SERVER<BR>Send <A HREF="[[#]]net.burst">net burst</A></TD>
  <TD WIDTH=92><I>authenticated</I></TD>
</TR>
</TABLE>

<P>The __PASS and __SERVER message in these tables are respectively the __SA(pre_auth_pass) and __SA(pre_auth_server) messages.&nbsp;
See <A HREF="[[#]]Authentication messages">Message syntax</A> below.</P>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 2.2
dnl#-------------------------------------------------------------------------
dnl
<H3>2.2 __S(ERROR) handling</H3>

<P>If an error occurs during the authentication procedure (for instance a wrong password)
then an __ERROR message must be sent and the link must be terminated immedeately (after flushing the __ERROR message).</P>

<P>If an __ERROR message is received then the reaction depends on the state of the link.</P>

<TABLE width=488 border=1 cellpadding=4 cellspacing=0 bordercolor=black>
<CAPTION>Receiving an __S(ERROR) message</CAPTION>
<TR>
  <TH WIDTH=91>State</TH>
  <TH WIDTH=209>Action</TH>
  <TH WIDTH=163>Syntax</TH>
</TR>
<TR>
  <TD WIDTH=91><I>unknown<BR>pass</I></TD>
  <TD WIDTH=209>Ignored</TD>
  <TD WIDTH=163>__SA(pre_auth_error)</TD>
</TR>
<TR>
  <TD WIDTH=91><I>challenged<BR>handshake</I></TD>
  <TD WIDTH=209>Send to all local IRC Operators<BR>and terminate link</TD>
  <TD WIDTH=163>__SA(pre_auth_error)</TD>
</TR>
<TR>
  <TD WIDTH=91><I>authenticated</I></TD>
  <TD WIDTH=209>Send to all local IRC Operators</TD>
  <TD WIDTH=163>See __ERROR message</TD>
</TR>
</TABLE>

<P>__ERROR messages sent <B>before</B> the own __PASS and __SERVER combination must have the __SA(pre_auth_error) syntax,
while __ERROR messages sent <B>after</B> the own __PASS and __SERVER combination must have a prefix,
see the description of the __ERROR message.</P>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 2.3
dnl#-------------------------------------------------------------------------
dnl
<A name="Authentication messages"></A>
<H3>2.3 Message syntax</H3>

<A name="pre_auth_error"></A>
<H4>2.3.1 The pre-authentication __S(ERROR) message</H4>

__DT
  __DE(pre_auth_error, [[__S(ERROR)__SA(space, colon, error_text)]])
__DTE

<P>where</P>

__DT
  __D(error_text, [[__SA(last_token)&nbsp;&nbsp;; describing the cause of rejection.]])
__DTE

<A name="m_pass"></A>
<A name="pre_auth_pass"></A>
<H4>2.3.2 The pre-authentication __S(PASS) message</H4>

__DT
  __DE(pre_auth_pass, [[__S(PASS)__SA(space, colon, password)]])
__DTE

<P>where</P>

__DT
  __E(password, [[A plain text password to authenticate the server.]])
__DTE

<A name="pre_auth_server"></A>
<H4>2.3.3 The pre-authentication __S(SERVER) message</H4>

__DT
  __DE(pre_auth_server, [[__S(SERVER)__SA(space, servname, space)__S(1)__SA(space, boot_time, space)__SA(link_time, space)__S(J)__SA(protocol, space, servnum, masknum, space)__S(0)__SA(space, colon, description)]])
__DTE

<P>where</P>

__DT
  __E(servname, [[See the __SERVER message.]])
  __D(boot_time, [[__SA(time_stamp)&nbsp;&nbsp;; See <A HREF="[[#]]bootTS">Boot Time Stamp</A>.]])
  __D(link_time, [[__SA(time_stamp)&nbsp;&nbsp;; See <A HREF="[[#]]linkTS">Link Time Stamp</A>.]])
  __D(protocol, [[<B>Received message&nbsp;&nbsp;:</B>&nbsp;__SA(digit, digit)<BR><B>Generated message:</B>&nbsp;__S(10)]])
  __E(servnum, [[See the __SERVER message.]])
  __D(masknum, [[__SA(base64, base64)&nbsp;&nbsp;; See the __SERVER message.]])
  __D(description, [[__SA(last_token)&nbsp;&nbsp;; description of the server.&nbsp; See also &sect; 4.2 <A HREF="[[#]]jupes">Jupes</A>.]])
__DTE

<P>and</P>

__DT
  __D(time_stamp,
      [[__SLIA(digit, digit, digit, digit, digit, digit, digit, digit, digit)
      __SLIA(digit, digit, digit, digit, digit, digit, digit, digit, digit, digit)]])
  __D(digit, [[One of<BR>__S(0 1 2 3 4 5 6 7 8 9)]])
__DTE

<P>Notes:</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[Authentication messages do not start with a prefix.
      &nbsp;You might want to use a seperate parser routine for not yet authenticated connections.]])
  __I([[The protocol version __SA(protocol) specifies the protocol version for the prefixed messages but also for this non-prefixed __SERVER message.
      &nbsp;It is possible to receive a different protocol version in which case the tokens after the __SA(protocol) string may differ.]])
  __I([[The __SA(description) should not contain the IP number of the server, the IP number of the server is namely added by its uplink to the description field before propagating the __SERVER message.]])
  __I([[The __C('1') and the __C('J') in the __SERVER message are mandatory for received messages.
      &nbsp;It is an error if these characters are different.]])
  __I([[The __C('0'), just before the description field, is optional for received messages, but mandatory for sent messages.
      &nbsp;In the future (P11) this will become an unsigned integer (in ascii [[format]]).]])
)

<A name="bootTS"></A>
<H4>2.3.4 Boot Time Stamp</H4>

<P>The <I>Boot Time Stamp</I> is a __C(time_t) variable,
which is initialized to the time in UTC seconds when the server application is (re)started.&nbsp;
Next it is replaced by the value of a __SA(boot_time) parameter of received __SERVER messages
whenever that value is <EM>smaller</EM>.</P>

<A name="linkTS"></A>
<H4>2.3.5 Link Time Stamp</H4>

<P>The __SA(link_time) parameter of a generated message when <B>initiating</B> a connection represents the current value of
the <I>TS Clock Time</I>, possibly incremented a few seconds in order to make sure that the server never generates twice
the same value for a __SA(link_time) (The value must be at least 1 second larger than the last value used in a sent
__SA(pre_auth_server) message).</P>

<P>In all other cases (when not initiating the connection), the __SA(link_time) parameter is the same string as received in the
corresponding __SERVER message for that link.</P>

<H4>2.3.6 TS Clock Time</H4>

<P>The <I>TS Clock Time</I> is the current time in UTC seconds plus an offset which is calculated from the __SA(boot_time),
the __SA(link_time) and the system clock at the moment a __SA(pre_auth_server) message is received
(which successfully authenticates) and this application did initiate the connection.&nbsp;
When the received __SA(boot_time) is equal to or smaller than the current value of the <I>Boot Time Stamp</I>,
then the new offset is set such that the resulting <I>TS Clock Time</I> equals the received __SA(link_time).</P>

dnl
dnl#*************************************************************************
dnl#  Chapter 3.
dnl#*************************************************************************
dnl
<A name="net.burst"></A>
<H2>3. Net burst</H2>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 3.1
dnl#-------------------------------------------------------------------------
dnl
<A name="relationships"></A>
<H3>3.1 Objects and relationships</H3>

<P>A complete IRC network exists of several servers each of which
keeps a copy of a database which contains information about the
clients and the channels of the network.&nbsp; This copy can be different
on different servers due to the dynamic nature of the network.&nbsp; We are
only interested in <I>one</I> copy: The variables on <U>this</U>
server: the <U>application</U> that is generating and receiving the
messages described in this document.</P>

<P>The objects refered to in this paragraph are therefore the
internal variables of <U>this</U> application, <B>not</B> the <B>real</B>
entities they describe.&nbsp; The difference between the objects in our
local copy of the database and the real, current, state of the
relevant entities is what makes the protocol hard to understand if
one mixes the two up.</P>

<P>There are three classes of objects:</P>

<OL>
  <LI>Servers</LI>
  <LI>Clients</LI>
  <LI>Channels</LI>
</OL>

<P>There are four different <I>relationships</I> between these objects:</P>

<OL>
  <LI>A Server can be <I>connected</I> to another Server.</LI>
  <LI>A Client can be <I>connected</I> to a Server.</LI>
  <LI>A Client can be <I>joined</I> on a Channel.</LI>
  <LI>A Client can have several channel dependent flags set (usually for channels on which they are <EM>joined</EM>).</LI>
</OL>

<P>The state of the Server object and relationship 1. is completely
determined by the __SERVER,&nbsp; __END_OF_BURST and the __SQUIT messages.</P>

<P>Likewise, relationship 2. is completely determined by the __NICK2 and the __QUIT and __KILL messages,
while the state of the Client object is additionally determined by the __MODE1p,&nbsp; __AWAY and __SILENCE messages.</P>

<P>Relationship 3. is changed by the __CREATE,&nbsp; __JOIN,&nbsp; __KICK,&nbsp; __PART and __BURST messages.</P>

<P>The state of a Channel object is changed by the messages __MODE2p and __TOPIC.</P>

<P>Finally, relationship 4. is determined (apart from the messages that determine relationship 3. of course)
by the messages __MODE2p&nbsp;, __INVITE and __BURST.</P>

<P>Notes:</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[Commands that change the state of a <I>remote</I> server
      application are not listed of course: Those messages don't change
      the state of our own local objects.]])
  __I([[The local server, the application itself, has a lot more
      variables - the state of the local server can be changed by
      several other messages not listed here either.]])
)

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 3.2
dnl#-------------------------------------------------------------------------
dnl
<H3>3.2 Creation and destruction of the objects</H3>

<P>The Server object is created when a new server is introduced by means of the __SERVER message
(provided the server is accepted and the application doesn't send an __SQUIT upstream instead).&nbsp;
A Server object gets destructed when an __SQUIT message is received causing it to be disconnected from the local Server object.</P>

<P>The Client object is created when introduced with a __NICK2 message and destructed when a corresponding __QUIT or __KILL message
is received for the client __SA(nicknum), or when its server Object is destructed.</P>

<P>A Channel object is created when the first client joins the channel (__CREATE and __JOIN)
and destructed when the last client leaves the channel (__PART,&nbsp; __KICK and __JOIN[[]]__S( 0)).&nbsp;
When a Client object gets destructed, the client also leaves all channels of course.</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[It is not really necessary to destruct the Server and Client
  objects when an __SQUIT is received, as long as the server hides
  this fact from the clients.&nbsp; It should appear as if clients that
  split off (because the side of the network they are connected to
  disconnects) also leave all channels, and re-join when the net is
  reconnected.&nbsp; The only gain here would be in the size of the
  net-burst because only <I>changes</I> in the relationships should
  be needed to be passed to the servers behind the first server of
  our side.&nbsp; Realizing this needs a change in the protocol however,
  probably P11, and this documentation describes P10.&nbsp; Therefore it
  is reasonable to actually destruct the objects and we will assume
  that is the case here.]])
)

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 3.3
dnl#-------------------------------------------------------------------------
dnl
<H3>3.3 Synchronization and message queueing</H3>

<P>The concept of <I>synchronization</I> in a highly dynamic network
like an IRC network might be hard to grasp.&nbsp; The main idea is that
every change in the local state of an application (that is, the local
server, one of its local clients or a channel due to a message from a
local client) which is relevant for the corresponding object on the
remote servers, is represented by a message, sent to these remote
servers.&nbsp; In order to get full synchronization, this message must
reach all servers.</P>

<P>However, a message can be rejected somewhere half way by one of
the receiving servers.&nbsp; In that case a cancelling message needs to be
sent to all servers that the original message did already reach - in
order to cancel the change everywhere.</P>

<P>If there is a network congestion and there are more messages being
sent over a <I>link</I> then the bandwidth allows at that moment,
then these messages need to be queued.&nbsp; This costs memory, and the
application can run out of memory, or the lag caused by the size of
the queue can grow unacceptable large.&nbsp; Therefore it can happen that
this <I>link</I> breaks, and all queued messages get lost.</P>

<P>Because of the lost messages, a special resynchronization step is
needed when the two sides of the IRC network reconnect.&nbsp; As said
before, this is currently done by a <B>full</B> synchronization: All
state information of the objects and their relationships are (re)sent
to the connecting side.&nbsp; Well, thats not entirely true: Certain
information is disregarded on purpose - causing <B>desynchronisation</B>
between the servers.&nbsp; The reason for disregarding this information is
to reduce the size of the so called <I>net burst</I>.</P>

<P>The changes represented by the following messages are disregarded:
__AWAY,&nbsp; __SILENCE,&nbsp; __TOPIC and __INVITE.&nbsp; __SILENCE has its own resynchronisation mechanism.&nbsp;
An invited client that did split off before the invite reached him needs to be re-invited,
the desynchronisation of the invite-flag in the objects of servers not the local server of the client, is not relevant.&nbsp;
Not resending the __AWAY messages and the channel __TOPIC results in a plain desynchronisation.&nbsp;
Its the only desynchronisation however that can not be abused.</P>

<P>Because in the current implementation all objects that split off are destructed,
it is not necessary to resent destructing messages.&nbsp;
The messages left over are __SERVER,&nbsp; __NICK2,&nbsp; __MODE1p,&nbsp; __CREATE,&nbsp; __JOIN and __MODE2p.&nbsp;
During the special step of resynhronizing the network after a <I>net.junction</I>, sending the <I>net burst</I>,
the last four messages are combined into a single message: __BURST.</P>

__BULLETS(ball_blue_icon.gif,dnl
  __I([[Some messages, like the chat messages itself, don't need any
      synchronization.&nbsp; Those messages don't need to be queued because of
      synchronisation.&nbsp; Not all messages need to be kept in the same
      order to garantee synchronization: Messages related to different
      channels could be mixed up as a function of the bandwidth use per
      channel for instance.&nbsp; In order to be able to assign priorities to
      queued messages it is better to queue the messages as objects
      rather then to queue them as a string of characters in one huge
      buffer.&nbsp; It is almost certain that this type of queueing will be
      necessary for P11.]])
)

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 3.4
dnl#-------------------------------------------------------------------------
dnl
<H3>3.4 State of an authenticated link</H3>

<P>When two servers connect the state of the link reaches the <I>authenticated</I> state
at one point (See <A HREF="[[#]]Authentication procedure">chapter 2</A>).&nbsp;
There are multiple authenticated states however.&nbsp; Two more states follow the <I>authenticated</I> state:</P>

<TABLE width=539 border=1 cellpadding=4 cellspacing=0 bordercolor=black>
<CAPTION>Burst handshake of local connections</CAPTION>
<TR>
  <TH WIDTH=243>Event</TH>
  <TH WIDTH=173>Action</TH>
  <TH WIDTH=98>State</TH>
</TR>
<TR>
  <TD WIDTH=243>&nbsp;</TD>
  <TD WIDTH=173>(sending burst)</TD>
  <TD WIDTH=98><I>authenticated</I></TD>
</TR>
<TR>
  <TD WIDTH=243>__END_OF_BURST message sent</TD>
  <TD WIDTH=173>&nbsp;</TD>
  <TD WIDTH=98><I>burst_sent</I></TD>
</TR>
<TR>
  <TD WIDTH=243>__END_OF_BURST message received</TD>
  <TD WIDTH=173>Send __EOB_ACK message</TD>
  <TD WIDTH=98><I>burst_received</I></TD>
</TR>
<TR>
  <TD WIDTH=243>__EOB_ACK message received</TD>
  <TD WIDTH=173>&nbsp;</TD>
  <TD WIDTH=98><I>linked</I></TD>
</TR>
</TABLE>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 3.5
dnl#-------------------------------------------------------------------------
dnl
<H3>3.5 State of a remote link</H3>

<P>Servers introduced by local servers are <EM>remote servers</EM>.&nbsp;
The links via which a remote server is connected also goes through a few states during its net burst.&nbsp;
If a remote server is introduced with a __SERVER message that has a __S(P) in its protocol field, then that
link is immedeately in the state <I>linked</I>.&nbsp;
However, if the protocol field starts with a __S(J) (see __SA(pre_auth_server)), then that link goes through
the following states:</P>

<TABLE width=539 border=1 cellpadding=4 cellspacing=0 bordercolor=black>
<CAPTION>Burst handshake of remote connections</CAPTION>
<TR>
  <TH WIDTH=243>Event</TH>
  <TH WIDTH=173>Action</TH>
  <TH WIDTH=98>State</TH>
</TR>
<TR>
  <TD WIDTH=243>Received __SERVER with __C(J) in protocol</TD>
  <TD WIDTH=173>&nbsp;</TD>
  <TD WIDTH=98><I>burst</I></TD>
</TR>
<TR>
  <TD WIDTH=243>__END_OF_BURST message received</TD>
  <TD WIDTH=173>&nbsp;</TD>
  <TD WIDTH=98><I>burst_received</I></TD>
</TR>
<TR>
  <TD WIDTH=243>__EOB_ACK message received</TD>
  <TD WIDTH=173>&nbsp;</TD>
  <TD WIDTH=98><I>linked</I></TD>
</TR>
</TABLE>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 3.6
dnl#-------------------------------------------------------------------------
dnl
<H3>3.6 Generating the net burst</H3>

<P>The messages that form the net burst must be generated in an order which allows the receiving server to create the objects and
relationships represented by each message, at the moment the message is received.&nbsp;
So, first a Server objects must be created and then the Client objects connected to that Server.&nbsp;
Likewise, a Server that is connected closer must be created first before a Server behind it can be introduced, etc.</P>

<P>Because servers may be rejected as function of which servers are introduced,
it makes most sense to first introduce <U>all</U> servers before introducing clients.&nbsp;
This in order to avoid processing parts of a net burst, creating client objects,
which need to be destructed a second later again.</P>

<P>Therefore, the net burst is constructed as follows:</P>

__BULLETS(ball_orange_icon.gif,dnl
  __I([[All __SERVER messages, one for each Server object - the closest first.]])
  __I([[All __NICK2 messages, one for each Client object.]])
  __I([[All __BURST messages, one or more for each Channel object.]])
  __I([[One __END_OF_BURST message.]])
)

dnl
dnl#*************************************************************************
dnl#  Chapter 4.
dnl#*************************************************************************
dnl
<H2>4. Special server types</H2>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 4.1
dnl#-------------------------------------------------------------------------
dnl
<A name="uworld"></A>
<H3>4.1 Trusted Services</H3>

<P>Some services are of a special trusted type.&nbsp; Like all services they just
register as a normal server but they use a __SA(servname) that is agreed upon
by all other servers and services on the network giving them the right to make
any kind of changes to the state of channels.</P>

<P>Trusted Services are not allowed to introduce other servers <EM>except</EM>
<A href="[[#]]jupes">Jupes</A>.

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 4.2
dnl#-------------------------------------------------------------------------
dnl
<A name="jupes"></A>
<H3>4.2 Jupes</H3>

<P>A Jupe is a server whose info field __SA(description) starts with the four characters __Q(JUPE) (case sensitive).&nbsp;
Juped servers are not allowed to send any message except the the __SERVER message that introduces themselfs.&nbsp;
Juped servers can not be SQUIT-ed by other servers (only by Opers).</P>

dnl
dnl#*************************************************************************
dnl#  Chapter 5.
dnl#*************************************************************************
dnl
<H2>5. Nick collisions</H2>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 5.1
dnl#-------------------------------------------------------------------------
dnl
<H3>5.1 Server nick collisions</H3>

<P>Each received __SERVER message introduces a new Server object with a numeric handle __SA(servnum) and a name __SA(servname).&nbsp;
When a Server object with the same numeric or name already exists, then we have a <I>server nick collision</I>.</P>

<P>In the case of a collision, either an __SQUIT message must be generated to break the <I>loop</I> that is the result
of this (if server tries to connect (link state <I>pass</I>) and the supplied name and/or numeric collides,
causing it to be rejected - then an <A HREF="[[#]]pre_auth_error">__S(ERROR)</A> message is sent instead of an __SQUIT message of course).</P>

<P>Collision checking for <I>local</I> servers is done <B>after</B> authentication checking.</P>

<H4>5.1.1 Local connection</H4>

<P>If a collision occurs with the name and/or numeric of the server application itself,
then the <I>local</I> link over which the __SERVER message was received is terminated.</P>

<P>When the existing server is an <A HREF="[[#]]uworld">Trusted Service</A>
then the <I>local</I> connection over which the __SERVER message was received must be terminated.&nbsp;
Trusted Services are expected to always connect to the same server so that any collision with it makes the
whole side of the net that introduced the fake service suspicious.</P>

<H4>5.1.2 Introduced server</H4>

<P>The server that is introduced by the received __SERVER message should be rejected in the following cases:</P>

<UL>
  <LI>The numeric is colliding, but the name of the servers are different.</LI>
  <LI>The name is colliding, but the numeric of the servers are different.</LI>
  <LI>When the existing server is a <A HREF="[[#]]jupes">Jupe</A>.</LI>
</UL>

<H4>5.1.3 Existing server</H4>

<P>The existing server is squitted in the following cases:</P>

<UL>
  <LI>When the existing Server object is a <I>local</I> link with state <I>challenged</I> or <I>handshake</I>
  (Note that it is not allowed to have more then one connect attempt at a time).</LI>
  <LI>When the existing Server object is a <I>Ghost</I>.&nbsp; A server is a ghost when the new server that
  caused the collision is a direct connection.</LI>
  <LI>When the existing Server object is part of a <I>Ghost loop</I>:
  when the new server that caused the collision is introduced by a
  server that caused a Ghost, as part of the same (initial) burst.</LI>
</UL>

<H4>5.1.4 The second youngest link</H4>

<P>When none of the above causes the collision to be solved, then the
second youngest link in the loop according to the <I>link time</I>
must be terminated, or when the third and second youngest link in the
loop have the same <I>link time</I>, then the link to be terminated
is determined by the names of the servers: The link that is a
connection of the server with the largest name (See __C(strcmp(3))).
If that still doesn't uniquely identify a link (because we have
A&nbsp;--&nbsp;C&nbsp;--&nbsp;B), then the link with the largest of
the two remaining server names must be terminated (C&nbsp;--&nbsp;B).</P>

<H4>5.1.5 Configuration rules</H4>

<P>All of the above rules determine where the <I>loop</I> should be broken.&nbsp;
Independent of that it is possible that the received __SERVER message causes the need for a link termination as a result of a
<I>Configuration Rule</I> (d:, D:, H: or L: lines).</P>

<P>At all times only <B>one</B> link should be terminated (otherwise
it is possible that the net ends up in two parts), therefore the
following rule applies: If the two links that need to be broken (one
according to &sect; 5.1.1 through &sect; 5.1.4 and one according to a
Configuration rule) are in the same direction, then only the one that
is closest is actually broken.&nbsp; If the two links lay in opposite
directions, then the link in the direction from which we received the
__SERVER message is broken.</P>

<P>If the link that needs to be broken according to a Configuration rule doesn't lay on the <I>loop</I>,
then this paragraph does not apply.</P>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 5.2
dnl#-------------------------------------------------------------------------
dnl
<H3>5.2 Client nick collisions</H3>

<P>Each received __NICK2 message with a server as source, introduces a new Client object with a numeric
handle __SA(nicknum) and a name __SA(nickname).&nbsp;
Each __NICK1 message with a client as source, changes the name of a given Client object.&nbsp;
When another Client object with the same <A HREF="[[#]]masked numeric">masked numeric</A> or name already exists,
then we have a <I>client nick collision</I>.</P>

<P>If the collision is with a local client which did not authenticate yet (who is not yet broadcasted to the other servers),
then this local client is removed.</P>

<P>Otherwise if it is a nick change (the source of the __NICK1 message is a client)
and if the <I>time stamps</I> of the nicks of the two colliding clients are equal,
or when the <I>time stamp</I> of the incoming nick is larger and the user@hostname differs,
or when the <I>time stamp</I> of the incoming nick is smaller and the user@hostname is equal
then send a __KILL message to all outgoing servers for the source client.&nbsp;
If the collision is with a local client, also send a __KILL upstream
(this for security reasons and might not really be necessary).</P>

<P>Otherwise, but also when the two <I>time stamps</I> are equal,
send a __KILL message for the existing client to all outgoing servers.</P>

dnl
dnl#*************************************************************************
dnl#  Chapter 6.
dnl#*************************************************************************
dnl
<A name="overview"></A>
<H2>6. Message overview</H2>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 6.1
dnl#-------------------------------------------------------------------------
dnl
<A name="resvparam"></A>
<H3>6.1 Reserved parameter position</H3>

<P>The syntax of the authenticated __SA(message) is described in <A HREF="[[#]]message">&sect; 1.3</A>.</P>

<P>As stated before, there is a position reserved for new parameters:</P>

__PS(__AB(prefix)&nbsp;__AB(cmd)&nbsp;__V(param<SUB>0</SUB>)&nbsp;__V(param<SUB>1</SUB>)&nbsp;...&nbsp;__V(param<SUB>p-1</SUB>)[&nbsp;<B><I>reserved</I></B>&nbsp;...]&nbsp;__V(param<SUB>n-q</SUB>)&nbsp;__V(param<SUB>n-q+1</SUB>)&nbsp;...&nbsp;[__SA(colon)]__V(param<SUB>n-1</SUB>))

<P>where</P>

__DT
  __VE(p, Number of defined parameters at the beginning.)
  __VE(q, Number of defined parameters at the end.)
  __VE(n, Number of received parameters.)
__DTE

<P>If __V(&nbsp;n &gt; p + q&nbsp;) then __V(&nbsp;<I>param<SUB>p</SUB></I>&nbsp;)
till __V(&nbsp;<I>param<SUB>n-q-1</SUB></I>&nbsp;) must be ignored by P10.&nbsp;&nbsp;
P10 may or may not propagate the extra parameters, P11 will demand extra parameters to be propagated.</P>

<P>The maximum number of received parameters is 15, in other words __V(n&nbsp;&lt;&nbsp;16).</P>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 6.2
dnl#-------------------------------------------------------------------------
dnl
<A name="target_types"></A>
<H3>6.2 Target types</H3>

<P>A lot of commands behave more or less the same in the way they are propagated.&nbsp;
If neither a server nor one of its locally connect clients is a target of a message, it
should merely route the message and not change its database state based on the message's content.&nbsp;
In total we can distinguish six main types:</P>

<PRE>
__TA(wall)    : Propagate to all servers
__TA(server)  : Target is a server
__TA(client)  : Target is a client
__TA(channel) : Target is a channel
__TA(umode)   : Target is all users with a given umode
__TA(catch)   : Don't propagate
</PRE>

<A name="target_wall"></A>
<H4>6.2.1 wall</H4>

<P>This type of message doesn't have a target field.&nbsp;
It is propagated without change to all servers.&nbsp;
The application who receives such a message will propagate the message to all other (<I>authenticated</I>) server links it has.</P>

<P>Messages that are not essential for synchronisation can optionally
be hold back for links that are still exchanging the net.burst
(states <I>authenticated</I> and <I>burst_sent</I>).</P>

<P>Messages that are propagated as the <I>wall</I> type are __AWAY, __BURST,
__CREATE, __END_OF_BURST, __EOB_ACK, __GLINE2, __JOIN, __KICK, __KILL, __MODE1p,
__MODE2p, __NICK1, __NICK2, __PART, __QUIT, __SERVER, __SETTIME2, __SILENCE,
__SQUIT and __TOPIC.</P>

<A name="target_server"></A>
<H4>6.2.2 server</H4>

<P>This type of message has a server numeric or name as target field.
It usually has no effect on the internal state of servers that are
only routing it, until it reaches its destination.</P>

<P>Messages that are propagated as the <I>server</I> type are __ADMIN, __CONNECT,
__GLINE1, __GLINE2, __INFO, __LINKS, __LUSERS, __MOTD, __NAMES, __PING, __PONG,
__RPING1, __RPING2, __RPONG1, __SETTIME1, __STATS, __TIME, __TRACE, __UPING,
__VERSION, __WHOIS and __WHOWAS.</P>

<A name="target_client"></A>
<H4>6.2.3 client</H4>

<P>This type of message has a client numeric or name as target field.
It usually has no effect on the internal state of servers that are
only routing it, until it reaches its destination: the server of the
client.</P>

<P>Messages that are propagated as the <I>client</I> type are __INVITE,
__NOTICE, __PONG, __PRIVMSG, __RPONG2, __SILENCE and __TRACE.</P>

<A name="target_channel"></A>
<H4>6.2.4 channel</H4>

<P>This type of message is only routed to those servers that have
clients on this channel.&nbsp; It is not routed over links that are not in
the <I>linked</I> state however, in order to prevend excessive lag
build up.&nbsp; These type of messages are never essential for (channel)
synchronisation, which are of type __TA(wall).</P>

<P>Messages that are propagated as the <I>channel</I> type are __NOTICE,
__PRIVMSG and __WALLCHOPS.</P>

<A name="target_umode"></A>
<H4>6.2.5 umode</H4>

<P>This type of message is essentially a __TA(wall) type message, but only
routed over links that have clients behind it with a certain umode
set.&nbsp; Like the __TA(wall) type message, it does not have a target field.</P>

<P>Messages that are propagated as the <I>umode</I> type are __DESYNCH and __WALLOPS.</P>

<A name="target_catch"></A>
<H4>6.2.6 catch</H4>

<P>This type of message is not routed at all.&nbsp; It has no target
field, but is considered to be targetted to the application itself.</P>

<P>The only message that are propagated as the <I>catch</I> type is __ERROR.</P>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 6.3
dnl#-------------------------------------------------------------------------
dnl
<A name="message_types"></A>
<H3>6.3 Message types</H3>

<P>A lot of commands behave the same in the way they effect the
internal state of a server.&nbsp; We have essentially seven main types:</P>

<PRE>
__TY(server)  : Change internal state of server object
__TY(client)  : Change internal state of client object
__TY(channel) : Change internal state related to channel
__TY(query)   : Query remote server for information
__TY(remote)  : Trigger a different remote action
__TY(notice)  : Send a one way notice
__TY(chat)    : Communication between two or more users
</PRE>

<P>The first three change someting in the Server, Client or Channel
objects respectively, and/or in the <A HREF="[[#]]relationships">relationships</A> between these objects.&nbsp;
These are thus (mostly) of propagation type __TA(wall) because all servers need to be synchronized.&nbsp;
The exceptions are __INVITE and __SILENCE, the first because it is only needed to know at the server local to
the invited client that it is invited, and the second because __SILENCE has its own synchronization method.</P>

<P>The last four types don't change anything in the servers they
pass, until they reach the point of destination.</P>

<A name="type_server"></A>
<H4>6.3.1 server</H4>

<P>The commands of type <I>server</I> are __END_OF_BURST, __EOB_ACK, __SERVER and __SQUIT.&nbsp;
These commands change something in one or more Server objects and control relationship 1.</P>

<A name="type_client"></A>
<H4>6.3.2 client</H4>

<P>The commands of type <I>client</I> are __AWAY, __KILL, __MODE1p, __NICK1, __QUIT and __SILENCE.&nbsp;
These commands change something in a Client object and control relationship 2.</P>

<A name="type_channel"></A>
<H4>6.3.3 channel</H4>

<P>The commands of type <I>channel</I> are __BURST, __CREATE, __INVITE, __JOIN, __KICK, __KILL, __MODE2p, __PART and __QUIT.&nbsp;
These commands change something in a Channel object and control relationships 3 and 4.&nbsp;
The __PART and __QUIT messages only change these relationships indirectly when the client is on a channel, the code
for it being hidden behind the removal of the Client object.</P>

<A name="type_query"></A>
<H4>6.3.4 query</H4>

<P>The commands of type <I>query</I> are __ADMIN, __GLINE1, __INFO, __LINKS, __LUSERS,
__MOTD, __NAMES, __PING, __RPING2, __STATS, __TIME, __TRACE, __VERSION, __WHOIS and __WHOWAS.&nbsp;
These commands, when received by the server, send back a reply to the source (__TA(client)) of the message.&nbsp;
The content of the reply may depend on the umode of the client.&nbsp;
The __SA(prefix) of the reply message(s) must represent the server generating the reply and the
target must represent the source of the query.&nbsp;
The __TRACE command is special because every server on its path to the target server does send a reply to the source.</P>

<A name="type_notice"></A>
<H4>6.3.5 notice</H4>

<P>The commands of type <I>notice</I> are __DESYNCH, __ERROR, __NOTICE, __PONG, __RPONG2 and __WALLOPS.</P>

<A name="type_chat"></A>
<H4>6.3.6 chat</H4>

<P>The commands of type <I>chat</I> are __PRIVMSG and __WALLCHOPS.</P>

<A name="type_remote"></A>
<H4>6.3.7 remote</H4>

<P>The commands of type <I>remote</I> are __CONNECT, __GLINE1 (query), __GLINE2 (setting a gline),
__RPING1, __RPONG1, __SETTIME1 (from client), __SETTIME2 (from server) and __UPING.</P>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 6.4
dnl#-------------------------------------------------------------------------
dnl
<H3>6.4 Command overview</H3>

<P>Table 3 gives an overview of the existing commands that can be used in the __SA(cmd) position in a message line.&nbsp;
<B>Command</B> gives the unabbreviated string while <B>Token</B> gives the abbreviated synonym for the same command.&nbsp;
The <B>Source</B> field specifies whether the __SA(prefix)
can refer to a client, server or both as the originator of the
message.&nbsp; <B>p</B>, <B>q</B> and <B>n</B> are as defined in
<A HREF="[[#]]resvparam">&sect;&nbsp;6.1</A>.&nbsp; The column <B>Spaces in last param</B>
specifies whether the last parameter is allowed to contain spaces (and thus
must be preceded by a __SA(colon)).&nbsp; <B>Target</B>
is as described in <A HREF="[[#]]target_types">&sect;&nbsp;6.2</A>.&nbsp;
<B>Modified before propagation</B> specifies if the parameters are
modified by servers other than the originating server.&nbsp; <B>Type</B>
spefifies the Message Type, described in <A HREF="[[#]]message_types">&sect;&nbsp;6.3</A>.</P>

define([[__H]], [[<TR><TD><A href="[[#]]m_$2">$3</A></TD><TD>$4</TD><TD>$5</TD><TD>$6</TD><TD>$7</TD><TD>$8</TD><TD>$9</TD><TD>$10</TD><TD>$11</TD><TD>$12</TD></TR>]])dnl

<TABLE width=712 border=1 bordercolor="#000000" cellpadding=4 cellspacing=0>
<CAPTION>Table 3&nbsp; Command overview.</CAPTION>
<TR><TH WIDTH=126>Command</TH><TH WIDTH=52>Token</TH><TH WIDTH=59>Source</TH><TH WIDTH=31>p</TH><TH WIDTH=31>q</TH><TH WIDTH=31>n</TH><TH WIDTH=38><FONT SIZE=1>Spaces&nbsp;in<BR>last&nbsp;param</FONT></TH><TH WIDTH=102>Target</TH><TH WIDTH=60><FONT SIZE=1>Modified&nbsp;before<BR>propagation</FONT></TH><TH WIDTH=103>Type</TH></TR>
__H(1, admin, ADMIN, AD, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(2, away, AWAY, A, client, &nbsp;, &nbsp;, 0...1, Yes, __TA(wall), &nbsp;, __TY(client))
__H(3, burst, BURST, B, server, &nbsp;, &nbsp;, 4...7, Yes, __TA(wall), &nbsp;, __TY(channel))
__H(4, connect, CONNECT, CO, client, 3, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(remote))
__H(5, create, CREATE, C, client, 2, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(channel))
__H(6, desynch, DESYNCH, DS, server, 0, 1, &nbsp;, Yes, __TA(umode), &nbsp;, __TY(notice))
__H(7, end_of_burst, END_OF_BURST, EB, server, 0, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(server))
__H(8, eob_ack, EOB_ACK, EA, server, 0, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(server))
__H(9, error, ERROR, Y, server, 0, 1, &nbsp;, Yes, __TA(catch), &nbsp;, __TY(notice))
__H(10, gline1, GLINE, GL, client, 3, 0, &nbsp;, Yes, __TA(server), &nbsp;, __TY(query)&nbsp;/&nbsp;__TY(remote))
__H(11, gline2, GLINE, GL, server, 4, 0, &nbsp;, Yes, __TA(wall)&nbsp;/&nbsp;__TA(server), &nbsp;, __TY(remote))
__H(12, info, INFO, F, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(13, invite, INVITE, I, client, 2, 0, &nbsp;, &nbsp;, __TA(client), &nbsp;, __TY(channel))
__H(14, join, JOIN, J, client, 2, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(channel))
__H(15, kick, KICK, K, both, 2, 1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(channel))
__H(16, kill, KILL, D, both, 1, 1, &nbsp;, Yes, special&nbsp;__TA(wall), Yes, __TY(client)&nbsp;&amp;&nbsp;__TY(channel))
__H(17, links, LINKS, LI, client, 1...2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(18, lusers, LUSERS, LU, client, 2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(19, mode1, MODE, M, client, 2, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(client))
__H(20, mode2, MODE, M, both, &nbsp;, &nbsp;, 1...9, &nbsp;, __TA(wall), &nbsp;, __TY(channel))
__H(21, motd, MOTD, MO, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(22, names, NAMES, E, client, 2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(23, nick1, NICK, N, client, 2, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(client))
__H(24, nick2, NICK, N, server, 5...6, 3, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(client))
__H(25, notice, NOTICE, O, both, 1, 1, &nbsp;, Yes, __TA(channel)&nbsp;/&nbsp;__TA(client), &nbsp;, __TY(notice))
__H(26, part, PART, L, client, 1, 0...1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(channel))
__H(27, ping, PING, G, both, 1...2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(28, pong, PONG, Z, server, 2, 0, &nbsp;, &nbsp;, __TA(client)&nbsp;/&nbsp;__TA(server), &nbsp;, __TY(notice))
__H(29, privmsg, PRIVMSG, P, client, 1, 1, &nbsp;, Yes, __TA(channel)&nbsp;/&nbsp;__TA(client), &nbsp;, __TY(chat))
__H(30, quit, QUIT, Q, client, 1, 1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(client)&nbsp;&amp;&nbsp;__TY(channel))
__H(31, rping1, RPING, RI, client, &nbsp;, &nbsp;, 3, Yes, __TA(server), &nbsp;, __TY(remote))
__H(32, rping2, RPING, RI, server, &nbsp;, &nbsp;, 5, Yes, __TA(server), &nbsp;, __TY(query))
__H(33, rpong1, RPONG, RO, server, &nbsp;, &nbsp;, 4, Yes, __TA(server), &nbsp;, __TY(remote))
__H(34, rpong2, RPONG, RO, server, &nbsp;, &nbsp;, 4, Yes, __TA(client), &nbsp;, __TY(notice))
__H(35, server, SERVER, S, server, 7, 1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(server))
__H(36, settime1, SETTIME, SE, client, 2, 0, &nbsp;, &nbsp;, special&nbsp;__TA(server), Yes, __TY(remote))
__H(37, settime2, SETTIME, SE, server, 1, 0, &nbsp;, &nbsp;, special&nbsp;__TA(wall), Yes, __TY(remote))
__H(38, silence, SILENCE, U, client, 2, 0, &nbsp;, &nbsp;, __TA(client)&nbsp;/&nbsp;__TA(wall), &nbsp;, __TY(client))
__H(39, squit, SQUIT, SQ, both, 2, 1, &nbsp;, &nbsp;, special&nbsp;__TA(wall), Yes, __TY(server))
__H(40, stats, STATS, R, client, 2...4, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(41, time, TIME, TI, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(42, topic, TOPIC, T, client, 1, 0...1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(channel))
__H(43, trace, TRACE, TR, client, 2, 0, &nbsp;, &nbsp;, __TA(client)&nbsp;/&nbsp;__TA(server), &nbsp;, special&nbsp;__TY(query))
__H(44, uping, UPING, UP, client, 4, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(remote))
__H(45, version, VERSION, V, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(46, wallchops, WALLCHOPS, WC, client, 1, 1, &nbsp;, Yes, special&nbsp;__TA(channel), &nbsp;, __TY(chat))
__H(47, wallops, WALLOPS, WA, both, 1, 0, &nbsp;, Yes, __TA(umode), &nbsp;, __TY(notice))
__H(48, whois, WHOIS, W, client, 2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__H(49, whowas, WHOWAS, X, client, 3, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
</TABLE>

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 6.5
dnl#-------------------------------------------------------------------------
dnl
undefine([[__H]])dnl
define([[__H]], [[<A name="m_$2"></A>
<H4>6.5.$1 $3</H4>
<TABLE border=1 cellpadding=4 cellspacing=0>
<TR><TH>Command</TH><TH>Token</TH><TH>Source</TH><TH>p</TH><TH>q</TH><TH>n</TH><TH><FONT SIZE=1>Spaces&nbsp;in<BR>last&nbsp;param</FONT></TH><TH>Target</TH><TH><FONT SIZE=1>Modified&nbsp;before<BR>propagation</FONT></TH><TH>Type</TH></TR>
<TR><TD>$3</TD><TD>$4</TD><TD>$5</TD><TD>$6</TD><TD>$7</TD><TD>$8</TD><TD>$9</TD><TD>$10</TD><TD>$11</TD><TD>$12</TD></TR>
</TABLE>
<H5>Parameters</H5>]])dnl
define([[__P]], [[<TABLE border=0 cellpadding=0 cellspacing=0>
<TR>
  <TD width=18>&nbsp;</TD>
  <TD width=64><I>param<SUB>$1</SUB></I></TD>
  <TD width=32>:</TD>
  <TD width=180>$2</TD>
  <TD width=412>$3</TD>
</TR>
</TABLE>]])dnl
dnl
<H3>6.5 Parameter definitions</H3>

__H(1, admin, ADMIN, AD, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[__SA(servnum)]], [[Target server numeric.]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[The target server replies to the source client with numerics __N(1, 256), __N(1, 257), __N(1, 258) and __N(1, 259).
      <P>The __SA(text) fields of these numeric replies should describe more or less the following:</P>
      <OL TYPE=1 START=256>
      <LI>The text: &laquo;__S(Administrative&nbsp;info&nbsp;about&nbsp;)&lt;name&nbsp;of&nbsp;the&nbsp;server&gt;&raquo.</LI>
      <LI>A descriptive name, for instance the name of the company or university running the server.</LI>
      <LI>The location of the server (city / country or state).</LI>
      <LI>Contact information for the admin, for instance an email address.</LI>
      </OL>
      <P>These four lines are usually specified by the admin in the configuration file of the server.</P>]])
)

__H(2, away, AWAY, A, client, &nbsp;, &nbsp;, 0...1, Yes, __TA(wall), &nbsp;, __TY(client))
<P>The parameter is optional.</P>
__P(0, [[__SA(text)]], [[User specified text string.]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[When the parameter is present then the source client object is marked as being <I>away</I>.]])
  __I([[Without the parameter, the source client object is marked as being <I>not away</I>.]])
)

__H(3, burst, BURST, B, server, &nbsp;, &nbsp;, 4...7, Yes, __TA(wall), &nbsp;, __TY(channel))
__P(0, [[__SA(channel_name)]], [[Name of target channel, will never be a local channel (start with an __C('&amp;')).]])
__P(1, [[__SA(time_stamp)]], [[&quot;Creation time&quot; of the channel.&nbsp; See __CREATE.]])
<P>The meaning of the following parameters depend on their first character.</P>
<P>If &nbsp;<I>param<SUB>i&nbsp;</SUB></I> starts with a __C('+') then</P>
__P(i, [[__S(+__AB(modes))]], [[Additive channel modes.&nbsp; Modes __C('k') and __C('l') each cause an additional <I>param</I>]])
__P(i+1, [[__SA(channel_key)]], [[Channel key (only present when __SA(modes) contains a __S(k))]])
__P(i+2, [[__SA(channel_limit)]], [[Channel limit (only present when __SA(modes) contains a __S(l))]])
<P>If __V(&nbsp;param<SUB>i</SUB>&nbsp;) starts with a __C('%'),&nbsp; then __V(i) will equal __V(n-1) and</P>
__P(i, [[__S(%__AB(burst_ban_list))]], [[Space seperated list of channel ban masks.]])
<P>If &nbsp;<I>param<SUB>i&nbsp;</SUB></I> starts with another character then</P>
__P(i, [[__SA(burst_nick_list)]], [[Comma seperated list of channel members and their modes.]])
<P>This message uses the following tokens:</P>
__DT
  __D(modes, [[__C([s|p][m][t][i][n][l][k])]])
  __D(burst_ban_list, __SLIA(ban mask) __SLIA(ban mask, space, burst_ban_list))
  __D(burst_nick_list, __SLIA(nicknum) __SLIA(nicknum, comma, burst_nick_list)
     __SLIA(nicknum, colon, ucmodes) __SLIA(nicknum, colon, ucmodes, comma, burst_nick_list))
__DTE
<P>where</P>
__DT
  __D(comma, [[__C('[[,]]') (ASCII 44)]])
  __D(ucmodes, [[<LI><DIV>__C('ov') (ASCII 111 and ASCII 118)</DIV></LI>
                 <LI><DIV>__C('v') (ASCII 118)</DIV></LI>
		 <LI><DIV>__C('o') (ASCII 111)</DIV></LI>]])
__DTE

<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[A __S(BURST) message from a server directly behind a link in the state <I>burst_received</I>
      or <I>linked</I> causes the local connection over which this illegal message was received
      to be terminated except when this server is a <A HREF="[[#]]uworld">Trusted Service</A>,
      in which case the message is accepted (and an appropriate notification is sent to all local +s users).]])
  __I([[If the channel object __SA(channel_name) does not exist then it is created and all its attributes are
      set appropriately.]])
  __I([[If the channel object __SA(channel_name) already exists and the received __SA(time_stamp) is larger
      than the existing one then all modes and bans are ignored: only the nicks are processed.]])
  __I([[If the channel object __SA(channel_name) already exists and the received __SA(time_stamp) is smaller
      than the existing one then all current users are deopped (and devoiced), the channel modes and bans are
      synchronized and the new creation time is used.]])
  __I([[If the channel object __SA(channel_name) already exist and the received __SA(time_stamp) is equal
      to the existing one then all incoming modes and bans are added as usual (see __MODE2).]])
  __I([[The nicks in the __SA(burst_nick_list) are processed as follows: if the __SA(nicknum) is valid
      and it is from the correct direction, it joins.&nbsp; If it doesn't exist or is from another
      direction, we have to ignore it.]])
  __I([[If all nicks are ignored, we remove the channel again when it is empty and don't propagate the __S(BURST) message.]])
)

__H(4, connect, CONNECT, CO, client, 3, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(remote))
__P(0, [[__SA(hostnamemask)]], [[Mask matching the name of server that is to be connected.]])
__P(1, [[__SA(port)]], [[TCP/IP port number to connect to.]])
__P(2, [[__SA(servname)]], [[Name of target server.]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[A __S(CONNECT) message is a request to the target server to initiate a connection to another server, whose
      name matches the given mask.&nbsp; The target server uses its configuration file to find a suitable server to
      connect to.]])
)
<H5>Note</H5>
__BULLETS(ball_blue_icon.gif,dnl
  __I([[The target server should broadcast the request using a __WALLOPS.]])
  __I([[The destination server may be unable or unwilling to initiate a new connection to the specified mask.&nbsp;
      In that case it can send a __NOTICE to the source client indicating the reason of failure.&nbsp;
      It is possible that this message is delayed, for example when the reason for a failure is a connect timeout.]])
)

__H(5, create, CREATE, C, client, 2, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(channel))
__P(0, [[__SA(channels)]], [[Comma-separated list of channel names]])
__P(1, [[__SA(time_stamp)]], [[Network time stamp for channel creation]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[A __S(CREATE) message is used for newly created channels.&nbsp; In effect it is equivalent to a __JOIN of
      the source client and granting him channel operator status.]])
  __I([[When a __S(CREATE) message is received for an already existing channel and the received time stamp
      is smaller than or equal to the creation time of that channel then the creation time of the channel is
      set to the received creation time and the __S(CREATE) message is processed as usual.]])
  __I([[When a __S(CREATE) message is received for an already existing channel and the received time stamp
      is larger than the creation time of that channel then the __S(CREATE) is processed as a normal
      __JOIN and a deopping __MODE2 (with the creation time of the local channel as time stamp) is send
      upstream to deop the source client.]])
)
<H5>Note</H5>
__BULLETS(ball_blue_icon.gif,dnl
  __I([[When a __S(CREATE) message is received for an already existing channel and the received time stamp
      is <EM>much</EM> larger than the creation time of that channel then it makes more sense to use
      a time stamp of zero for the deopping __MODE2 in order to trigger a __DESYNCH notice.&nbsp;
      With &quot;<EM>much</EM> larger&quot; is meant that the difference can not be explained by normal
      lag and/or clock offsets between servers.]])
)

__H(6, desynch, DESYNCH, DS, server, 0, 1, &nbsp;, Yes, __TA(umode), &nbsp;, __TY(notice))
__P(n-1, [[__SA(text)]], [[Message describing the desynchronization]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[__S(DESYNCH) is used to notify the network that desynchronization in clock or network state has
      been detected between two servers.  This may happen for a variety of reasons; the text should be
      read by humans, but is not intended to be automatically processed by network services.]])
)

__H(7, end_of_burst, END_OF_BURST, EB, server, 0, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(server))
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[__S(END_OF_BURST) is sent as the last line it a server's net.burst.  If the originator of
      this command is a locally connected server, an __EOB_ACK message should be sent to
      acknowledge the end of the burst.]])
)

__H(8, eob_ack, EOB_ACK, EA, server, 0, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(server))
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[__S(EOB_ACK) is sent as an acknowledgement of an __END_OF_BURST message.  After this message
      is sent, channel __PRIVMSG messages may be sent in that direction.]])
)

__H(9, error, ERROR, Y, server, 0, 1, &nbsp;, Yes, __TA(catch), &nbsp;, __TY(notice))
__P(n-1, [[__SA(text)]], [[Message describing error]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[__S(ERROR) is sent to indicate that the originating server will disregard any further data sent
        from the receiving server.  The text argument is meant for human consumption.]])
)

__H(10, gline1, GLINE, GL, client, 3, 0, &nbsp;, Yes, __TA(server), &nbsp;, __TY(query)&nbsp;/&nbsp;__TY(remote))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(11, gline2, GLINE, GL, server, 4, 0, &nbsp;, Yes, __TA(wall)&nbsp;/&nbsp;__TA(server), &nbsp;, __TY(remote))
__P(0, [[__SA(servnum)]], [[Target server numeric]])
__P(1, [[[__SA(sign)]__SA(short_hostmask)]], [[G-line operation and target]])
__P(2, [[__SA(duration)]], [[Duration of G-line (in seconds)]])
__P(3, [[__SA(text)]], [[Explanation or comment for G-line]])
<P>This message uses the following tokens:</P>
__DT
  __D(sign, [[__C(+|-)]])
  __D(short_hostmask, [[__SLIA(usermask) __C(@) __SLIA(hostnamemask)]])
  __D(duration, __SLIA(digit)+)
__DTE
<P>where</P>
__DT
  __D(usermask, [[Printable characters except for __C(@)]])
  __D(hostnamemask, [[Characters valid in host names, plus __C(?) and __C(*)]])
__DTE
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
  __I([[__S(GLINE) sets, removes or updates a G-line.  A G-line is a ban on certain clients
      from connecting to one or more servers.]])
  __I([[The target server may be any server's __SA(servnum) or __C('*') (which indicates
      all servers).  The __SA(sign) before the hostmask indicates whether the G-line should
      be added/updated or removed; if it is omitted, __C('+') is assumed.  The __SA(duration)
      is the new duration for the G-line; if an existing G-line has the same __SA(short_hostmask)
      as this command, its duration is updated with the new value.]])
)
<P>Notes:</P>
__BULLETS(ball_blue_icon.gif,dnl
  __I([[If the host part of the hostmask is a wildcarded IP mask, then the G-line should be
      considered valid based on a client's IP address.  Otherwise, the host part should be
      matched against the client's resolved hostname.  The method used to resolve a client's
      hostname is outside the scope of this document.]])
)

__H(12, info, INFO, F, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(13, invite, INVITE, I, client, 2, 0, &nbsp;, &nbsp;, __TA(client), &nbsp;, __TY(channel))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(14, join, JOIN, J, client, 2, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(channel))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(15, kick, KICK, K, both, 2, 1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(channel))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(16, kill, KILL, D, both, 1, 1, &nbsp;, Yes, special&nbsp;__TA(wall), Yes, __TY(client)&nbsp;&amp;&nbsp;__TY(channel))
__P(0, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(17, links, LINKS, LI, client, 1...2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
<P>Optional:</P>
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(18, lusers, LUSERS, LU, client, 2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(19, mode1, MODE, M, client, 2, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(client))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(20, mode2, MODE, M, both, &nbsp;, &nbsp;, 1...9, &nbsp;, __TA(wall), &nbsp;, __TY(channel))
__P(0, [[__SA(channel_name)]], [[Name of target channel.]])
__P(1, [[__SA(mode_list)]], [[The modes to be changed.]])
<P>The order of the following parameters is the same as the order in which
their corresponding __SA(mode) appears in the __SA(mode_block).</P>
__P(r, [[__SA(key)]], [[Channel key (only present when __SA(mode_block) contains a __S(k)).]])
__P(s, [[__SA(limit)]], [[Maximum number of channel members (only present when __SA(mode_block) contains a __S(l)).]])
__P(t, [[__SA(nicknum)]], [[Numeric client object that is [de]opped or [de]voiced
       (present,  for each __S(o) and __S(v) in __SA(mode_block), if any).]])
__P(u, [[__SA(ban_mask)]], [[Ban mask that needs to be added or removed, present for each __S(b) in __SA(mode_block), if any.]])
<P>This parameter is always the last parameter, but it is only present when the source of the message is a <EM>server</EM>.</P>
__P(n-1, [[<LI>__S(0)</LI>__SLIA(time_stamp)]], [[&quot;Creation time&quot; of the channel (see __CREATE) or a __S(0).]])
<P>This message uses the following tokens:</P>
__DT
  __D(mode_list, [[__SLIA(mode_block)__SLIA(mode_block, modelist)]])
  __D(key, [[A __SA(token) not containing any __SA(colon) and not containing any ASCII value smaller than 33.]])
  __D(limit, [[A series of digits (see __SA(digit)) representing an unsigned positive number smaller than 4294967296.]])
  __D(ban_mask, [[]])
__DTE

<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(21, motd, MOTD, MO, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(22, names, NAMES, E, client, 2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(23, nick1, NICK, N, client, 2, 0, &nbsp;, &nbsp;, __TA(wall), &nbsp;, __TY(client))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(24, nick2, NICK, N, server, 5...6, 3, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(client))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
__P(3, [[]], [[]])
__P(4, [[]], [[]])
<P>Parameter 5 is optional.</P>
__P(5, [[]], [[]])
__P(n-3, [[]], [[]])
__P(n-2, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(25, notice, NOTICE, O, both, 1, 1, &nbsp;, Yes, __TA(channel)&nbsp;/&nbsp;__TA(client), &nbsp;, __TY(notice))
__P(0, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(26, part, PART, L, client, 1, 0...1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(channel))
__P(0, [[]], [[]])
<P>Optional:</P>
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(27, ping, PING, G, both, 1...2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
<P>Optional:</P>
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(28, pong, PONG, Z, server, 2, 0, &nbsp;, &nbsp;, __TA(client)&nbsp;/&nbsp;__TA(server), &nbsp;, __TY(notice))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(29, privmsg, PRIVMSG, P, client, 1, 1, &nbsp;, Yes, __TA(channel)&nbsp;/&nbsp;__TA(client), &nbsp;, __TY(chat))
__P(0, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(30, quit, QUIT, Q, client, 1, 1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(client)&nbsp;&amp;&nbsp;__TY(channel))
__P(0, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(31, rping1, RPING, RI, client, &nbsp;, &nbsp;, 3, Yes, __TA(server), &nbsp;, __TY(remote))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(32, rping2, RPING, RI, server, &nbsp;, &nbsp;, 5, Yes, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
__P(3, [[]], [[]])
__P(4, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(33, rpong1, RPONG, RO, server, &nbsp;, &nbsp;, 4, Yes, __TA(server), &nbsp;, __TY(remote))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
__P(3, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(34, rpong2, RPONG, RO, server, &nbsp;, &nbsp;, 4, Yes, __TA(client), &nbsp;, __TY(notice))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
__P(3, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(35, server, SERVER, S, server, 7, 1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(server))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
__P(3, [[]], [[]])
__P(4, [[]], [[]])
__P(5, [[]], [[]])
__P(6, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(36, settime1, SETTIME, SE, client, 2, 0, &nbsp;, &nbsp;, special&nbsp;__TA(server), Yes, __TY(remote))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(37, settime2, SETTIME, SE, server, 1, 0, &nbsp;, &nbsp;, special&nbsp;__TA(wall), Yes, __TY(remote))
__P(0, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(38, silence, SILENCE, U, client, 2, 0, &nbsp;, &nbsp;, __TA(client)&nbsp;/&nbsp;__TA(wall), &nbsp;, __TY(client))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(39, squit, SQUIT, SQ, both, 2, 1, &nbsp;, &nbsp;, special&nbsp;__TA(wall), Yes, __TY(server))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(40, stats, STATS, R, client, 2...4, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<P>Optional:</P>
__P(2, [[]], [[]])
__P(3, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(41, time, TIME, TI, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(42, topic, TOPIC, T, client, 1, 0...1, &nbsp;, Yes, __TA(wall), &nbsp;, __TY(channel))
__P(0, [[]], [[]])
<P>Optional:</P>
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(43, trace, TRACE, TR, client, 2, 0, &nbsp;, &nbsp;, __TA(client)&nbsp;/&nbsp;__TA(server), &nbsp;, special&nbsp;__TY(query))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(44, uping, UPING, UP, client, 4, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(remote))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
__P(3, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(45, version, VERSION, V, client, 1, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(46, wallchops, WALLCHOPS, WC, client, 1, 1, &nbsp;, Yes, special&nbsp;__TA(channel), &nbsp;, __TY(chat))
__P(0, [[]], [[]])
__P(n-1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(47, wallops, WALLOPS, WA, both, 1, 0, &nbsp;, Yes, __TA(umode), &nbsp;, __TY(notice))
__P(0, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(48, whois, WHOIS, W, client, 2, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

__H(49, whowas, WHOWAS, X, client, 3, 0, &nbsp;, &nbsp;, __TA(server), &nbsp;, __TY(query))
__P(0, [[]], [[]])
__P(1, [[]], [[]])
__P(2, [[]], [[]])
<H5>Description</H5>
__BULLETS(ball_yellow_icon.gif,dnl
)

dnl
dnl#-------------------------------------------------------------------------
dnl#  Paragraph 6.6
dnl#-------------------------------------------------------------------------
dnl
<H3>6.6 Numerics</H3>

<A name="numeric_type_1"></A>
<H4>6.6.1 Type 1</H4>

__PSA(prefix, space, numeric, space, nickname, space, colon, text)

<P>where</P>

__DT
  __D(numeric, __SA(digit, digit, digit))
  __D(text, __SA(last_token))
__DTE

<BR>
<HR SIZE=1 NOSHADE>
<A HREF="../index.html"><IMG SRC="../images/home_btn.gif" ALIGN=MIDDLE HSPACE=5 WIDTH=30 HEIGHT=30 BORDER=0></A><A HREF="../index.html">Back to home page</A>
<ADDRESS>Questions and comments about this page should go to the maintainer: <A HREF="../anti/spam/bots/dont/like/deep/dirs/mail2.html?irc">Carlo Wood</A> <I>(Run @ IRC)</I>.</ADDRESS>

</BODY>
</HTML>
