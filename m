Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pem93-0003Ot-3H
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 10:17:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jan 2011 11:17:01 +0100
Message-Id: <1295259421-26338-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
References: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 9/9] startup: make debug printing of linker variables work
	again
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 0d7ccb9..aa76cb7 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -40,6 +40,7 @@
 #include <environment.h>
 #include <reloc.h>
 #include <asm-generic/memory_layout.h>
+#include <asm/sections.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -50,8 +51,8 @@ static void display_meminfo(void)
 	ulong mend   = mem_malloc_end();
 	ulong msize  = mend - mstart + 1;
 
-	debug("barebox code : 0x%08lX -> 0x%08lX  BSS: -> 0x%08lX\n",
-	       _barebox_start, _bss_start, _bss_end);
+	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
+	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
 	printf("Malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
 #ifdef CONFIG_ARM
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
