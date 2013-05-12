Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f180.google.com ([209.85.217.180])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbcMj-0007O5-EH
 for barebox@lists.infradead.org; Sun, 12 May 2013 19:55:30 +0000
Received: by mail-lb0-f180.google.com with SMTP id o10so169941lbi.39
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 12:55:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 May 2013 23:54:03 +0400
Message-Id: <1368388446-31669-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1368388446-31669-1-git-send-email-antonynpavlov@gmail.com>
References: <1368388446-31669-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/4] of: separate out "generic" memory bank adding
To: barebox@lists.infradead.org

This patch separates out the "generic" memory
segment registration function (of_add_memory_bank())
from of_add_memory().
The MIPS architecture has different view on memory
resources than the ARM and PPC architectures
so the "generic" of_add_memory_bank() is
unusable for the MIPS architecture.
We can add MIPS-specific of_add_memory_bank()
into arch/mips code.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/of/Kconfig       |    5 +++++
 drivers/of/Makefile      |    1 +
 drivers/of/base.c        |    8 +-------
 drivers/of/mem_generic.c |   15 +++++++++++++++
 include/of.h             |    2 ++
 5 files changed, 24 insertions(+), 7 deletions(-)
 create mode 100644 drivers/of/mem_generic.c

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 56762e4..ffe063e 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -1,6 +1,11 @@
 config OFTREE
 	bool
 
+config OFTREE_MEM_GENERIC
+	depends on OFTREE
+	depends on PPC || ARM
+	def_bool y
+
 config DTC
 	bool
 
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index d16a946..c81bbec 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,4 +1,5 @@
 obj-y += base.o fdt.o
+obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
 obj-$(CONFIG_GPIOLIB) += gpio.o
 obj-y += partition.o
 obj-y += of_net.o
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8383549..1158132 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -873,7 +873,6 @@ int of_add_memory(struct device_node *node, bool dump)
 	int na, nc;
 	const __be32 *reg, *endp;
 	int len, r = 0, ret;
-	static char str[6];
 	const char *device_type;
 
 	ret = of_property_read_string(node, "device_type", &device_type);
@@ -900,12 +899,7 @@ int of_add_memory(struct device_node *node, bool dump)
 		if (size == 0)
 			continue;
 
-		sprintf(str, "ram%d", r);
-
-		barebox_add_memory_bank(str, base, size);
-
-		if (dump)
-			pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
+		of_add_memory_bank(node, dump, r, base, size);
 
 		r++;
 	}
diff --git a/drivers/of/mem_generic.c b/drivers/of/mem_generic.c
new file mode 100644
index 0000000..9094243
--- /dev/null
+++ b/drivers/of/mem_generic.c
@@ -0,0 +1,15 @@
+#include <common.h>
+#include <of.h>
+#include <memory.h>
+
+void of_add_memory_bank(struct device_node *node, bool dump, int r,
+		u64 base, u64 size)
+{
+	static char str[6];
+
+	sprintf(str, "ram%d", r);
+	barebox_add_memory_bank(str, base, size);
+
+	if (dump)
+		pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
+}
diff --git a/include/of.h b/include/of.h
index 4dcf37e..e0fc768 100644
--- a/include/of.h
+++ b/include/of.h
@@ -180,6 +180,8 @@ int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
 int of_add_memory(struct device_node *node, bool dump);
+void of_add_memory_bank(struct device_node *node, bool dump, int r,
+		u64 base, u64 size);
 #else
 static inline int of_parse_partitions(struct cdev *cdev,
 					  struct device_node *node)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
