Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0Ib-0004EB-JX
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:41:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:41:14 +0200
Message-Id: <1369910474-23176-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] treewide include/: Add missing includes
To: barebox@lists.infradead.org

This adds several missing includes to files under include/ which
we relied on being included implicitly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/devices-imx1.h  | 1 +
 arch/arm/mach-imx/include/mach/devices-imx21.h | 1 +
 arch/arm/mach-imx/include/mach/devices-imx25.h | 1 +
 arch/arm/mach-imx/include/mach/devices-imx27.h | 1 +
 arch/arm/mach-imx/include/mach/devices-imx35.h | 1 +
 arch/arm/mach-imx/include/mach/devices-imx51.h | 3 ++-
 arch/arm/mach-imx/include/mach/devices-imx53.h | 1 +
 arch/arm/mach-imx/include/mach/devices-imx6.h  | 1 +
 arch/arm/mach-imx/include/mach/generic.h       | 3 +++
 arch/arm/mach-imx/include/mach/iomux-v1.h      | 2 ++
 arch/arm/mach-imx/include/mach/weim.h          | 2 ++
 include/environment.h                          | 2 ++
 include/fb.h                                   | 1 +
 include/filetype.h                             | 2 ++
 include/i2c/i2c.h                              | 3 +++
 include/linux/phy.h                            | 1 +
 include/mfd/mc13xxx.h                          | 2 ++
 include/net.h                                  | 2 ++
 include/notifier.h                             | 2 ++
 include/partition.h                            | 3 +--
 include/spi/spi.h                              | 1 +
 21 files changed, 33 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx1.h b/arch/arm/mach-imx/include/mach/devices-imx1.h
index 391c1a9..e4185bc 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx1.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx1.h
@@ -1,4 +1,5 @@
 #include <mach/devices.h>
+#include <mach/imx1-regs.h>
 
 static inline struct device_d *imx1_add_uart0(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx21.h b/arch/arm/mach-imx/include/mach/devices-imx21.h
index ad7ee5e..5b2dfd7 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx21.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx21.h
@@ -1,5 +1,6 @@
 
 #include <mach/devices.h>
+#include <mach/imx21-regs.h>
 
 static inline struct device_d *imx21_add_uart0(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index a655be9..5b582b8 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -1,5 +1,6 @@
 
 #include <mach/devices.h>
+#include <mach/imx25-regs.h>
 
 static inline struct device_d *imx25_add_i2c0(struct i2c_platform_data *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index d6c884a..87a3a7c 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -1,5 +1,6 @@
 
 #include <mach/devices.h>
+#include <mach/imx27-regs.h>
 
 static inline struct device_d *imx27_add_spi0(struct spi_imx_master *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 912c418..766610d 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -1,5 +1,6 @@
 
 #include <mach/devices.h>
+#include <mach/imx35-regs.h>
 
 static inline struct device_d *imx35_add_i2c0(struct i2c_platform_data *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index ec8467a..0064478 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -1,6 +1,7 @@
 
-#include <mach/devices.h>
 #include <sizes.h>
+#include <mach/devices.h>
+#include <mach/imx51-regs.h>
 
 static inline struct device_d *imx51_add_spi0(struct spi_imx_master *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 5bdcf32..df14654 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -1,5 +1,6 @@
 
 #include <mach/devices.h>
+#include <mach/imx53-regs.h>
 
 static inline struct device_d *imx53_add_spi0(struct spi_imx_master *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index b6b538a..7d41d7f 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -1,4 +1,5 @@
 #include <mach/devices.h>
+#include <mach/imx6-regs.h>
 
 static inline struct device_d *imx6_add_uart0(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 189b32f..9958cb2 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -1,6 +1,9 @@
 #ifndef __MACH_GENERIC_H
 #define __MACH_GENERIC_H
 
+#include <linux/compiler.h>
+#include <linux/types.h>
+
 u64 imx_uid(void);
 
 void imx25_boot_save_loc(void __iomem *ccm_base);
diff --git a/arch/arm/mach-imx/include/mach/iomux-v1.h b/arch/arm/mach-imx/include/mach/iomux-v1.h
index 55fbcdb..49dcecd 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v1.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v1.h
@@ -1,6 +1,8 @@
 #ifndef __MACH_IOMUX_V1_H__
 #define __MACH_IOMUX_V1_H__
 
+#include <linux/compiler.h>
+
 #define GPIO_PIN_MASK 0x1f
 
 #define GPIO_PORT_SHIFT 5
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
index 8d572dc..3fbbb6b 100644
--- a/arch/arm/mach-imx/include/mach/weim.h
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -1,6 +1,8 @@
 #ifndef __MACH_WEIM_H
 #define __MACH_WEIM_H
 
+#include <linux/types.h>
+
 void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional);
 
diff --git a/include/environment.h b/include/environment.h
index 7bdd213..ae1ecf5 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -20,6 +20,8 @@
 #ifndef _ENVIRONMENT_H_
 #define _ENVIRONMENT_H_
 
+#include <linux/list.h>
+
 /**
  * Managment of a environment variable
  */
diff --git a/include/fb.h b/include/fb.h
index 23d6c6d..df4ba8e 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -3,6 +3,7 @@
 
 #include <ioctl.h>
 #include <param.h>
+#include <driver.h>
 
 #define FB_VISUAL_TRUECOLOR		2	/* True color	*/
 #define FB_VISUAL_PSEUDOCOLOR		3	/* Pseudo color (like atari) */
diff --git a/include/filetype.h b/include/filetype.h
index ee777ac..c73c64a 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -1,6 +1,8 @@
 #ifndef __FILE_TYPE_H
 #define __FILE_TYPE_H
 
+#include <linux/string.h>
+
 /*
  * List of file types we know
  */
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 7b59a51..dab8dc5 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -16,6 +16,9 @@
 #ifndef I2C_I2C_H
 #define I2C_I2C_H
 
+#include <driver.h>
+#include <linux/types.h>
+
 #ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 /*
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 99c9639..8e60758 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -15,6 +15,7 @@
 #ifndef __PHY_H
 #define __PHY_H
 
+#include <driver.h>
 #include <linux/list.h>
 #include <linux/ethtool.h>
 #include <linux/mii.h>
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index 59042eb..cba8589 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -12,6 +12,8 @@
 #ifndef __MFD_MC13XXX_H
 #define __MFD_MC13XXX_H
 
+#include <linux/types.h>
+
 #define MC13XXX_REG_IDENTIFICATION	0x07
 
 #define MC13783_REG_INT_STATUS0		0x00
diff --git a/include/net.h b/include/net.h
index bb6b8fa..72f02ce 100644
--- a/include/net.h
+++ b/include/net.h
@@ -19,7 +19,9 @@
 #include <stdlib.h>
 #include <clock.h>
 #include <led.h>
+#include <xfuncs.h>
 #include <linux/phy.h>
+#include <linux/string.h>	/* memcpy */
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
 /* How often do we retry to send packages */
diff --git a/include/notifier.h b/include/notifier.h
index cb2be5f..c83e28b 100644
--- a/include/notifier.h
+++ b/include/notifier.h
@@ -1,6 +1,8 @@
 #ifndef __NOTIFIER_H
 #define __NOTIFIER_H
 
+#include <linux/list.h>
+
 /*
  * Notifer chains loosely based on the according Linux framework
  */
diff --git a/include/partition.h b/include/partition.h
index 8ad7490..3257053 100644
--- a/include/partition.h
+++ b/include/partition.h
@@ -1,7 +1,7 @@
 #ifndef __PARTITION_H
 #define __PARTITION_H
 
-struct device_d;
+#include <driver.h>
 
 struct partition {
         int num;
@@ -18,4 +18,3 @@ struct partition {
 };
 
 #endif /* __PARTITION_H */
-
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 3da13e8..45fd22c 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -4,6 +4,7 @@
 #ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 #include <driver.h>
+#include <linux/string.h>
 
 struct spi_board_info {
 	char	*name;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
