Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FB-3K
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:11 +0100
Message-Id: <1422430339-11969-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/15] ARM: MXS: Create ocotp device in SoC code
To: Barebox List <barebox@lists.infradead.org>

The ocotp device is completely SoC internal, no need to register
it from boards. Register it from SoC code instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c | 3 ---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c    | 2 --
 arch/arm/boards/karo-tx28/tx28-stk5.c            | 3 ---
 arch/arm/mach-mxs/soc-imx28.c                    | 1 +
 4 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 1412eff..6e83570 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -127,9 +127,6 @@ static int cfa10036_devices_init(void)
 	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, SZ_8K,
 			   IORESOURCE_MEM, &mci_pdata);
 
-	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, SZ_8K,
-			   IORESOURCE_MEM, NULL);
-
 	i2c_register_board_info(0, cfa10036_i2c_devices, ARRAY_SIZE(cfa10036_i2c_devices));
 	add_generic_device_res("i2c-gpio", 0, NULL, 0, &i2c_gpio_pdata);
 
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index dce6d31..d77a6c7 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -275,8 +275,6 @@ static int mx28_evk_devices_init(void)
 	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 0x2000,
 			   IORESOURCE_MEM, &mx28_evk_fb_pdata);
 
-	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0x2000,
-			IORESOURCE_MEM, NULL);
 	mx28_evk_get_ethaddr(); /* must be after registering ocotp */
 
 	mx28_evk_fec_reset();
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index c4c5109..9b86d1c 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -382,9 +382,6 @@ void base_board_init(void)
 	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 0x2000,
 			   IORESOURCE_MEM, &tx28_fb_pdata);
 
-	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0x2000,
-			   IORESOURCE_MEM, NULL);
-
 	tx28_get_ethaddr();
 
 	add_generic_device("imx28-fec", 0, NULL, IMX_FEC0_BASE, 0x4000,
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index 4f0d895..b4ec38d 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -66,6 +66,7 @@ static int imx28_devices_init(void)
 	add_generic_device("imx28-gpio", 2, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx28-gpio", 3, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx28-gpio", 4, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
+	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0x2000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
