Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3n5L-0005Pi-78
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 12:29:43 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 16:28:27 +0400
Message-Id: <1360326508-30214-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360326508-30214-1-git-send-email-shc_work@mail.ru>
References: <1360326508-30214-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] ARM: ccmx51: Replace ifdefs with IS_ENABLED
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c |   10 ++--------
 1 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 5ec304b..01e0204 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -80,12 +80,10 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-#ifdef CONFIG_DRIVER_NET_FEC_IMX
 static struct fec_platform_data fec_info = {
 	.xcv_type	= MII100,
 	.phy_addr	= 7,
 };
-#endif
 
 static iomux_v3_cfg_t ccxmx51_pads[] = {
 	/* UART1 */
@@ -431,15 +429,12 @@ static int ccxmx51_devices_init(void)
 	devfs_add_partition("nand0", 0x80000, 0x40000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-#ifdef CONFIG_DRIVER_NET_FEC_IMX
-	if (ccxmx51_id->eth0 && !pwr) {
+	if (IS_ENABLED(CONFIG_DRIVER_NET_FEC_IMX) && ccxmx51_id->eth0 && !pwr) {
 		eth_register_ethaddr(0, hwid);
 		imx51_add_fec(&fec_info);
 	}
-#endif
 
-#ifdef CONFIG_DRIVER_NET_SMC911X
-	if (ccxmx51_id->eth1 && !pwr) {
+	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X) && ccxmx51_id->eth1 && !pwr) {
 		/* Configure the WEIM CS5 timming, bus width, etc */
 		/* 16 bit on DATA[31..16], not multiplexed, async */
 		writel(0x00420081, MX51_WEIM_BASE_ADDR + WEIM_CSxGCR1(5));
@@ -455,7 +450,6 @@ static int ccxmx51_devices_init(void)
 		/* LAN9221 network controller */
 		add_generic_device("smc911x", 1, NULL, MX51_CS5_BASE_ADDR, SZ_4K, IORESOURCE_MEM, NULL);
 	}
-#endif
 
 	ccxmx51_otghost_init();
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
