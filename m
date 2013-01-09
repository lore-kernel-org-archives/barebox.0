Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TstQm-0002oU-U4
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 11:02:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Jan 2013 12:02:44 +0100
Message-Id: <1357729366-2686-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357729366-2686-1-git-send-email-s.hauer@pengutronix.de>
References: <1357729366-2686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM am33xx: Add cpws convenience functions
To: barebox@lists.infradead.org

This adds a function to register the cpws device and another one
to register the MAC addresses provided by the am33xx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_generic.c              |   27 ++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-devices.h |    7 ++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index e8293f7..d3014c2 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -18,11 +18,14 @@
  * MA 02111-1307 USA
  */
 
+#include <common.h>
 #include <io.h>
+#include <net.h>
 #include <mach/am33xx-silicon.h>
 #include <mach/am33xx-clock.h>
 #include <mach/sys_info.h>
 #include <mach/xload.h>
+#include <mach/am33xx-generic.h>
 
 void __noreturn reset_cpu(unsigned long addr)
 {
@@ -95,3 +98,27 @@ enum omap_boot_src am33xx_bootsrc(void)
 {
 	return OMAP_BOOTSRC_MMC1; /* only MMC for now */
 }
+
+int am33xx_register_ethaddr(int eth_id, int mac_id)
+{
+	void __iomem *mac_id_low = (void *)AM33XX_MAC_ID0_LO + mac_id * 8;
+	void __iomem *mac_id_high = (void *)AM33XX_MAC_ID0_HI + mac_id * 8;
+	uint8_t mac_addr[6];
+	uint32_t mac_hi, mac_lo;
+
+	mac_lo = readl(mac_id_low);
+	mac_hi = readl(mac_id_high);
+	mac_addr[0] = mac_hi & 0xff;
+	mac_addr[1] = (mac_hi & 0xff00) >> 8;
+	mac_addr[2] = (mac_hi & 0xff0000) >> 16;
+	mac_addr[3] = (mac_hi & 0xff000000) >> 24;
+	mac_addr[4] = mac_lo & 0xff;
+	mac_addr[5] = (mac_lo & 0xff00) >> 8;
+
+	if (is_valid_ether_addr(mac_addr)) {
+		eth_register_ethaddr(eth_id, mac_addr);
+		return 0;
+	}
+
+	return -ENODEV;
+}
diff --git a/arch/arm/mach-omap/include/mach/am33xx-devices.h b/arch/arm/mach-omap/include/mach/am33xx-devices.h
index c194303..fe9fba9 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-devices.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-devices.h
@@ -6,6 +6,7 @@
 #include <mach/am33xx-silicon.h>
 #include <mach/devices.h>
 #include <mach/omap_hsmmc.h>
+#include <mach/cpsw.h>
 
 /* the device numbering is the same as in the TRM memory map (SPRUH73G) */
 
@@ -30,4 +31,10 @@ static inline struct device_d *am33xx_add_mmc0(struct omap_hsmmc_platform_data *
 			AM33XX_MMCHS0_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
+static inline struct device_d *am33xx_add_cpsw(struct cpsw_platform_data *cpsw_data)
+{
+	return add_generic_device("cpsw", 0, NULL,
+			AM335X_CPSW_BASE, SZ_32K, IORESOURCE_MEM, cpsw_data);
+}
+
 #endif /* __MACH_OMAP3_DEVICES_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
