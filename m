Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjakS-0004uj-73
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 18:44:26 +0000
Date: Tue, 26 Jun 2012 20:44:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120626184421.GL14321@pengutronix.de>
References: <1339682504-4063-1-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339682504-4063-1-git-send-email-a.aring@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 0/5] rewritten memtest command
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Thu, Jun 14, 2012 at 04:01:39PM +0200, Alexander Aring wrote:
> Rewritten memtest command.
> Added new section data which is between text and bss.
> Only tested on arm architecture.

It took a while until I found some time to have a closer look at this. I
was a bit concerned about the fact that the new memtest command depends
on some very lowlevel internal barebox APIs. Anyway, I gave it a try and
it actually works quite well. Thanks for working on it, the new memtest
seems much more trustworthy than the old test(s).

I found some problems with the calculation of used regions, so I would
like to add the following to your patch, if that's ok with you. It also
adds a progress bar and the possibility to interrupt the test during an
iteration.

Sascha

8<-------------------------------------------------------

memtest updates

- fix calculation of regions to test. When we use PAGE_ALIGN on
  size, size can be to high.
  - start address has to be aligned up
  - end address has to be aligned down
  - then size can be calculated as end - start + 1
- Add ctrlc() to the longer loops
- Add a progress bar to give some visual feedback that something is
  still going on.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memtest.c |  128 ++++++++++++++++++++++++++++++----------------------
 1 file changed, 74 insertions(+), 54 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index ff7aac2..683765b 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -31,6 +31,8 @@
 #include <types.h>
 #include <getopt.h>
 #include <memory.h>
+#include <errno.h>
+#include <progress.h>
 #include <asm/mmu.h>
 
 static const vu_long bitpattern[] = {
@@ -69,12 +71,6 @@ static int mem_test(vu_long _start, vu_long _end,
 
 	num_words = (_end - _start)/sizeof(vu_long);
 
-	/* Exit if ctrl-c is pressed */
-	if (ctrlc()) {
-		printf("Memtest interrupted.\n");
-		return -1;
-	}
-
 	printf("Starting data line test.\n");
 
 	/*
@@ -311,53 +307,78 @@ static int mem_test(vu_long _start, vu_long _end,
 	/*
 	 * Fill memory with a known pattern.
 	 */
-	for (offset = 0; offset < (num_words); offset++) {
+	init_progression_bar(num_words);
+	for (offset = 0; offset < num_words; offset++) {
+		if (!(offset & 0xfff)) {
+			if (ctrlc())
+				return -EINTR;
+			show_progress(offset);
+		}
+
 		ret = address_in_sdram_regions((vu_long)&start[offset]);
 		if (ret)
 			continue;
 
-		start[offset] = offset+1;
+		start[offset] = offset + 1;
 	}
 
-	printf("Compare written patterns...\n");
+	show_progress(offset);
+
+	printf("\nCompare written patterns...\n");
 
 	/*
 	 * Check each location and invert it for the second pass.
 	 */
+	init_progression_bar(num_words - 1);
 	for (offset = 0; offset < num_words; offset++) {
+		if (!(offset & 0xfff)) {
+			if (ctrlc())
+				return -EINTR;
+			show_progress(offset);
+		}
+
 		ret = address_in_sdram_regions((vu_long)&start[offset]);
 		if (ret)
 			continue;
 
 		temp = start[offset];
-		if (temp != (offset+1)) {
-			printf("FAILURE (read/write) @ 0x%08lx:"
+		if (temp != (offset + 1)) {
+			printf("\nFAILURE (read/write) @ 0x%08lx:"
 					" expected 0x%08lx, actual 0x%08lx.\n",
 					(vu_long)&start[offset],
-					(offset+1), temp);
+					(offset + 1), temp);
 			return -1;
 		}
 
-		anti_pattern = ~(offset+1);
+		anti_pattern = ~(offset + 1);
 		start[offset] = anti_pattern;
 	}
 
-	printf("Filling ram with inverted pattern and compare it...\n");
+	show_progress(offset);
+
+	printf("\nFilling ram with inverted pattern and compare it...\n");
 
 	/*
 	 * Check each location for the inverted pattern and zero it.
 	 */
+	init_progression_bar(num_words - 1);
 	for (offset = 0; offset < num_words; offset++) {
+		if (!(offset & 0xfff)) {
+			if (ctrlc())
+				return -EINTR;
+			show_progress(offset);
+		}
+
 		ret = address_in_sdram_regions((vu_long)&start[offset]);
 		/* Step over barebox mem usage */
 		if (ret)
 			continue;
 
-		anti_pattern = ~(offset+1);
+		anti_pattern = ~(offset + 1);
 		temp = start[offset];
 
 		if (temp != anti_pattern) {
-			printf("FAILURE (read/write): @ 0x%08lx:"
+			printf("\nFAILURE (read/write): @ 0x%08lx:"
 					" expected 0x%08lx, actual 0x%08lx.\n",
 					(vu_long)&start[offset],
 					anti_pattern, temp);
@@ -367,6 +388,8 @@ static int mem_test(vu_long _start, vu_long _end,
 		start[offset] = 0;
 	}
 
+	show_progress(offset);
+
 	return 0;
 }
 
@@ -378,14 +401,12 @@ static void print_region(vu_long start, vu_long size, uint32_t flags)
 
 	switch (flags) {
 	case PTE_FLAGS_UNCACHED:
-		printf("Set non caching region at 0x%08lx until"
-				" 0x%08lx size 0x%08lx.\n", start,
-				start + size, size);
+		printf("Set non caching region at 0x%08lx - 0x%08lx size 0x%08lx.\n",
+				start, start + size - 1, size);
 		break;
 	case PTE_FLAGS_CACHED:
-		printf("Set caching region at 0x%08lx until"
-				" 0x%08lx size 0x%08lx.\n", start,
-				start + size, size);
+		printf("Set caching region at 0x%08lx - 0x%08lx size 0x%08lx.\n",
+				start, start + size - 1, size);
 		break;
 	default:
 		/* This should never happen. */
@@ -394,6 +415,8 @@ static void print_region(vu_long start, vu_long size, uint32_t flags)
 	}
 }
 
+#define PAGE_ALIGN_DOWN(x) ((x) & ~(PAGE_SIZE - 1))
+
 static void do_remap_range(struct memory_bank *bank, uint32_t flags)
 {
 	struct resource *r = NULL;
@@ -407,41 +430,37 @@ static void do_remap_range(struct memory_bank *bank, uint32_t flags)
 	list_for_each_entry(r, &bank->res->children, sibling) {
 		/* Do on head element for bank boundary */
 		if (r->sibling.prev == &bank->res->children) {
-			start = bank->start;
-			end = r->start;
-			size = end - start;
+			/* remember last used element */
+			r_prev = r;
 
-			size = PAGE_ALIGN(size);
-			start = PAGE_ALIGN(start);
+			start = PAGE_ALIGN(bank->start);
+			end = PAGE_ALIGN_DOWN(r->start) - 1;
+			if (start >= end)
+				continue;
+			size = end - start + 1;
 
 			print_region(start, size, flags);
 			remap_range((void *)start, size, flags);
 
-			/* remember last used element */
-			r_prev = r;
 			continue;
 		}
 		/* Between used regions */
-		start = r_prev->start + r_prev->size;
-		end = r->start;
-		size = end - start;
-
-
-		size = PAGE_ALIGN(size);
-		start = PAGE_ALIGN(start);
-
-		print_region(start, size, flags);
-		remap_range((void *)start, size, flags);
+		start = PAGE_ALIGN(r_prev->start + r_prev->size);
+		end = PAGE_ALIGN_DOWN(r->start) - 1;
+		if (start < end) {
+			size = end - start + 1;
+			print_region(start, size, flags);
+			remap_range((void *)start, size, flags);
+		}
 
 		r_prev = r;
 		/* Do on head element for bank boundary */
 		if (list_is_last(&r->sibling, &bank->res->children)) {
-			start = r->start + r->size;
-			end = bank->start + bank->size;
-			size = end - start;
-
-			size = PAGE_ALIGN(size);
-			start = PAGE_ALIGN(start);
+			start = PAGE_ALIGN(r->start + r->size);
+			end = PAGE_ALIGN_DOWN(bank->start + bank->size) - 1;
+			if (start >= end)
+				continue;
+			size = end - start + 1;
 
 			print_region(start, size, flags);
 			remap_range((void *)start, size, flags);
@@ -490,7 +509,7 @@ static int do_mem_memtest(int argc, char *argv[])
 
 	/* Error if no end address */
 	if (start && !end) {
-		printf("Please add a end address.\n");
+		printf("Please add an end address.\n");
 		return 1;
 	}
 
@@ -532,9 +551,8 @@ static int do_mem_memtest(int argc, char *argv[])
 
 	for_each_memory_bank(bank) {
 		list_for_each_entry(r, &bank->res->children, sibling)
-			printf("Will skipping region at 0x%08x"
-					" until 0x%08x size 0x%08x name %s.\n",
-					r->start, r->size + r->start,
+			printf("Skipping region at 0x%08x - 0x%08x, size 0x%08x (%s)\n",
+					r->start, r->size + r->start - 1,
 					r->size, r->name);
 #ifdef CONFIG_MMU
 		/* Disable caching */
@@ -544,8 +562,7 @@ static int do_mem_memtest(int argc, char *argv[])
 
 	/* Do test if we set a start or end address */
 	if (start && end) {
-		printf("Testing address range: 0x%08lx until "
-				"0x%08lx.\n",
+		printf("Testing address range: 0x%08lx - 0x%08lx.\n",
 				start, end);
 
 		for (i = 1; (i <= max_i) || !max_i; i++) {
@@ -553,6 +570,10 @@ static int do_mem_memtest(int argc, char *argv[])
 
 			/* Do the memtest */
 			err = mem_test(start, end, bus_only);
+			if (err == -EINTR) {
+				printf("Test interrupted\n");
+				goto err;
+			}
 
 			if (err < 0) {
 				printf("Test failed.\n");
@@ -577,8 +598,7 @@ static int do_mem_memtest(int argc, char *argv[])
 			start = bank->start;
 			end = bank->start + bank->size;
 
-			printf("Testing address range: 0x%08lx until "
-					"0x%08lx on bank /dev/%s.\n",
+			printf("Testing address range: 0x%08lx - 0x%08lx on bank /dev/%s.\n",
 					start, end, bank->res->name);
 
 			printf("Iteration: %u\n", i);
@@ -624,4 +644,4 @@ BAREBOX_CMD_START(memtest)
 	.cmd		= do_mem_memtest,
 	.usage		= "Memory Test",
 	BAREBOX_CMD_HELP(cmd_memtest_help)
-	BAREBOX_CMD_END
+BAREBOX_CMD_END
-- 
1.7.10


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
