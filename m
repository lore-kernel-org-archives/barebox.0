Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lQ5-00070g-VW
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:27:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2019 09:27:16 +0200
Message-Id: <20190916072721.12392-2-s.hauer@pengutronix.de>
In-Reply-To: <20190916072721.12392-1-s.hauer@pengutronix.de>
References: <20190916072721.12392-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: remove PBL_FORCE_PIGGYDATA_COPY
To: Barebox List <barebox@lists.infradead.org>

This option is unused in the tree, remove it for now. If you need this
option, let me know, we'll find another solution.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c | 13 -------------
 pbl/Kconfig              |  8 --------
 2 files changed, 21 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 796239d902..0006f40d55 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -52,7 +52,6 @@ extern void *input_data_end;
 __noreturn void barebox_single_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
-	unsigned long offset;
 	unsigned long pg_start, pg_end, pg_len, uncompressed_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	unsigned long endmem = membase + memsize;
@@ -61,9 +60,6 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
 		relocate_to_current_adr();
 
-	/* Get offset between linked address and runtime address */
-	offset = get_runtime_offset();
-
 	pg_start = (unsigned long)&input_data + global_variable_offset();
 	pg_end = (unsigned long)&input_data_end + global_variable_offset();
 	pg_len = pg_end - pg_start;
@@ -74,15 +70,6 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 	else
 		barebox_base = TEXT_BASE;
 
-	if (offset && (IS_ENABLED(CONFIG_PBL_FORCE_PIGGYDATA_COPY) ||
-				region_overlap(pg_start, pg_len, barebox_base, pg_len * 4))) {
-		/*
-		 * copy piggydata binary to its link address
-		 */
-		memcpy(&input_data, (void *)pg_start, pg_len);
-		pg_start = (uint32_t)&input_data;
-	}
-
 	setup_c();
 
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 7e6077f96d..6e8cc3ac04 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -24,14 +24,6 @@ config PBL_SINGLE_IMAGE
 	depends on !HAVE_PBL_MULTI_IMAGES
 	default y
 
-config PBL_FORCE_PIGGYDATA_COPY
-	bool
-	help
-	  In some case we need to copy the PIGGYDATA as the link address
-	  as example we run from SRAM and shutdown the SDRAM/DDR for
-	  reconfiguration but most of the time we just need to copy the
-	  executable code.
-
 if PBL_IMAGE
 
 config PBL_RELOCATABLE
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
