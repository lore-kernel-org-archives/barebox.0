Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TM31d-00010q-Q2
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 20:37:07 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so551369wgb.18
 for <barebox@lists.infradead.org>; Wed, 10 Oct 2012 13:37:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Carlo Caione <carlo.caione@gmail.com>
In-Reply-To: <20121009113142.GD26553@game.jcrosoft.org>
Date: Wed, 10 Oct 2012 22:36:59 +0200
Message-Id: <19A97966-0AF1-4D37-BC6F-CA6D47F59B50@gmail.com>
References: <n> <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
 <1349734061-32339-6-git-send-email-carlo.caione@gmail.com>
 <20121009113142.GD26553@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0635057970399778205=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] Add support for GPIO (BCM2835/Raspberry-Pi)
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


--===============0635057970399778205==
Content-Type: multipart/alternative; boundary="Apple-Mail=_95BC2904-7E51-4323-9618-9050CE27EBD6"


--Apple-Mail=_95BC2904-7E51-4323-9618-9050CE27EBD6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Oct 9, 2012, at 1:31 PM, Jean-Christophe PLAGNIOL-VILLARD =
<plagnioj@jcrosoft.com> wrote:
[cut]

>>=20
>> +
>> +#include <common.h>
>> +#include <errno.h>
>> +#include <malloc.h>
>> +#include <io.h>
>> +#include <gpio.h>
>> +#include <init.h>
>> +#include <mach/platform.h>
>> +
>> +#define GPIOFSEL(x)  (0x00+(x)*4)
>> +#define GPIOSET(x)   (0x1c+(x)*4)
>> +#define GPIOCLR(x)   (0x28+(x)*4)
>> +#define GPIOLEV(x)   (0x34+(x)*4)
>> +#define GPIOEDS(x)   (0x40+(x)*4)
>> +#define GPIOREN(x)   (0x4c+(x)*4)
>> +#define GPIOFEN(x)   (0x58+(x)*4)
>> +#define GPIOHEN(x)   (0x64+(x)*4)
>> +#define GPIOLEN(x)   (0x70+(x)*4)
>> +#define GPIOAREN(x)  (0x7c+(x)*4)
>> +#define GPIOAFEN(x)  (0x88+(x)*4)
>> +#define GPIOUD(x)    (0x94+(x)*4)
>> +#define GPIOUDCLK(x) (0x98+(x)*4)
>=20
>> +
>> +enum {
>> +	GPIO_FSEL_INPUT, GPIO_FSEL_OUTPUT,
>> +	GPIO_FSEL_ALT5, GPIO_FSEL_ALT_4,
>> +	GPIO_FSEL_ALT0, GPIO_FSEL_ALT1,
>> +	GPIO_FSEL_ALT2, GPIO_FSEL_ALT3,
>> +};
>> +
>> +struct bcm2835_gpio_chip {
>> +	void __iomem *base;
>> +	struct gpio_chip chip;
>> +};
>> +
>> +static int bcm2835_set_function(struct gpio_chip *chip, unsigned =
gpio, int function)
>> +{
> you should add one bank pre gpio_chip=20
>> +	struct bcm2835_gpio_chip *bcmgpio =3D container_of(chip, struct =
bcm2835_gpio_chip, chip);
>> +	void __iomem *base =3D bcmgpio->base;
>> +	unsigned gpiodir;
>> +	unsigned gpio_bank =3D gpio / 10;
>> +	unsigned gpio_field_offset =3D (gpio - 10 * gpio_bank) * 3;
> so this will be dropped
>> +
>> +	gpiodir =3D readl(base + GPIOFSEL(gpio_bank));
>> +	gpiodir &=3D ~(7 << gpio_field_offset);
>> +	gpiodir |=3D function << gpio_field_offset;
>> +	writel(gpiodir, base + GPIOFSEL(gpio_bank));
>> +	gpiodir =3D readl(base + GPIOFSEL(gpio_bank));
>> +
>> +	return 0;
>> +}
>> +

Uhm, this could be not convenient since the two banks in BCM2835 are not =
really separated, there are not exclusive registers for one bank or for =
the other. The registers used for GPIOs configuration manage both the =
two banks (see for example GPFSELx).
If I add one bank I can avoid calculating the bank offset for GPCLRx and =
GPSETx but not for GPFSELx and viceversa (in fact in the code I select =
the bank for GPCLRx and GPSETx with gpio_bank =3D gpio / 32 whereas for =
GPIOFSEL with gpio_bank =3D gpio / 10).  Yay, confusing =85

Best,

--
Carlo Caione=

--Apple-Mail=_95BC2904-7E51-4323-9618-9050CE27EBD6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Oct 9, 2012, at 1:31 PM, Jean-Christophe =
PLAGNIOL-VILLARD &lt;<a =
href=3D"mailto:plagnioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&gt; =
wrote:</div>[cut<span style=3D"font-size: 13px; =
">]</span></div><div><span style=3D"font-size: =
13px;"><br></span><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br>+<br>+#include &lt;common.h&gt;<br>+#include =
&lt;errno.h&gt;<br>+#include &lt;malloc.h&gt;<br>+#include =
&lt;io.h&gt;<br>+#include &lt;gpio.h&gt;<br>+#include =
&lt;init.h&gt;<br>+#include &lt;mach/platform.h&gt;<br>+<br>+#define =
GPIOFSEL(x) &nbsp;(0x00+(x)*4)<br>+#define GPIOSET(x) =
&nbsp;&nbsp;(0x1c+(x)*4)<br>+#define GPIOCLR(x) =
&nbsp;&nbsp;(0x28+(x)*4)<br>+#define GPIOLEV(x) =
&nbsp;&nbsp;(0x34+(x)*4)<br>+#define GPIOEDS(x) =
&nbsp;&nbsp;(0x40+(x)*4)<br>+#define GPIOREN(x) =
&nbsp;&nbsp;(0x4c+(x)*4)<br>+#define GPIOFEN(x) =
&nbsp;&nbsp;(0x58+(x)*4)<br>+#define GPIOHEN(x) =
&nbsp;&nbsp;(0x64+(x)*4)<br>+#define GPIOLEN(x) =
&nbsp;&nbsp;(0x70+(x)*4)<br>+#define GPIOAREN(x) =
&nbsp;(0x7c+(x)*4)<br>+#define GPIOAFEN(x) =
&nbsp;(0x88+(x)*4)<br>+#define GPIOUD(x) =
&nbsp;&nbsp;&nbsp;(0x94+(x)*4)<br>+#define GPIOUDCLK(x) =
(0x98+(x)*4)<br></blockquote><br><blockquote type=3D"cite">+<br>+enum =
{<br>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>GPIO_FSEL_INPUT, GPIO_FSEL_OUTPUT,<br>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>GPIO_FSEL_ALT5, GPIO_FSEL_ALT_4,<br>+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>GPIO_FSEL_ALT0, =
GPIO_FSEL_ALT1,<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>GPIO_FSEL_ALT2, =
GPIO_FSEL_ALT3,<br>+};<br>+<br>+struct bcm2835_gpio_chip {<br>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>void =
__iomem *base;<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>struct gpio_chip =
chip;<br>+};<br>+<br>+static int bcm2835_set_function(struct gpio_chip =
*chip, unsigned gpio, int function)<br>+{<br></blockquote>you should add =
one bank pre gpio_chip <br><blockquote type=3D"cite">+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>struct =
bcm2835_gpio_chip *bcmgpio =3D container_of(chip, struct =
bcm2835_gpio_chip, chip);<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>void __iomem *base =3D =
bcmgpio-&gt;base;<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>unsigned gpiodir;<br>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>unsigned =
gpio_bank =3D gpio / 10;<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>unsigned gpio_field_offset =3D =
(gpio - 10 * gpio_bank) * 3;<br></blockquote>so this will be =
dropped<br><blockquote type=3D"cite">+<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>gpiodir =3D readl(base + =
GPIOFSEL(gpio_bank));<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>gpiodir &amp;=3D ~(7 &lt;&lt; =
gpio_field_offset);<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>gpiodir |=3D function &lt;&lt; =
gpio_field_offset;<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>writel(gpiodir, base + =
GPIOFSEL(gpio_bank));<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>gpiodir =3D readl(base + =
GPIOFSEL(gpio_bank));<br>+<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>return =
0;<br>+}<br>+<br></blockquote></blockquote></div><br><div>Uhm, this =
could be not convenient since the two banks in BCM2835 are not really =
separated, there are not&nbsp;exclusive&nbsp;registers&nbsp;for one bank =
or for the other. The registers used for GPIOs configuration manage both =
the two banks (see for example GPFSELx).</div><div>If I add one bank I =
can avoid calculating the bank offset for GPCLRx and GPSETx but not for =
GPFSELx and viceversa (in fact in the code I select the bank for GPCLRx =
and GPSETx with&nbsp;gpio_bank =3D gpio / 32 whereas for GPIOFSEL =
with&nbsp;gpio_bank =3D gpio / 10). &nbsp;Yay, confusing =
=85</div><div><br></div><div>Best,</div><div><br></div><div>--</div><div>C=
arlo Caione</div></body></html>=

--Apple-Mail=_95BC2904-7E51-4323-9618-9050CE27EBD6--


--===============0635057970399778205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0635057970399778205==--
