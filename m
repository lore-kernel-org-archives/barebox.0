Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAYmt-0005hK-3I
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 07:20:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 09:19:34 +0200
Message-Id: <1435821576-18638-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: add a machine number mechanism for boarddata
To: Barebox List <barebox@lists.infradead.org>

Multi machine barebox builds have to pass information on which
board we are running on via boarddata. Usually this will be a
pointer to a device tree. Some boards might not have a device
tree available though because they are either not ported over
to device tree yet, or are running in some limited first state
environment which does not offer enough space for a device
tree. For these cases this patch adds a mechanism to embed a
machine number into a struct type along with a magic number.
This makes it possible to check for a specific machine
later during regular runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c               | 43 ++++++++++++++++++++++++--------------
 arch/arm/include/asm/barebox-arm.h | 27 +++++++++++++++++++++++-
 2 files changed, 53 insertions(+), 17 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 304ed0c..91badc9 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -28,17 +28,22 @@
 #include <asm/cache.h>
 #include <memory.h>
 
+#include <debug_ll.h>
 #include "mmu-early.h"
 
 unsigned long arm_stack_top;
 static void *barebox_boarddata;
 
-/*
- * return the boarddata variable passed to barebox_arm_entry
- */
-void *barebox_arm_boarddata(void)
+u32 barebox_arm_machine(void)
 {
-	return barebox_boarddata;
+	struct barebox_arm_boarddata *bd;
+
+	if (!barebox_boarddata)
+		return 0;
+
+	bd = barebox_boarddata;
+
+	return bd->machine;
 }
 
 static void *barebox_boot_dtb;
@@ -81,17 +86,23 @@ static noinline __noreturn void __start(unsigned long membase,
 		}
 	}
 
-	/*
-	 * If boarddata is a pointer inside valid memory and contains a
-	 * FDT magic then use it as later to probe devices
-	 */
-	if (boarddata && get_unaligned_be32(boarddata) == FDT_MAGIC) {
-		uint32_t totalsize = get_unaligned_be32(boarddata + 4);
-		endmem -= ALIGN(totalsize, 64);
-		barebox_boot_dtb = (void *)endmem;
-		pr_debug("found DTB in boarddata, copying to 0x%p\n",
-				barebox_boot_dtb);
-		memcpy(barebox_boot_dtb, boarddata, totalsize);
+	if (boarddata) {
+		if (get_unaligned_be32(boarddata) == FDT_MAGIC) {
+			uint32_t totalsize = get_unaligned_be32(boarddata + 4);
+			endmem -= ALIGN(totalsize, 64);
+			barebox_boot_dtb = (void *)endmem;
+			pr_debug("found DTB in boarddata, copying to 0x%p\n",
+					barebox_boot_dtb);
+			memcpy(barebox_boot_dtb, boarddata, totalsize);
+		} else if (((struct barebox_arm_boarddata *)boarddata)->magic ==
+				BAREBOX_ARM_BOARDDATA_MAGIC) {
+			endmem -= ALIGN(sizeof(struct barebox_arm_boarddata), 64);
+			barebox_boarddata = (void *)endmem;
+			pr_debug("found machine type in boarddata, copying to 0x%p\n",
+					barebox_boarddata);
+			memcpy(barebox_boarddata, boarddata,
+					sizeof(struct barebox_arm_boarddata));
+		}
 	}
 
 	if ((unsigned long)_text > membase + memsize ||
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index dbc8aaa..0b8acb8 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -48,7 +48,32 @@ void setup_c(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
-void *barebox_arm_boarddata(void);
+
+struct barebox_arm_boarddata {
+#define BAREBOX_ARM_BOARDDATA_MAGIC	0xabe742c3
+	u32 magic;
+	u32 machine; /* machine number to pass to barebox. This may or may
+		      * not be a ARM machine number registered on arm.linux.org.uk.
+		      * It must only be unique across barebox. Please use a number
+		      * that do not potientially clashes with registered machines,
+		      * i.e. use a number > 0x10000.
+		      */
+};
+
+/*
+ * Create a boarddata struct at given address. Suitable to be passed
+ * as boarddata to barebox_arm_entry(). The machine can be retrieved
+ * later with barebox_arm_machine().
+ */
+static inline void boarddata_create(void *adr, u32 machine)
+{
+	struct barebox_arm_boarddata *bd = adr;
+
+	bd->magic = BAREBOX_ARM_BOARDDATA_MAGIC;
+	bd->machine = machine;
+}
+
+u32 barebox_arm_machine(void);
 
 #if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
 void arm_fixup_vectors(void);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
