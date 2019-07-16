Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNqK-000178-DN
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 13:50:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2019 15:49:47 +0200
Message-Id: <20190716134948.8609-4-s.hauer@pengutronix.de>
In-Reply-To: <20190716134948.8609-1-s.hauer@pengutronix.de>
References: <20190716134948.8609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] ARM: zii-imx8mq-dev: Do setup_c() before accessing global
 variables
To: Barebox List <barebox@lists.infradead.org>

The lowlevel board code accesses global variables, so call
relocate_to_current_adr() / setup_c() to make sure we have a valid C
environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c | 59 +++++++++++++----------
 1 file changed, 33 insertions(+), 26 deletions(-)

diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 33c007e05d..7eb8b684d2 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -120,36 +120,11 @@ static unsigned int get_system_type(void)
 extern char __dtb_imx8mq_zii_ultra_rmb3_start[];
 extern char __dtb_imx8mq_zii_ultra_zest_start[];
 
-/*
- * Power-on execution flow of start_zii_imx8mq_dev() might not be
- * obvious for a very frist read, so here's, hopefully helpful,
- * summary:
- *
- * 1. MaskROM uploads PBL into OCRAM and that's where this function is
- *    executed for the first time
- *
- * 2. DDR is initialized and full i.MX image is loaded to the
- *    beginning of RAM
- *
- * 3. start_nxp_imx8mq_evk, now in RAM, is executed again
- *
- * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
- *
- * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
- *    executing start_nxp_imx8mq_evk() the third time
- *
- * 6. Standard barebox boot flow continues
- */
-ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
+static __noreturn noinline void zii_imx8mq_dev_start(void)
 {
 	unsigned int system_type;
 	void *fdt;
 
-	imx8mq_cpu_lowlevel_init();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
 	if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR) {
 		/*
 		 * We assume that we were just loaded by MaskROM into
@@ -202,3 +177,35 @@ ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
 	 */
 	imx8mq_barebox_entry(fdt);
 }
+
+/*
+ * Power-on execution flow of start_zii_imx8mq_dev() might not be
+ * obvious for a very frist read, so here's, hopefully helpful,
+ * summary:
+ *
+ * 1. MaskROM uploads PBL into OCRAM and that's where this function is
+ *    executed for the first time
+ *
+ * 2. DDR is initialized and full i.MX image is loaded to the
+ *    beginning of RAM
+ *
+ * 3. start_nxp_imx8mq_evk, now in RAM, is executed again
+ *
+ * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
+ *
+ * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
+ *    executing start_nxp_imx8mq_evk() the third time
+ *
+ * 6. Standard barebox boot flow continues
+ */
+ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
+{
+	imx8mq_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
+	
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	zii_imx8mq_dev_start();
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
