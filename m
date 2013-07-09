Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwZm5-0002wv-Kh
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 15:24:18 +0000
Received: by mail-la0-f43.google.com with SMTP id gw10so4813870lab.2
 for <barebox@lists.infradead.org>; Tue, 09 Jul 2013 08:23:55 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Tue,  9 Jul 2013 21:23:16 +0600
Message-Id: <1373383397-13205-3-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1373383397-13205-1-git-send-email-agalakhov@gmail.com>
References: <1373383397-13205-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 2/3] friendlyarm-tiny210: use LEDs for boot errors
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c |   28 +++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 0c7fbf3..9676094 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -33,6 +33,22 @@
 
 #define IRAM_CODE_BASE		0xD0020010
 
+/* Tiny210 has 4 leds numbered from 0 to 3 at GPJ2 */
+static inline void __bare_init debug_led(int led, bool state)
+{
+	uint32_t r;
+	/* GPJ2CON: mode 0001=output */
+	r = readl(0xE0200280);
+	r &= ~(0xF << (4 * led));
+	r |=  (0x1 << (4 * led));
+	writel(r, 0xE0200280);
+	/* GPJ2DAT: active low */
+	r = readl(0xE0200284);
+	r &= ~(1 << led);
+	r |= (state ? 0 : 1) << led;
+	writel(r, 0xE0200284);
+}
+
 /*
  * iROM boot from MMC
  * TODO: replace this by native boot
@@ -76,18 +92,28 @@ void __bare_init barebox_arm_reset_vector(void)
 	s5p_init_pll();
 #endif
 
+	debug_led(0, 1);
+
 	if (get_pc() < IRAM_CODE_BASE) /* Are we running from iRAM? */
 		/* No, we don't. */
 		goto boot;
 
 	s5p_init_dram_bank_ddr2(S5P_DMC0_BASE, 0x20E00323, 0, 0);
 
+	debug_led(1, 1);
+
 	if (! load_stage2((void*)(ld_var(_text) - 16),
-				ld_var(_barebox_image_size) + 16))
+				ld_var(_barebox_image_size) + 16)) {
+		debug_led(3, 1);
 		while (1) { } /* hang */
+	}
+
+	debug_led(2, 1);
 
 	jump_sdram(IRAM_CODE_BASE - ld_var(_text));
 
+	debug_led(1, 0);
+
 boot:
 	barebox_arm_entry(S3C_SDRAM_BASE, SZ_256M, 0);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
