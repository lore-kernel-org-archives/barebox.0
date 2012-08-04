Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp15.mail.ru ([94.100.176.133])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxaSp-0005v0-4a
 for barebox@lists.infradead.org; Sat, 04 Aug 2012 09:16:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  4 Aug 2012 13:15:53 +0400
Message-Id: <1344071755-6733-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] mc13xxx: Added mc13xxx_revision() function.
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c          |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c |    2 +-
 drivers/mfd/mc13xxx.c                      |    6 ++++++
 include/mfd/mc13xxx.h                      |    6 ++++++
 4 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index f309e0c..0b450d6 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -307,7 +307,7 @@ static int ccxmx51_power_init(void)
 		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_2, val);
 	}
 
-	if (mc13xxx_dev->revision <= MC13892_REVISION_2_0) {
+	if (mc13xxx_revision(mc13xxx_dev) <= MC13892_REVISION_2_0) {
 		/* Set switchers in PWM mode for Atlas 2.0 and lower */
 		/* Setup the switcher mode for SW1 & SW2*/
 		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_4, &val);
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 7c2c8fe..b67a509 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -178,7 +178,7 @@ static void babbage_power_init(void)
 		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_2, val);
 	}
 
-	if (mc13xxx->revision < MC13892_REVISION_2_0) {
+	if (mc13xxx_revision(mc13xxx) < MC13892_REVISION_2_0) {
 		/* Set switchers in PWM mode for Atlas 2.0 and lower */
 		/* Setup the switcher mode for SW1 & SW2*/
 		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_4, &val);
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 8bb0d00..53d9b7c 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -42,6 +42,12 @@ struct mc13xxx *mc13xxx_get(void)
 }
 EXPORT_SYMBOL(mc13xxx_get);
 
+int mc13xxx_revision(struct mc13xxx *mc13xxx)
+{
+	return mc13xxx->revision;
+}
+EXPORT_SYMBOL(mc13xxx_revision);
+
 #ifdef CONFIG_SPI
 static int spi_rw(struct spi_device *spi, void * buf, size_t len)
 {
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index 632c9fb..3770789 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -165,6 +165,7 @@ struct mc13xxx {
 
 #ifdef CONFIG_MFD_MC13XXX
 extern struct mc13xxx *mc13xxx_get(void);
+extern int mc13xxx_revision(struct mc13xxx *mc13xxx);
 extern int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val);
 extern int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val);
 extern int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u32 val);
@@ -174,6 +175,11 @@ static inline struct mc13xxx *mc13xxx_get(void)
 	return NULL;
 }
 
+static inline int mc13xxx_revision(struct mc13xxx *mc13xxx)
+{
+	return -ENODEV;
+}
+
 static inline int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
 {
 	return -ENODEV;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
