Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqj4-0004g1-P1
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:56 +0200
Message-Id: <1377500163-28962-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/22] ARM: am33xx: Add mmc1 registration helper
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/am33xx-devices.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/am33xx-devices.h b/arch/arm/mach-omap/include/mach/am33xx-devices.h
index 6a4d901..6691980 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-devices.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-devices.h
@@ -31,6 +31,12 @@ static inline struct device_d *am33xx_add_mmc0(struct omap_hsmmc_platform_data *
 			AM33XX_MMCHS0_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
+static inline struct device_d *am33xx_add_mmc1(struct omap_hsmmc_platform_data *pdata)
+{
+	return add_generic_device("omap4-hsmmc", 1, NULL,
+			AM33XX_MMC1_BASE, SZ_4K, IORESOURCE_MEM, pdata);
+}
+
 static inline struct device_d *am33xx_add_cpsw(struct cpsw_platform_data *cpsw_data)
 {
 	return add_generic_device("cpsw", 0, NULL,
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
