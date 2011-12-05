Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXULK-0006V5-BG
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:56:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:55:57 +0100
Message-Id: <1323075361-27455-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
References: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] fix malloc space sizes
To: barebox@lists.infradead.org

end is start + size - 1, not start + size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/arm.c        |    2 +-
 arch/blackfin/lib/board.c |    2 +-
 arch/mips/lib/memory.c    |    2 +-
 arch/nios2/lib/board.c    |    2 +-
 arch/ppc/lib/board.c      |    2 +-
 arch/sandbox/os/common.c  |    2 +-
 arch/x86/lib/memory.c     |    4 ++--
 7 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib/arm.c b/arch/arm/lib/arm.c
index c85aae1..80b62e9 100644
--- a/arch/arm/lib/arm.c
+++ b/arch/arm/lib/arm.c
@@ -7,7 +7,7 @@
 static int arm_mem_malloc_init(void)
 {
 	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE));
+			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
 	return 0;
 }
 
diff --git a/arch/blackfin/lib/board.c b/arch/blackfin/lib/board.c
index d1b39fa..bf5c1b6 100644
--- a/arch/blackfin/lib/board.c
+++ b/arch/blackfin/lib/board.c
@@ -38,7 +38,7 @@
 int blackfin_mem_malloc_init(void)
 {
 	mem_malloc_init((void *)(MALLOC_BASE),
-			(void *)(MALLOC_BASE + MALLOC_SIZE));
+			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
 	return 0;
 }
 
diff --git a/arch/mips/lib/memory.c b/arch/mips/lib/memory.c
index ad9f6a6..8d2d51b 100644
--- a/arch/mips/lib/memory.c
+++ b/arch/mips/lib/memory.c
@@ -26,7 +26,7 @@
 static int mips_mem_malloc_init(void)
 {
 	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE));
+			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
 	return 0;
 }
 core_initcall(mips_mem_malloc_init);
diff --git a/arch/nios2/lib/board.c b/arch/nios2/lib/board.c
index d50f05a..ed3af49 100644
--- a/arch/nios2/lib/board.c
+++ b/arch/nios2/lib/board.c
@@ -31,7 +31,7 @@ int altera_mem_malloc_init(void)
 {
 
 	mem_malloc_init((void *)(NIOS_SOPC_TEXT_BASE - MALLOC_SIZE),
-			(void *)(NIOS_SOPC_TEXT_BASE));
+			(void *)(NIOS_SOPC_TEXT_BASE - 1));
 
 	return 0;
 }
diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index 0b610a5..0e839eb 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -56,7 +56,7 @@ void board_init_r (ulong end_of_ram)
 	debug("malloc_end: 0x%08x\n", malloc_end);
 	debug("TEXT_BASE after relocation: 0x%08x\n", _text_base);
 
-	mem_malloc_init((void *)(malloc_end - MALLOC_SIZE), (void *)malloc_end);
+	mem_malloc_init((void *)(malloc_end - MALLOC_SIZE), (void *)(malloc_end - 1));
 
 	/*
 	 * Setup trap handlers
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 1c5ae5d..9258c66 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -262,7 +262,7 @@ int main(int argc, char *argv[])
 		printf("unable to get malloc space\n");
 		exit(1);
 	}
-	mem_malloc_init(ram, ram + malloc_size);
+	mem_malloc_init(ram, ram + malloc_size - 1);
 
 	while (1) {
 		int option_index = 0;
diff --git a/arch/x86/lib/memory.c b/arch/x86/lib/memory.c
index fa7bc03..1774ef3 100644
--- a/arch/x86/lib/memory.c
+++ b/arch/x86/lib/memory.c
@@ -54,12 +54,12 @@ static int x86_mem_malloc_init(void)
 	 */
 	if (memory_size >= (15 * 1024 * 1024 + MALLOC_SIZE))
 		mem_malloc_init((void*)(16 * 1024 * 1024),
-				(void*)(16 * 1024 * 1024) + MALLOC_SIZE);
+				(void*)(16 * 1024 * 1024 + MALLOC_SIZE - 1));
 	else
 		return -1;
 #else
 	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE));
+			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
 #endif
 	return 0;
 }
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
