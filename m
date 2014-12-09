Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMO-0003fP-UA
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:43 +0100
Message-Id: <1418149064-26448-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] ARM: start.c: Add some debugging messages
To: barebox@lists.infradead.org

pr_debug can now be used right after setup_c(), so add some debug
messages to the early startup code to make it a bit more clear what
is happening there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 264420d..e2a6b8e 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -16,6 +16,7 @@
  * GNU General Public License for more details.
  *
  */
+#define pr_fmt(fmt) "start.c: " fmt
 
 #include <common.h>
 #include <init.h>
@@ -62,6 +63,8 @@ static noinline __noreturn void __start(unsigned long membase,
 
 	setup_c();
 
+	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
+
 	barebox_boarddata = boarddata;
 	arm_stack_top = endmem;
 	endmem -= STACK_SIZE; /* Stack */
@@ -74,6 +77,7 @@ static noinline __noreturn void __start(unsigned long membase,
 		if (IS_ENABLED(CONFIG_PBL_IMAGE)) {
 			arm_set_cache_functions();
 		} else {
+			pr_debug("enabling MMU, ttb @ 0x%08lx\n", endmem);
 			arm_early_mmu_cache_invalidate();
 			mmu_early_enable(membase, memsize, endmem);
 		}
@@ -87,6 +91,8 @@ static noinline __noreturn void __start(unsigned long membase,
 		uint32_t totalsize = get_unaligned_be32(boarddata + 4);
 		endmem -= ALIGN(totalsize, 64);
 		barebox_boot_dtb = (void *)endmem;
+		pr_debug("found DTB in boarddata, copying to 0x%p\n",
+				barebox_boot_dtb);
 		memcpy(barebox_boot_dtb, boarddata, totalsize);
 	}
 
@@ -115,8 +121,13 @@ static noinline __noreturn void __start(unsigned long membase,
 			malloc_start = malloc_end - SZ_1G;
 	}
 
+	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
+			malloc_start, malloc_end - malloc_start);
+
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
+	pr_debug("starting barebox...\n");
+
 	start_barebox();
 }
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
