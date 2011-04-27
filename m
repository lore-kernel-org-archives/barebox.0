Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QF0Gq-0000pR-EY
	for barebox@lists.infradead.org; Wed, 27 Apr 2011 08:38:56 +0000
From: Roman Fietze <roman.fietze@telemotive.de>
References: <201104261430.01267.roman.fietze@telemotive.de>
	<20110426215630.GL14770@pengutronix.de>
In-Reply-To: <20110426215630.GL14770@pengutronix.de>
MIME-Version: 1.0
Message-ID: <201104271038.46439.roman.fietze@telemotive.de>
Date: Wed, 27 Apr 2011 10:38:46 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1535190727=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] freescale-mx35-3-stack: support 256 MiB RAM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============1535190727==
Content-Transfer-Encoding: 7bit
Content-Type: multipart/signed;
  boundary="nextPart7305869.VMQJ6ZP2yo";
  protocol="application/pgp-signature";
  micalg=pgp-sha1

--nextPart7305869.VMQJ6ZP2yo
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hallo,

On Tuesday, 26.April.2011 23:56:30 Sascha Hauer wrote:

> There are at least two bugs in your flash header, see below.

I think I will need reading glasses pretty soon. :(

Here are the updated patches. And they seem to work on our two boards.

As far as I know there are different variants of the Freescale i.MX35
3-stack out there. It would be great if somebody using one of those
boards could double check the patches.

Here's the updated patch:

=46rom ee2ed245651363f6cd6f1d5ad00e7a88c206b5b4 Mon Sep 17 00:00:00 2001
=46rom: Roman Fietze <roman.fietze@telemotive.de>
Date: Wed, 27 Apr 2011 07:13:12 +0200
Subject: [PATCH] freescale-mx35-3-stack: support 256 MiB RAM

Extend DCD table and low level init routines. Add barebox SDRAM
device.

Signed-off-by: Roman Fietze <roman.fietze@telemotive.de>
=2D--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   25 +++++++++++++++-=
=2D--
 .../boards/freescale-mx35-3-stack/flash_header.c   |   26 ++++++++++++++++=
+++-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   17 +++++++-----
 3 files changed, 55 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boa=
rds/freescale-mx35-3-stack/3stack.c
index 7b61a24..2a12aaa 100644
=2D-- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -71,17 +71,30 @@ static struct fec_platform_data fec_info =3D {
 	.phy_addr	=3D 0x1F,
 };
=20
=2Dstatic struct memory_platform_data sdram_pdata =3D {
+static struct memory_platform_data sdram0_pdata =3D {
 	.name	=3D "ram0",
 	.flags	=3D DEVFS_RDWR,
 };
=20
=2Dstatic struct device_d sdram_dev =3D {
+static struct device_d sdram0_dev =3D {
 	.id		=3D -1,
 	.name		=3D "mem",
 	.map_base	=3D IMX_SDRAM_CS0,
 	.size		=3D 128 * 1024 * 1024,
=2D	.platform_data	=3D &sdram_pdata,
+	.platform_data	=3D &sdram0_pdata,
+};
+
+static struct memory_platform_data sdram1_pdata =3D {
+	.name	=3D "ram1",
+	.flags	=3D DEVFS_RDWR,
+};
+
+static struct device_d sdram1_dev =3D {
+	.id		=3D -1,
+	.name		=3D "mem",
+	.map_base	=3D IMX_SDRAM_CS1,
+	.size		=3D 128 * 1024 * 1024,
+	.platform_data	=3D &sdram1_pdata,
 };
=20
 struct imx_nand_platform_data nand_info =3D {
@@ -209,10 +222,12 @@ static int f3s_devices_init(void)
=20
 	imx35_add_mmc0(NULL);
=20
=2D	register_device(&sdram_dev);
+	register_device(&sdram0_dev);
+	register_device(&sdram1_dev);
 	imx35_add_fb(&ipu_fb_data);
=20
=2D	armlinux_add_dram(&sdram_dev);
+	armlinux_add_dram(&sdram0_dev);
+	armlinux_add_dram(&sdram1_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
=20
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/a=
rm/boards/freescale-mx35-3-stack/flash_header.c
index 4bee797..92f2142 100644
=2D-- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
@@ -13,23 +13,47 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] =
=3D {
 	{ .ptr_type =3D 4, .addr =3D 0xb8002050, .val =3D 0x0000d843, },
 	{ .ptr_type =3D 4, .addr =3D 0xB8002054, .val =3D 0x22252521, },
 	{ .ptr_type =3D 4, .addr =3D 0xB8002058, .val =3D 0x22220a00, },
+
 	{ .ptr_type =3D 4, .addr =3D 0xB8001010, .val =3D 0x00000304, },
 	{ .ptr_type =3D 4, .addr =3D 0xB8001010, .val =3D 0x0000030C, },
+
 	{ .ptr_type =3D 4, .addr =3D 0xB8001004, .val =3D 0x007ffc3f, },
+	{ .ptr_type =3D 4, .addr =3D 0xB800100C, .val =3D 0x007ffc3f, },
+
 	{ .ptr_type =3D 4, .addr =3D 0xB8001000, .val =3D 0x92220000, },
+	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0x92220000, },
+
 	{ .ptr_type =3D 4, .addr =3D 0x80000400, .val =3D 0x12345678, },
+	{ .ptr_type =3D 4, .addr =3D 0x90000400, .val =3D 0x12345678, },
+
 	{ .ptr_type =3D 4, .addr =3D 0xB8001000, .val =3D 0xA2220000, },
+	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0xA2220000, },
+
 	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654321, },
+	{ .ptr_type =3D 4, .addr =3D 0x90000000, .val =3D 0x87654321, },
+
 	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654321, },
+	{ .ptr_type =3D 4, .addr =3D 0x90000000, .val =3D 0x87654321, },
+
 	{ .ptr_type =3D 4, .addr =3D 0xB8001000, .val =3D 0xB2220000, },
+	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0xB2220000, },
+
 	{ .ptr_type =3D 1, .addr =3D 0x80000233, .val =3D 0xda, },
+	{ .ptr_type =3D 1, .addr =3D 0x90000233, .val =3D 0xda, },
+
 	{ .ptr_type =3D 1, .addr =3D 0x82000780, .val =3D 0xda, },
+	{ .ptr_type =3D 1, .addr =3D 0x92000780, .val =3D 0xda, },
+
 	{ .ptr_type =3D 1, .addr =3D 0x82000400, .val =3D 0xda, },
+	{ .ptr_type =3D 1, .addr =3D 0x92000400, .val =3D 0xda, },
+
 	{ .ptr_type =3D 4, .addr =3D 0xB8001000, .val =3D 0x82226080, },
+	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0x82226080, },
+
 	{ .ptr_type =3D 4, .addr =3D 0xB8001004, .val =3D 0x007ffc3f, },
 	{ .ptr_type =3D 4, .addr =3D 0xB800100C, .val =3D 0x007ffc3f, },
+
 	{ .ptr_type =3D 4, .addr =3D 0xB8001010, .val =3D 0x00000304, },
=2D	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0x00002000, },
 };
=20
=20
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/=
arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index 1680579..413e04a 100644
=2D-- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -28,8 +28,8 @@
 #include "board-mx35_3stack.h"
=20
 #define CSD0_BASE_ADDR		0x80000000
=2D#define ESDCTL_BASE_ADDR	0xB8001000
 #define CSD1_BASE_ADDR		0x90000000
+#define ESDCTL_BASE_ADDR	0xB8001000
=20
 #define writel(val, reg) \
 	ldr		r0,	=3Dreg;	\
@@ -122,9 +122,9 @@ board_init_lowlevel:
 	str	r1, [r0, #CCM_CGR1]
=20
 	/* Skip SDRAM initialization if we run from RAM */
=2D	cmp	pc, #0x80000000
+	cmp	pc, #CSD0_BASE_ADDR
 	bls	1f
=2D	cmp	pc, #0x90000000
+	cmp	pc, #CSD1_BASE_ADDR
 	bhi	1f
=20
 	mov	pc, r10
@@ -138,14 +138,17 @@ board_init_lowlevel:
 	/* ip(r12) has used to save lr register in upper calling */
 	mov	fp, lr
=20
+	/* setup bank 0 */
 	mov	r5, #0x00
 	mov	r2, #0x00
 	mov	r1, #CSD0_BASE_ADDR
 	bl	setup_sdram_bank
=2D	cmp	r3, #0x0
=2D	orreq	r5, r5, #1
=2D	eorne	r2, r2, #0x1
=2D	blne	setup_sdram_bank
+
+	/* setup bank 1 */
+	mov	r5, #0x00
+	mov	r2, #0x00
+	mov	r1, #CSD1_BASE_ADDR
+	bl	setup_sdram_bank
=20
 	mov	lr, fp
=20
=2D-=20
1.7.4.2





Roman

=2D-=20
Roman Fietze                Telemotive AG B=FCro M=FChlhausen
Breitwiesen                              73347 M=FChlhausen
Tel.: +49(0)7335/18493-45        http://www.telemotive.de

Amtsgericht Ulm                                HRB 541321
Vorstand:
Peter Kersten, Markus Fischer, Franz Diller, Markus Stolz

--nextPart7305869.VMQJ6ZP2yo
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.15 (GNU/Linux)

iEYEABECAAYFAk231hYACgkQp5XY/BK//MIeJACfUuX9y4Qod0EOZoKgSL5Ky0sq
q0UAnjA/a9twbByXC/ZcH+pE3Dd9BcJi
=id3x
-----END PGP SIGNATURE-----

--nextPart7305869.VMQJ6ZP2yo--


--===============1535190727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1535190727==--
