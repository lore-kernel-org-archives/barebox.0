Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axwkM-0005aS-31
 for barebox@lists.infradead.org; Wed, 04 May 2016 13:21:47 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1407EA0028C
 for <barebox@lists.infradead.org>; Wed,  4 May 2016 15:21:42 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 4 May 2016 15:20:52 +0200
Message-Id: <1462368052-7344-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1508097385508588301=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mci: imx-esdhc: implement reset quirks for i.MX6 DualLite/Solo
To: barebox@lists.infradead.org

--===============1508097385508588301==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: quoted-printable

First of all the reset values of MMC interfaces are differently between
Quad and DualLite/Solo SoM.

                Register VEND=5FSPEC2(0xC8)
    Quad:       0x0
    DualLite:   0x00000006
    default:    0x00000006    (from i.MX6 Reference Manual)

Furthermore the ROM Code of Quad and DualLite uses the MMC interfaces
differently when it loads the bootloader from that device:

                Register DLL=5FCTRL(0x60)  Bit 25 FBCLK=5FSEL (0x48)
    Quad:       0x0                      0
    DualLite:   0x01000021               1

Since the linux kernel and barebox driver doesn't reset all registers,
the MMC interface is in an inconsistent state, which leads to boot
failures for some eMMC devices on the i.MX6 DualLite SoM. The errors
look like:

    mmcblk3: error -110 sending stop command, original cmd response 0x900, =
card status 0x400900
    mmcblk3: error -84 transferring data, sector 24578, nr 2, cmd response =
0x900, card status 0x0
    mmcblk3: retrying using single block read
    mmcblk3: error -84 transferring data, sector 24578, nr 2, cmd response =
0x900, card status 0x0
    blk=5Fupdate=5Frequest: I/O error, dev mmcblk3, sector 24578

It's sufficient to reset register DLL=5FCTRL and bit FBCLK=5FSEL. Register
VEND=5FSPEC2 has no effect.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
Hi,

there is already a corresponding kernel patch, but it's not sufficient:

    http://www.spinics.net/lists/linux-mmc/msg36331.html                 =20
                                                       =20
    commit db79ac243f04a7a0ee43246c51667881f7736c56    =20
    Author: Dong Aisheng <aisheng.dong@freescale.com>
    Date:   Mon Dec 14 15:31:43 2015 +0800          =20

        MLK-12000 mmc: sdhci-esdhci-imx: disable DLL delay line settings ex=
plicitly

        Disable DLL delay line settings explicitly during driver initializa=
tion
        in case ROM/uBoot had set an invalid delay.
        e.g. MX6DL ROM has set the default delay line(DLLCTRL) to 0x1000021,
        the uSDHC clock timing will become marginal when works on DDR mode
        due to default delay and will possibly see CRC errors in cause the =
board
        is not perfectly designed on the eMMC chip layout.


It only resets the register DLL=5FCTRL, but the bit FBCLK=5FSEL must be als=
o be
reseted.

Mit freundlichen Gr=C3=BC=C3=9Fen / Kind regards,
        Stefan Christ

---
 drivers/mci/imx-esdhc.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 282887b..2e189fe 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -41,6 +41,8 @@
=20
 #define IMX=5FSDHCI=5FWML		0x44
 #define IMX=5FSDHCI=5FMIXCTRL	0x48
+#define IMX=5FSDHCI=5FDLL=5FCTRL	0x60
+#define IMX=5FSDHCI=5FMIX=5FCTRL=5FFBCLK=5FSEL	(BIT(25))
=20
 struct fsl=5Fesdhc=5Fhost {
 	struct mci=5Fhost		mci;
@@ -516,11 +518,23 @@ static int esdhc=5Freset(struct fsl=5Fesdhc=5Fhost *h=
ost)
 {
 	void =5F=5Fiomem *regs =3D host->regs;
 	uint64=5Ft start;
+	int val;
=20
 	/* reset the controller */
 	esdhc=5Fwrite32(regs + SDHCI=5FCLOCK=5FCONTROL=5F=5FTIMEOUT=5FCONTROL=5F=
=5FSOFTWARE=5FRESET,
 			SYSCTL=5FRSTA);
=20
+	/* extra register reset for i.MX6 Solo/DualLite */
+	if (cpu=5Fis=5Fmx6()) {
+		/* reset bit FBCLK=5FSEL */
+		val =3D esdhc=5Fread32(regs + IMX=5FSDHCI=5FMIXCTRL);
+		val &=3D ~IMX=5FSDHCI=5FMIX=5FCTRL=5FFBCLK=5FSEL;
+		esdhc=5Fwrite32(regs + IMX=5FSDHCI=5FMIXCTRL, val);
+
+		/* reset delay line settings in IMX=5FSDHCI=5FDLL=5FCTRL */
+		esdhc=5Fwrite32(regs + IMX=5FSDHCI=5FDLL=5FCTRL, 0x0);
+	}
+
 	start =3D get=5Ftime=5Fns();
 	/* hardware clears the bit when it is done */
 	while (1) {
--=20
1.9.1



--===============1508097385508588301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1508097385508588301==--
