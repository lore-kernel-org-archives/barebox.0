Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZJAU-0001NA-4h
 for barebox@lists.infradead.org; Tue, 29 May 2012 09:56:47 +0000
Received: by yenr9 with SMTP id r9so2126487yen.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 02:56:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120529092958.GP30400@pengutronix.de>
References: <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
 <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
 <20120529092958.GP30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 11:56:24 +0200
Message-ID: <CAONxwYOVJ3kroiK2yMBKFh=dhEgturFVixzKzGg7JQG7VCRMAw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3512053337003411697=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============3512053337003411697==
Content-Type: multipart/alternative; boundary=bcaec539650c2bc09c04c129da15

--bcaec539650c2bc09c04c129da15
Content-Type: text/plain; charset=ISO-8859-1

Hi Sascha

> > you need the reference manual of the i.MX25 to know the meaning of
> > > these registers and the datasheet of your flash to know it's timings
> > > then you can calculate the value to put in the registers.
> > >
> > >
> > I have found them in an old uboot tree a previous person patched to have
> > working support for NOR on boot. The values are:
> >
> >         { .ptr_type = 4, .addr = 0xB8002000, .val = 0x0000D003, },
> >         { .ptr_type = 4, .addr = 0xB8002004, .val = 0x00330D01, },
> >         { .ptr_type = 4, .addr = 0xB8002008, .val = 0x00220800, },
>
> Do these values match the ones you read out of the registers using your
> U-Boot?
>

Yep, the corresponing dcdheader.S entries:

DCDGEN( 1, 4, 0xB8002000, 0x0000D003) /* CS0_CSCRU */
DCDGEN( 2, 4, 0xB8002004, 0x00330d01) /* CS0_CSCRL */
DCDGEN( 3, 4, 0xB8002008, 0x00220800) /* CS0_CSCRA */

So I reckon at least I got this part working fine.

 > /* Set up 16bit NOR flash on WEIM CS0 */
> > writel(0xB8002000, 0x0000D003);
> >  writel(0xB8002004, 0x00330D01);
> > writel(0xB8002008, 0x00220800);
>
> You mixed up the argument order.
>
> Yikes!!!! I hope I didn't fry something. I'll quickly try the reversed
order and report back.


>  >
> > board_init_lowlevel_return();
> > }
> >
> > Why can't I printf() from low_level?
>
> Because the console hasn't been setup yet. That's exactly the reason why
> I recommend doing only the absolutely necessary stuff in lowlevel_init.
>
> Make perfect sense (*slapping forehead*). Thank you for your patience. I
reckon those questions of mine could be compiled into some sort of FAQ for
the newcomers into the barebox world to flatten the learning curve.

Cheers
Roberto

--bcaec539650c2bc09c04c129da15
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sascha<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div class=3D"im">&gt; &gt; you need the reference manual of the i.MX25 to =
know the meaning of<br>


&gt; &gt; these registers and the datasheet of your flash to know it&#39;s =
timings<br>
&gt; &gt; then you can calculate the value to put in the registers.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; I have found them in an old uboot tree a previous person patched to ha=
ve<br>
&gt; working support for NOR on boot. The values are:<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 { .ptr_type =3D 4, .addr =3D 0xB8002000, .val =3D 0x00=
00D003, },<br>
&gt; =A0 =A0 =A0 =A0 { .ptr_type =3D 4, .addr =3D 0xB8002004, .val =3D 0x00=
330D01, },<br>
&gt; =A0 =A0 =A0 =A0 { .ptr_type =3D 4, .addr =3D 0xB8002008, .val =3D 0x00=
220800, },<br>
<br>
</div>Do these values match the ones you read out of the registers using yo=
ur<br>
U-Boot?<br></blockquote><div><br></div><div>Yep, the corresponing dcdheader=
.S entries:</div><div><br></div><div><div>DCDGEN( 1, 4, 0xB8002000, 0x0000D=
003) /* CS0_CSCRU */</div><div>DCDGEN( 2, 4, 0xB8002004, 0x00330d01) /* CS0=
_CSCRL */</div>

<div>DCDGEN( 3, 4, 0xB8002008, 0x00220800) /* CS0_CSCRA */</div></div><div>=
<br></div><div>So I reckon at least I got this part working fine.</div><div=
><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">

<div class=3D"im">
&gt; /* Set up 16bit NOR flash on WEIM CS0 */<br>
&gt; writel(0xB8002000, 0x0000D003);<br>
&gt; =A0writel(0xB8002004, 0x00330D01);<br>
&gt; writel(0xB8002008, 0x00220800);<br>
<br>
</div>You mixed up the argument order.<br>
<div class=3D"im"><br></div></blockquote><div>Yikes!!!! I hope I didn&#39;t=
 fry something. I&#39;ll quickly try the reversed order and report back.</d=
iv><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"im">
&gt;<br>
&gt; board_init_lowlevel_return();<br>
&gt; }<br>
&gt;<br>
&gt; Why can&#39;t I printf() from low_level?<br>
<br>
</div>Because the console hasn&#39;t been setup yet. That&#39;s exactly the=
 reason why<br>
I recommend doing only the absolutely necessary stuff in lowlevel_init.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>M=
ake perfect sense (*slapping forehead*). Thank you for your patience. I rec=
kon those questions of mine could be compiled into some sort of FAQ for the=
 newcomers into the barebox world to flatten the learning curve.</div>

<div><br></div><div>Cheers</div><div>Roberto</div><div><br></div><div><br><=
/div></div>

--bcaec539650c2bc09c04c129da15--


--===============3512053337003411697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3512053337003411697==--
