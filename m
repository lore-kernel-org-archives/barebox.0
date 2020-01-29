Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwftA-0007mM-J6
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 05:27:45 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 Jan 2020 06:27:37 +0100
Message-Id: <20200129052737.1434-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3] MIPS: remove .bss to __rel_start overlay
To: antonynpavlov@gmail.com, barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Peter Mamonov <pmamonov@gmail.com>

.bss __rel_start (OVERLAY) was used to optimize RAM size used by
barebox. Since .bss and __rel_start overlap, we should clear bss only
after __rel_start was used. Following patch changed initialization
sequence to clear .bss before __rel_start:
1e5aef61fc6a444 ("MIPS: reloc: init bss and cpu")

This make relocation buffer unusable and broke relocation with different
symptoms reported by Antony Pavlov <antonynpavlov@gmail.com>:
  * iomem output has no information on sdram regions, so memtest is unusable;
  * pc = 0xa081232c, relocation does not work, barebox is located with 8M offset
    from start of RAM. The board has 256M and relocation routine
    should move barebox code much higher;
  * pc = 0xa081232c, so barebox code works from KSEG1 not from KSEG0 as MMU=y option implies.

There is a choice of moving .bss clear sequence after __rel_start or
remove this optimization. Since the use of this optimization is minimal
and danger to trap in to similar issue is still high, i prefer to remove
this optimization.

As result of this change, we need to fix calculation of relocation are
size:
relocate_code() calculates relocation area size as a sum (barebox_image_size +
bss_len). barebox_image_size and bss_len are calculated as (__image_end -
__image_start) and (__bss_stop - __bss_start) respectively. This doesn't take
into account relocation data placed between  __image_end and __bss_start.
However relocation preserves BSS position relative to image start, as if
relocation data is still there. This causes RAM overflow during BSS
initialization in main_entry(). This problem may be hidden due to the alignment
of the `relocaddr`.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Fixes: 1e5aef61fc6a444 ("MIPS: reloc: init bss and cpu")
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/lib/barebox.lds.S | 2 +-
 arch/mips/lib/reloc.c       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 693a778980..c954df41f3 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -59,7 +59,7 @@ SECTIONS
 
 	_end = .;
 
-	.bss __rel_start (OVERLAY) : {
+	.bss : {
 		__bss_start = .;
 		*(.sbss.*)
 		*(.bss.*)
diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index df9760e38c..4b0e252352 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -118,7 +118,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 	memset(__bss_start, 0, bss_len);
 	cpu_probe();
 
-	length = barebox_image_size + bss_len;
+	length = __bss_stop - __image_start;
 	relocaddr = ALIGN_DOWN(ram_size - length, SZ_64K);
 	relocaddr = KSEG0ADDR(relocaddr);
 	new_stack = relocaddr - MALLOC_SIZE - 16;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
