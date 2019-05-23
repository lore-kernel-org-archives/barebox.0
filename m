Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpoy-00022t-Lw
 for barebox@lists.infradead.org; Thu, 23 May 2019 15:39:58 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 May 2019 17:39:39 +0200
Message-Id: <20190523153943.7995-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190523153943.7995-1-a.fatoum@pengutronix.de>
References: <20190523153943.7995-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 5/9] ARM: at91: remove #ifdefery around *_get_ddram_size
 helpers
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

c16bcbc644 ("ARM: at91: remove unused defines") removed the
conflicting defintions from these headers, so it's ok to
include them at the same time now. Do this and remove the
noise.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 33 +------------------
 1 file changed, 1 insertion(+), 32 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index b0c003cd1e05..835fdea259f2 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -137,6 +137,7 @@ Banks [not SAM9G45] */
 
 #ifndef __ASSEMBLY__
 #include <io.h>
+#include <mach/hardware.h>
 
 static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 {
@@ -175,8 +176,6 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	return size;
 }
 
-#ifdef CONFIG_SOC_AT91SAM9G45
-#include <mach/at91sam9g45.h>
 static inline u32 at91sam9g45_get_ddram_size(int bank)
 {
 	switch (bank) {
@@ -188,41 +187,17 @@ static inline u32 at91sam9g45_get_ddram_size(int bank)
 		return 0;
 	}
 }
-#else
-static inline u32 at91sam9g45_get_ddram_size(int bank)
-{
-	return 0;
-}
-#endif
 
-#ifdef CONFIG_SOC_AT91SAM9X5
-#include <mach/at91sam9x5.h>
 static inline u32 at91sam9x5_get_ddram_size(void)
 {
 	return at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
 }
-#else
-static inline u32 at91sam9x5_get_ddram_size(void)
-{
-	return 0;
-}
-#endif
 
-#ifdef CONFIG_SOC_AT91SAM9N12
-#include <mach/at91sam9n12.h>
 static inline u32 at91sam9n12_get_ddram_size(void)
 {
 	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
 }
-#else
-static inline u32 at91sam9n12_get_ddram_size(void)
-{
-	return 0;
-}
-#endif
 
-#ifdef CONFIG_SOC_SAMA5
-#include <mach/sama5d3.h>
 static inline u32 at91sama5_get_ddram_size(void)
 {
 	u32 cr;
@@ -252,12 +227,6 @@ static inline u32 at91sama5_get_ddram_size(void)
 
 	return size;
 }
-#else
-static inline u32 at91sama5_get_ddram_size(void)
-{
-	return 0;
-}
-#endif
 
 #endif
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
