Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22c.google.com ([2607:f8b0:400e:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZsMbD-0005bI-5o
 for barebox@lists.infradead.org; Sat, 31 Oct 2015 03:12:59 +0000
Received: by padhy1 with SMTP id hy1so84783495pad.0
 for <barebox@lists.infradead.org>; Fri, 30 Oct 2015 20:12:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 30 Oct 2015 20:12:22 -0700
Message-Id: <1446261143-11472-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 1/2] arm/cpu/start.c: Distil some common code in __start().
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both barebox_boarddata and barebox_boot_dtb perform essentially the
same function -- hold a pointer to a chunk of private data. Since only
one variable is ever used at any given time we may as well merge those
two variable into one. This also allows us to share more code between
two boot paths (board data vs. device tree)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since v2:

	- Restored original function semantics for
          barebox_arm_machine() and barebox_arm_boot_dtb()

	- Removed now unnecessary swith statement and auxiliary
          function that was needed to support its usage


 arch/arm/cpu/start.c | 65 +++++++++++++++++++++++++++++++---------------------
 1 file changed, 39 insertions(+), 26 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8e5097b..bfe08cc 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -32,25 +32,37 @@
 #include "mmu-early.h"

 unsigned long arm_stack_top;
-static void *barebox_boarddata;
+static void *barebox_private_data;

-u32 barebox_arm_machine(void)
+static bool blob_is_fdt(const void *blob)
 {
-	struct barebox_arm_boarddata *bd;
-
-	if (!barebox_boarddata)
-		return 0;
-
-	bd = barebox_boarddata;
+	return get_unaligned_be32(blob) == FDT_MAGIC;
+}

-	return bd->machine;
+static bool blob_is_arm_boarddata(const void *blob)
+{
+	const struct barebox_arm_boarddata *bd = blob;
+	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
 }

-static void *barebox_boot_dtb;
+u32 barebox_arm_machine(void)
+{
+	if (barebox_private_data &&
+	    blob_is_arm_boarddata(barebox_private_data)) {
+		const struct barebox_arm_boarddata *bd = barebox_private_data;
+		return bd->machine;
+	} else {
+		return 0;
+	}
+}

 void *barebox_arm_boot_dtb(void)
 {
-	return barebox_boot_dtb;
+	if (barebox_private_data &&
+	    blob_is_fdt(barebox_private_data))
+		return barebox_private_data;
+	else
+		return NULL;
 }

 static noinline __noreturn void __start(unsigned long membase,
@@ -70,7 +82,6 @@ static noinline __noreturn void __start(unsigned long membase,

 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);

-	barebox_boarddata = boarddata;
 	arm_stack_top = endmem;
 	endmem -= STACK_SIZE; /* Stack */

@@ -89,21 +100,23 @@ static noinline __noreturn void __start(unsigned long membase,
 	}

 	if (boarddata) {
-		if (get_unaligned_be32(boarddata) == FDT_MAGIC) {
-			uint32_t totalsize = get_unaligned_be32(boarddata + 4);
+		uint32_t totalsize = 0;
+		const char *name;
+
+		if (blob_is_fdt(boarddata)) {
+			totalsize = get_unaligned_be32(boarddata + 4);
+			name = "DTB";
+		} else if (blob_is_arm_boarddata(boarddata)) {
+			totalsize = sizeof(struct barebox_arm_boarddata);
+			name = "machine type";
+		}
+
+		if (totalsize) {
 			endmem -= ALIGN(totalsize, 64);
-			barebox_boot_dtb = (void *)endmem;
-			pr_debug("found DTB in boarddata, copying to 0x%p\n",
-					barebox_boot_dtb);
-			memcpy(barebox_boot_dtb, boarddata, totalsize);
-		} else if (((struct barebox_arm_boarddata *)boarddata)->magic ==
-				BAREBOX_ARM_BOARDDATA_MAGIC) {
-			endmem -= ALIGN(sizeof(struct barebox_arm_boarddata), 64);
-			barebox_boarddata = (void *)endmem;
-			pr_debug("found machine type in boarddata, copying to 0x%p\n",
-					barebox_boarddata);
-			memcpy(barebox_boarddata, boarddata,
-					sizeof(struct barebox_arm_boarddata));
+			pr_debug("found %s in boarddata, copying to 0x%lu\n",
+				 name, endmem);
+			barebox_private_data = memcpy((void *)endmem,
+						      boarddata, totalsize);
 		}
 	}

--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
