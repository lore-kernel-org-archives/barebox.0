Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosD-0008BQ-65
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:23 +0100
Message-Id: <20180316125354.23462-48-s.hauer@pengutronix.de>
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
Subject: [PATCH 47/78] ARM: Make some variables 64bit aware
To: Barebox List <barebox@lists.infradead.org>

Use unsigned long as type for variables that are used as addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c  | 10 +++++-----
 arch/arm/cpu/uncompress.c |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 73c27429da..25f91b02f3 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -48,10 +48,10 @@ extern void *input_data_end;
 __noreturn void barebox_single_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
-	uint32_t offset;
-	uint32_t pg_start, pg_end, pg_len, uncompressed_len;
+	unsigned long offset;
+	unsigned long pg_start, pg_end, pg_len, uncompressed_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
-	uint32_t endmem = membase + memsize;
+	unsigned long endmem = membase + memsize;
 	unsigned long barebox_base;
 
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
@@ -60,8 +60,8 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
 
-	pg_start = (uint32_t)&input_data + global_variable_offset();
-	pg_end = (uint32_t)&input_data_end + global_variable_offset();
+	pg_start = (unsigned long)&input_data + global_variable_offset();
+	pg_end = (unsigned long)&input_data_end + global_variable_offset();
 	pg_len = pg_end - pg_start;
 	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 37845b2259..c721eef0ad 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -45,7 +45,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 {
 	uint32_t pg_len, uncompressed_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
-	uint32_t endmem = membase + memsize;
+	unsigned long endmem = membase + memsize;
 	unsigned long barebox_base;
 	uint32_t *image_end;
 	void *pg_start;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
