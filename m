Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAtHk-0000n0-Rb
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 09:31:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 11:31:04 +0200
Message-Id: <20190401093106.4595-9-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 08/10] ARM: at91: remove at91sam9x5_get_ddram_size helper
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Substitute the current #ifdefery in at91sam9_ddrsdr.h by
open-coding at91sam9x5_get_ddram_size wherever it was called.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9x5ek/lowlevel.c           |  4 +++-
 arch/arm/mach-at91/at91sam9x5_devices.c           |  2 +-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h | 13 -------------
 3 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index 9aa0e8ba9b2b..14c239408d6a 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -17,5 +17,7 @@ ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
 
 	fdt = __dtb_at91sam9x5ek_start + get_runtime_offset();
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), fdt);
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true),
+			fdt);
 }
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index ab506a1f4236..f794d9ae8f73 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -27,7 +27,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sam9x5_get_ddram_size();
+		size = at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
 
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	add_mem_device("sram0", AT91SAM9X5_SRAM_BASE,
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index f9c908fc38b0..cc3affa17a61 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -176,19 +176,6 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	return size;
 }
 
-#ifdef CONFIG_SOC_AT91SAM9X5
-#include <mach/at91sam9x5.h>
-static inline u32 at91sam9x5_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
-}
-#else
-static inline u32 at91sam9x5_get_ddram_size(void)
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
