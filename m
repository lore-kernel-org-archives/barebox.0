Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMT-0003hJ-2w
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:44 +0100
Message-Id: <1418149064-26448-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
References: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] ARM: uncompress.c: Add some debugging messages
To: barebox@lists.infradead.org

Now that we have printf support in the PBL we can use it right
after setup_c(). Add some debug messages to the early PBL code
to make it more clear what is happening there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/uncompress.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index d64706d..03c73d5 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -17,6 +17,7 @@
  * GNU General Public License for more details.
  *
  */
+#define pr_fmt(fmt) "uncompress.c: " fmt
 
 #include <common.h>
 #include <init.h>
@@ -76,9 +77,12 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 
 	setup_c();
 
+	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
+
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
 		endmem &= ~0x3fff;
 		endmem -= SZ_16K; /* ttb */
+		pr_debug("enabling MMU, ttb @ 0x%08x\n", endmem);
 		mmu_early_enable(membase, memsize, endmem);
 	}
 
@@ -93,6 +97,9 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 	pg_start = image_end + 1;
 	pg_len = *(image_end);
 
+	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx\n",
+			pg_start, pg_len, barebox_base);
+
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
 	arm_early_mmu_cache_flush();
@@ -103,6 +110,8 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 	else
 		barebox = (void *)barebox_base;
 
+	pr_debug("jumping to uncompressed image at 0x%p\n", barebox);
+
 	barebox(membase, memsize, boarddata);
 }
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
