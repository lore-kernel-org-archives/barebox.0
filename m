Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAtHi-0000l1-C0
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 09:31:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 11:31:03 +0200
Message-Id: <20190401093106.4595-8-a.fatoum@pengutronix.de>
In-Reply-To: <20190401093106.4595-1-a.fatoum@pengutronix.de>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 07/10] ARM: at91: remove at91sam9n12_get_ddram_size helper
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Substitute the current #ifdefery in at91sam9_ddrsdr.h by
open-coding at91sam9n12_get_ddram_size wherever it was called.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9n12ek/lowlevel.c          |  5 +++--
 arch/arm/mach-at91/at91sam9n12_devices.c          |  2 +-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h | 13 -------------
 3 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index f57e439b9ec5..094fd941bc8c 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -19,6 +19,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(AT91SAM9N12_SRAM_BASE + AT91SAM9N12_SRAM_SIZE - 16);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9n12_get_ddram_size(),
-	                  NULL);
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true),
+			NULL);
 }
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 43cbb79af4a5..3ee07568f2c7 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -28,7 +28,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sam9n12_get_ddram_size();
+		size = at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
 
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	add_mem_device("sram0", AT91SAM9N12_SRAM_BASE,
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 9f1a2c78ff46..f9c908fc38b0 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -189,19 +189,6 @@ static inline u32 at91sam9x5_get_ddram_size(void)
 }
 #endif
 
-#ifdef CONFIG_SOC_AT91SAM9N12
-#include <mach/at91sam9n12.h>
-static inline u32 at91sam9n12_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
-}
-#else
-static inline u32 at91sam9n12_get_ddram_size(void)
-{
-	return 0;
-}
-#endif
-
 #ifdef CONFIG_SOC_SAMA5
 static inline u32 at91sama5_get_ddram_size(void __iomem *base)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
