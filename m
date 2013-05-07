Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZkrR-0008Mw-Ls
 for barebox@lists.infradead.org; Tue, 07 May 2013 16:35:30 +0000
Received: by mail-la0-f53.google.com with SMTP id eo20so779981lab.40
 for <barebox@lists.infradead.org>; Tue, 07 May 2013 09:35:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 May 2013 20:34:10 +0400
Message-Id: <1367944452-20946-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
References: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/4] of: add MIPS memory bank adding support
To: barebox@lists.infradead.org

The MIPS architecture has different view on memory
resources than the ARM architecture.
This patch move memory segment registration
to a arch-specific files.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/dtb.c   |   13 +++++++++++++
 arch/mips/boot/dtb.c |   17 +++++++++++++++++
 drivers/of/base.c    |    8 +-------
 include/of.h         |    2 ++
 4 files changed, 33 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index 10b73bd..66346cf 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -17,6 +17,19 @@
 #include <common.h>
 #include <init.h>
 #include <of.h>
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
 
 extern char __dtb_start[];
 
diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index d20fab3..c1962bf 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -20,6 +20,23 @@
 #include <common.h>
 #include <init.h>
 #include <of.h>
+#include <memory.h>
+#include <asm/addrspace.h>
+
+void of_add_memory_bank(struct device_node *node, bool dump, int r,
+		u64 base, u64 size)
+{
+	static char str[12];
+
+	sprintf(str, "kseg0_ram%d", r);
+	barebox_add_memory_bank(str, KSEG0 | base, size);
+
+	sprintf(str, "kseg1_ram%d", r);
+	barebox_add_memory_bank(str, KSEG1 | base, size);
+
+	if (dump)
+		pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
+}
 
 extern char __dtb_start[];
 
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
