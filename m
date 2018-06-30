Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x231.google.com ([2607:f8b0:400e:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6t6-0003gT-3J
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:35 +0000
Received: by mail-pg0-x231.google.com with SMTP id i7-v6so4780138pgp.2
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:48:59 -0700
Message-Id: <20180630034900.3324-11-andrew.smirnov@gmail.com>
In-Reply-To: <20180630034900.3324-1-andrew.smirnov@gmail.com>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/11] ARM: nxp-imx8mq-evk: Add bootflow comments
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add some notes on how the boot-flow goes while I still remember it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 42 +++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index c2dc6460a..7dd778c21 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -66,6 +66,26 @@ static void nxp_imx8mq_evk_sram_setup(void)
 	BUG_ON(ret);
 }
 
+/*
+ * Power-on execution flow of start_nxp_imx8mq_evk() might not be
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
 ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
@@ -73,11 +93,29 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR)
+	if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR) {
+		/*
+		 * We assume that we were just loaded by MaskROM into
+		 * SRAM if we are not running from DDR. We also assume
+		 * that means DDR needs to be initialized for the
+		 * first time.
+		 */
 		nxp_imx8mq_evk_sram_setup();
-
+	}
+
+	/*
+	 * Straight from the power-on we are at EL3, so the following
+	 * code _will_ load and jump to ATF.
+	 *
+	 * However when this function is re-executed upon exit from
+	 * ATF's initialization routine, it is EL2 and it is
+	 * short-circuited to a no-op.
+	 */
 	imx8mq_atf_load_bl31(imx_imx8m_bl31_bin);
 
+	/*
+	 * Standard entry we hit once we initialized both DDR and ATF
+	 */
 	barebox_arm_entry(MX8MQ_DDR_CSD1_BASE_ADDR,
 			  SZ_2G + SZ_1G, __dtb_imx8mq_evk_start);
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
