Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027s-Bf
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:34 +0200
Message-Id: <1350507817-7819-26-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/28] ARM pbl: always copy piggydata
To: barebox@lists.infradead.org

For now this is meant to make the code simpler. Copying the binary
is not very expensive and later either the MMU can be enabled before
relocating the binary, or relocatable code makes copying unnecessary
anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c    |   20 +++-----------------
 arch/arm/pbl/zbarebox.lds.S |   12 ++++++------
 2 files changed, 9 insertions(+), 23 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 98c1ae3..0757e6c 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -114,26 +114,9 @@ static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
 	void (*barebox)(uint32_t, uint32_t, uint32_t);
-	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
 	int use_mmu = IS_ENABLED(CONFIG_MMU);
 
-	/* Get offset between linked address and runtime address */
-	offset = get_runtime_offset();
-
-	pg_start = (uint32_t)&input_data - offset;
-	pg_end = (uint32_t)&input_data_end - offset;
-	pg_len = pg_end - pg_start;
-
-	if (offset && (IS_ENABLED(CONFIG_PBL_FORCE_PIGGYDATA_COPY) ||
-				region_overlap(pg_start, pg_len, TEXT_BASE, pg_len * 4))) {
-		/*
-		 * copy piggydata binary to its link address
-		 */
-		memcpy(&input_data, (void *)pg_start, pg_len);
-		pg_start = (uint32_t)&input_data;
-	}
-
 	setup_c();
 
 	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
@@ -145,6 +128,9 @@ static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
 	if (use_mmu)
 		mmu_enable(membase, memsize);
 
+	pg_start = (uint32_t)&input_data;
+	pg_end = (uint32_t)&input_data_end;
+	pg_len = pg_end - pg_start;
 	decompress((void *)pg_start,
 			pg_len,
 			NULL, NULL,
diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
index 37af4e9..ff2d2ab 100644
--- a/arch/arm/pbl/zbarebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -59,18 +59,18 @@ SECTIONS
 	.data : { *(.data*) }
 
 	. = ALIGN(4);
-	__bss_start = .;
-	.bss : { *(.bss*) }
-	__bss_stop = .;
-	_end = .;
-
-	. = ALIGN(4);
 	__piggydata_start = .;
 	.piggydata : {
 		*(.piggydata)
 	}
 	__piggydata_end = .;
 
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+
 	_barebox_image_size = __piggydata_end - HEAD_TEXT_BASE;
 	_barebox_pbl_size = __bss_start - HEAD_TEXT_BASE;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
