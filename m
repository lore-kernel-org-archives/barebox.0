Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jtd3z-0005oI-T2
 for barebox@lists.infradead.org; Thu, 09 Jul 2020 20:22:37 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Thu,  9 Jul 2020 22:22:04 +0200
Message-Id: <20200709202204.2448-1-cleger@kalray.eu>
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
Subject: [PATCH] kvx: exclude dtb from malloc zone
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

When dtb is provided by the FSBL (first stage bootloader), it might
end up in the malloc zone initialized by barebox. While the dtb is
discarded after being unflatten, if the dtb is provided right after
barebox elf, then the malloc can overwrite it while unflattening it when
allocating nodes.
To avoid that, exclude the dtb from the malloc zone by checking if it
overlaps it. If so, determine the largest zone for the allocation and
modify the memory area to use that.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/lib/board.c | 43 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 41 insertions(+), 2 deletions(-)

diff --git a/arch/kvx/lib/board.c b/arch/kvx/lib/board.c
index 4d6ca6983..78fa83e02 100644
--- a/arch/kvx/lib/board.c
+++ b/arch/kvx/lib/board.c
@@ -103,15 +103,54 @@ err:
 	while (1);
 }
 
+/**
+ * exclude_dtb_from_alloc - Find best zone to allocate without overwriting dtb
+ *
+ * @fdt: fdt blob
+ * @alloc_start: start of allocation zone
+ * @alloc_end: end of allocation zone
+ */
+static void exclude_dtb_from_alloc(void *fdt, u64 *alloc_start, u64 *alloc_end)
+{
+	const struct fdt_header *fdth = fdt;
+	u64 fdt_start = (u64) fdt;
+	u64 fdt_end = fdt_start + be32_to_cpu(fdth->totalsize);
+	u64 start_size = 0, end_size = 0;
+
+	/*
+	 * If the device tree is inside the malloc zone, we must exclude it to
+	 * avoid allocating memory over it while unflattening it
+	 */
+	if (fdt_end < *alloc_start || fdt_start > (*alloc_end))
+		return;
+
+	/* Compute the largest remaining chunk when removing the dtb */
+	if (fdt_start >= *alloc_start)
+		start_size = (fdt_start - *alloc_start);
+
+	if (fdt_end <= *alloc_end)
+		end_size = *alloc_end - fdt_end;
+
+	/* Modify start/end to reflect the maximum area we found */
+	if (start_size >= end_size)
+		*alloc_end = fdt_start;
+	else
+		*alloc_start = fdt_end;
+}
+
 void __noreturn kvx_start_barebox(void)
 {
 	u64 memsize = 0, membase = 0;
 	u64 barebox_text_end = (u64) &__end;
+	u64 alloc_start, alloc_end;
 
 	of_find_mem(boot_dtb, barebox_text_end, &membase, &memsize);
 
-	mem_malloc_init((void *) barebox_text_end,
-			(void *) (membase + memsize));
+	alloc_start = barebox_text_end;
+	alloc_end = (membase + memsize);
+	exclude_dtb_from_alloc(boot_dtb, &alloc_start, &alloc_end);
+
+	mem_malloc_init((void *) alloc_start, (void *) alloc_end);
 
 	start_barebox();
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
