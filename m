Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZov-0003fl-Lx
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:19 +0200
Message-Id: <1469191472-14491-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/18] include: Move bulk of boot.h to bootm.h
To: Barebox List <barebox@lists.infradead.org>

The majority of the stuff currently in include/boot.h is about bootm
code implemented common/bootm.c. To be more consistent move it to a
new file include/bootm.h.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/archos_features.c |   1 -
 arch/arm/lib/bootm.c                       |   1 +
 commands/boot.c                            |   2 +-
 commands/bootm.c                           |   2 +-
 common/blspec.c                            |   2 +-
 common/bootm.c                             |   3 +-
 common/image-fit.c                         |   2 +-
 drivers/usb/gadget/f_fastboot.c            |   2 +-
 include/boot.h                             | 120 ---------------------------
 include/bootm.h                            | 125 +++++++++++++++++++++++++++++
 include/image-fit.h                        |   2 +-
 11 files changed, 134 insertions(+), 128 deletions(-)
 create mode 100644 include/bootm.h

diff --git a/arch/arm/boards/archosg9/archos_features.c b/arch/arm/boards/archosg9/archos_features.c
index b396734..62ce7b4 100644
--- a/arch/arm/boards/archosg9/archos_features.c
+++ b/arch/arm/boards/archosg9/archos_features.c
@@ -10,7 +10,6 @@
  * GNU General Public License for more details.
  */
 
-#include <boot.h>
 #include <asm/setup.h>
 #include "archos_features.h"
 #include "feature_list.h"
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 252946c..404a6ae 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -1,3 +1,4 @@
+#include <bootm.h>
 #include <boot.h>
 #include <common.h>
 #include <command.h>
diff --git a/commands/boot.c b/commands/boot.c
index 719ad95..baf2740 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -23,7 +23,7 @@
 #include <libgen.h>
 #include <malloc.h>
 #include <clock.h>
-#include <boot.h>
+#include <bootm.h>
 #include <glob.h>
 #include <init.h>
 #include <menu.h>
diff --git a/commands/bootm.c b/commands/bootm.c
index 6bedb00..61b9086 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -32,7 +32,7 @@
 #include <fcntl.h>
 #include <fs.h>
 #include <errno.h>
-#include <boot.h>
+#include <bootm.h>
 #include <of.h>
 #include <rtc.h>
 #include <init.h>
diff --git a/common/blspec.c b/common/blspec.c
index b964155..de65038 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -24,7 +24,7 @@
 #include <libfile.h>
 #include <libbb.h>
 #include <init.h>
-#include <boot.h>
+#include <bootm.h>
 #include <net.h>
 #include <fs.h>
 #include <of.h>
diff --git a/common/bootm.c b/common/bootm.c
index 27d20f2..78d04d5 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -12,7 +12,7 @@
  */
 
 #include <common.h>
-#include <boot.h>
+#include <bootm.h>
 #include <fs.h>
 #include <malloc.h>
 #include <memory.h>
@@ -20,6 +20,7 @@
 #include <image-fit.h>
 #include <globalvar.h>
 #include <init.h>
+#include <environment.h>
 #include <linux/stat.h>
 #include <magicvar.h>
 
diff --git a/common/image-fit.c b/common/image-fit.c
index 9b6c40f..6a01c61 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -20,7 +20,7 @@
 #define pr_fmt(fmt) "FIT: " fmt
 #include <common.h>
 #include <init.h>
-#include <boot.h>
+#include <bootm.h>
 #include <libfile.h>
 #include <fdt.h>
 #include <digest.h>
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 6db7daf..a6192b9 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -25,7 +25,7 @@
 #include <ioctl.h>
 #include <libbb.h>
 #include <bbu.h>
-#include <boot.h>
+#include <bootm.h>
 #include <dma.h>
 #include <fs.h>
 #include <libfile.h>
diff --git a/include/boot.h b/include/boot.h
index 8e7a9f1..da40ac2 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -1,115 +1,9 @@
 #ifndef __BOOT_H
 #define __BOOT_H
 
-#include <image.h>
-#include <filetype.h>
 #include <of.h>
-#include <linux/list.h>
 #include <environment.h>
 
-enum bootm_verify {
-	BOOTM_VERIFY_NONE,
-	BOOTM_VERIFY_HASH,
-	BOOTM_VERIFY_SIGNATURE,
-	BOOTM_VERIFY_AVAILABLE,
-};
-
-struct bootm_data {
-	const char *os_file;
-	const char *initrd_file;
-	const char *oftree_file;
-	int verbose;
-	enum bootm_verify verify;
-	bool force;
-	bool dryrun;
-	/*
-	 * appendroot - if true, try to add a suitable root= Kernel option to
-	 * mount the rootfs from the same device as the Kernel comes from.
-	 */
-	bool appendroot;
-	unsigned long initrd_address;
-	unsigned long os_address;
-	unsigned long os_entry;
-};
-
-int bootm_boot(struct bootm_data *data);
-
-struct image_data {
-	/* simplest case. barebox has already loaded the os here */
-	struct resource *os_res;
-
-	/* if os is an uImage this will be provided */
-	struct uimage_handle *os;
-
-	/* if os is a FIT image this will be provided */
-	struct fit_handle *os_fit;
-
-	char *os_part;
-
-	/* otherwise only the filename will be provided */
-	char *os_file;
-
-	/*
-	 * The address the user wants to load the os image to.
-	 * May be UIMAGE_INVALID_ADDRESS to indicate that the
-	 * user has not specified any address. In this case the
-	 * handler may choose a suitable address
-	 */
-	unsigned long os_address;
-
-	/* entry point to the os. relative to the start of the image */
-	unsigned long os_entry;
-
-	/* if initrd is already loaded this resource will be !NULL */
-	struct resource *initrd_res;
-
-	/* if initrd is an uImage this will be provided */
-	struct uimage_handle *initrd;
-	char *initrd_part;
-
-	/* otherwise only the filename will be provided */
-	char *initrd_file;
-
-	unsigned long initrd_address;
-
-	char *oftree_file;
-	char *oftree_part;
-
-	struct device_node *of_root_node;
-	struct fdt_header *oftree;
-	struct resource *oftree_res;
-
-	enum bootm_verify verify;
-	int verbose;
-	int force;
-	int dryrun;
-};
-
-struct image_handler {
-	const char *name;
-
-	struct list_head list;
-
-	int ih_os;
-
-	enum filetype filetype;
-	int (*bootm)(struct image_data *data);
-};
-
-int register_image_handler(struct image_handler *handle);
-
-#ifdef CONFIG_BOOTM_VERBOSE
-static inline int bootm_verbose(struct image_data *data)
-{
-	return data->verbose;
-}
-#else
-static inline int bootm_verbose(struct image_data *data)
-{
-	return 0;
-}
-#endif
-
 #ifdef CONFIG_FLEXIBLE_BOOTARGS
 const char *linux_bootargs_get(void);
 int linux_bootargs_overwrite(const char *bootargs);
@@ -125,18 +19,4 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 }
 #endif
 
-void bootm_data_init_defaults(struct bootm_data *data);
-
-int bootm_load_os(struct image_data *data, unsigned long load_address);
-
-bool bootm_has_initrd(struct image_data *data);
-int bootm_load_initrd(struct image_data *data, unsigned long load_address);
-
-int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
-int bootm_get_os_size(struct image_data *data);
-
-enum bootm_verify bootm_get_verify_mode(void);
-
-#define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
-
 #endif /* __BOOT_H */
diff --git a/include/bootm.h b/include/bootm.h
new file mode 100644
index 0000000..6e9777a
--- /dev/null
+++ b/include/bootm.h
@@ -0,0 +1,125 @@
+#ifndef __BOOTM_H
+#define __BOOTM_H
+
+#include <image.h>
+#include <filetype.h>
+#include <linux/list.h>
+
+enum bootm_verify {
+	BOOTM_VERIFY_NONE,
+	BOOTM_VERIFY_HASH,
+	BOOTM_VERIFY_SIGNATURE,
+	BOOTM_VERIFY_AVAILABLE,
+};
+
+struct bootm_data {
+	const char *os_file;
+	const char *initrd_file;
+	const char *oftree_file;
+	int verbose;
+	enum bootm_verify verify;
+	bool force;
+	bool dryrun;
+	/*
+	 * appendroot - if true, try to add a suitable root= Kernel option to
+	 * mount the rootfs from the same device as the Kernel comes from.
+	 */
+	bool appendroot;
+	unsigned long initrd_address;
+	unsigned long os_address;
+	unsigned long os_entry;
+};
+
+int bootm_boot(struct bootm_data *data);
+
+struct image_data {
+	/* simplest case. barebox has already loaded the os here */
+	struct resource *os_res;
+
+	/* if os is an uImage this will be provided */
+	struct uimage_handle *os;
+
+	/* if os is a FIT image this will be provided */
+	struct fit_handle *os_fit;
+
+	char *os_part;
+
+	/* otherwise only the filename will be provided */
+	char *os_file;
+
+	/*
+	 * The address the user wants to load the os image to.
+	 * May be UIMAGE_INVALID_ADDRESS to indicate that the
+	 * user has not specified any address. In this case the
+	 * handler may choose a suitable address
+	 */
+	unsigned long os_address;
+
+	/* entry point to the os. relative to the start of the image */
+	unsigned long os_entry;
+
+	/* if initrd is already loaded this resource will be !NULL */
+	struct resource *initrd_res;
+
+	/* if initrd is an uImage this will be provided */
+	struct uimage_handle *initrd;
+	char *initrd_part;
+
+	/* otherwise only the filename will be provided */
+	char *initrd_file;
+
+	unsigned long initrd_address;
+
+	char *oftree_file;
+	char *oftree_part;
+
+	struct device_node *of_root_node;
+	struct fdt_header *oftree;
+	struct resource *oftree_res;
+
+	enum bootm_verify verify;
+	int verbose;
+	int force;
+	int dryrun;
+};
+
+struct image_handler {
+	const char *name;
+
+	struct list_head list;
+
+	int ih_os;
+
+	enum filetype filetype;
+	int (*bootm)(struct image_data *data);
+};
+
+int register_image_handler(struct image_handler *handle);
+
+#ifdef CONFIG_BOOTM_VERBOSE
+static inline int bootm_verbose(struct image_data *data)
+{
+	return data->verbose;
+}
+#else
+static inline int bootm_verbose(struct image_data *data)
+{
+	return 0;
+}
+#endif
+
+void bootm_data_init_defaults(struct bootm_data *data);
+
+int bootm_load_os(struct image_data *data, unsigned long load_address);
+
+bool bootm_has_initrd(struct image_data *data);
+int bootm_load_initrd(struct image_data *data, unsigned long load_address);
+
+int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
+int bootm_get_os_size(struct image_data *data);
+
+enum bootm_verify bootm_get_verify_mode(void);
+
+#define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
+
+#endif /* __BOOTM_H */
diff --git a/include/image-fit.h b/include/image-fit.h
index c9d6911..c49f958 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -19,7 +19,7 @@
 #define __IMAGE_FIT_H__
 
 #include <linux/types.h>
-#include <boot.h>
+#include <bootm.h>
 
 struct fit_handle {
 	void *fit;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
