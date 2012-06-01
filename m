Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f171.google.com ([209.85.160.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaP2t-00009O-0Q
 for barebox@lists.infradead.org; Fri, 01 Jun 2012 10:25:28 +0000
Received: by ghy10 with SMTP id 10so1836288ghy.16
 for <barebox@lists.infradead.org>; Fri, 01 Jun 2012 03:25:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120531170631.GR30400@pengutronix.de>
References: <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
 <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
 <20120529092958.GP30400@pengutronix.de>
 <CAONxwYOVJ3kroiK2yMBKFh=dhEgturFVixzKzGg7JQG7VCRMAw@mail.gmail.com>
 <CAONxwYO8Y9uYCr7VeGq9YbybRAGOZFZEQiKOTRfzm-=fH-0ihg@mail.gmail.com>
 <20120530054738.GF30400@pengutronix.de>
 <CAONxwYNf7_+H1oC2AuL2A_edBXqqkdSjxt6eFwPvU4VS+UzU0g@mail.gmail.com>
 <20120531170631.GR30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 1 Jun 2012 12:25:04 +0200
Message-ID: <CAONxwYNV1xzgZYFBqW44Zj=X0mqVmw1QrXODkHp3KiP7khRh2w@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8889030310631042689=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============8889030310631042689==
Content-Type: multipart/alternative; boundary=14dae9340e5732133d04c1669ac4

--14dae9340e5732133d04c1669ac4
Content-Type: text/plain; charset=ISO-8859-1

G'day

> > > +# or set your networking parameters here
> > > > +#eth0.ipaddr=192.168.1.80
> > > > +#eth0.netmask=255.255.255.0
> > > > +#eth0.gateway=a.b.c.d
> > > > +eth0.serverip=192.168.1.23
> > > > +eth0.ethaddr=00:50:c2:8c:e6:0e
> > >
> > > *never* *ever* add MAC addresses to the default environment.
> >
> >
> >  Ok. In my case, the MAC address is actually stored inside a secured at24
> > EEPROM buffer. Unfortunately, at24 via I2C does not seem to be available
> in
> > barebox. I reckon I have to port it from the kernel or uboot :).
>
> Or just leave the field blank. In this case a random (local-) MAC
> address is generated.


Oh, I didn't know that, brilliant.

> I have included some more debugging and also workarounds for the mx25.
> This
> > is the current debug output, where it clearly indicates that for some
> > reason the mx25 esdhc related registers never show a transfer complete
> for
> > a multiblock write:
>
> The kernel has this:
>
>  if (is_imx25_esdhc(imx_data) || is_imx35_esdhc(imx_data))
>                /* Fix errata ENGcm07207 present on i.MX25 and i.MX35 */
>                host->quirks |= SDHCI_QUIRK_NO_MULTIBLOCK
>                        | SDHCI_QUIRK_BROKEN_ADMA;
>

:) Yes, the kernel has lots of quirks for the mx25 based esdhc
implementation, and I have stumbled across these lines a dozen times
already over the past few weeks trying to figure out why SD write transfer
is doooooog slow on my device. I have been sending a lot of in-depth
analysis and traces, including timing charts showing completely impossible
CMD timeouts, and no one seems to be able to figure out what causes this.
Hardware failure is almost not possible, and that's why I focused on the
Software part. Since the eSDHC stack in the kernel is composed of a lot of
intermediary drivers down to block layer, I opted for the simplest possible
test case where I didn't have to write an SD driver from scratch: barebox!

That's how we ended up here. I am well aware that for others this problem
does not seem to exist, but I simply don't know where to look for anymore.
With regard to ENGcm07207, IMHO the introduced quirk does not really fix
this specific erratum. The problem description in the READ case is as
follows:

"If a CMD12 command is sent during a WRITE MULTIPLE BLOCK transfer, the AHB
bus keeps writing to the internal buffers. This is undesirable behavior.
During this situation, the AHB bus does not stop until all the blocks are
written to the internal buffer, and an AutoCMD12 command is sent.

A typical scenario is as follows: After Sending a non-ending block, the
card replies with a CRC error. The software detects the CRC error and
manually sends a CMD12 command to the card to stop the transmission.
Internally, the AHB bus keeps writing to the internal buffer even though
the software stopped the transfer."

So the solution is as follows:

To abort data transfers on the AHB, software can reset the eSDHC by writing
1 to SYSCTL[24] (RSTA).

I haven't tried this, but I can assure you that setting block count to 1
does not resolve the issue at all, or the other way around: having multiple
block write/read support for the i.MX25 does not seem to be the cause of
any reproducible problem. So, unless someone proves me otherwise, I believe
the kernel driver implementation is wrong. On top of that, there is
erratum ENGcm01112 which then directly comes into action, something I also
didn't see addressed in the kernel sources.

I'll keep looking for other answers, however you might want to consider the
minimally invasive WML changes I did in the patch sent before, which at the
same time introduce a similar quirk "framework" to the esdhc driver in
barebox like the kernel has. I will also compare to the uboot driver. I
understand that there is very little concern for this in the barebox
driver, since most of what the users need is to copy from the SD card, and
so far nobody has complained.

I happily stand corrected ;).

Best regards

Roberto



> Which means that the kernel won't do multiblock on i.MX25 and i.MX35.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--14dae9340e5732133d04c1669ac4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

G&#39;day<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div class=3D"im">&gt; &gt; &gt; +# or set your networking parameters here<=
br>
&gt; &gt; &gt; +#eth0.ipaddr=3D192.168.1.80<br>
&gt; &gt; &gt; +#eth0.netmask=3D255.255.255.0<br>
&gt; &gt; &gt; +#eth0.gateway=3Da.b.c.d<br>
&gt; &gt; &gt; +eth0.serverip=3D192.168.1.23<br>
&gt; &gt; &gt; +eth0.ethaddr=3D00:50:c2:8c:e6:0e<br>
&gt; &gt;<br>
&gt; &gt; *never* *ever* add MAC addresses to the default environment.<br>
&gt;<br>
&gt;<br>
&gt; =A0Ok. In my case, the MAC address is actually stored inside a secured=
 at24<br>
&gt; EEPROM buffer. Unfortunately, at24 via I2C does not seem to be availab=
le in<br>
&gt; barebox. I reckon I have to port it from the kernel or uboot :).<br>
<br>
</div>Or just leave the field blank. In this case a random (local-) MAC<br>
address is generated.</blockquote><div><br></div><div>Oh, I didn&#39;t know=
 that, brilliant.</div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div c=
lass=3D"im">


&gt; I have included some more debugging and also workarounds for the mx25.=
 This<br>
&gt; is the current debug output, where it clearly indicates that for some<=
br>
&gt; reason the mx25 esdhc related registers never show a transfer complete=
 for<br>
&gt; a multiblock write:<br>
<br>
</div>The kernel has this:<br>
<br>
=A0if (is_imx25_esdhc(imx_data) || is_imx35_esdhc(imx_data))<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* Fix errata ENGcm07207 present on i.MX25 =
and i.MX35 */<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0host-&gt;quirks |=3D SDHCI_QUIRK_NO_MULTIBL=
OCK<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| SDHCI_QUIRK_BROKEN_ADMA;<=
br></blockquote><div><br></div><div>:) Yes, the kernel has lots of quirks f=
or the mx25 based esdhc implementation, and I have stumbled across these li=
nes a dozen times already over the past few weeks trying to figure out why =
SD write transfer is doooooog slow on my device. I have been sending a lot =
of in-depth analysis and traces, including timing charts showing completely=
 impossible CMD timeouts, and no one seems to be able to figure out what ca=
uses this. Hardware failure is almost not possible, and that&#39;s why I fo=
cused on the Software part. Since the eSDHC stack in the kernel is composed=
 of a lot of intermediary drivers down to block layer, I opted for the simp=
lest possible test case where I didn&#39;t have to write an SD driver from =
scratch: barebox!</div>

<div><br></div><div>That&#39;s how we ended up here. I am well aware that f=
or others this problem does not seem to exist, but I simply don&#39;t know =
where to look for anymore. With regard to=A0ENGcm07207, IMHO the introduced=
 quirk does not really fix this specific erratum. The problem description i=
n the READ case is as follows:</div>

<div><br></div><div>&quot;If a CMD12 command is sent during a WRITE MULTIPL=
E BLOCK transfer, the AHB bus keeps writing to the internal buffers. This i=
s undesirable behavior. During this situation, the AHB bus does not stop un=
til all the blocks are written to the internal buffer, and an AutoCMD12 com=
mand is sent.</div>

<div>
<p class=3D"p1">A typical scenario is as follows: After Sending a non-endin=
g block, the card replies with a CRC error. The software detects the CRC er=
ror and manually sends a CMD12 command to the card to stop the transmission=
. Internally, the AHB bus keeps writing to the internal buffer even though =
the software stopped the transfer.&quot;</p>

<p class=3D"p1">So the solution is as follows:</p><p class=3D"p1">







</p><p class=3D"p1">To abort data transfers on the AHB, software can reset =
the eSDHC by writing 1 to SYSCTL[24] (RSTA).</p><p class=3D"p1">I haven&#39=
;t tried this, but I can assure you that setting block count to 1 does not =
resolve the issue at all, or the other way around: having multiple block wr=
ite/read support for the i.MX25 does not seem to be the cause of any reprod=
ucible problem. So, unless someone proves me otherwise, I believe the kerne=
l driver implementation is wrong. On top of that, there is erratum=A0ENGcm0=
1112 which then directly comes into action, something I also didn&#39;t see=
 addressed in the kernel sources.</p>









<p class=3D"p1">I&#39;ll keep looking for other answers, however you might =
want to consider the minimally invasive WML changes I did in the patch sent=
 before, which at the same time introduce a similar quirk &quot;framework&q=
uot; to the esdhc driver in barebox like the kernel has. I will also compar=
e to the uboot driver. I understand that there is very little concern for t=
his in the barebox driver, since most of what the users need is to copy fro=
m the SD card, and so far nobody has complained.</p>

<p class=3D"p1">I happily stand corrected ;).</p><p class=3D"p1">Best regar=
ds</p><p class=3D"p1">Roberto</p><p></p></div><div>=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">


Which means that the kernel won&#39;t do multiblock on i.MX25 and i.MX35.<b=
r>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Sascha<br>
<br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: <a href=3D"tel:%2B49-51=
21-206917-0" value=3D"+4951212069170">+49-5121-206917-0</a> =A0 =A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 <a href=3D"=
tel:%2B49-5121-206917-5555" value=3D"+4951212069175555">+49-5121-206917-555=
5</a> |<br>
</div></div></blockquote></div><br>

--14dae9340e5732133d04c1669ac4--


--===============8889030310631042689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8889030310631042689==--
