Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4FrH-0005fJ-Cq
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 16:31:48 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  8 Oct 2010 18:30:58 +0200
Message-Id: <1286555458-20125-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
References: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/10] ARM pca100: Add mci support
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Add mci support to the PCA100 platform

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-i.MX27/pca100.c |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 7328a6c..7460c00 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -109,6 +109,11 @@ static void pca100_usbh_init(void)
 }
 #endif
 
+static struct device_d mmc_dev = {
+	.name		= "imx-mmc",
+	.map_base	= 0x10014000,
+};
+
 #ifdef CONFIG_MMU
 static void pca100_mmu_init(void)
 {
@@ -180,8 +185,17 @@ static int pca100_devices_init(void)
 		PD23_AF_USBH2_DATA2,
 		PD24_AF_USBH2_DATA1,
 		PD26_AF_USBH2_DATA5,
+		/* SDHC */
+		PB4_PF_SD2_D0,
+		PB5_PF_SD2_D1,
+		PB6_PF_SD2_D2,
+		PB7_PF_SD2_D3,
+		PB8_PF_SD2_CMD,
+		PB9_PF_SD2_CLK,
 	};
 
+	PCCR0 |= PCCR0_SDHC2_EN;
+
 	/* disable the usb phys */
 	imx_gpio_mode((GPIO_PORTB | 23) | GPIO_GPIO | GPIO_IN);
 	gpio_direction_output(GPIO_PORTB + 23, 1);
@@ -195,6 +209,7 @@ static int pca100_devices_init(void)
 	register_device(&nand_dev);
 	register_device(&sdram_dev);
 	register_device(&fec_dev);
+	register_device(&mmc_dev);
 
 	PCCR1 |= PCCR1_PERCLK2_EN;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
