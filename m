Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXL-000454-Ie
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 07:59:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:15 +0100
Message-Id: <1359705587-9762-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/34] ARM: add __noreturn to board_init_lowlevel_return
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c           |    6 +++---
 arch/arm/cpu/start.c               |    2 +-
 arch/arm/include/asm/barebox-arm.h |    2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index f1ce2c5..da62111 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -118,9 +118,9 @@ static void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-static void barebox_uncompress(void *compressed_start, unsigned int len)
+static void __noreturn barebox_uncompress(void *compressed_start, unsigned int len)
 {
-	void (*barebox)(void);
+	void __noreturn (*barebox)(void);
 	/*
 	 * remap_cached currently does not work rendering the feature
 	 * of enabling the MMU in the PBL useless. disable for now.
@@ -155,7 +155,7 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
  * Board code can jump here by either returning from board_init_lowlevel
  * or by calling this function directly.
  */
-void __naked board_init_lowlevel_return(void)
+void __naked __noreturn board_init_lowlevel_return(void)
 {
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 0b7eee8..f212b61 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -55,7 +55,7 @@ void __naked __bare_init reset(void)
  * Board code can jump here by either returning from board_init_lowlevel
  * or by calling this function directly.
  */
-void __naked board_init_lowlevel_return(void)
+void __naked __noreturn board_init_lowlevel_return(void)
 {
 	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 4ccf938..0574f34 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -35,7 +35,7 @@ int	dram_init (void);
 extern char __exceptions_start[], __exceptions_stop[];
 
 void board_init_lowlevel(void);
-void board_init_lowlevel_return(void);
+void __noreturn board_init_lowlevel_return(void);
 uint32_t get_runtime_offset(void);
 
 void setup_c(void);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
