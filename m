Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x22c.google.com ([2607:f8b0:4001:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrVZ7-0005XL-3n
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 18:35:19 +0000
Received: by igpw7 with SMTP id w7so10475364igp.0
 for <barebox@lists.infradead.org>; Wed, 28 Oct 2015 11:34:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 28 Oct 2015 11:34:37 -0700
Message-Id: <1446057278-20538-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1446057278-20538-1-git-send-email-andrew.smirnov@gmail.com>
References: <1446057278-20538-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/2] arm/cpu/start.c: Distil some common code in __start().
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both barebox_boarddata and barebox_boot_dtb perform essentially the
same function -- hold a pointer to a chunk of private data. Since only
one variable is ever used at any given time we may as well merge those
two variable into one. This also allows us to share more code between
two boot paths (board data vs. device tree)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since v1:
	- Unified barebox_boarddata and barebox_boot_dtb into
          barebox_private_data which allowed to simplify distilled code
          and avoid using double star pointers


 arch/arm/cpu/start.c | 58 +++++++++++++++++++++++++++++++++-------------------
 1 file changed, 37 insertions(+), 21 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8e5097b..066dad8 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -32,25 +32,35 @@
 #include "mmu-early.h"

 unsigned long arm_stack_top;
-static void *barebox_boarddata;
+static void *barebox_private_data;

 u32 barebox_arm_machine(void)
 {
 	struct barebox_arm_boarddata *bd;

-	if (!barebox_boarddata)
+	if (!barebox_private_data)
 		return 0;

-	bd = barebox_boarddata;
+	bd = barebox_private_data;

 	return bd->machine;
 }

-static void *barebox_boot_dtb;
-
 void *barebox_arm_boot_dtb(void)
 {
-	return barebox_boot_dtb;
+	return barebox_private_data;
+}
+
+static uint32_t get_any_boarddata_magic(const void *boarddata)
+{
+	if (get_unaligned_be32(boarddata) == FDT_MAGIC)
+		return FDT_MAGIC;
+
+	if (((struct barebox_arm_boarddata *)boarddata)->magic ==
+	    BAREBOX_ARM_BOARDDATA_MAGIC)
+		return BAREBOX_ARM_BOARDDATA_MAGIC;
+
+	return 0;
 }

 static noinline __noreturn void __start(unsigned long membase,
@@ -70,7 +80,6 @@ static noinline __noreturn void __start(unsigned long membase,

 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);

-	barebox_boarddata = boarddata;
 	arm_stack_top = endmem;
 	endmem -= STACK_SIZE; /* Stack */

@@ -89,21 +98,28 @@ static noinline __noreturn void __start(unsigned long membase,
 	}

 	if (boarddata) {
-		if (get_unaligned_be32(boarddata) == FDT_MAGIC) {
-			uint32_t totalsize = get_unaligned_be32(boarddata + 4);
+		uint32_t totalsize = 0;
+		const char *name;
+
+		switch (get_any_boarddata_magic(boarddata)) {
+		case FDT_MAGIC:
+			totalsize = get_unaligned_be32(boarddata + 4);
+			name = "DTB";
+			break;
+		case BAREBOX_ARM_BOARDDATA_MAGIC:
+			totalsize = sizeof(struct barebox_arm_boarddata);
+			name = "machine type";
+			break;
+		default:
+			break;
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
