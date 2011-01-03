Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PZqIH-0002Z6-5K
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 19:42:14 +0000
Received: by ewy20 with SMTP id 20so5820452ewy.36
	for <barebox@lists.infradead.org>; Mon, 03 Jan 2011 11:42:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20110103135058.GB24408@pengutronix.de>
References: <20101230034811.GS19266@game.jcrosoft.org>
	<1293713374-3476-1-git-send-email-franck.jullien@gmail.com>
	<20110103114144.GL6017@pengutronix.de>
	<AANLkTikS9h1PgeLFAUWPNwoZc+eaJri48q6VQ92XiNRm@mail.gmail.com>
	<20110103135058.GB24408@pengutronix.de>
Date: Mon, 3 Jan 2011 20:42:11 +0100
Message-ID: <AANLkTikDTzVdNPPVmas_qUYE++mo_63jk25mMsi+evHx@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1844996648=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add an option to set a board specific banner
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============1844996648==
Content-Type: multipart/alternative; boundary=0015174be8c41e090f0498f65983

--0015174be8c41e090f0498f65983
Content-Type: text/plain; charset=ISO-8859-1

2011/1/3 Sascha Hauer <s.hauer@pengutronix.de>

> On Mon, Jan 03, 2011 at 01:45:18PM +0100, Franck JULLIEN wrote:
> > 2011/1/3 Sascha Hauer <s.hauer@pengutronix.de>
> >
> >
> > I know CONFIG_BOARDINFO is board specific. However, I think it is more
> > conveniant
> > to have the possibility to define a banner text outside the Kconfig. For
> > example, I use
> > this in my config.h:
> >
> > #define CONFIG_BOARD_BANNER_TEXT "\e[1;32m\
> >
> ***********************************************************************\n\
> > *           Communication board bootloader (ODSFT0152)        *\n\
> > ************************************************************************\
> > \e[0m\n\n"
> >
> > So may be we could define this kind of banner in the Kconfig.....
>
> Ok, I can see your problem. I think we should rather define a board
> specific function to display a banner than a string, so something like:
>
> config BOARD_BANNER
>        bool
>
> #ifdef CONFIG_BOARD_BANNER
>        display_board_banner();
> #else
>         printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
> #endif
>
> This way we can also show runtime dependent information in the banner
> (like baseboard or whatever).
>

Sounds great, I'll do this. Is there anyone responsible for the list in
first place ?
Because if I do this in one way but someone would prefer do it another way
and
finally the git boss wants it a third way.......

I'll try to post the new patch in response to this thread
using the right git command...By the way, I there anything more user
friendly
than the git command line to send email in the right format ?

I told you this is a practice/test patch so I have a lot of
questions/comments !


>
> >
> > Let me know if you don't like this. This patch was kind of a test for me
> and
> > we could
> > forget about it.
> >
> > Although this patch was very small, we had a lot of discussion around it
> and
> > I don't want to imagine what it is going to be when I submit the nios2
> port :)
>
> Don't worry, the amount of comments you receive usually is not
> proportional to the patch size you send ;)
>
> Sascha
>

Ok, because I was worry :)


>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

Best regards,
FJ.

--0015174be8c41e090f0498f65983
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/1/3 Sascha Hauer <span dir=3D"ltr">=
&lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.de</a>&gt=
;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">On Mon, Jan 03, 2011 at 01:45:18PM +0100, Franck JULLIEN =
wrote:<br>
&gt; 2011/1/3 Sascha Hauer &lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.=
hauer@pengutronix.de</a>&gt;<br>
&gt;<br>
&gt;<br>
</div><div class=3D"im">&gt; I know CONFIG_BOARDINFO is board specific. How=
ever, I think it is more<br>
&gt; conveniant<br>
&gt; to have the possibility to define a banner text outside the Kconfig. F=
or<br>
&gt; example, I use<br>
&gt; this in my config.h:<br>
&gt;<br>
&gt; #define CONFIG_BOARD_BANNER_TEXT &quot;\e[1;32m\<br>
&gt; **********************************************************************=
*\n\<br>
&gt; * =A0 =A0 =A0 =A0 =A0 Communication board bootloader (ODSFT0152) =A0 =
=A0 =A0 =A0*\n\<br>
&gt; **********************************************************************=
**\<br>
&gt; \e[0m\n\n&quot;<br>
&gt;<br>
&gt; So may be we could define this kind of banner in the Kconfig.....<br>
<br>
</div>Ok, I can see your problem. I think we should rather define a board<b=
r>
specific function to display a banner than a string, so something like:<br>
<br>
config BOARD_BANNER<br>
 =A0 =A0 =A0 =A0bool<br>
<br>
#ifdef CONFIG_BOARD_BANNER<br>
 =A0 =A0 =A0 =A0display_board_banner();<br>
#else<br>
<div class=3D"im"> =A0 =A0 =A0 =A0printf(RELOC(&quot;Board: &quot; CONFIG_B=
OARDINFO &quot;\n&quot;));<br>
</div>#endif<br>
<br>
This way we can also show runtime dependent information in the banner<br>
(like baseboard or whatever).<br></blockquote><div><br></div><div><span cla=
ss=3D"Apple-style-span" style=3D"border-collapse: collapse; font-family: ar=
ial, sans-serif; font-size: 13px; "><div>Sounds great, I&#39;ll do this. Is=
 there anyone responsible for the list in first place ?</div>
<div>Because if I do this in one way but someone would prefer do it another=
 way and</div><div>finally=A0the git boss wants it a third way.......</div>=
<div><br></div><div>I&#39;ll try to post the new patch in response to this =
thread</div>
<div>using the right git command...By the way, I there anything more user f=
riendly</div><div>than the git command line to send email in the right form=
at ?</div><div><br></div><div>I told you this is a practice/test patch so I=
 have a lot of questions/comments !</div>
</span></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im"><br>
&gt;<br>
&gt; Let me know if you don&#39;t like this. This patch was kind of a test =
for me and<br>
&gt; we could<br>
&gt; forget about it.<br>
&gt;<br>
&gt; Although this patch was very small, we had a lot of discussion around =
it and<br>
&gt; I don&#39;t want to imagine what it is going to be when I submit the n=
ios2 port :)<br>
<br>
</div>Don&#39;t worry, the amount of comments you receive usually is not<br=
>
proportional to the patch size you send ;)<br>
<div><div></div><div class=3D"h5"><br>
Sascha<br></div></div></blockquote><div><br></div><div><span class=3D"Apple=
-style-span" style=3D"border-collapse: collapse; font-family: arial, sans-s=
erif; font-size: 13px; ">Ok, because I was worry :)</span></div><div>=A0</d=
iv>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div><div class=3D"h5">
<br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0 =
=A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-20=
6917-5555 |<br></div></div></blockquote><div><br></div><div>Best regards,</=
div><div>FJ.=A0</div></div><br>

--0015174be8c41e090f0498f65983--


--===============1844996648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1844996648==--
