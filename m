Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22e.google.com ([2a00:1450:4008:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjduS-0005r7-C2
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 23:11:30 +0000
Received: by mail-bk0-f46.google.com with SMTP id na10so2254240bkb.5
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 16:11:06 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue,  4 Jun 2013 01:13:52 +0200
Message-Id: <1370301232-12962-6-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
References: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 5/5] commands: add new memtest command
To: barebox@lists.infradead.org

This new memtest can test the whole unused memory. The new memtest
command try to request the whole unused sdram regions on all banks and
run the mem_test routine from common/memtest.c on it.

The memtest command has only two parameters;
  -i	Amount of iterations, default 1, iteration of 0 is endless.
  -b	Set this to skip integrity check.(Do only a fast test for bus lines)

If MMU support is enable, memtest try to run memtest twice. The first with
cache enabled, the second with cache disabled.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/Kconfig   |  10 +++
 commands/Makefile  |   1 +
 commands/memtest.c | 250 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 261 insertions(+)
 create mode 100644 commands/memtest.c

diff --git a/commands/Kconfig b/commands/Kconfig
index add547f..9135f5d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -561,6 +561,16 @@ config CMD_NANDTEST
 	select PARTITION_NEED_MTD
 	prompt "nandtest"
 
+config CMD_MEMTEST
+    tristate
+    prompt "memtest"
+       help
+         The memtest command can test the registered barebox memory.
+         During this test barebox memory regions like heap, stack, ...
+	 will be skipped. If the tested architecture has MMU with PTE
+	 flags support, the memtest is running twice with cache enabled
+	 and with cache disabled
+
 endmenu
 
 menu "video command"
diff --git a/commands/Makefile b/commands/Makefile
index 9d34a56..0ae01a5 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -48,6 +48,7 @@ obj-$(CONFIG_CMD_SAVEENV)	+= saveenv.o
 obj-$(CONFIG_CMD_LOADENV)	+= loadenv.o
 obj-$(CONFIG_CMD_NAND)		+= nand.o
 obj-$(CONFIG_CMD_NANDTEST)	+= nandtest.o
+obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
 obj-$(CONFIG_CMD_TRUE)		+= true.o
 obj-$(CONFIG_CMD_FALSE)		+= false.o
 obj-$(CONFIG_CMD_VERSION)	+= version.o
diff --git a/commands/memtest.c b/commands/memtest.c
new file mode 100644
index 0000000..a67d868
--- /dev/null
+++ b/commands/memtest.c
@@ -0,0 +1,250 @@
+/*
+ * memtest - Perform a memory test
+ *
+ * (C) Copyright 2013
+ * Alexander Aring <aar@pengutronix.de>, Pengutronix
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
+#include <command.h>
+#include <getopt.h>
+#include <asm/mmu.h>
+#include <memory.h>
+
+#include <memtest.h>
+
+static int alloc_memtest_region(struct list_head *list,
+		resource_size_t start, resource_size_t size)
+{
+	struct resource *r_new;
+	struct mem_test_resource *r;
+
+	r = xzalloc(sizeof(struct mem_test_resource));
+	r_new = request_sdram_region("memtest", start, size);
+	if (!r_new)
+		return -EINVAL;
+
+	r->r = r_new;
+	list_add_tail(&r->list, list);
+
+	return 0;
+}
+
+static int request_memtest_regions(struct list_head *list)
+{
+	int ret;
+	struct memory_bank *bank;
+	struct resource *r, *r_prev = NULL;
+	resource_size_t start, end, size;
+
+	for_each_memory_bank(bank) {
+		/*
+		 * If we don't have any allocated region on bank,
+		 * we use the whole bank boundary
+		 */
+		if (list_empty(&bank->res->children)) {
+			start = PAGE_ALIGN(bank->res->start);
+			end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
+			size = end - start + 1;
+
+			ret = alloc_memtest_region(list, start, size);
+			if (ret < 0)
+				return ret;
+
+			continue;
+		}
+
+		/*
+		 * We assume that the regions are sorted in this list
+		 * So the first element has start boundary on bank->res->start
+		 * and the last element hast end boundary on bank->res->end
+		 */
+		list_for_each_entry(r, &bank->res->children, sibling) {
+			/*
+			 * Do on head element for bank boundary
+			 */
+			if (r->sibling.prev == &bank->res->children) {
+				/*
+				 * remember last used element
+				 */
+				start = PAGE_ALIGN(bank->res->start);
+				end = PAGE_ALIGN_DOWN(r->start) - 1;
+				size = end - start + 1;
+				r_prev = r;
+				if (start >= end)
+					continue;
+
+				ret = alloc_memtest_region(list, start, size);
+				if (ret < 0)
+					return ret;
+				continue;
+			}
+			/*
+			 * Between used regions
+			 */
+			start = PAGE_ALIGN(r_prev->end);
+			end = PAGE_ALIGN_DOWN(r->start) - 1;
+			size = end - start + 1;
+			r_prev = r;
+			if (start >= end)
+				continue;
+
+			ret = alloc_memtest_region(list, start, size);
+			if (ret < 0)
+				return ret;
+
+			if (list_is_last(&r->sibling, &bank->res->children)) {
+				/*
+				 * Do on head element for bank boundary
+				 */
+				start = PAGE_ALIGN(r->end);
+				end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
+				size = end - start + 1;
+				if (start >= end)
+					continue;
+
+				ret = alloc_memtest_region(list, start, size);
+				if (ret < 0)
+					return ret;
+			}
+		}
+	}
+
+	return 0;
+}
+
+static int __do_memtest(struct list_head *memtest_regions,
+		int bus_only, uint32_t cache_flag)
+{
+	struct mem_test_resource *r;
+	int ret;
+
+	list_for_each_entry(r, memtest_regions, list) {
+		printf("Testing memory space: "
+				"0x%08x -> 0x%08x:\n",
+				r->r->start,  r->r->end);
+		remap_range((void *)r->r->start, r->r->end -
+				r->r->start + 1, cache_flag);
+
+		ret = mem_test(r->r->start, r->r->end, bus_only);
+		if (ret < 0)
+			return ret;
+		printf("done.\n\n");
+	}
+
+	return 0;
+}
+
+static int do_memtest(int argc, char *argv[])
+{
+	int bus_only = 0, ret, opt;
+	uint32_t i, max_i = 1, pte_flags_cached, pte_flags_uncached;
+	struct mem_test_resource *r, *r_tmp;
+	struct list_head memtest_used_regions;
+
+	while ((opt = getopt(argc, argv, "i:b")) > 0) {
+		switch (opt) {
+		case 'i':
+			max_i = simple_strtoul(optarg, NULL, 0);
+			break;
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
+	/*
+	 * Get pte flags for enable and disable cache support on page.
+	 */
+	pte_flags_cached = mmu_get_pte_cached_flags();
+	pte_flags_uncached = mmu_get_pte_uncached_flags();
+
+	INIT_LIST_HEAD(&memtest_used_regions);
+
+	ret = request_memtest_regions(&memtest_used_regions);
+	if (ret < 0)
+		goto out;
+
+	for (i = 1; (i <= max_i) || !max_i; i++) {
+		if (max_i)
+			printf("Start iteration %u of %u.\n", i, max_i);
+		/*
+		 * First try a memtest with caching enabled.
+		 */
+		if (IS_ENABLED(CONFIG_MMU)) {
+			printf("Do memtest with caching enabled.\n");
+			ret = __do_memtest(&memtest_used_regions,
+					bus_only, pte_flags_cached);
+			if (ret < 0)
+				goto out;
+		}
+		/*
+		 * Second try a memtest with caching disabled.
+		 */
+		printf("Do memtest with caching disabled.\n");
+		ret = __do_memtest(&memtest_used_regions,
+				bus_only, pte_flags_uncached);
+		if (ret < 0)
+			goto out;
+	}
+
+out:
+	list_for_each_entry_safe(r, r_tmp, &memtest_used_regions, list) {
+		/*
+		 * Ensure to leave with a cached on non used sdram regions.
+		 */
+		remap_range((void *)r->r->start, r->r->end -
+				r->r->start + 1, pte_flags_cached);
+		release_sdram_region(r->r);
+		free(r);
+	}
+
+	if (ret < 0) {
+		/*
+		 * Set cursor to newline, because mem_test failed at
+		 * drawing of progressbar.
+		 */
+		if (ret == -EINTR)
+			printf("\n");
+
+		printf("Memtest failed.\n");
+		return 1;
+	} else {
+		printf("Memtest successful.\n");
+		return 1;
+	}
+}
+
+static const __maybe_unused char cmd_memtest_help[] =
+"Usage: memtest [OPTION]...\n"
+"memtest related commands\n"
+"	-i	<iterations>	iterations [default=1, endless=0].\n"
+"	-b			perform only a test on buslines.";
+
+BAREBOX_CMD_START(memtest)
+	.cmd		= do_memtest,
+	.usage		= "Memory Test",
+	BAREBOX_CMD_HELP(cmd_memtest_help)
+BAREBOX_CMD_END
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
