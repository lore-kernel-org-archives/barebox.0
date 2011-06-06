Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTTri-0004Qo-Pt
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 07:04:49 +0000
Received: by iwn36 with SMTP id 36so4079188iwn.36
	for <barebox@lists.infradead.org>; Mon, 06 Jun 2011 00:04:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110606062535.GU23771@pengutronix.de>
References: <1307215769-6381-1-git-send-email-franck.jullien@gmail.com>
	<20110606062535.GU23771@pengutronix.de>
Date: Mon, 6 Jun 2011 09:04:42 +0200
Message-ID: <BANLkTik9ALg4a-MJEWtGsmS2qCYHdQKoew@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0288951100=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [Nios2]: Add Altera JTAG UART driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0288951100==
Content-Type: multipart/alternative; boundary=0016363108cbbee13804a505b7e8

--0016363108cbbee13804a505b7e8
Content-Type: text/plain; charset=ISO-8859-1

Hi Sascha,

2011/6/6 Sascha Hauer <s.hauer@pengutronix.de>

> Hi Franck,
>
> On Sat, Jun 04, 2011 at 09:29:29PM +0200, franck.jullien@gmail.com wrote:
> > From: Franck Jullien <franck.jullien@gmail.com>
> >
> > Add ALtera JTAG UART driver.
> >
> > Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> > ---
> >  drivers/serial/Kconfig              |   10 +++
> >  drivers/serial/Makefile             |    1 +
> >  drivers/serial/serial_altera_jtag.c |  106
> +++++++++++++++++++++++++++++++++++
> >  3 files changed, 117 insertions(+), 0 deletions(-)
> >  create mode 100644 drivers/serial/serial_altera_jtag.c
> >
> > diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> > index 9e05f4b..c8f9ecd 100644
> > --- a/drivers/serial/Kconfig
> > +++ b/drivers/serial/Kconfig
> > @@ -48,6 +48,16 @@ config DRIVER_SERIAL_ALTERA
> >       default y
> >       bool "Altera serial driver"
> >
> > +config DRIVER_SERIAL_ALTERA_JTAG
> > +     depends on NIOS2
> > +     default n
> > +     bool "Altera JTAG serial driver"
> > +
> > +config ALTERA_JTAG_UART_BYPASS
> > +     depends on DRIVER_SERIAL_ALTERA_JTAG
> > +     default y
> > +     bool "Don't block on serial putc if JTAG is not connected"
>
> Is there a reason to block on putc if JTAG is not connected? Without
> strong reasons I think this option should be removed.
>
>
Well, there is not....I copied this from u-boot but I never used this
feature.
You're right, I'll remove it.

Franck.



> Sascha
>
> > +
> >  config DRIVER_SERIAL_NS16550
> >       default n
> >       bool "NS16550 serial driver"
> > diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> > index df9e705..8b56d15 100644
> > --- a/drivers/serial/Makefile
> > +++ b/drivers/serial/Makefile
> > @@ -17,3 +17,4 @@ obj-$(CONFIG_DRIVER_SERIAL_NS16550)         +=
> serial_ns16550.o
> >  obj-$(CONFIG_DRIVER_SERIAL_PL010)            += serial_pl010.o
> >  obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)          += serial_s3c24x0.o
> >  obj-$(CONFIG_DRIVER_SERIAL_ALTERA)           += serial_altera.o
> > +obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)              +=
> serial_altera_jtag.o
> > diff --git a/drivers/serial/serial_altera_jtag.c
> b/drivers/serial/serial_altera_jtag.c
> > new file mode 100644
> > index 0000000..70bc5a9
> > --- /dev/null
> > +++ b/drivers/serial/serial_altera_jtag.c
> > @@ -0,0 +1,106 @@
> > +/*
> > + * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
> > + * Scott McNutt <smcnutt@psyent.com>
> > + *
> > + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + */
> > +
> > +#include <common.h>
> > +#include <driver.h>
> > +#include <init.h>
> > +#include <malloc.h>
> > +#include <asm/io.h>
> > +#include <asm/nios2-io.h>
> > +
> > +static int altera_serial_jtag_setbaudrate(struct console_device *cdev,
> int baudrate)
> > +{
> > +     return 0;
> > +}
> > +
> > +static void altera_serial_jtag_putc(struct console_device *cdev, char c)
> > +{
> > +     struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
> > +     uint32_t st;
> > +
> > +     while (1) {
> > +             st = readl(&jtag->control);
> > +             if (NIOS_JTAG_WSPACE(st))
> > +                     break;
> > +#ifdef CONFIG_ALTERA_JTAG_UART_BYPASS
> > +             if (!(st & NIOS_JTAG_AC)) /* no connection */
> > +                     return;
> > +#endif
> > +     }
> > +
> > +     writel(c, &jtag->data);
> > +}
> > +
> > +static int altera_serial_jtag_tstc(struct console_device *cdev)
> > +{
> > +     struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
> > +
> > +     return readl(&jtag->control) & NIOS_JTAG_RRDY;
> > +}
> > +
> > +static int altera_serial_jtag_getc(struct console_device *cdev)
> > +{
> > +     struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
> > +     uint32_t val;
> > +
> > +     while (1) {
> > +             val = readl(&jtag->data);
> > +             if (val & NIOS_JTAG_RVALID)
> > +                     break;
> > +     }
> > +
> > +     return val & 0xFF;
> > +}
> > +
> > +static int altera_serial_jtag_probe(struct device_d *dev) {
> > +
> > +     struct console_device *cdev;
> > +
> > +     cdev = malloc(sizeof(struct console_device));
> > +     dev->type_data = cdev;
> > +     cdev->dev = dev;
> > +     cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> > +     cdev->tstc = altera_serial_jtag_tstc;
> > +     cdev->putc = altera_serial_jtag_putc;
> > +     cdev->getc = altera_serial_jtag_getc;
> > +     cdev->setbrg = altera_serial_jtag_setbaudrate;
> > +
> > +     console_register(cdev);
> > +
> > +     return 0;
> > +}
> > +
> > +static struct driver_d altera_serial_jtag_driver = {
> > +     .name = "altera_serial_jtag",
> > +     .probe = altera_serial_jtag_probe,
> > +};
> > +
> > +static int altera_serial_jtag_init(void)
> > +{
> > +     return register_driver(&altera_serial_jtag_driver);
> > +}
> > +
> > +console_initcall(altera_serial_jtag_init);
> > +
> > --
> > 1.7.0.4
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--0016363108cbbee13804a505b7e8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sascha,<br><br><div class=3D"gmail_quote">2011/6/6 Sascha Hauer <span di=
r=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix=
.de</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
Hi Franck,<br>
<div class=3D"im"><br>
On Sat, Jun 04, 2011 at 09:29:29PM +0200, <a href=3D"mailto:franck.jullien@=
gmail.com">franck.jullien@gmail.com</a> wrote:<br>
&gt; From: Franck Jullien &lt;<a href=3D"mailto:franck.jullien@gmail.com">f=
ranck.jullien@gmail.com</a>&gt;<br>
&gt;<br>
&gt; Add ALtera JTAG UART driver.<br>
&gt;<br>
&gt; Signed-off-by: Franck Jullien &lt;<a href=3D"mailto:franck.jullien@gma=
il.com">franck.jullien@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =A0drivers/serial/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 10 +++<br>
&gt; =A0drivers/serial/Makefile =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A01 +<br>
&gt; =A0drivers/serial/serial_altera_jtag.c | =A0106 ++++++++++++++++++++++=
+++++++++++++<br>
&gt; =A03 files changed, 117 insertions(+), 0 deletions(-)<br>
&gt; =A0create mode 100644 drivers/serial/serial_altera_jtag.c<br>
&gt;<br>
&gt; diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig<br>
&gt; index 9e05f4b..c8f9ecd 100644<br>
&gt; --- a/drivers/serial/Kconfig<br>
&gt; +++ b/drivers/serial/Kconfig<br>
&gt; @@ -48,6 +48,16 @@ config DRIVER_SERIAL_ALTERA<br>
&gt; =A0 =A0 =A0 default y<br>
&gt; =A0 =A0 =A0 bool &quot;Altera serial driver&quot;<br>
&gt;<br>
&gt; +config DRIVER_SERIAL_ALTERA_JTAG<br>
&gt; + =A0 =A0 depends on NIOS2<br>
&gt; + =A0 =A0 default n<br>
&gt; + =A0 =A0 bool &quot;Altera JTAG serial driver&quot;<br>
&gt; +<br>
&gt; +config ALTERA_JTAG_UART_BYPASS<br>
&gt; + =A0 =A0 depends on DRIVER_SERIAL_ALTERA_JTAG<br>
&gt; + =A0 =A0 default y<br>
&gt; + =A0 =A0 bool &quot;Don&#39;t block on serial putc if JTAG is not con=
nected&quot;<br>
<br>
</div>Is there a reason to block on putc if JTAG is not connected? Without<=
br>
strong reasons I think this option should be removed.<br>
<br></blockquote><div><br></div><div>Well, there is not....I copied this fr=
om u-boot but I never used this feature.</div><div>You&#39;re right, I&#39;=
ll remove it.</div><div><br></div><div>Franck.</div><div><br></div><div>
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex;">
Sascha<br>
<div><div></div><div class=3D"h5"><br>
&gt; +<br>
&gt; =A0config DRIVER_SERIAL_NS16550<br>
&gt; =A0 =A0 =A0 default n<br>
&gt; =A0 =A0 =A0 bool &quot;NS16550 serial driver&quot;<br>
&gt; diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile<br>
&gt; index df9e705..8b56d15 100644<br>
&gt; --- a/drivers/serial/Makefile<br>
&gt; +++ b/drivers/serial/Makefile<br>
&gt; @@ -17,3 +17,4 @@ obj-$(CONFIG_DRIVER_SERIAL_NS16550) =A0 =A0 =A0 =A0 =
+=3D serial_ns16550.o<br>
&gt; =A0obj-$(CONFIG_DRIVER_SERIAL_PL010) =A0 =A0 =A0 =A0 =A0 =A0+=3D seria=
l_pl010.o<br>
&gt; =A0obj-$(CONFIG_DRIVER_SERIAL_S3C24X0) =A0 =A0 =A0 =A0 =A0+=3D serial_=
s3c24x0.o<br>
&gt; =A0obj-$(CONFIG_DRIVER_SERIAL_ALTERA) =A0 =A0 =A0 =A0 =A0 +=3D serial_=
altera.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG) =A0 =A0 =A0 =A0 =A0 =A0 =A0+=
=3D serial_altera_jtag.o<br>
&gt; diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/seri=
al_altera_jtag.c<br>
&gt; new file mode 100644<br>
&gt; index 0000000..70bc5a9<br>
&gt; --- /dev/null<br>
&gt; +++ b/drivers/serial/serial_altera_jtag.c<br>
&gt; @@ -0,0 +1,106 @@<br>
&gt; +/*<br>
&gt; + * (C) Copyright 2004, Psyent Corporation &lt;<a href=3D"http://www.p=
syent.com" target=3D"_blank">www.psyent.com</a>&gt;<br>
&gt; + * Scott McNutt &lt;<a href=3D"mailto:smcnutt@psyent.com">smcnutt@psy=
ent.com</a>&gt;<br>
&gt; + *<br>
&gt; + * (C) Copyright 2011 - Franck JULLIEN &lt;<a href=3D"mailto:elec4fun=
@gmail.com">elec4fun@gmail.com</a>&gt;<br>
&gt; + *<br>
&gt; + * See file CREDITS for list of people who contributed to this<br>
&gt; + * project.<br>
&gt; + *<br>
&gt; + * This program is free software; you can redistribute it and/or<br>
&gt; + * modify it under the terms of the GNU General Public License as<br>
&gt; + * published by the Free Software Foundation; either version 2 of<br>
&gt; + * the License, or (at your option) any later version.<br>
&gt; + *<br>
&gt; + * This program is distributed in the hope that it will be useful,<br=
>
&gt; + * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
&gt; + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br=
>
&gt; + * GNU General Public License for more details.<br>
&gt; + *<br>
&gt; + * You should have received a copy of the GNU General Public License<=
br>
&gt; + * along with this program; if not, write to the Free Software<br>
&gt; + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
&gt; + * MA 02111-1307 USA<br>
&gt; + */<br>
&gt; +<br>
&gt; +#include &lt;common.h&gt;<br>
&gt; +#include &lt;driver.h&gt;<br>
&gt; +#include &lt;init.h&gt;<br>
&gt; +#include &lt;malloc.h&gt;<br>
&gt; +#include &lt;asm/io.h&gt;<br>
&gt; +#include &lt;asm/nios2-io.h&gt;<br>
&gt; +<br>
&gt; +static int altera_serial_jtag_setbaudrate(struct console_device *cdev=
, int baudrate)<br>
&gt; +{<br>
&gt; + =A0 =A0 return 0;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static void altera_serial_jtag_putc(struct console_device *cdev, char=
 c)<br>
&gt; +{<br>
&gt; + =A0 =A0 struct nios_jtag *jtag =3D (struct nios_jtag *)cdev-&gt;dev-=
&gt;map_base;<br>
&gt; + =A0 =A0 uint32_t st;<br>
&gt; +<br>
&gt; + =A0 =A0 while (1) {<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 st =3D readl(&amp;jtag-&gt;control);<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 if (NIOS_JTAG_WSPACE(st))<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;<br>
&gt; +#ifdef CONFIG_ALTERA_JTAG_UART_BYPASS<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 if (!(st &amp; NIOS_JTAG_AC)) /* no connecti=
on */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return;<br>
&gt; +#endif<br>
&gt; + =A0 =A0 }<br>
&gt; +<br>
&gt; + =A0 =A0 writel(c, &amp;jtag-&gt;data);<br>
&gt; +}<br>
&gt; +<br>
&gt; +static int altera_serial_jtag_tstc(struct console_device *cdev)<br>
&gt; +{<br>
&gt; + =A0 =A0 struct nios_jtag *jtag =3D (struct nios_jtag *)cdev-&gt;dev-=
&gt;map_base;<br>
&gt; +<br>
&gt; + =A0 =A0 return readl(&amp;jtag-&gt;control) &amp; NIOS_JTAG_RRDY;<br=
>
&gt; +}<br>
&gt; +<br>
&gt; +static int altera_serial_jtag_getc(struct console_device *cdev)<br>
&gt; +{<br>
&gt; + =A0 =A0 struct nios_jtag *jtag =3D (struct nios_jtag *)cdev-&gt;dev-=
&gt;map_base;<br>
&gt; + =A0 =A0 uint32_t val;<br>
&gt; +<br>
&gt; + =A0 =A0 while (1) {<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 val =3D readl(&amp;jtag-&gt;data);<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 if (val &amp; NIOS_JTAG_RVALID)<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;<br>
&gt; + =A0 =A0 }<br>
&gt; +<br>
&gt; + =A0 =A0 return val &amp; 0xFF;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static int altera_serial_jtag_probe(struct device_d *dev) {<br>
&gt; +<br>
&gt; + =A0 =A0 struct console_device *cdev;<br>
&gt; +<br>
&gt; + =A0 =A0 cdev =3D malloc(sizeof(struct console_device));<br>
&gt; + =A0 =A0 dev-&gt;type_data =3D cdev;<br>
&gt; + =A0 =A0 cdev-&gt;dev =3D dev;<br>
&gt; + =A0 =A0 cdev-&gt;f_caps =3D CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE=
_STDERR;<br>
&gt; + =A0 =A0 cdev-&gt;tstc =3D altera_serial_jtag_tstc;<br>
&gt; + =A0 =A0 cdev-&gt;putc =3D altera_serial_jtag_putc;<br>
&gt; + =A0 =A0 cdev-&gt;getc =3D altera_serial_jtag_getc;<br>
&gt; + =A0 =A0 cdev-&gt;setbrg =3D altera_serial_jtag_setbaudrate;<br>
&gt; +<br>
&gt; + =A0 =A0 console_register(cdev);<br>
&gt; +<br>
&gt; + =A0 =A0 return 0;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static struct driver_d altera_serial_jtag_driver =3D {<br>
&gt; + =A0 =A0 .name =3D &quot;altera_serial_jtag&quot;,<br>
&gt; + =A0 =A0 .probe =3D altera_serial_jtag_probe,<br>
&gt; +};<br>
&gt; +<br>
&gt; +static int altera_serial_jtag_init(void)<br>
&gt; +{<br>
&gt; + =A0 =A0 return register_driver(&amp;altera_serial_jtag_driver);<br>
&gt; +}<br>
&gt; +<br>
&gt; +console_initcall(altera_serial_jtag_init);<br>
&gt; +<br>
&gt; --<br>
&gt; 1.7.0.4<br>
&gt;<br>
&gt;<br>
</div></div>&gt; _______________________________________________<br>
&gt; barebox mailing list<br>
&gt; <a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead=
.org</a><br>
&gt; <a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=
=3D"_blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
&gt;<br>
<font color=3D"#888888"><br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0 =
=A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-20=
6917-5555 |<br>
</font></blockquote></div><br>

--0016363108cbbee13804a505b7e8--


--===============0288951100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0288951100==--
