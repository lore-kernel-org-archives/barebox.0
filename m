Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlLbd-0007rb-W4
 for barebox@lists.infradead.org; Sun, 11 Oct 2015 18:44:27 +0000
Received: by pacex6 with SMTP id ex6so5405929pac.0
 for <barebox@lists.infradead.org>; Sun, 11 Oct 2015 11:44:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 11 Oct 2015 11:43:36 -0700
Message-Id: <1444589021-12727-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
References: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/8] arm/cpu/start.c: Distil some common code in __start().
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/start.c | 49 +++++++++++++++++++++++++++++++++++--------------
 1 file changed, 35 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8e5097b..7ffde7c 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -53,6 +53,18 @@ void *barebox_arm_boot_dtb(void)
 	return barebox_boot_dtb;
 }
 
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
+}
+
 static noinline __noreturn void __start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
@@ -89,21 +101,30 @@ static noinline __noreturn void __start(unsigned long membase,
 	}
 
 	if (boarddata) {
-		if (get_unaligned_be32(boarddata) == FDT_MAGIC) {
-			uint32_t totalsize = get_unaligned_be32(boarddata + 4);
+		uint32_t totalsize;
+		void **var = NULL;
+		const char *name;
+
+		switch (get_any_boarddata_magic(boarddata)) {
+		case FDT_MAGIC:
+			totalsize = get_unaligned_be32(boarddata + 4);
+			var = &barebox_boot_dtb;
+			name = "DTB";
+			break;
+		case BAREBOX_ARM_BOARDDATA_MAGIC:
+			totalsize = sizeof(struct barebox_arm_boarddata);
+			var = &barebox_boarddata;
+			name = "machine type";
+			break;
+		default:
+			break;
+		}
+
+		if (var) {
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
+			*var = memcpy((void *)endmem, boarddata, totalsize);
 		}
 	}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
