Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZjmu-0004xT-Ej
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 12:45:25 +0000
Received: by eyd9 with SMTP id 9so6863556eyd.36
	for <barebox@lists.infradead.org>; Mon, 03 Jan 2011 04:45:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20110103114144.GL6017@pengutronix.de>
References: <20101230034811.GS19266@game.jcrosoft.org>
	<1293713374-3476-1-git-send-email-franck.jullien@gmail.com>
	<20110103114144.GL6017@pengutronix.de>
Date: Mon, 3 Jan 2011 13:45:18 +0100
Message-ID: <AANLkTikS9h1PgeLFAUWPNwoZc+eaJri48q6VQ92XiNRm@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0629850040=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add an option to set a board specific banner
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0629850040==
Content-Type: multipart/alternative; boundary=00151748e0bc413b110498f0868c

--00151748e0bc413b110498f0868c
Content-Type: text/plain; charset=ISO-8859-1

2011/1/3 Sascha Hauer <s.hauer@pengutronix.de>

> Hi Franck,
>
> On Thu, Dec 30, 2010 at 01:49:34PM +0100, Franck JULLIEN wrote:
> > Allow a board specific fancy banner
> >
> > ---
> >
> > I removed the default fancy banner and do it like Jean-Christophe
> suggested it.
> >
> >  common/Kconfig   |    6 ++++++
> >  common/console.c |    7 ++++++-
> >  2 files changed, 12 insertions(+), 1 deletions(-)
> >
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 617f640..d32c1ce 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -248,6 +248,12 @@ config HUSH_FANCY_PROMPT
> >         Allow to set PS1 from the command line. PS1 can have several
> escaped commands
> >         like \h for CONFIG_BOARDINFO or \w for the current working
> directory.
> >
> > +config BOARD_BANNER
> > +     bool
> > +     prompt "allow a board specific fancy banner"
> > +     help
> > +       Allow to define a custom board banner (you can define
> CONFIG_BOARD_BANNER_TEXT in your config.h)
> > +
> >  config HUSH_GETOPT
> >       bool
> >       depends on SHELL_HUSH
> > diff --git a/common/console.c b/common/console.c
> > index 82786f2..7caef11 100644
> > --- a/common/console.c
> > +++ b/common/console.c
> > @@ -46,7 +46,12 @@ EXPORT_SYMBOL(console_list);
> >  static void display_banner (void)
> >  {
> >       printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
> > -     printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
> > +
> > +#ifndef CONFIG_BOARD_BANNER
> > +#undef  CONFIG_BOARD_BANNER_TEXT
> > +#define CONFIG_BOARD_BANNER_TEXT "Board: " CONFIG_BOARDINFO "\n"
> > +#endif
> > +        printf(RELOC(CONFIG_BOARD_BANNER_TEXT));
> >  }
>
> I do not really understand this patch. CONFIG_BOARDINFO is board
> specific already, why would we want to add another option?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


Hello,

I know CONFIG_BOARDINFO is board specific. However, I think it is more
conveniant
to have the possibility to define a banner text outside the Kconfig. For
example, I use
this in my config.h:

#define CONFIG_BOARD_BANNER_TEXT "\e[1;32m\
***********************************************************************\n\
*           Communication board bootloader (ODSFT0152)        *\n\
************************************************************************\
\e[0m\n\n"

So may be we could define this kind of banner in the Kconfig.....

Let me know if you don't like this. This patch was kind of a test for me and
we could
forget about it.

Although this patch was very small, we had a lot of discussion around it and
I don't
want to imagine what it is going to be when I submit the nios2 port :)

Best regards,
Franck.

--00151748e0bc413b110498f0868c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">2011/1/3 Sascha Hauer <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.de</a>&gt;</span>=
<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">Hi Franck,<br>
<div>
<div></div>
<div class=3D"h5"><br>On Thu, Dec 30, 2010 at 01:49:34PM +0100, Franck JULL=
IEN wrote:<br>&gt; Allow a board specific fancy banner<br>&gt;<br>&gt; ---<=
br>&gt;<br>&gt; I removed the default fancy banner and do it like Jean-Chri=
stophe suggested it.<br>
&gt;<br>&gt; =A0common/Kconfig =A0 | =A0 =A06 ++++++<br>&gt; =A0common/cons=
ole.c | =A0 =A07 ++++++-<br>&gt; =A02 files changed, 12 insertions(+), 1 de=
letions(-)<br>&gt;<br>&gt; diff --git a/common/Kconfig b/common/Kconfig<br>=
&gt; index 617f640..d32c1ce 100644<br>
&gt; --- a/common/Kconfig<br>&gt; +++ b/common/Kconfig<br>&gt; @@ -248,6 +2=
48,12 @@ config HUSH_FANCY_PROMPT<br>&gt; =A0 =A0 =A0 =A0 Allow to set PS1 =
from the command line. PS1 can have several escaped commands<br>&gt; =A0 =
=A0 =A0 =A0 like \h for CONFIG_BOARDINFO or \w for the current working dire=
ctory.<br>
&gt;<br>&gt; +config BOARD_BANNER<br>&gt; + =A0 =A0 bool<br>&gt; + =A0 =A0 =
prompt &quot;allow a board specific fancy banner&quot;<br>&gt; + =A0 =A0 he=
lp<br>&gt; + =A0 =A0 =A0 Allow to define a custom board banner (you can def=
ine CONFIG_BOARD_BANNER_TEXT in your config.h)<br>
&gt; +<br>&gt; =A0config HUSH_GETOPT<br>&gt; =A0 =A0 =A0 bool<br>&gt; =A0 =
=A0 =A0 depends on SHELL_HUSH<br>&gt; diff --git a/common/console.c b/commo=
n/console.c<br>&gt; index 82786f2..7caef11 100644<br>&gt; --- a/common/cons=
ole.c<br>&gt; +++ b/common/console.c<br>
&gt; @@ -46,7 +46,12 @@ EXPORT_SYMBOL(console_list);<br>&gt; =A0static void=
 display_banner (void)<br>&gt; =A0{<br>&gt; =A0 =A0 =A0 printf (RELOC(&quot=
;\n\n%s\n\n&quot;), RELOC_VAR(version_string));<br>&gt; - =A0 =A0 printf(RE=
LOC(&quot;Board: &quot; CONFIG_BOARDINFO &quot;\n&quot;));<br>
&gt; +<br>&gt; +#ifndef CONFIG_BOARD_BANNER<br>&gt; +#undef =A0CONFIG_BOARD=
_BANNER_TEXT<br>&gt; +#define CONFIG_BOARD_BANNER_TEXT &quot;Board: &quot; =
CONFIG_BOARDINFO &quot;\n&quot;<br>&gt; +#endif<br>&gt; + =A0 =A0 =A0 =A0pr=
intf(RELOC(CONFIG_BOARD_BANNER_TEXT));<br>
&gt; =A0}<br><br></div></div>I do not really understand this patch. CONFIG_=
BOARDINFO is board<br>specific already, why would we want to add another op=
tion?<br><br>Sascha<br><font color=3D"#888888"><br>--<br>Pengutronix e.K. =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917=
-0 =A0 =A0|<br>Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =
=A0 +49-5121-206917-5555 |<br>
</font></blockquote></div>
<div><br>=A0</div>
<div>Hello,</div>
<div>=A0</div>
<div>I know CONFIG_BOARDINFO is board specific. However, I think it is more=
 conveniant</div>
<div>to have the possibility=A0to define a banner text outside the Kconfig.=
 For example, I use</div>
<div>this in my config.h:</div>
<div>=A0</div>
<div>#define CONFIG_BOARD_BANNER_TEXT &quot;\e[1;32m\<br>******************=
*****************************************************\n\<br>*=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0Communication board bootloader=A0(ODSFT0152)=A0=A0=A0=
=A0=A0=A0=A0 *\n\<br>******************************************************=
******************\<br>
\e[0m\n\n&quot;</div>
<div>=A0</div>
<div>So may be we could define this kind of banner in the Kconfig.....</div=
>
<div>=A0</div>
<div>Let me know if you don&#39;t like this. This patch was kind of a test =
for me and we could</div>
<div>forget about it.</div>
<div>=A0</div>
<div>Although this patch was very small, we had a lot of discussion around =
it and I don&#39;t </div>
<div>want to imagine what it is going to be when I submit the nios2 port :)=
</div>
<div>=A0</div>
<div>Best regards,</div>
<div>Franck.</div>
<div>=A0</div>
<div>=A0</div>
<div>=A0</div>

--00151748e0bc413b110498f0868c--


--===============0629850040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0629850040==--
