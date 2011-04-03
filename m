Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6NtB-00051V-CF
	for barebox@lists.infradead.org; Sun, 03 Apr 2011 14:02:52 +0000
Received: by ewy3 with SMTP id 3so1577047ewy.36
	for <barebox@lists.infradead.org>; Sun, 03 Apr 2011 07:02:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4D98680C.9060904@pengutronix.de>
References: <1301826331-18875-1-git-send-email-franck.jullien@gmail.com>
	<4D98680C.9060904@pengutronix.de>
Date: Sun, 3 Apr 2011 16:02:47 +0200
Message-ID: <BANLkTikRtzECN15bjo249gOEYE8KA+7ZqA@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1950990062=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Nios2: Add Altera UART driver
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============1950990062==
Content-Type: multipart/alternative; boundary=00504502ca1c0d1f9104a0041945

--00504502ca1c0d1f9104a0041945
Content-Type: text/plain; charset=ISO-8859-1

Hello Marc,

2011/4/3 Marc Kleine-Budde <mkl@pengutronix.de>

> On 04/03/2011 12:25 PM, franck.jullien@gmail.com wrote:
> > From: Franck JULLIEN <franck.jullien@gmail.com>
>
> Please add your S-o-b to the driver. See Documentation/SubmittingPatches
> in a Linux-kernel tree.
>
>
Ok I will.



> See comments inline.
> >
> > ---
> >  drivers/serial/Kconfig         |    5 ++
> >  drivers/serial/Makefile        |   25 +++++-----
> >  drivers/serial/serial_altera.c |   97
> ++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 115 insertions(+), 12 deletions(-)
> >  create mode 100644 drivers/serial/serial_altera.c
> >
> > diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> > index ffd877a..9e05f4b 100644
> > --- a/drivers/serial/Kconfig
> > +++ b/drivers/serial/Kconfig
> > @@ -43,6 +43,11 @@ config DRIVER_SERIAL_BLACKFIN
> >       default y
> >       bool "Blackfin serial driver"
> >
> > +config DRIVER_SERIAL_ALTERA
> > +     depends on NIOS2
> > +     default y
> > +     bool "Altera serial driver"
> > +
> >  config DRIVER_SERIAL_NS16550
> >       default n
> >       bool "NS16550 serial driver"
> > diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> > index 9f0e12b..8067b74 100644
> > --- a/drivers/serial/Makefile
> > +++ b/drivers/serial/Makefile
> > @@ -4,15 +4,16 @@
> >  # serial_max3100.o
> >  # serial_pl010.o
> >  # serial_xuartlite.o
> > -obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)          += arm_dcc.o
> > -obj-$(CONFIG_SERIAL_AMBA_PL011) += amba-pl011.o
> > -obj-$(CONFIG_DRIVER_SERIAL_IMX)                      += serial_imx.o
> > -obj-$(CONFIG_DRIVER_SERIAL_STM378X)          += stm-serial.o
> > -obj-$(CONFIG_DRIVER_SERIAL_ATMEL)            += atmel.o
> > -obj-$(CONFIG_DRIVER_SERIAL_NETX)             += serial_netx.o
> > -obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)    += linux_console.o
> > -obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)          += serial_mpc5xxx.o
> > -obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)         += serial_blackfin.o
> > -obj-$(CONFIG_DRIVER_SERIAL_NS16550)          += serial_ns16550.o
> > -obj-$(CONFIG_DRIVER_SERIAL_PL010)            += serial_pl010.o
> > -obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)          += serial_s3c24x0.o
> > +obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)             += arm_dcc.o
> > +obj-$(CONFIG_SERIAL_AMBA_PL011)                 += amba-pl011.o
> > +obj-$(CONFIG_DRIVER_SERIAL_IMX)                 += serial_imx.o
> > +obj-$(CONFIG_DRIVER_SERIAL_STM378X)             += stm-serial.o
> > +obj-$(CONFIG_DRIVER_SERIAL_ATMEL)               += atmel.o
> > +obj-$(CONFIG_DRIVER_SERIAL_NETX)                += serial_netx.o
> > +obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)       += linux_console.o
> > +obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)             += serial_mpc5xxx.o
> > +obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)            += serial_blackfin.o
> > +obj-$(CONFIG_DRIVER_SERIAL_NS16550)             += serial_ns16550.o
> > +obj-$(CONFIG_DRIVER_SERIAL_PL010)               += serial_pl010.o
> > +obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)             += serial_s3c24x0.o
> > +obj-$(CONFIG_DRIVER_SERIAL_ALTERA)              += serial_altera.o
>
> Why do you reformat the whole file? Please don't do that.
>


Because there is a mix between tabs and spaces before the "+= ....". I think
it's better to have spaces here in order
to maintain alignment no matter what the tab size is. Tell me if you're
agree, if not, I'll just put my new line at the bottom..... :)


>
> > diff --git a/drivers/serial/serial_altera.c
> b/drivers/serial/serial_altera.c
> > new file mode 100644
> > index 0000000..03e48d1
> > --- /dev/null
> > +++ b/drivers/serial/serial_altera.c
> > @@ -0,0 +1,97 @@
> > +/*
> > + * (C) Copyright 2011, Franck JULLIEN, <elec4fun@gmail.com>
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
> > +static int altera_serial_setbaudrate(struct console_device *cdev, int
> baudrate)
> > +{
> > +     volatile struct nios_uart * uart = (struct nios_uart
> *)cdev->dev->map_base;
>                                    ^
>
> please remove this space.
>
>
Damn, I used the checkpatch script though, should have seen it....


> no volatiles please.
>
>

Yeah I know but last time I removed those volatile, the driver didn't work
anymore ?!? I've done a test after I read your reply and it
works without so I'll remove them.



> > +     unsigned div;
> > +
> > +     div = (CPU_FREQ / baudrate) - 1;
> > +     writel(div, &uart->divisor);
> > +
> > +     return 0;
> > +}
> > +
> > +static void altera_serial_putc(struct console_device *cdev, char c)
> > +{
> > +     volatile struct nios_uart *uart = (struct nios_uart
> *)cdev->dev->map_base;
> > +
> > +     if (c == '\n')
> > +             altera_serial_putc(cdev, '\r');
>
> Why this? Only the at91rm9200 driver does this and I don't know why....
>
>
Because I copied it from U-Boot :) Removed.



> > +
> > +     while ((readl(&uart->status) & NIOS_UART_TRDY) == 0);
> > +     writel(c, &uart->txdata);
> > +}
> > +
> > +static int altera_serial_tstc(struct console_device *cdev)
> > +{
> > +     volatile struct nios_uart *uart = (struct nios_uart
> *)cdev->dev->map_base;
>
> No volatiles
>
> > +
> > +     return readl(&uart->status) & NIOS_UART_RRDY;
> > +}
> > +
> > +static int altera_serial_getc(struct console_device *cdev)
> > +{
> > +     volatile struct nios_uart *uart = (struct nios_uart
> *)cdev->dev->map_base;
> dito
> > +
> > +     while (altera_serial_tstc(cdev) == 0);
> please add a comment, or at least an empty line after while
>
>
Do you guys put the semi colon on the next line also ?



> > +     return readl(&uart->rxdata) & 0x000000FF;
> > +}
> > +
> > +static int altera_serial_probe(struct device_d *dev)
> > +{
> > +     struct console_device *cdev;
> > +
> > +     cdev = malloc(sizeof(struct console_device));
>
> malloc can fail, use xmalloc instead
>
>
Done.


> > +     dev->type_data = cdev;
> > +     cdev->dev = dev;
> > +     cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> > +     cdev->tstc = altera_serial_tstc;
> > +     cdev->putc = altera_serial_putc;
> > +     cdev->getc = altera_serial_getc;
> > +     cdev->setbrg = altera_serial_setbaudrate;
> > +
> > +     console_register(cdev);
> > +
> > +     return 0;
> > +}
> > +
> > +static struct driver_d altera_serial_driver = {
> > +     .name  = "altera_serial",
>              ^^
> one space is enough
>
>
Copied from blackfin :) Patch it ?



> > +     .probe = altera_serial_probe,
> > +};
> > +
> > +static int altera_serial_init(void)
> > +{
> > +     register_driver(&altera_serial_driver);
> > +     return 0;
>
> I think return register_driver(); is preferred.
>
>

Copied from blackfin :) Patch it ?


> > +}
> > +
> > +console_initcall(altera_serial_init);
> > +
>
> cheers, Marc
>
> --
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |
>
>
Do you want me to patch files each time I see a wrong coding style in the
code ? Because I'm so focused
on that since I'm working on the nios2 port (and since I display tabs and
white spaces in my favorite editor :))
that I can see coding style mistakes in a lot of files :) (for
example, leading spaces in serial_imx line 222, 228,
245, 313,.... checkpatch gives 9 errors and 44 warnings on this file).

Regards,
Franck.

--00504502ca1c0d1f9104a0041945
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Marc,<br><br><div class=3D"gmail_quote">2011/4/3 Marc Kleine-Budde <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:mkl@pengutronix.de">mkl@pengutronix.d=
e</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">On 04/03/2011 12:25 PM, <a href=3D"mailto:franck.jullien@=
gmail.com">franck.jullien@gmail.com</a> wrote:<br>
&gt; From: Franck JULLIEN &lt;<a href=3D"mailto:franck.jullien@gmail.com">f=
ranck.jullien@gmail.com</a>&gt;<br>
<br>
</div>Please add your S-o-b to the driver. See Documentation/SubmittingPatc=
hes<br>
in a Linux-kernel tree.<br>
<br></blockquote><div><br></div><div>Ok I will.=A0</div><div><br></div><div=
>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex;">
See comments inline.<br>
<div><div></div><div class=3D"h5">&gt;<br>
&gt; ---<br>
&gt; =A0drivers/serial/Kconfig =A0 =A0 =A0 =A0 | =A0 =A05 ++<br>
&gt; =A0drivers/serial/Makefile =A0 =A0 =A0 =A0| =A0 25 +++++-----<br>
&gt; =A0drivers/serial/serial_altera.c | =A0 97 +++++++++++++++++++++++++++=
+++++++++++++<br>
&gt; =A03 files changed, 115 insertions(+), 12 deletions(-)<br>
&gt; =A0create mode 100644 drivers/serial/serial_altera.c<br>
&gt;<br>
&gt; diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig<br>
&gt; index ffd877a..9e05f4b 100644<br>
&gt; --- a/drivers/serial/Kconfig<br>
&gt; +++ b/drivers/serial/Kconfig<br>
&gt; @@ -43,6 +43,11 @@ config DRIVER_SERIAL_BLACKFIN<br>
&gt; =A0 =A0 =A0 default y<br>
&gt; =A0 =A0 =A0 bool &quot;Blackfin serial driver&quot;<br>
&gt;<br>
&gt; +config DRIVER_SERIAL_ALTERA<br>
&gt; + =A0 =A0 depends on NIOS2<br>
&gt; + =A0 =A0 default y<br>
&gt; + =A0 =A0 bool &quot;Altera serial driver&quot;<br>
&gt; +<br>
&gt; =A0config DRIVER_SERIAL_NS16550<br>
&gt; =A0 =A0 =A0 default n<br>
&gt; =A0 =A0 =A0 bool &quot;NS16550 serial driver&quot;<br>
&gt; diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile<br>
&gt; index 9f0e12b..8067b74 100644<br>
&gt; --- a/drivers/serial/Makefile<br>
&gt; +++ b/drivers/serial/Makefile<br>
&gt; @@ -4,15 +4,16 @@<br>
&gt; =A0# serial_max3100.o<br>
&gt; =A0# serial_pl010.o<br>
&gt; =A0# serial_xuartlite.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC) =A0 =A0 =A0 =A0 =A0+=3D arm_dcc.o=
<br>
&gt; -obj-$(CONFIG_SERIAL_AMBA_PL011) +=3D amba-pl011.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_IMX) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0+=3D serial_imx.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_STM378X) =A0 =A0 =A0 =A0 =A0+=3D stm-seria=
l.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_ATMEL) =A0 =A0 =A0 =A0 =A0 =A0+=3D atmel.o=
<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_NETX) =A0 =A0 =A0 =A0 =A0 =A0 +=3D serial_=
netx.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE) =A0 =A0+=3D linux_console.o=
<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX) =A0 =A0 =A0 =A0 =A0+=3D serial_mp=
c5xxx.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN) =A0 =A0 =A0 =A0 +=3D serial_blac=
kfin.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_NS16550) =A0 =A0 =A0 =A0 =A0+=3D serial_ns=
16550.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_PL010) =A0 =A0 =A0 =A0 =A0 =A0+=3D serial_=
pl010.o<br>
&gt; -obj-$(CONFIG_DRIVER_SERIAL_S3C24X0) =A0 =A0 =A0 =A0 =A0+=3D serial_s3=
c24x0.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC) =A0 =A0 =A0 =A0 =A0 =A0 +=3D arm_=
dcc.o<br>
&gt; +obj-$(CONFIG_SERIAL_AMBA_PL011) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D =
amba-pl011.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_IMX) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D =
serial_imx.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_STM378X) =A0 =A0 =A0 =A0 =A0 =A0 +=3D stm-=
serial.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_ATMEL) =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D at=
mel.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_NETX) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D =
serial_netx.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE) =A0 =A0 =A0 +=3D linux_cons=
ole.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX) =A0 =A0 =A0 =A0 =A0 =A0 +=3D seri=
al_mpc5xxx.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN) =A0 =A0 =A0 =A0 =A0 =A0+=3D seri=
al_blackfin.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_NS16550) =A0 =A0 =A0 =A0 =A0 =A0 +=3D seri=
al_ns16550.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_PL010) =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D se=
rial_pl010.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_S3C24X0) =A0 =A0 =A0 =A0 =A0 =A0 +=3D seri=
al_s3c24x0.o<br>
&gt; +obj-$(CONFIG_DRIVER_SERIAL_ALTERA) =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D se=
rial_altera.o<br>
<br>
</div></div>Why do you reformat the whole file? Please don&#39;t do that.<b=
r></blockquote><div><br></div><div><br></div><div>Because there is a mix be=
tween tabs and spaces before the &quot;+=3D ....&quot;. I think it&#39;s be=
tter to have spaces here in order</div>
<div>to maintain alignment no matter what the tab size is. Tell me if you&#=
39;re agree, if not, I&#39;ll just put my new line at the bottom..... :)</d=
iv><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex;">

<div><div></div><div class=3D"h5"><br>
&gt; diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_al=
tera.c<br>
&gt; new file mode 100644<br>
&gt; index 0000000..03e48d1<br>
&gt; --- /dev/null<br>
&gt; +++ b/drivers/serial/serial_altera.c<br>
&gt; @@ -0,0 +1,97 @@<br>
&gt; +/*<br>
&gt; + * (C) Copyright 2011, Franck JULLIEN, &lt;<a href=3D"mailto:elec4fun=
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
&gt; +static int altera_serial_setbaudrate(struct console_device *cdev, int=
 baudrate)<br>
&gt; +{<br>
&gt; + =A0 =A0 volatile struct nios_uart * uart =3D (struct nios_uart *)cde=
v-&gt;dev-&gt;map_base;<br>
</div></div> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 ^<br>
<br>
please remove this space.<br>
<br></blockquote><div><br></div><div>Damn, I used the checkpatch script tho=
ugh, should have seen it....</div><div>=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex;">

no volatiles please.<br>
<div class=3D"im"><br></div></blockquote><div><br></div><div><br></div><div=
>Yeah I know but last time I removed those volatile, the driver didn&#39;t =
work anymore ?!? I&#39;ve done a test after I read your reply and it</div>
<div>works without so I&#39;ll remove them.</div><div><br></div><div>=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex;"><div class=3D"im">
&gt; + =A0 =A0 unsigned div;<br>
&gt; +<br>
&gt; + =A0 =A0 div =3D (CPU_FREQ / baudrate) - 1;<br>
&gt; + =A0 =A0 writel(div, &amp;uart-&gt;divisor);<br>
&gt; +<br>
&gt; + =A0 =A0 return 0;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static void altera_serial_putc(struct console_device *cdev, char c)<b=
r>
&gt; +{<br>
&gt; + =A0 =A0 volatile struct nios_uart *uart =3D (struct nios_uart *)cdev=
-&gt;dev-&gt;map_base;<br>
&gt; +<br>
&gt; + =A0 =A0 if (c =3D=3D &#39;\n&#39;)<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 altera_serial_putc(cdev, &#39;\r&#39;);<br>
<br>
</div>Why this? Only the at91rm9200 driver does this and I don&#39;t know w=
hy....<br>
<div class=3D"im"><br></div></blockquote><div><br></div><div>Because I copi=
ed it from U-Boot :) Removed.</div><div><br></div><div>=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex;">
<div class=3D"im">
&gt; +<br>
&gt; + =A0 =A0 while ((readl(&amp;uart-&gt;status) &amp; NIOS_UART_TRDY) =
=3D=3D 0);<br>
&gt; + =A0 =A0 writel(c, &amp;uart-&gt;txdata);<br>
&gt; +}<br>
&gt; +<br>
&gt; +static int altera_serial_tstc(struct console_device *cdev)<br>
&gt; +{<br>
&gt; + =A0 =A0 volatile struct nios_uart *uart =3D (struct nios_uart *)cdev=
-&gt;dev-&gt;map_base;<br>
<br>
</div>No volatiles<br>
<div class=3D"im"><br>
&gt; +<br>
&gt; + =A0 =A0 return readl(&amp;uart-&gt;status) &amp; NIOS_UART_RRDY;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static int altera_serial_getc(struct console_device *cdev)<br>
&gt; +{<br>
&gt; + =A0 =A0 volatile struct nios_uart *uart =3D (struct nios_uart *)cdev=
-&gt;dev-&gt;map_base;<br>
</div>dito<br>
<div class=3D"im">&gt; +<br>
&gt; + =A0 =A0 while (altera_serial_tstc(cdev) =3D=3D 0);<br>
</div>please add a comment, or at least an empty line after while<br>
<div class=3D"im"><br></div></blockquote><div><br></div><div>Do you guys pu=
t the semi colon on the next line also ?</div><div><br></div><div>=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">
<div class=3D"im">
&gt; + =A0 =A0 return readl(&amp;uart-&gt;rxdata) &amp; 0x000000FF;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static int altera_serial_probe(struct device_d *dev)<br>
&gt; +{<br>
&gt; + =A0 =A0 struct console_device *cdev;<br>
&gt; +<br>
&gt; + =A0 =A0 cdev =3D malloc(sizeof(struct console_device));<br>
<br>
</div>malloc can fail, use xmalloc instead<br>
<div class=3D"im"><br></div></blockquote><div><br></div><div>Done.</div><di=
v>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex;"><div class=3D"im">
&gt; + =A0 =A0 dev-&gt;type_data =3D cdev;<br>
&gt; + =A0 =A0 cdev-&gt;dev =3D dev;<br>
&gt; + =A0 =A0 cdev-&gt;f_caps =3D CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE=
_STDERR;<br>
&gt; + =A0 =A0 cdev-&gt;tstc =3D altera_serial_tstc;<br>
&gt; + =A0 =A0 cdev-&gt;putc =3D altera_serial_putc;<br>
&gt; + =A0 =A0 cdev-&gt;getc =3D altera_serial_getc;<br>
&gt; + =A0 =A0 cdev-&gt;setbrg =3D altera_serial_setbaudrate;<br>
&gt; +<br>
&gt; + =A0 =A0 console_register(cdev);<br>
&gt; +<br>
&gt; + =A0 =A0 return 0;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static struct driver_d altera_serial_driver =3D {<br>
&gt; + =A0 =A0 .name =A0=3D &quot;altera_serial&quot;,<br>
</div> =A0 =A0 =A0 =A0 =A0 =A0 ^^<br>
one space is enough<br>
<div class=3D"im"><br></div></blockquote><div><br></div><div>Copied from bl=
ackfin :) Patch it ?</div><div><br></div><div>=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex;">
<div class=3D"im">
&gt; + =A0 =A0 .probe =3D altera_serial_probe,<br>
&gt; +};<br>
&gt; +<br>
&gt; +static int altera_serial_init(void)<br>
&gt; +{<br>
&gt; + =A0 =A0 register_driver(&amp;altera_serial_driver);<br>
&gt; + =A0 =A0 return 0;<br>
<br>
</div>I think return register_driver(); is preferred.<br>
<div class=3D"im"><br></div></blockquote><div><br></div><div><br></div><div=
>Copied from blackfin :)=A0Patch it ?</div><div>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex;">
<div class=3D"im">
&gt; +}<br>
&gt; +<br>
&gt; +console_initcall(altera_serial_init);<br>
&gt; +<br>
<br>
</div>cheers, Marc<br>
<font color=3D"#888888"><br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| Marc Kleine-Budde =A0=
 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0| Phone: +49-231-2826-924 =A0 =A0=
 |<br>
Vertretung West/Dortmund =A0 =A0 =A0 =A0 =A0| Fax: =A0 +49-5121-206917-5555=
 |<br>
Amtsgericht Hildesheim, HRA 2686 =A0| <a href=3D"http://www.pengutronix.de"=
 target=3D"_blank">http://www.pengutronix.de</a> =A0 |<br>
<br>
</font></blockquote></div><br><div>Do you want me to patch files each time =
I see a wrong coding style in the code ? Because I&#39;m so focused</div><d=
iv>on that since I&#39;m working on the nios2 port (and since I display tab=
s and white spaces in my favorite editor :))</div>
<div>that I can see coding style mistakes in a lot of files :) (for example=
,=A0leading spaces in serial_imx line 222, 228,=A0</div><div>245, 313,.... =
checkpatch gives 9 errors and 44 warnings on this file).</div><div><br></di=
v>
<div>Regards,</div><div>Franck.</div>

--00504502ca1c0d1f9104a0041945--


--===============1950990062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1950990062==--
