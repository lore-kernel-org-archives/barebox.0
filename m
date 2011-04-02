Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q62oe-0001fg-CK
	for barebox@lists.infradead.org; Sat, 02 Apr 2011 15:32:45 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 2 Apr 2011 17:31:53 +0200
References: <20110402224101.7c9506e8@manocska.bendor.com.au>
In-Reply-To: <20110402224101.7c9506e8@manocska.bendor.com.au>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201104021731.53103.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Mini2440 questions
To: barebox@lists.infradead.org

Hi Zolt=E1n,

Zolt=E1n K=F3csi wrote:
> I've got two issues. One is barebox related:
>
> Does the current git master branch supposed to boot from NAND?
> Download, config (mini2440 defconfig + very little personalisation),
> compile. Boot from NAND *is* enabled in the config.

As long Sascha release a new barebox, the NAND boot feature of the mini2440=
 is =

still in next. Its going to be released in the May release.

So, you must still use the 'next' branch to get all S3C2440 related NAND bo=
ot =

changes.

> Load to RAM and start: starts up just fine.
> Boot from NAND: nothing.

Sure. The NAND driver for the S3C2440 CPU is still broken for other NAND ty=
pes =

than small page ones.

> I looked at the actual binary image with objdump -d and it seems to
> initialise the PLL, the SDRAM controller and load the NAND into the
> RAM, then jump onto it. All that code is within the 4K StepStone range.
> However, nothing happens, the board is dead.

Yes, because the S3C2440 NAND driver loads the wrong content from the NAND.

> The other problem is not barebox related, but considering the audience
> of the list someone might have some ideas.
>
> Linux kernel, 2.6.37.2. Defconfig for mini2440. A fairly minimalistic
> kernel is then configured, dev. drivers for on-board stuff are static,
> everything else is modules. Low-level debug messages are enabled.
>
> Booting the kernel (using vivi...) hangs, just after the console is
> initialised:
>
> Copy linux kernel from 0x00060000 to 0x30008000, size =3D 0x002a0000 ...
> done
> zImage magic =3D 0x016f2818
> Setup linux parameters at 0x30000100
> linux command line is: "noinitrd root=3D/dev/mtdblock3 init=3D/linuxrc
> console=3DttySAC0,115200"
> MACH_TYPE =3D 1999
> NOW, Booting Linux......
> Uncompressing Linux... done, booting the kernel.
> s3c24xx_serial_initconsole
> s3c24xx_serial_init_ports: initialising ports...
> s3c24xx_serial_init_port: port=3Dc03a6378, platdev=3Dc03b9ab0
> s3c24xx_serial_init_port: c03a6378 (hw 0)...
> resource c0397b10 (50000000..50003fff)
> port: map=3D50000000, mem=3Df7000000, irq=3D70 (70,71), clock=3D1
> s3c2440_serial_resetport: port=3Dc03a6378 (50000000), cfg=3Dc03b9a24
> s3c24xx_serial_init_port: port=3Dc03a6434, platdev=3Dc0398d00
> s3c24xx_serial_init_port: c03a6434 (hw 1)...
> resource c0397b48 (50004000..50007fff)
> port: map=3D50004000, mem=3Df7004000, irq=3D73 (73,74), clock=3D1
> s3c2440_serial_resetport: port=3Dc03a6434 (50004000), cfg=3Dc03b9a44
> s3c24xx_serial_init_port: port=3Dc03a64f0, platdev=3Dc0398db8
> s3c24xx_serial_init_port: c03a64f0 (hw 2)...
> resource c0397b80 (50008000..5000bfff)
> port: map=3D50008000, mem=3Df7008000, irq=3D76 (76,77), clock=3D1
> s3c2440_serial_resetport: port=3Dc03a64f0 (50008000), cfg=3Dc03b9a64
> s3c24xx_serial_init(c03a665c,c03a6628)
> s3c2440_serial_probe: dev=3Dc03b9ab0
> s3c24xx_serial_probe(c03b9ab0, c03a6628) 0
> s3c24xx_serial_probe: initialising port c03a6354...
> s3c24xx_serial_init_port: port=3Dc03a6378, platdev=3Dc03b9ab0
> s3c24xx_serial_probe: adding port
> s3c2440_serial_probe: dev=3Dc0398d00
> s3c24xx_serial_probe(c0398d00, c03a6628) 1
> s3c24xx_serial_probe: initialising port c03a6410...
> s3c24xx_serial_init_port: port=3Dc03a6434, platdev=3Dc0398d00
> s3c24xx_serial_probe: adding port
> s3c2440_serial_probe: dev=3Dc0398db8
> s3c24xx_serial_probe(c0398db8, c03a6628) 2
> s3c24xx_serial_probe: initialising port c03a64cc...
> s3c24xx_serial_init_port: port=3Dc03a64f0, platdev=3Dc0398db8
> s3c24xx_serial_probe: adding port
>
> and then nothing. A LED on the board is blinking (two blinks, maybe
> 100ms apart, then about 200ms pause) but nothing comes out of the
> serial port. The LCD backlight is off and there doesn't seem to be
> either a splash image or debug info on it (console on LCD is enabled).
>
> The build environment is the latest buildroot, 4.5.2 gcc, 0.9.31 uClibc,
> everything is built from scratch (that's actually the aim of the whole
> excercise, to build a working Linux system on a Mini2440 HW from clean,
> up-to-date sources, not pre-built toolchains and pre-compiled packages
> or binary images).
>
> Any pointers would be highly appreciated.

1) do you use the mini2440 kernel command line parameter?

In the 'next' branch I added this comment into mini2440's config:
#
# "mini2440" kernel parameter
# 0 .. 9 =3D screen type
# b =3D backlight enabled
# t =3D touch enabled
# c =3D camera enabled
# Note: can be "minit2440=3D " if nothing of these components are connected
#
bootargs=3D"console=3DttySAC0,115200 mini2440=3D0tbc"

2) in 2.6.37 and 2.6.38 the serial console name is totally broken. There is=
 a =

patch around to fix it.

From: Darius Augulis <augulis.darius@gmail.com>
Subject: serial: samsung: fix device name

Without this patch you must use a serial UART name of "/dev/s3c2410_serial0=
" =

to make it work. Ugly.

I will send you this patch offline.

Regards,
Juergen

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228    =
 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555=
 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
