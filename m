Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmM-0001Eg-1b
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:11:14 +0200
Message-Id: <20200701091122.3437-21-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 20/28] ARM: at91: sama5d2: reuse stack set-up by first stage
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Stack is always set up to end of SRAM before PBL, either by ROM code or
by first stage bootloader, be it at91bootstrap or barebox in a later
commit, so no need to change the stack pointer again.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-giantboard/lowlevel.c | 13 +++----------
 arch/arm/boards/sama5d27-som1/lowlevel.c       | 13 +++----------
 2 files changed, 6 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index e08217105bcc..4419e946f1a8 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -34,10 +34,12 @@ static void dbgu_init(void)
 
 extern char __dtb_z_at91_sama5d27_giantboard_start[];
 
-static noinline void giantboard_entry(void)
+ENTRY_FUNCTION(start_sama5d27_giantboard, r0, r1, r2)
 {
 	void *fdt;
 
+	arm_cpu_lowlevel_init();
+
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		dbgu_init();
 
@@ -45,12 +47,3 @@ static noinline void giantboard_entry(void)
 
 	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
 }
-
-ENTRY_FUNCTION(start_sama5d27_giantboard, r0, r1, r2)
-{
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE);
-
-	giantboard_entry();
-}
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 2b39e5abc396..b7780ec8ae43 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -58,10 +58,12 @@ static void ek_dbgu_init(void)
 
 extern char __dtb_z_at91_sama5d27_som1_ek_start[];
 
-static noinline void som1_entry(void)
+ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
 {
 	void *fdt;
 
+	arm_cpu_lowlevel_init();
+
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		ek_dbgu_init();
 
@@ -70,12 +72,3 @@ static noinline void som1_entry(void)
 	ek_turn_led(RGB_LED_GREEN);
 	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
 }
-
-ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
-{
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE);
-
-	som1_entry();
-}
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
