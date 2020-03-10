Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBZrO-0001R6-Vr
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 08:03:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Mar 2020 09:03:25 +0100
Message-Id: <20200310080326.21724-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200310080326.21724-1-a.fatoum@pengutronix.de>
References: <20200310080326.21724-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 3/4] ARM: at91: sama5d27-som1: branch to noinline function
 after stack setup
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We need to branch out as soon as possible after setting up the stack.
Do this and thereby avoid an access violation we now run into using
OSELAS.Toolchain-2019.09.1.

Fixes: 8bfb1852cf6a ("ARM: at91: add basic sama5d2-som1-ek1 support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  * New patch. I observe a wrong value in the stack pointer when
    ek_turn_led is inlined.
---
 arch/arm/boards/sama5d27-som1/lowlevel.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 6907dcf812b5..62d35be9123d 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -65,14 +65,10 @@ static void ek_dbgu_init(void)
 
 extern char __dtb_z_at91_sama5d27_som1_ek_start[];
 
-ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
+static noinline void som1_entry(void)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE);
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		ek_dbgu_init();
 
@@ -81,3 +77,12 @@ ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
 	ek_turn_led(RGB_LED_GREEN);
 	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
 }
+
+ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE);
+
+	som1_entry();
+}
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
