Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f42.google.com ([74.125.83.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tv6sl-0003xa-Br
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 13:48:55 +0000
Received: by mail-ee0-f42.google.com with SMTP id b47so61403eek.15
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 05:48:48 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 15 Jan 2013 14:48:50 +0100
Message-Id: <1358257730-20579-9-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
References: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 8/8] memtest: add rewritten memtest command
To: barebox@lists.infradead.org

Rewrite memtest command:
	- Skip barebox sdram regions.
	- Uncache unused mem regions while testing.
	- Add iteration parameter.
	- Add parameter to do only bus testing.
	- Check start and end addresses.
	- Testing all banks if no start and end
	  address are given.

	- Add sha changes (thanks):
	- fix calculation of regions to test. When we use PAGE_ALIGN on
	  size, size can be to high.
	  - start address has to be aligned up
	  - end address has to be aligned down
	  - then size can be calculated as end - start + 1
	- Add ctrlc() to the longer loops
	- Add a progress bar to give some visual feedback that something
	  issues
	  still going on.

	- Change to use end element instead of size in region struct.
	- Fix some newline issues.

	- Add '-c' parameter if CONFIG_MMU enabled
	  to test with enabled cache.
	- Fix some size calculation.
	- set start address to 0xffffffff

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/Kconfig   |   9 +
 commands/Makefile  |   1 +
 commands/memtest.c | 698 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 708 insertions(+)
 create mode 100644 commands/memtest.c

diff --git a/commands/Kconfig b/commands/Kconfig
index fc0e448..f027a7e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -496,6 +496,15 @@ config CMD_NANDTEST
 	select PARTITION_NEED_MTD
 	prompt "nandtest"
 
+config CMD_MEMTEST
+    tristate
+    prompt "memtest"
+	help
+	  This command enables a memtest to test installed memory.
+	  During this test allocated iomem regions will be skipped.
+	  If tested architecture has MMU with PTE flags support,
+	  caching can be set enabled or disabled.
+
 endmenu
 
 menu "video command"
diff --git a/commands/Makefile b/commands/Makefile
index 3145685..6b4d9cb 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_CMD_LOADY)		+= loadxy.o
 obj-$(CONFIG_CMD_LOADS)		+= loads.o
 obj-$(CONFIG_CMD_ECHO)		+= echo.o
 obj-$(CONFIG_CMD_MEMORY)	+= mem.o
+obj-$(CONFIG_CMD_MEMTEST)   += memtest.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
 obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
diff --git a/commands/memtest.c b/commands/memtest.c
new file mode 100644
index 0000000..c31e553
--- /dev/null
+++ b/commands/memtest.c
@@ -0,0 +1,698 @@
+/*
+ * memtest - Perform a memory test
+ *
+ * (C) Copyright 2013
+ * Alexander Aring <a.aring@gmail.com>
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <types.h>
+#include <getopt.h>
+#include <memory.h>
+#include <errno.h>
+#include <progress.h>
+#include <asm/mmu.h>
+
+static const vu_long bitpattern[] = {
+	0x00000001,	/* single bit */
+	0x00000003,	/* two adjacent bits */
+	0x00000007,	/* three adjacent bits */
+	0x0000000F,	/* four adjacent bits */
+	0x00000005,	/* two non-adjacent bits */
+	0x00000015,	/* three non-adjacent bits */
+	0x00000055,	/* four non-adjacent bits */
+	0xAAAAAAAA,	/* alternating 1/0 */
+};
+
+/*
+ * In CONFIG_MMU we have a special c flag.
+ */
+#ifdef CONFIG_MMU
+static char optstr[] = "s:e:i:cb";
+
+/*
+ * PTE flags variables to set cached and
+ * uncached regions.
+ */
+static uint32_t PTE_FLAGS_CACHED;
+static uint32_t PTE_FLAGS_UNCACHED;
+#else
+static char optstr[] = "s:e:i:b";
+#endif
+
+/*
+ * Perform a memory test. The complete test
+ * loops until interrupted by ctrl-c.
+ */
+static int mem_test(vu_long _start, vu_long _end,
+		int bus_only)
+{
+	vu_long *start = (vu_long *)_start;
+	/* Point the dummy to start[1] */
+	vu_long *dummy = start+1;
+
+	vu_long val;
+	vu_long readback;
+	vu_long offset;
+	vu_long pattern;
+	vu_long test_offset;
+	vu_long temp;
+	vu_long anti_pattern;
+	vu_long num_words;
+
+	int i;
+	int ret;
+
+	if (!IS_ALIGNED(_end - _start + 1, sizeof(vu_long))) {
+		printf("Testing memarea size (0x%08lx) not a multiple"
+				"of size 0x%x, please change start or end address.",
+				_end - _start + 1, sizeof(vu_long));
+		return -1;
+	}
+
+	num_words = (_end - _start + 1)/sizeof(vu_long);
+
+	printf("Starting data line test.\n");
+
+	/*
+	 * Data line test: write a pattern to the first
+	 * location, write the 1's complement to a 'parking'
+	 * address (changes the state of the data bus so a
+	 * floating bus doen't give a false OK), and then
+	 * read the value back. Note that we read it back
+	 * into a variable because the next time we read it,
+	 * it might be right (been there, tough to explain to
+	 * the quality guys why it prints a failure when the
+	 * "is" and "should be" are obviously the same in the
+	 * error message).
+	 *
+	 * Rather than exhaustively testing, we test some
+	 * patterns by shifting '1' bits through a field of
+	 * '0's and '0' bits through a field of '1's (i.e.
+	 * pattern and ~pattern).
+	 */
+	for (i = 0; i < sizeof(bitpattern)/
+			sizeof(bitpattern[0]); i++) {
+		ret = address_in_sdram_regions((vu_long)start);
+		if (ret) {
+			printf("WARNING (data line): "
+					"address 0x%08lx is in sdram regions.\n"
+					"Will skip this memory address.\n",
+					(vu_long)start);
+			break;
+		}
+
+		ret = address_in_sdram_regions((vu_long)dummy);
+		if (ret) {
+			printf("WARNING (data line): "
+					"address 0x%08lx is in sdram regions.\n"
+					"Will skip this memory address.\n",
+					(vu_long)dummy);
+			break;
+		}
+
+		val = bitpattern[i];
+
+		for (; val != 0; val <<= 1) {
+			*start = val;
+			/* clear the test data off of the bus */
+			*dummy = ~val;
+			readback = *start;
+
+			if (readback != val) {
+				printf("FAILURE (data line): "
+					"expected 0x%08lx, actual 0x%08lx at address 0x%08lx.\n",
+					val, readback, (vu_long)start);
+				return -1;
+			}
+
+			*start = ~val;
+			*dummy = val;
+			readback = *start;
+			if (readback != ~val) {
+				printf("FAILURE (data line): "
+					"Is 0x%08lx, should be 0x%08lx at address 0x%08lx.\n",
+					readback,
+					~val, (vu_long)start);
+				return -1;
+			}
+		}
+	}
+
+
+	/*
+	 * Based on code whose Original Author and Copyright
+	 * information follows: Copyright (c) 1998 by Michael
+	 * Barr. This software is placed into the public
+	 * domain and may be used for any purpose. However,
+	 * this notice must not be changed or removed and no
+	 * warranty is either expressed or implied by its
+	 * publication or distribution.
+	 */
+
+	/*
+	 * Address line test
+	 *
+	 * Description: Test the address bus wiring in a
+	 *              memory region by performing a walking
+	 *              1's test on the relevant bits of the
+	 *              address and checking for aliasing.
+	 *              This test will find single-bit
+	 *              address failures such as stuck -high,
+	 *              stuck-low, and shorted pins. The base
+	 *              address and size of the region are
+	 *              selected by the caller.
+	 *
+	 * Notes:	For best results, the selected base
+	 *              address should have enough LSB 0's to
+	 *              guarantee single address bit changes.
+	 *              For example, to test a 64-Kbyte
+	 *              region, select a base address on a
+	 *              64-Kbyte boundary. Also, select the
+	 *              region size as a power-of-two if at
+	 *              all possible.
+	 *
+	 * ## NOTE ##	Be sure to specify start and end
+	 *              addresses such that num_words has
+	 *              lots of bits set. For example an
+	 *              address range of 01000000 02000000 is
+	 *              bad while a range of 01000000
+	 *              01ffffff is perfect.
+	 */
+
+	pattern = 0xAAAAAAAA;
+	anti_pattern = 0x55555555;
+
+	/*
+	 * Write the default pattern at each of the
+	 * power-of-two offsets.
+	 */
+	for (offset = 1; (offset & num_words) != 0; offset <<= 1) {
+		ret = address_in_sdram_regions((vu_long)&start[offset]);
+		if (ret) {
+			printf("WARNING (stuck high): "
+					"address 0x%08lx is in sdram regions.\n",
+					(vu_long)&start[offset]);
+			continue;
+		}
+
+		start[offset] = pattern;
+	}
+
+	printf("Check for address bits stuck high.\n");
+
+	/*
+	 * Check for address bits stuck high.
+	 */
+	test_offset = 0;
+
+	ret = address_in_sdram_regions((vu_long)&start[test_offset]);
+	if (ret)
+		printf("WARNING (stuck high): "
+				"address 0x%08lx is in sdram regions.\n",
+				(vu_long)&start[test_offset]);
+	else
+		start[test_offset] = anti_pattern;
+
+	for (offset = 1; (offset & num_words) != 0; offset <<= 1) {
+		ret = address_in_sdram_regions((vu_long)&start[offset]);
+		if (ret) {
+			printf("WARNING (stuck high): "
+					"address 0x%08lx is in sdram regions.\n",
+					(vu_long)&start[offset]);
+			continue;
+		}
+
+		temp = start[offset];
+
+		if (temp != pattern) {
+			printf("FAILURE: Address bit "
+					"stuck high @ 0x%08lx:"
+					" expected 0x%08lx, actual 0x%08lx.\n",
+					(vu_long)&start[offset],
+					pattern, temp);
+			return -1;
+		}
+	}
+
+	ret = address_in_sdram_regions((vu_long)&start[test_offset]);
+	if (ret)
+		printf("WARNING (stuck high): "
+				"address 0x%08lx is in sdram regions.\n",
+				(vu_long)&start[test_offset]);
+	else
+		start[test_offset] = pattern;
+
+	printf("Check for address bits stuck "
+			"low or shorted.");
+
+	/*
+	 * Check for address bits stuck low or shorted.
+	 */
+	for (test_offset = 1;
+			(test_offset & num_words) != 0;
+			test_offset <<= 1) {
+		ret = address_in_sdram_regions(
+				(vu_long)&start[test_offset]);
+		if (ret) {
+			printf("\nWARNING (low high): "
+					"address 0x%08lx is in barebox regions.\n",
+					(vu_long)&start[test_offset]);
+			continue;
+		}
+
+		start[test_offset] = anti_pattern;
+
+		for (offset = 1; (offset & num_words) != 0; offset <<= 1) {
+			ret = address_in_sdram_regions(
+					(vu_long)&start[offset]);
+			if (ret) {
+				printf("\nWARNING (low high): "
+					"address 0x%08lx is in barebox regions.\n",
+					(vu_long)&start[test_offset]);
+				continue;
+			}
+
+			temp = start[offset];
+
+			if ((temp != pattern) &&
+					(offset != test_offset)) {
+				printf("\nFAILURE: Address bit stuck"
+						" low or shorted @"
+						" 0x%08lx: expected 0x%08lx, actual 0x%08lx.\n",
+						(vu_long)&start[offset],
+						pattern, temp);
+				return -1;
+			}
+		}
+		start[test_offset] = pattern;
+	}
+
+	/* We tested only the bus if != 0
+	 * leaving here */
+	if (bus_only)
+		return 0;
+
+	printf("\nStarting integrity check of physicaly ram.\n"
+			"Filling ram with patterns...\n");
+
+	/*
+	 * Description: Test the integrity of a physical
+	 *		memory device by performing an
+	 *		increment/decrement test over the
+	 *		entire region. In the process every
+	 *		storage bit in the device is tested
+	 *		as a zero and a one. The base address
+	 *		and the size of the region are
+	 *		selected by the caller.
+	 */
+
+	/*
+	 * Fill memory with a known pattern.
+	 */
+	init_progression_bar(num_words);
+	for (offset = 0; offset < num_words; offset++) {
+		if (!(offset & 0xfff)) {
+			if (ctrlc())
+				return -EINTR;
+			show_progress(offset);
+		}
+
+		ret = address_in_sdram_regions((vu_long)&start[offset]);
+		if (ret)
+			continue;
+
+		start[offset] = offset + 1;
+	}
+
+	show_progress(offset);
+
+	printf("\nCompare written patterns...\n");
+
+	/*
+	 * Check each location and invert it for the second pass.
+	 */
+	init_progression_bar(num_words - 1);
+	for (offset = 0; offset < num_words; offset++) {
+		if (!(offset & 0xfff)) {
+			if (ctrlc())
+				return -EINTR;
+			show_progress(offset);
+		}
+
+		ret = address_in_sdram_regions((vu_long)&start[offset]);
+		if (ret)
+			continue;
+
+		temp = start[offset];
+		if (temp != (offset + 1)) {
+			printf("\nFAILURE (read/write) @ 0x%08lx:"
+					" expected 0x%08lx, actual 0x%08lx.\n",
+					(vu_long)&start[offset],
+					(offset + 1), temp);
+			return -1;
+		}
+
+		anti_pattern = ~(offset + 1);
+		start[offset] = anti_pattern;
+	}
+
+	show_progress(offset);
+
+	printf("\nFilling ram with inverted pattern and compare it...\n");
+
+	/*
+	 * Check each location for the inverted pattern and zero it.
+	 */
+	init_progression_bar(num_words - 1);
+	for (offset = 0; offset < num_words; offset++) {
+		if (!(offset & 0xfff)) {
+			if (ctrlc())
+				return -EINTR;
+			show_progress(offset);
+		}
+
+		ret = address_in_sdram_regions((vu_long)&start[offset]);
+		/* Step over barebox mem usage */
+		if (ret)
+			continue;
+
+		anti_pattern = ~(offset + 1);
+		temp = start[offset];
+
+		if (temp != anti_pattern) {
+			printf("\nFAILURE (read/write): @ 0x%08lx:"
+					" expected 0x%08lx, actual 0x%08lx.\n",
+					(vu_long)&start[offset],
+					anti_pattern, temp);
+			return -1;
+		}
+
+		start[offset] = 0;
+	}
+
+	show_progress(offset);
+
+	return 0;
+}
+
+#ifdef CONFIG_MMU
+static void print_region(vu_long start, vu_long size, uint32_t flags)
+{
+	if (!size)
+		return;
+
+	printf("\t0x%08lx - "
+			"0x%08lx (size 0x%08lx)\n",
+			start, start + size - 1, size);
+}
+
+static void do_remap_range(struct memory_bank *bank, uint32_t flags)
+{
+	struct resource *r = NULL;
+	struct resource *r_prev = NULL;
+
+	vu_long size;
+	vu_long start;
+	vu_long end;
+
+	if (flags == PTE_FLAGS_UNCACHED)
+		printf("Set non caching regions:\n");
+	else if (flags == PTE_FLAGS_CACHED)
+		printf("Set caching regions:\n");
+	else
+		BUG();
+
+	/* We assume that the regions are sorted in this list */
+	list_for_each_entry(r, &bank->res->children, sibling) {
+		/* Do on head element for bank boundary */
+		if (r->sibling.prev == &bank->res->children) {
+			/* remember last used element */
+			r_prev = r;
+
+			start = PAGE_ALIGN(bank->start);
+			end = PAGE_ALIGN_DOWN(r->start) - 1;
+			if (start >= end)
+				continue;
+			size = end - start + 1;
+
+			print_region(start, size, flags);
+			remap_range((void *)start, size, flags);
+
+			continue;
+		}
+		/* Between used regions */
+		start = PAGE_ALIGN(r_prev->end);
+		end = PAGE_ALIGN_DOWN(r->start) - 1;
+		if (start < end) {
+			size = end - start + 1;
+			print_region(start, size, flags);
+			remap_range((void *)start, size, flags);
+		}
+
+		r_prev = r;
+		/* Do on head element for bank boundary */
+		if (list_is_last(&r->sibling, &bank->res->children)) {
+			start = PAGE_ALIGN(r->end);
+			end = PAGE_ALIGN_DOWN(bank->start + bank->size) - 1;
+			if (start >= end)
+				continue;
+			size = end - start + 1;
+
+			print_region(start, size, flags);
+			remap_range((void *)start, size, flags);
+		}
+	}
+}
+#endif
+
+static int do_mem_memtest(int argc, char *argv[])
+{
+	/* Set start address to 0xffffffff which
+	 * can't be. */
+	vu_long start = 0xffffffff;
+	vu_long end = 0;
+
+	uint i;
+	uint max_i = 1;
+
+#ifdef CONFIG_MMU
+	int cache = 0;
+#endif
+	int bus_only = 0;
+	int err = 0;
+	int cnt = 0;
+	int opt;
+
+	struct memory_bank *bank = NULL;
+	struct resource *r = NULL;
+
+	while ((opt = getopt(argc, argv, optstr)) > 0) {
+		switch (opt) {
+		case 's':
+			start = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'e':
+			end = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'i':
+			max_i = simple_strtoul(optarg, NULL, 0);
+			break;
+#ifdef CONFIG_MMU
+		case 'c':
+			cache = 1;
+			break;
+#endif
+		case 'b':
+			bus_only = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind > argc)
+		return COMMAND_ERROR_USAGE;
+
+	/* Error if no end address */
+	if (start != 0xffffffff && !end) {
+		printf("Please add an end address.\n");
+		return 1;
+	}
+
+	/* Error if no start address */
+	if (end && start == 0xffffffff) {
+		printf("Please add a start address.\n");
+		return 1;
+	}
+
+	/* Check parameters */
+	if (start != 0xffffffff && end) {
+		if (end <= start) {
+			printf("End address less than or"
+					" equal start address.\n");
+			return 1;
+		}
+
+		/* Check if given start and end address are in any banks */
+		for_each_memory_bank(bank) {
+			if (ADDRESS_IN_REGIONS(start, bank->start,
+						bank->start + bank->size))
+				cnt++;
+
+			if (ADDRESS_IN_REGIONS(end, bank->start,
+						bank->start + bank->size))
+				cnt++;
+		}
+
+		if (cnt != 2) {
+			printf("Start or end addresses are"
+					" not in any ram bank.\n");
+			return 1;
+		}
+	}
+
+#ifdef CONFIG_MMU
+	/*
+	 * Get pte flags. Which are configured at
+	 * runtime at booting.
+	 */
+	PTE_FLAGS_CACHED = mmu_get_pte_cached_flags();
+	PTE_FLAGS_UNCACHED = mmu_get_pte_uncached_flags();
+#endif
+
+	printf("Skipping regions:\n");
+	for_each_memory_bank(bank) {
+		list_for_each_entry(r, &bank->res->children, sibling)
+			printf("\t0x%08x - "
+					"0x%08x (size 0x%08x) %s\n",
+					r->start, r->end,
+					r->end - r->start + 1, r->name);
+#ifdef CONFIG_MMU
+		/* Disable or enable caching */
+		if (cache)
+			do_remap_range(bank, PTE_FLAGS_CACHED);
+		else
+			do_remap_range(bank, PTE_FLAGS_UNCACHED);
+#endif
+	}
+
+	/* Do test if we set a start or end address */
+	if (start != 0xffffffff && end) {
+		printf("Testing address range:\n\t0x%08lx - 0x%08lx"
+				" (size 0x%08lx)\n",
+				start, end, end - start + 1);
+
+		for (i = 1; (i <= max_i) || !max_i; i++) {
+			printf("Iteration: %u\n", i);
+
+			/* Do the memtest */
+			err = mem_test(start, end, bus_only);
+			if (err == -EINTR) {
+				printf("\nTest interrupted.\n");
+				goto err;
+			}
+
+			if (err < 0) {
+				printf("\nTest failed.\n");
+				goto err;
+			}
+			printf("\nTested %u iteration(s) without errors.\n", i);
+		}
+#ifdef CONFIG_MMU
+		/* Renable caching */
+		if (!cache)
+			for_each_memory_bank(bank)
+				do_remap_range(bank, PTE_FLAGS_CACHED);
+#endif
+		printf("Memtest done.\n");
+
+		return 0;
+	}
+
+	/* If we set no start or end address
+	 * we do the test on all ram banks */
+	for (i = 1; (i <= max_i) || !max_i; i++) {
+		for_each_memory_bank(bank) {
+			start = bank->start;
+			end = bank->start + bank->size - 1;
+
+			printf("Iteration: %u\n", i);
+
+			printf("Testing address range:\n\t0x%08lx - "
+					"0x%08lx (size 0x%08lx) on bank /dev/%s\n",
+					start, end, bank->size,
+					bank->res->name);
+
+			err = mem_test(start, end, bus_only);
+			if (err == -EINTR) {
+				printf("\nTest interrupted.\n");
+				goto err;
+			}
+
+			if (err < 0) {
+				printf("\nTest on bank /dev/%s failed.\n",
+						bank->res->name);
+				goto err;
+			}
+			printf("\nTested %u iteration(s) without errors.\n", i);
+		}
+	}
+#ifdef CONFIG_MMU
+	/* Renable caching */
+	if (!cache)
+		for_each_memory_bank(bank)
+			do_remap_range(bank, PTE_FLAGS_CACHED);
+#endif
+	printf("Memtest done.\n");
+
+	return 0;
+
+err:
+#ifdef CONFIG_MMU
+	/* Enable caching */
+	for_each_memory_bank(bank)
+		do_remap_range(bank, PTE_FLAGS_CACHED);
+#endif
+
+	return 1;
+}
+
+static const __maybe_unused char cmd_memtest_help[] =
+"Usage: memtest [OPTION]...\n"
+"memtest related commands\n"
+"	-s	<start>		start address to begin memtest.\n"
+"	-e	<end>		end address to stop memtest.\n"
+"	-i	<iterations>	iterations [default=1, endless=0].\n"
+#ifdef CONFIG_MMU
+"	-c			run test with enable cache.\n"
+#endif
+"	-b			only test bus datalines.";
+
+BAREBOX_CMD_START(memtest)
+	.cmd		= do_mem_memtest,
+	.usage		= "Memory Test",
+	BAREBOX_CMD_HELP(cmd_memtest_help)
+BAREBOX_CMD_END
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
