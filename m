Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXULJ-0006Uo-Ko
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:56:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:56:00 +0100
Message-Id: <1323075361-27455-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
References: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] register sdram as resources
To: barebox@lists.infradead.org

Also, request the sdram regions used by the barebox binary,
bss, malloc space and stack.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c  |   58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/memory.h |    5 ++++
 2 files changed, 63 insertions(+), 0 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 0ba9a18..7d0f4ca 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -25,6 +25,9 @@
 #include <of.h>
 #include <init.h>
 #include <libfdt.h>
+#include <linux/ioport.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/sections.h>
 
 /*
  * Begin and End of memory area for malloc(), and current "brk"
@@ -50,6 +53,33 @@ void mem_malloc_init(void *start, void *end)
 	malloc_brk = malloc_start;
 }
 
+static int mem_malloc_resource(void)
+{
+	/*
+	 * Normally it's a bug when one of these fails,
+	 * but we have some setups where some of these
+	 * regions are outside of sdram in which case
+	 * the following fails.
+	 */
+	request_sdram_region("malloc space",
+			malloc_start,
+			malloc_end - malloc_start + 1);
+	request_sdram_region("barebox",
+			(unsigned long)&_stext,
+			(unsigned long)&_etext -
+			(unsigned long)&_stext + 1);
+	request_sdram_region("bss",
+			(unsigned long)&__bss_start,
+			(unsigned long)&__bss_stop -
+			(unsigned long)&__bss_start + 1);
+#ifdef STACK_BASE
+	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
+#endif
+
+	return 0;
+}
+coredevice_initcall(mem_malloc_resource);
+
 static void *sbrk_no_zero(ptrdiff_t increment)
 {
 	unsigned long old = malloc_brk;
@@ -82,6 +112,10 @@ void barebox_add_memory_bank(const char *name, resource_size_t start,
 	struct memory_bank *bank = xzalloc(sizeof(*bank));
 	struct device_d *dev;
 
+	bank->res = request_iomem_region(name, start, size);
+
+	BUG_ON(!bank->res);
+
 	dev = add_mem_device(name, start, size, IORESOURCE_MEM_WRITEABLE);
 
 	bank->dev = dev;
@@ -91,6 +125,30 @@ void barebox_add_memory_bank(const char *name, resource_size_t start,
 	list_add_tail(&bank->list, &memory_banks);
 }
 
+/*
+ * Request a region from the registered sdram
+ */
+struct resource *request_sdram_region(const char *name, resource_size_t start,
+		resource_size_t size)
+{
+	struct memory_bank *bank;
+
+	for_each_memory_bank(bank) {
+		struct resource *res;
+
+		res = request_region(bank->res, name, start, size);
+		if (res)
+			return res;
+	}
+
+	return NULL;
+}
+
+int release_sdram_region(struct resource *res)
+{
+	return release_region(res);
+}
+
 #ifdef CONFIG_OFTREE
 
 /*
diff --git a/include/memory.h b/include/memory.h
index cb185af..4be4340 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -13,6 +13,7 @@ struct memory_bank {
 	struct device_d *dev;
 	unsigned long start;
 	unsigned long size;
+	struct resource *res;
 };
 
 extern struct list_head memory_banks;
@@ -22,4 +23,8 @@ void barebox_add_memory_bank(const char *name, resource_size_t start,
 
 #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
 
+struct resource *request_sdram_region(const char *name, resource_size_t start,
+		resource_size_t size);
+int release_sdram_region(struct resource *res);
+
 #endif
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
