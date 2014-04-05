Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWRj2-0005TK-Hz
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 14:37:43 +0000
From: michel@reverze.net
Date: Sat,  5 Apr 2014 15:37:36 +0200
Message-Id: <1396705058-15047-1-git-send-email-michel@reverze.net>
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
Subject: [PATCHv3 1/3] common: Allow for I/O mapped I/O
To: barebox@lists.infradead.org

From: Michel Stam <m.stam@fugro.nl>

Rework the current framework so that I/O mapped I/O resources are
also possible.

Signed-off-by: Michel Stam <michel@reverze.net>
---
 arch/arm/include/asm/io.h     |    2 +
 arch/mips/include/asm/io.h    |    2 +
 arch/nios2/include/asm/io.h   |    2 +
 arch/sandbox/include/asm/io.h |    1 +
 arch/x86/include/asm/io.h     |    2 +
 commands/Kconfig              |    8 ++--
 commands/Makefile             |    2 +-
 commands/iomem.c              |   52 ---------------------------------
 commands/iomemport.c          |   64 +++++++++++++++++++++++++++++++++++++++++
 common/memory.c               |    3 +-
 common/resource.c             |   30 +++++++++++++++----
 drivers/base/driver.c         |   16 ++++++----
 drivers/gpio/gpio-generic.c   |    4 +-
 drivers/mfd/syscon.c          |    2 +-
 drivers/misc/sram.c           |    2 +-
 include/driver.h              |    5 ++-
 include/linux/ioport.h        |    5 ++-
 17 files changed, 125 insertions(+), 77 deletions(-)
 delete mode 100644 commands/iomem.c
 create mode 100644 commands/iomemport.c

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index e0630eb..ccf1f59 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -3,6 +3,8 @@
 
 #include <asm-generic/io.h>
 
+#define	IO_SPACE_LIMIT	0
+
 /*
  * String version of IO memory access ops:
  */
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4100e1e..1cc8a51 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -14,6 +14,8 @@
 #include <asm/types.h>
 #include <asm/byteorder.h>
 
+#define	IO_SPACE_LIMIT	0
+
 /*****************************************************************************/
 /*
  * readX/writeX() are used to access memory mapped devices. On some
diff --git a/arch/nios2/include/asm/io.h b/arch/nios2/include/asm/io.h
index 8ee48e0..59eea73 100644
--- a/arch/nios2/include/asm/io.h
+++ b/arch/nios2/include/asm/io.h
@@ -22,6 +22,8 @@
 
 #include <asm/byteorder.h>
 
+#define	IO_SPACE_LIMIT	0
+
 #define __raw_writeb(v, a)       (*(volatile unsigned char  *)(a) = (v))
 #define __raw_writew(v, a)       (*(volatile unsigned short *)(a) = (v))
 #define __raw_writel(v, a)       (*(volatile unsigned int   *)(a) = (v))
diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index 8ca164f..35b5784 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -2,5 +2,6 @@
 #define __ASM_SANDBOX_IO_H
 
 #include <asm-generic/io.h>
+#define	IO_SPACE_LIMIT 0
 
 #endif /* __ASM_SANDBOX_IO_H */
diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index 9cb78e4..f020510 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -12,6 +12,8 @@
 
 #include <asm/byteorder.h>
 
+#define	IO_SPACE_LIMIT	0xffff
+
 static inline void outb(unsigned char value, int port)
 {
 	asm volatile("outb %b0, %w1" : : "a"(value), "Nd"(port));
diff --git a/commands/Kconfig b/commands/Kconfig
index cc014f3..33bd353 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -307,12 +307,12 @@ config CMD_MEMINFO
 	tristate
 	prompt "meminfo"
 
-config CMD_IOMEM
+config CMD_IOMEMPORT
 	tristate
-	prompt "iomem"
+	prompt "iomem/ioport"
 	help
-	  Show information about iomem usage. Pendant to 'cat /proc/iomem'
-	  under Linux.
+	  Show information about iomem/ioport usage. Pendant to
+	  'cat /proc/iomem' and 'cat /proc/ioports' under Linux.
 
 config CMD_MEMORY
 	bool
diff --git a/commands/Makefile b/commands/Makefile
index e463031..0da1173 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -76,7 +76,7 @@ obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
 obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
-obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
+obj-$(CONFIG_CMD_IOMEMPORT)	+= iomemport.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
 obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
 obj-$(CONFIG_CMD_GLOBAL)	+= global.o
diff --git a/commands/iomem.c b/commands/iomem.c
deleted file mode 100644
index e117c2a..0000000
--- a/commands/iomem.c
+++ /dev/null
@@ -1,52 +0,0 @@
-/*
- * iomem.c - barebox iomem command
- *
- * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-#include <common.h>
-#include <command.h>
-
-static void __print_resources(struct resource *res, int indent)
-{
-	struct resource *r;
-	int i;
-
-	for (i = 0; i < indent; i++)
-		printf("  ");
-
-	printf(PRINTF_CONVERSION_RESOURCE " - " PRINTF_CONVERSION_RESOURCE
-			" (size " PRINTF_CONVERSION_RESOURCE ") %s\n", res->start,
-			res->end, resource_size(res), res->name);
-
-	list_for_each_entry(r, &res->children, sibling)
-		__print_resources(r, indent + 1);
-}
-
-static void print_resources(struct resource *res)
-{
-	__print_resources(res, 0);
-}
-
-static int do_iomem(int argc, char *argv[])
-{
-	print_resources(&iomem_resource);
-
-	return 0;
-}
-
-BAREBOX_CMD_START(iomem)
-	.cmd		= do_iomem,
-	.usage		= "show iomem usage",
-BAREBOX_CMD_END
diff --git a/commands/iomemport.c b/commands/iomemport.c
new file mode 100644
index 0000000..06bbd92
--- /dev/null
+++ b/commands/iomemport.c
@@ -0,0 +1,64 @@
+/*
+ * iomem.c - barebox iomem command
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#include <common.h>
+#include <command.h>
+
+static void __print_resources(struct resource *res, int indent)
+{
+	struct resource *r;
+	int i;
+
+	for (i = 0; i < indent; i++)
+		printf("  ");
+
+	printf(PRINTF_CONVERSION_RESOURCE " - " PRINTF_CONVERSION_RESOURCE
+			" (size " PRINTF_CONVERSION_RESOURCE ") %s\n",
+			res->start, res->end, resource_size(res), res->name);
+
+	list_for_each_entry(r, &res->children, sibling)
+		__print_resources(r, indent + 1);
+}
+
+static void print_resources(struct resource *res)
+{
+	__print_resources(res, 0);
+}
+
+static int do_iomem(int argc, char *argv[])
+{
+	print_resources(&iomem_resource);
+
+	return 0;
+}
+
+static int do_ioport(int argc, char *argv[])
+{
+	print_resources(&ioport_resource);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(iomem)
+	.cmd		= do_iomem,
+	.usage		= "show iomem usage",
+BAREBOX_CMD_END
+
+BAREBOX_CMD_START(ioport)
+	.cmd		= do_ioport,
+	.usage		= "show ioport usage",
+BAREBOX_CMD_END
diff --git a/common/memory.c b/common/memory.c
index c82bbaa..7dbd7f4 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -148,7 +148,8 @@ struct resource *request_sdram_region(const char *name, resource_size_t start,
 	for_each_memory_bank(bank) {
 		struct resource *res;
 
-		res = request_region(bank->res, name, start, start + size - 1);
+		res = __request_region(bank->res, name, start,
+				       start + size - 1);
 		if (res)
 			return res;
 	}
diff --git a/common/resource.c b/common/resource.c
index 5795e79..f05e12f 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -20,6 +20,7 @@
 #include <errno.h>
 #include <init.h>
 #include <linux/ioport.h>
+#include <asm/io.h>
 
 static int init_resource(struct resource *res, const char *name)
 {
@@ -36,7 +37,7 @@ static int init_resource(struct resource *res, const char *name)
  * the parent resource and does not conflict with any of the child
  * resources.
  */
-struct resource *request_region(struct resource *parent,
+struct resource *__request_region(struct resource *parent,
 		const char *name, resource_size_t start,
 		resource_size_t end)
 {
@@ -95,7 +96,7 @@ ok:
 }
 
 /*
- * release a region previously requested with request_region
+ * release a region previously requested with request_*_region
  */
 int release_region(struct resource *res)
 {
@@ -109,7 +110,7 @@ int release_region(struct resource *res)
 	return 0;
 }
 
-/* The root resource for the whole io space */
+/* The root resource for the whole memory-mapped io space */
 struct resource iomem_resource = {
 	.start = 0,
 	.end = 0xffffffff,
@@ -118,10 +119,27 @@ struct resource iomem_resource = {
 };
 
 /*
- * request a region inside the io space
+ * request a region inside the io space (memory)
  */
-struct resource *request_iomem_region(const char *name,
+inline struct resource *request_iomem_region(const char *name,
 		resource_size_t start, resource_size_t end)
 {
-	return request_region(&iomem_resource, name, start, end);
+	return __request_region(&iomem_resource, name, start, end);
+}
+
+/* The root resource for the whole io-mapped io space */
+struct resource ioport_resource = {
+	.start = 0,
+	.end = IO_SPACE_LIMIT,
+	.name = "ioport",
+	.children = LIST_HEAD_INIT(ioport_resource.children),
+};
+
+/*
+ * request a region inside the io space (i/o port)
+ */
+inline struct resource *request_ioport_region(const char *name,
+		resource_size_t start, resource_size_t end)
+{
+	return __request_region(&ioport_resource, name, start, end);
 }
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 37560fd..2cf3ee6 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -241,13 +241,14 @@ int register_driver(struct driver_d *drv)
 }
 EXPORT_SYMBOL(register_driver);
 
-struct resource *dev_get_resource(struct device_d *dev, int num)
+struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
+				  int num)
 {
 	int i, n = 0;
 
 	for (i = 0; i < dev->num_resources; i++) {
 		struct resource *res = &dev->resource[i];
-		if (resource_type(res) == IORESOURCE_MEM) {
+		if (resource_type(res) == type) {
 			if (n == num)
 				return res;
 			n++;
@@ -261,7 +262,7 @@ void *dev_get_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
 
-	res = dev_get_resource(dev, num);
+	res = dev_get_resource(dev, IORESOURCE_MEM, num);
 	if (!res)
 		return NULL;
 
@@ -270,13 +271,14 @@ void *dev_get_mem_region(struct device_d *dev, int num)
 EXPORT_SYMBOL(dev_get_mem_region);
 
 struct resource *dev_get_resource_by_name(struct device_d *dev,
+					  unsigned long type,
 					  const char *name)
 {
 	int i;
 
 	for (i = 0; i < dev->num_resources; i++) {
 		struct resource *res = &dev->resource[i];
-		if (resource_type(res) != IORESOURCE_MEM)
+		if (resource_type(res) != type)
 			continue;
 		if (!res->name)
 			continue;
@@ -291,7 +293,7 @@ void *dev_get_mem_region_by_name(struct device_d *dev, const char *name)
 {
 	struct resource *res;
 
-	res = dev_get_resource_by_name(dev, name);
+	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
 	if (!res)
 		return NULL;
 
@@ -303,7 +305,7 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 {
 	struct resource *res;
 
-	res = dev_get_resource_by_name(dev, name);
+	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
 	if (!res)
 		return NULL;
 
@@ -319,7 +321,7 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
 
-	res = dev_get_resource(dev, num);
+	res = dev_get_resource(dev, IORESOURCE_MEM, num);
 	if (!res)
 		return NULL;
 
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index a2fc400..5c46282 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -310,7 +310,7 @@ static void __iomem *bgpio_map(struct device_d *dev, const char *name,
 
 	*err = 0;
 
-	r = dev_get_resource_by_name(dev, name);
+	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
 	if (!r)
 		return NULL;
 
@@ -342,7 +342,7 @@ static int bgpio_dev_probe(struct device_d *dev)
 	struct bgpio_chip *bgc;
 	struct bgpio_pdata *pdata = dev->platform_data;
 
-	r = dev_get_resource_by_name(dev, "dat");
+	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, "dat");
 	if (!r)
 		return -EINVAL;
 
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 8fc84c3..e6722e1 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -70,7 +70,7 @@ static int syscon_probe(struct device_d *dev)
 	if (!syscon)
 		return -ENOMEM;
 
-	res = dev_get_resource(dev, 0);
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (!res) {
 		free(syscon);
 		return -ENOENT;
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index 7ea23b7..0466a15 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -47,7 +47,7 @@ static int sram_probe(struct device_d *dev)
 	sram->cdev.name = asprintf("sram%d",
 			cdev_find_free_index("sram"));
 
-	res = dev_get_resource(dev, 0);
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
 
 	sram->cdev.size = (unsigned long)resource_size(res);
 	sram->cdev.ops = &memops;
diff --git a/include/driver.h b/include/driver.h
index 01b181d..7c7d38f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -203,11 +203,13 @@ static inline const char *dev_name(const struct device_d *dev)
 /*
  * get resource 'num' for a device
  */
-struct resource *dev_get_resource(struct device_d *dev, int num);
+struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
+				  int num);
 /*
  * get resource base 'name' for a device
  */
 struct resource *dev_get_resource_by_name(struct device_d *dev,
+					  unsigned long type,
 					  const char *name);
 /*
  * get register base 'name' for a device
@@ -219,6 +221,7 @@ void *dev_get_mem_region_by_name(struct device_d *dev, const char *name);
  */
 void __iomem *dev_request_mem_region_by_name(struct device_d *dev,
 					     const char *name);
+
 /*
  * get register base 'num' for a device
  */
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index ff0cba0..d1b2f55 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -137,14 +137,17 @@ static inline unsigned long resource_type(const struct resource *res)
 
 struct resource *request_iomem_region(const char *name,
 		resource_size_t start, resource_size_t end);
+struct resource *request_ioport_region(const char *name,
+		resource_size_t start, resource_size_t end);
 
-struct resource *request_region(struct resource *parent,
+struct resource *__request_region(struct resource *parent,
 		const char *name, resource_size_t end,
 		resource_size_t size);
 
 int release_region(struct resource *res);
 
 extern struct resource iomem_resource;
+extern struct resource ioport_resource;
 
 #endif /* __ASSEMBLY__ */
 #endif	/* _LINUX_IOPORT_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
