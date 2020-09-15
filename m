Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4zc-0005ff-QJ
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:03:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 09:03:03 +0200
Message-Id: <20200915070305.15763-5-s.hauer@pengutronix.de>
In-Reply-To: <20200915070305.15763-1-s.hauer@pengutronix.de>
References: <20200915070305.15763-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] powerpc: Add prototypes for functions called from assembly
To: Barebox List <barebox@lists.infradead.org>

Some functions are called from assembly only. There's no prototype
for them so this leads to -Wmissing-prototypes warnings. Add a prototype
right aboce the functions to avoid these warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/boards/pcm030/pcm030.c  | 3 +++
 arch/powerpc/lib/board.c             | 3 +++
 arch/powerpc/mach-mpc85xx/cpu.c      | 3 +++
 arch/powerpc/mach-mpc85xx/cpu_init.c | 3 +++
 4 files changed, 12 insertions(+)

diff --git a/arch/powerpc/boards/pcm030/pcm030.c b/arch/powerpc/boards/pcm030/pcm030.c
index 330d29868e..c603643d58 100644
--- a/arch/powerpc/boards/pcm030/pcm030.c
+++ b/arch/powerpc/boards/pcm030/pcm030.c
@@ -143,6 +143,9 @@ static void sdram_start (int hi_addr)
 	__asm__ volatile ("sync");
 }
 
+/* Called from assembly */
+void initdram(int board_type);
+
 void initdram (int board_type)
 {
 	ulong dramsize = 0;
diff --git a/arch/powerpc/lib/board.c b/arch/powerpc/lib/board.c
index 9031b37ada..a6111606b6 100644
--- a/arch/powerpc/lib/board.c
+++ b/arch/powerpc/lib/board.c
@@ -33,6 +33,9 @@
  ************************************************************************
  */
 
+/* Called from assembly */
+void board_init_r (ulong end_of_ram);
+
 void board_init_r (ulong end_of_ram)
 {
 	unsigned long malloc_end;
diff --git a/arch/powerpc/mach-mpc85xx/cpu.c b/arch/powerpc/mach-mpc85xx/cpu.c
index 1d5a69c999..a5241b82a7 100644
--- a/arch/powerpc/mach-mpc85xx/cpu.c
+++ b/arch/powerpc/mach-mpc85xx/cpu.c
@@ -49,6 +49,9 @@ static int restart_register_feature(void)
 }
 coredevice_initcall(restart_register_feature);
 
+/* Called from assembly */
+long int initdram(int board_type);
+
 long int initdram(int board_type)
 {
 	phys_size_t dram_size = 0;
diff --git a/arch/powerpc/mach-mpc85xx/cpu_init.c b/arch/powerpc/mach-mpc85xx/cpu_init.c
index b9eadfadfd..3259945fda 100644
--- a/arch/powerpc/mach-mpc85xx/cpu_init.c
+++ b/arch/powerpc/mach-mpc85xx/cpu_init.c
@@ -184,6 +184,9 @@ static void fsl_erratum_p1010_a003549(void)
 static void fsl_erratum_p1010_a003549(void) {}
 #endif
 
+/* Called from assembly */
+void cpu_init_early_f(void);
+
 void cpu_init_early_f(void)
 {
 	u32 mas0, mas1, mas2, mas3, mas7;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
