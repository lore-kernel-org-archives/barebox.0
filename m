Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosD-0008BM-2B
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:01 +0100
Message-Id: <20180316125354.23462-26-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/78] ARM: Add function to return offset to global variables
To: Barebox List <barebox@lists.infradead.org>

ARM and aarch64 differ in the way global variables are addressed. This
adds a function which abstracts the differences.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c           |  4 ++--
 arch/arm/cpu/uncompress.c          |  2 +-
 arch/arm/include/asm/barebox-arm.h | 14 ++++++++++++++
 3 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 68b2bbf6fb..73c27429da 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -60,8 +60,8 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
 
-	pg_start = (uint32_t)&input_data + offset;
-	pg_end = (uint32_t)&input_data_end + offset;
+	pg_start = (uint32_t)&input_data + global_variable_offset();
+	pg_end = (uint32_t)&input_data_end + global_variable_offset();
 	pg_len = pg_end - pg_start;
 	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b600c1e7ec..37845b2259 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -51,7 +51,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	void *pg_start;
 	unsigned long pc = get_pc();
 
-	image_end = (void *)&image_end_marker + get_runtime_offset();
+	image_end = (void *)&image_end_marker + global_variable_offset();
 
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
 		/*
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 1dccb8965e..9fc8afbe7d 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -44,6 +44,20 @@ extern char __exceptions_start[], __exceptions_stop[];
 void board_init_lowlevel(void);
 unsigned long get_runtime_offset(void);
 
+/* global_variable_offset() - Access global variables when not running at link address
+ *
+ * Get the offset of global variables when not running at the address we are
+ * linked at. ARM uses absolute addresses, so we must add the runtime offset
+ * whereas aarch64 uses PC relative addresses, so nothing must be done here.
+ */
+static inline unsigned long global_variable_offset(void)
+{
+	if (IS_ENABLED(CONFIG_CPU_32))
+		return get_runtime_offset();
+	else
+		return 0;
+}
+
 void setup_c(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
