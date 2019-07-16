Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNqC-0000ER-Aw
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 13:50:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2019 15:49:46 +0200
Message-Id: <20190716134948.8609-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: phyCORE-i.MX8M SOM: Do setup_c() before accessing
 global variables
To: Barebox List <barebox@lists.infradead.org>

The lowlevel board code accesses global variables, so call
relocate_to_current_adr() / setup_c() to make sure we have a valid C
environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c | 53 +++++++++++---------
 1 file changed, 30 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index e42e7a6fcc..4e52b92ad3 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -61,30 +61,8 @@ static void phytec_imx8mq_som_sram_setup(void)
 	BUG_ON(ret);
 }
 
-/*
- * Power-on execution flow of start_phytec_phycore_imx8mq() might not be
- * obvious for a very first read, so here's, hopefully helpful,
- * summary:
- *
- * 1. MaskROM uploads PBL into OCRAM and that's where this function is
- *    executed for the first time
- *
- * 2. DDR is initialized and full i.MX image is loaded to the
- *    beginning of RAM
- *
- * 3. start_phytec_phycore_imx8mq, now in RAM, is executed again
- *
- * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
- *
- * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
- *    executing start_phytec_phycore_imx8mq() the third time
- *
- * 6. Standard barebox boot flow continues
- */
-ENTRY_FUNCTION(start_phytec_phycore_imx8mq, r0, r1, r2)
+static __noreturn noinline void phytec_phycore_imx8mq_start(void)
 {
-	imx8mq_cpu_lowlevel_init();
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
@@ -118,3 +96,32 @@ ENTRY_FUNCTION(start_phytec_phycore_imx8mq, r0, r1, r2)
 	 */
 	imx8mq_barebox_entry(__dtb_imx8mq_phytec_phycore_som_start);
 }
+
+/*
+ * Power-on execution flow of start_phytec_phycore_imx8mq() might not be
+ * obvious for a very first read, so here's, hopefully helpful,
+ * summary:
+ *
+ * 1. MaskROM uploads PBL into OCRAM and that's where this function is
+ *    executed for the first time
+ *
+ * 2. DDR is initialized and full i.MX image is loaded to the
+ *    beginning of RAM
+ *
+ * 3. start_phytec_phycore_imx8mq, now in RAM, is executed again
+ *
+ * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
+ *
+ * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
+ *    executing start_phytec_phycore_imx8mq() the third time
+ *
+ * 6. Standard barebox boot flow continues
+ */
+ENTRY_FUNCTION(start_phytec_phycore_imx8mq, r0, r1, r2)
+{
+	imx8mq_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
+
+	phytec_phycore_imx8mq_start();
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
