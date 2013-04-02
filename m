Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMvWd-0005am-2Y
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 07:20:59 +0000
Date: Tue, 2 Apr 2013 09:20:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130402072057.GC20989@pengutronix.de>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <m3ip49gmds.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3ip49gmds.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH] Implement ALTERNATE memory layout.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

Hi Krzysztof,

The following patch from Jan is probably what you're looking for.

Sascha

8<-----------------------------------------------------------

On AM335x a barebox MLO is placed at the base of the usable SRAM range.
When running without SDRAM, we should be able to pass the SRAM range
to barebox_arm_entry.

First we check if the ends of the memory range lie in the barebox image
and reduce the range in these cases. Then we check if the image splits
the memory range in two and choose to use the larger one.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/cpu/start.c |   48 +++++++++++++++++++++++++++++++-----------------
 1 file changed, 31 insertions(+), 17 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index cd34d9c..fa148c2 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -34,38 +34,52 @@ unsigned long arm_stack_top;
 static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
-	unsigned long endmem = membase + memsize;
+	unsigned long memend;
 	unsigned long malloc_start, malloc_end;
 
 	setup_c();
 
-	arm_stack_top = endmem;
-	endmem -= STACK_SIZE; /* Stack */
+	if ((unsigned long)_text <= membase &&
+	    (unsigned long)_end > membase) { /* membase is in barebox */
+		memsize -= (unsigned long)_end - membase;
+		membase = (unsigned long)_end;
+	}
+
+	if ((unsigned long)_text < membase + memsize &&
+	    (unsigned long)_end >= membase + memsize) { /* membase + memsize is in barebox */
+		memsize = (unsigned long)_text - membase;
+	}
+
+	if ((unsigned long)_text > membase &&
+	    (unsigned long)_end < membase + memsize) { /* barebox splits or memory range */
+		unsigned long lowsize = (unsigned long)_text - membase;
+		unsigned long highsize = membase + memsize - (unsigned long)_end;
+		/* use larger range */
+		if (lowsize > highsize) {
+			memsize = lowsize;
+		} else {
+			membase = (unsigned long)_end;
+			memsize = highsize;
+		}
+	}
+
+	arm_stack_top = membase + memsize;
+	memend = membase + memsize - STACK_SIZE; /* Stack */
 
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
 
-		endmem &= ~0x3fff;
-		endmem -= SZ_16K; /* ttb */
+		memend &= ~0x3fff;
+		memend -= SZ_16K; /* ttb */
 
 		if (!IS_ENABLED(CONFIG_PBL_IMAGE))
-			mmu_early_enable(membase, memsize, endmem);
+			mmu_early_enable(membase, memsize, memend);
 	}
 
-	if ((unsigned long)_text > membase + memsize ||
-			(unsigned long)_text < membase)
-		/*
-		 * barebox is either outside SDRAM or in another
-		 * memory bank, so we can use the whole bank for
-		 * malloc.
-		 */
-		malloc_end = endmem;
-	else
-		malloc_end = (unsigned long)_text;
-
 	/*
 	 * Maximum malloc space is the Kconfig value if given
 	 * or 64MB.
 	 */
+	malloc_end = memend;
 	if (MALLOC_SIZE > 0) {
 		malloc_start = malloc_end - MALLOC_SIZE;
 		if (malloc_start < membase)
-- 
1.7.10.4


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
