Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuyti-0005bs-Eg
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:54:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:53:39 +0200
Message-Id: <1402556023-1811-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
References: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: uncompress.c: copy executable to SDRAM if necessary
To: barebox@lists.infradead.org

We used to relocate the executable to the current address. This does
not work when the executable runs from a readonly location like for
example NOR Flash. Test if we run from inside the available memory and
if we do, relocate to the current address as before. Otherwise copy
the executable to the start of memory and relocate to that address.
While at it add some comments to the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/uncompress.c | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 74a4286..d64706d 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -47,15 +47,27 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	uint32_t endmem = membase + memsize;
 	unsigned long barebox_base;
-	uint32_t *ptr;
+	uint32_t *image_end;
 	void *pg_start;
+	unsigned long pc = get_pc();
 
 	arm_early_mmu_cache_invalidate();
 
 	endmem -= STACK_SIZE; /* stack */
 
-	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
-		relocate_to_current_adr();
+	image_end = (void *)ld_var(__image_end) - get_runtime_offset();
+
+	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
+		/*
+		 * If we run from inside the memory just relocate the binary
+		 * to the current address. Otherwise it may be a readonly location.
+		 * Copy and relocate to the start of the memory in this case.
+		 */
+		if (pc > membase && pc < membase + memsize)
+			relocate_to_current_adr();
+		else
+			relocate_to_adr(membase);
+	}
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		barebox_base = arm_barebox_image_place(membase + memsize);
@@ -74,9 +86,12 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 	free_mem_ptr = endmem;
 	free_mem_end_ptr = free_mem_ptr + SZ_128K;
 
-	ptr = (void *)__image_end;
-	pg_start = ptr + 1;
-	pg_len = *(ptr);
+	/*
+	 * image_end is the first location after the executable. It contains
+	 * the size of the appended compressed binary followed by the binary.
+	 */
+	pg_start = image_end + 1;
+	pg_len = *(image_end);
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
