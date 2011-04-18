Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QBvcu-0007wF-UN
	for barebox@lists.infradead.org; Mon, 18 Apr 2011 21:04:58 +0000
Received: by ewy3 with SMTP id 3so1738653ewy.36
	for <barebox@lists.infradead.org>; Mon, 18 Apr 2011 14:04:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110418183847.GO3811@pengutronix.de>
References: <BANLkTi=FxqCsR1vY_p_i-XVB8g-niciODA@mail.gmail.com>
	<20110418183313.GP14770@pengutronix.de>
	<20110418183847.GO3811@pengutronix.de>
Date: Mon, 18 Apr 2011 15:04:52 -0600
Message-ID: <BANLkTin8CVuTCZTQ=23mw8RpiPV3Lg=8ZQ@mail.gmail.com>
From: Marko Milutinovic <markomilutin@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0064323902=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: New MACH Addition
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0064323902==
Content-Type: multipart/alternative; boundary=0016364c7bd53129b704a137be0f

--0016364c7bd53129b704a137be0f
Content-Type: text/plain; charset=UTF-8

Hello,

By kernel do you mean the Linux kernel? I'm just starting work on that, so
not quite sure how that's going to go.

If you mean barebox then yes. I'm using fairly new code, I had to make some
modifications to bypass dealing with cache and MMU as this chip does not
have support for it. The changes were minor.

I will go through my revisions and make sure it conforms to how everything
else is done in this project and see about merging it in.

Thanks,
Marko

On Mon, Apr 18, 2011 at 12:38 PM, Robert Schwebel <r.schwebel@pengutronix.de
> wrote:

> Hi Sascha,
>
> On Mon, Apr 18, 2011 at 08:33:13PM +0200, Sascha Hauer wrote:
> > On Mon, Apr 18, 2011 at 12:17:47PM -0600, Marko Milutinovic wrote:
> > > I recently ported barebox to a platform using an old AT91 chip
> > > (at91m55800a, ARM7TDMI core). There is already a MACH_AT91 folder
> > > but this chip is sufficiently different that I just made a new
> > > folder MACH_AT91_legacy. This was just a test project for me to get
> > > familiar with using barebox.
> > >
> > > I'm just wondering if there is any value in me merging in the code
> > > for this? I realize it's a pretty old chipset, but I'm finding
> > > barebox very useful and would like to contribute to it.
> >
> > I never even heard of this chip. I think adding support for it should
> > be ok, but we might remove it in the future should non trivial
> > architecture changes become necessary and nobody cares for updating
> > this.
>
> We should somewhere have a board with this chip in the archive:
>
> http://www.phytec.de/de/produkte/module-im-ueberblick/phycore/produktdetails/p/phycore-at91m55800a.html
>
> Marko, are you working with a recent mainline kernel on this cpu? I'm
> wondering about the mmu-less state of the kernel. Havn't tried for some
> time.
>
> rsc
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--0016364c7bd53129b704a137be0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,<div><br></div><div>By kernel do you mean the Linux kernel? I&#39;m j=
ust starting work on that, so not quite sure how that&#39;s going to go.<di=
v><div><br></div><div>If you mean barebox then yes. I&#39;m using fairly ne=
w code, I had to make some modifications to bypass dealing with cache and M=
MU as this chip does not have support for it. The changes were minor.=C2=A0=
</div>
<div><br></div><div>I will go through my revisions and make sure it conform=
s to how everything else is done in this project and see about merging it i=
n.</div><div><br></div><div>Thanks,</div><div>Marko<br><br><div class=3D"gm=
ail_quote">
On Mon, Apr 18, 2011 at 12:38 PM, Robert Schwebel <span dir=3D"ltr">&lt;<a =
href=3D"mailto:r.schwebel@pengutronix.de">r.schwebel@pengutronix.de</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex;">
Hi Sascha,<br>
<div class=3D"im"><br>
On Mon, Apr 18, 2011 at 08:33:13PM +0200, Sascha Hauer wrote:<br>
&gt; On Mon, Apr 18, 2011 at 12:17:47PM -0600, Marko Milutinovic wrote:<br>
</div><div class=3D"im">&gt; &gt; I recently ported barebox to a platform u=
sing an old AT91 chip<br>
&gt; &gt; (at91m55800a, ARM7TDMI core). There is already a MACH_AT91 folder=
<br>
&gt; &gt; but this chip is sufficiently different that I just made a new<br=
>
&gt; &gt; folder MACH_AT91_legacy. This was just a test project for me to g=
et<br>
&gt; &gt; familiar with using barebox.<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m just wondering if there is any value in me merging in the=
 code<br>
&gt; &gt; for this? I realize it&#39;s a pretty old chipset, but I&#39;m fi=
nding<br>
&gt; &gt; barebox very useful and would like to contribute to it.<br>
&gt;<br>
&gt; I never even heard of this chip. I think adding support for it should<=
br>
&gt; be ok, but we might remove it in the future should non trivial<br>
&gt; architecture changes become necessary and nobody cares for updating<br=
>
&gt; this.<br>
<br>
</div>We should somewhere have a board with this chip in the archive:<br>
<a href=3D"http://www.phytec.de/de/produkte/module-im-ueberblick/phycore/pr=
oduktdetails/p/phycore-at91m55800a.html" target=3D"_blank">http://www.phyte=
c.de/de/produkte/module-im-ueberblick/phycore/produktdetails/p/phycore-at91=
m55800a.html</a><br>

<br>
Marko, are you working with a recent mainline kernel on this cpu? I&#39;m<b=
r>
wondering about the mmu-less state of the kernel. Havn&#39;t tried for some=
<br>
time.<br>
<br>
rsc<br>
<div><div></div><div class=3D"h5">--<br>
Pengutronix e.K. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
Industrial Linux Solutions =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | <a href=3D"http://www.pengutronix.de/" target=3D"_blank">http://w=
ww.pengutronix.de/</a> =C2=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: <a href=3D"tel:%2B49-51=
21-206917-0" value=3D"+4951212069170">+49-5121-206917-0</a> =C2=A0 =C2=A0|<=
br>
Amtsgericht Hildesheim, HRA 2686 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | Fax: =
=C2=A0 +49-5121-206917-5555 |<br>
</div></div></blockquote></div><br></div></div></div>

--0016364c7bd53129b704a137be0f--


--===============0064323902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0064323902==--
