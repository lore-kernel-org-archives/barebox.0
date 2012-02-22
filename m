Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S08PH-00072e-UQ
 for barebox@lists.infradead.org; Wed, 22 Feb 2012 09:22:41 +0000
Received: by eaai1 with SMTP id i1so2979459eaa.36
 for <barebox@lists.infradead.org>; Wed, 22 Feb 2012 01:22:37 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20120221210127.GG3852@pengutronix.de>
References: <CAACwSTKshGv05PfJWJkFTKzhof2q+hjupdh=U3VH2Fbdc-6VBQ@mail.gmail.com>
 <20120221210127.GG3852@pengutronix.de>
Date: Wed, 22 Feb 2012 11:22:37 +0200
Message-ID: <CAACwSTJxLsZxwfp4=7bunemR3SV8QqqVKz7Ox-Fo-Jt_zCnnVA@mail.gmail.com>
From: George Stefan <stefan.george87@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5767862922521769960=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mx53 loco boot procedure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============5767862922521769960==
Content-Type: multipart/alternative; boundary=047d7b34388880781f04b98a11b4

--047d7b34388880781f04b98a11b4
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,
How could i link barebox and zImage together?
Could you please give an example?
Regards

=CEn data de 21 februarie 2012, 23:01, Sascha Hauer
<s.hauer@pengutronix.de>a scris:

> On Tue, Feb 21, 2012 at 08:38:24PM +0200, George Stefan wrote:
> > Hello guys,
> > After  dd if=3Dbarebox.bin of=3D/dev/sdb bs=3D512 and dd
> if=3Darch/arm/boot/uImage
> > of=3D/dev/sdb bs=3D512 seek=3D768 i am getting
> >
> > Board: Freescale i.MX53 LOCO registered netconsole as cs1 eth@eth0: got
> MAC
> > address from EEPROM: 00:04:9F:01:B4:5B mci@mci0: No partition table
> found
> > Cannot reset the SD/MMC interface Malloc space: 0x7df00000 -> 0x7feffff=
f
> > (size 32 MB) Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB) envfs:
> > wrong magic on /dev/env0 no valid environment found on /dev/env0. Using
> > default environment running /env/bin/init... Hit any key to stop
> autoboot:
> > 1 phy0: Link is up - 100/Full T DHCP client bound to address
> > 128.224.168.167 TFTP from server 128.224.168.11 ('zImage-loco' ->
> '/image')
> >
> > Wasn't the board suppose to boot from sd card by default?
> >
> > Also, i have another question. I want to replace
> >
> > /* call start_barebox with its absolute address */
> >         r =3D (unsigned int)&start_barebox;
> >         __asm__ __volatile__("mov pc, %0" : : "r"(r));
> >
> > &start_barebox with the actual address of the uImage practically to ski=
p
> > all the barebox part and
> > boot only with the minimal CPU and memory setup. What do you think?
>
> You can't jump directly into uImages. It would work with a zImage, but
> how do you get your zImage from the sd card without the help of the
> bootloader? Well, you could link barebox and a zImage together, but then
> you'll realize that the internal ROM code is quite slow when reading
> data from SD cards (unless there are ways to tweak this, I don't know)
>
> What are your goals trying this?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>

--047d7b34388880781f04b98a11b4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<div>How could i link barebox and zImage together?</div><div>Could yo=
u please give an example?</div><div>Regards<br><div><br><div class=3D"gmail=
_quote">=CEn data de 21 februarie 2012, 23:01, Sascha Hauer <span dir=3D"lt=
r">&lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.de</a>=
&gt;</span> a scris:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div></div><div class=3D"h5">On Tue, Fe=
b 21, 2012 at 08:38:24PM +0200, George Stefan wrote:<br>
&gt; Hello guys,<br>
&gt; After =A0dd if=3Dbarebox.bin of=3D/dev/sdb bs=3D512 and dd if=3Darch/a=
rm/boot/uImage<br>
&gt; of=3D/dev/sdb bs=3D512 seek=3D768 i am getting<br>
&gt;<br>
&gt; Board: Freescale i.MX53 LOCO registered netconsole as cs1 eth@eth0: go=
t MAC<br>
&gt; address from EEPROM: 00:04:9F:01:B4:5B mci@mci0: No partition table fo=
und<br>
&gt; Cannot reset the SD/MMC interface Malloc space: 0x7df00000 -&gt; 0x7fe=
fffff<br>
&gt; (size 32 MB) Stack space : 0x7def8000 -&gt; 0x7df00000 (size 32 kB) en=
vfs:<br>
&gt; wrong magic on /dev/env0 no valid environment found on /dev/env0. Usin=
g<br>
&gt; default environment running /env/bin/init... Hit any key to stop autob=
oot:<br>
&gt; 1 phy0: Link is up - 100/Full T DHCP client bound to address<br>
&gt; 128.224.168.167 TFTP from server 128.224.168.11 (&#39;zImage-loco&#39;=
 -&gt; &#39;/image&#39;)<br>
&gt;<br>
&gt; Wasn&#39;t the board suppose to boot from sd card by default?<br>
&gt;<br>
&gt; Also, i have another question. I want to replace<br>
&gt;<br>
&gt; /* call start_barebox with its absolute address */<br>
&gt; =A0 =A0 =A0 =A0 r =3D (unsigned int)&amp;start_barebox;<br>
&gt; =A0 =A0 =A0 =A0 __asm__ __volatile__(&quot;mov pc, %0&quot; : : &quot;=
r&quot;(r));<br>
&gt;<br>
&gt; &amp;start_barebox with the actual address of the uImage practically t=
o skip<br>
&gt; all the barebox part and<br>
&gt; boot only with the minimal CPU and memory setup. What do you think?<br=
>
<br>
</div></div>You can&#39;t jump directly into uImages. It would work with a =
zImage, but<br>
how do you get your zImage from the sd card without the help of the<br>
bootloader? Well, you could link barebox and a zImage together, but then<br=
>
you&#39;ll realize that the internal ROM code is quite slow when reading<br=
>
data from SD cards (unless there are ways to tweak this, I don&#39;t know)<=
br>
<br>
What are your goals trying this?<br>
<br>
Sascha<br>
<font color=3D"#888888"><br>
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
</font></blockquote></div><br></div></div>

--047d7b34388880781f04b98a11b4--


--===============5767862922521769960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5767862922521769960==--
