Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S3-Ks
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:49 +0200
Message-Id: <1269947215-18214-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] remove now unused arch_execute
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/include/asm/common.h |    1 -
 arch/blackfin/lib/board.c          |   11 -----------
 include/common.h                   |    1 -
 3 files changed, 0 insertions(+), 13 deletions(-)

diff --git a/arch/blackfin/include/asm/common.h b/arch/blackfin/include/asm/common.h
index 1ddcd71..fa58e37 100644
--- a/arch/blackfin/include/asm/common.h
+++ b/arch/blackfin/include/asm/common.h
@@ -2,5 +2,4 @@
 /* We have to disable instruction cache before
  * executing an external program
  */
-#define ARCH_HAS_EXECUTE
 #define ARCH_SHUTDOWN
diff --git a/arch/blackfin/lib/board.c b/arch/blackfin/lib/board.c
index 294d2b0..581947b 100644
--- a/arch/blackfin/lib/board.c
+++ b/arch/blackfin/lib/board.c
@@ -44,17 +44,6 @@ int blackfin_mem_malloc_init(void)
 
 core_initcall(blackfin_mem_malloc_init);
 
-int arch_execute(void * address, int argc, char *argv[])
-{
-	int ret;
-
-	icache_disable();
-	ret = ((ulong (*)(int, char *[]))address) (argc, &argv[0]);
-	icache_enable();
-
-	return ret;
-}
-
 void arch_shutdown(void)
 {
 	icache_disable();
diff --git a/include/common.h b/include/common.h
index d8130b5..319535b 100644
--- a/include/common.h
+++ b/include/common.h
@@ -134,7 +134,6 @@ unsigned long strtoul_suffix(const char *str, char **endp, int base);
 void start_barebox(void);
 void shutdown_barebox(void);
 
-int arch_execute(void *, int argc, char *argv[]);
 void arch_shutdown(void);
 
 int run_shell(void);
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
