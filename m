Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004P5-W3
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:19 +0200
Message-Id: <1316769860-24549-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] introduce generic memory bank handling
To: barebox@lists.infradead.org

On arm we have the concept of memory banks which can
be registered and iterated over. This is useful for
other architectures aswell, so add some generic infrastructure
for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c  |   18 ++++++++++++++++++
 include/memory.h |   15 +++++++++++++++
 2 files changed, 33 insertions(+), 0 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 8f4a768..4d59f15 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -21,6 +21,7 @@
  */
 
 #include <common.h>
+#include <memory.h>
 
 /*
  * Begin and End of memory area for malloc(), and current "brk"
@@ -69,3 +70,20 @@ void *sbrk(ptrdiff_t increment)
 
 	return old;
 }
+
+LIST_HEAD(memory_banks);
+
+void barebox_add_memory_bank(const char *name, resource_size_t start,
+				    resource_size_t size)
+{
+	struct memory_bank *bank = xzalloc(sizeof(*bank));
+	struct device_d *dev;
+
+	dev = add_mem_device(name, start, size, IORESOURCE_MEM_WRITEABLE);
+
+	bank->dev = dev;
+	bank->start = start;
+	bank->size = size;
+
+	list_add_tail(&bank->list, &memory_banks);
+}
diff --git a/include/memory.h b/include/memory.h
index 67b19d7..cb185af 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -2,9 +2,24 @@
 #define __MEM_MALLOC_H
 
 #include <linux/types.h>
+#include <linux/list.h>
 
 void mem_malloc_init(void *start, void *end);
 ulong mem_malloc_start(void);
 ulong mem_malloc_end(void);
 
+struct memory_bank {
+	struct list_head list;
+	struct device_d *dev;
+	unsigned long start;
+	unsigned long size;
+};
+
+extern struct list_head memory_banks;
+
+void barebox_add_memory_bank(const char *name, resource_size_t start,
+				    resource_size_t size);
+
+#define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
+
 #endif
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
