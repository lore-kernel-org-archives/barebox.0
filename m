Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axwok-00085r-DV
 for barebox@lists.infradead.org; Wed, 04 May 2016 13:26:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C4DB4A0028C
 for <barebox@lists.infradead.org>; Wed,  4 May 2016 15:26:46 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 4 May 2016 15:25:57 +0200
Message-Id: <1462368357-7525-1-git-send-email-s.christ@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] mci: imx-esdhc: implement reset quirks for i.MX6
 DualLite/Solo
To: barebox@lists.infradead.org

First of all the reset values of MMC interfaces are differently between
Quad and DualLite/Solo SoM.

                Register VEND_SPEC2(0xC8)
    Quad:       0x0
    DualLite:   0x00000006
    default:    0x00000006    (from i.MX6 Reference Manual)

Furthermore the ROM Code of Quad and DualLite uses the MMC interfaces
differently when it loads the bootloader from that device:

                Register DLL_CTRL(0x60)  Bit 25 FBCLK_SEL (0x48)
    Quad:       0x0                      0
    DualLite:   0x01000021               1

Since the linux kernel and barebox driver doesn't reset all registers,
the MMC interface is in an inconsistent state, which leads to boot
failures for some eMMC devices on the i.MX6 DualLite SoM. The errors
look like:

    mmcblk3: error -110 sending stop command, original cmd response 0x900, card status 0x400900
    mmcblk3: error -84 transferring data, sector 24578, nr 2, cmd response 0x900, card status 0x0
    mmcblk3: retrying using single block read
    mmcblk3: error -84 transferring data, sector 24578, nr 2, cmd response 0x900, card status 0x0
    blk_update_request: I/O error, dev mmcblk3, sector 24578

It's sufficient to reset register DLL_CTRL and bit FBCLK_SEL. Register
VEND_SPEC2 has no effect.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
v2: send patch again with charset 'utf8', not 'y'. Sorry.
---
 drivers/mci/imx-esdhc.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 282887b..2e189fe 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -41,6 +41,8 @@
 
 #define IMX_SDHCI_WML		0x44
 #define IMX_SDHCI_MIXCTRL	0x48
+#define IMX_SDHCI_DLL_CTRL	0x60
+#define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	(BIT(25))
 
 struct fsl_esdhc_host {
 	struct mci_host		mci;
@@ -516,11 +518,23 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 {
 	void __iomem *regs = host->regs;
 	uint64_t start;
+	int val;
 
 	/* reset the controller */
 	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_RSTA);
 
+	/* extra register reset for i.MX6 Solo/DualLite */
+	if (cpu_is_mx6()) {
+		/* reset bit FBCLK_SEL */
+		val = esdhc_read32(regs + IMX_SDHCI_MIXCTRL);
+		val &= ~IMX_SDHCI_MIX_CTRL_FBCLK_SEL;
+		esdhc_write32(regs + IMX_SDHCI_MIXCTRL, val);
+
+		/* reset delay line settings in IMX_SDHCI_DLL_CTRL */
+		esdhc_write32(regs + IMX_SDHCI_DLL_CTRL, 0x0);
+	}
+
 	start = get_time_ns();
 	/* hardware clears the bit when it is done */
 	while (1) {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
