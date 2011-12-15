Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8aZ-0001ZV-E1
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:27 +0100
Message-Id: <1323945034-19687-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] ARM: call start_linux directly with initrd start/size
 and oftree
To: barebox@lists.infradead.org

whoever calls this function is not necessarily aware of a struct
image_data, so remove the dependency from the function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/armlinux.h |    3 ++-
 arch/arm/lib/armlinux.c         |   20 ++++++++++----------
 arch/arm/lib/bootm.c            |    3 ++-
 arch/arm/lib/bootu.c            |    8 +++++++-
 arch/arm/lib/bootz.c            |    7 ++++++-
 5 files changed, 27 insertions(+), 14 deletions(-)

diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index ba3a424..9ca1e4b 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -29,6 +29,7 @@ static inline void armlinux_set_serial(u64 serial)
 
 struct image_data;
 
-void start_linux(void *adr, int swap, struct image_data *data);
+void start_linux(void *adr, int swap, unsigned long initrd_address,
+		unsigned long initrd_size, void *oftree);
 
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index bd9b72a..1d210d1 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -224,7 +224,8 @@ static void setup_end_tag (void)
 	params->hdr.size = 0;
 }
 
-static void setup_tags(struct image_data *data, int swap)
+static void setup_tags(unsigned long initrd_address,
+		unsigned long initrd_size, int swap)
 {
 	const char *commandline = getenv("bootargs");
 
@@ -232,8 +233,8 @@ static void setup_tags(struct image_data *data, int swap)
 	setup_memory_tags();
 	setup_commandline_tag(commandline, swap);
 
-	if (data && (data->initrd_size > 0))
-		setup_initrd_tag(data->initrd_address, data->initrd_size);
+	if (initrd_size)
+		setup_initrd_tag(initrd_address, initrd_size);
 
 	setup_revision_tag();
 	setup_serial_tag();
@@ -249,17 +250,16 @@ void armlinux_set_bootparams(void *params)
 	armlinux_bootparams = params;
 }
 
-void start_linux(void *adr, int swap, struct image_data *data)
+void start_linux(void *adr, int swap, unsigned long initrd_address,
+		unsigned long initrd_size, void *oftree)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
 	void *params = NULL;
-#ifdef CONFIG_OFTREE
-	params = of_get_fixed_tree();
-	if (params)
+
+	if (oftree) {
 		printf("booting Linux kernel with devicetree\n");
-#endif
-	if (!params) {
-		setup_tags(data, swap);
+	} else {
+		setup_tags(initrd_address, initrd_size, swap);
 		params = armlinux_bootparams;
 	}
 
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 031a269..1de22bf 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -31,7 +31,8 @@ static int do_bootm_linux(struct image_data *data)
 	/* we assume that the kernel is in place */
 	printf("\nStarting kernel %s...\n\n", data->initrd ? "with initrd " : "");
 
-	start_linux(theKernel, 0, data);
+	start_linux((void *)theKernel, 0, data->initrd_address, data->initrd_size,
+			data->oftree);
 
 	return -1;
 }
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index e97ded0..89d793a 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -3,12 +3,14 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <errno.h>
+#include <of.h>
 #include <asm/armlinux.h>
 
 static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 {
 	int fd;
 	void *kernel = NULL;
+	void *oftree = NULL;
 
 	if (argc != 2) {
 		barebox_cmd_usage(cmdtp);
@@ -22,7 +24,11 @@ static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 	if (!kernel)
 		kernel = (void *)simple_strtoul(argv[1], NULL, 0);
 
-	start_linux(kernel, 0, NULL);
+#ifdef CONFIG_OFTREE
+	oftree = of_get_fixed_tree();
+#endif
+
+	start_linux(kernel, 0, 0, 0, oftree);
 
 	return 1;
 }
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index 956ea82..40facf6 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <command.h>
 #include <fs.h>
+#include <of.h>
 #include <fcntl.h>
 #include <errno.h>
 #include <malloc.h>
@@ -25,6 +26,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 	int fd, ret, swap = 0;
 	struct zimage_header __header, *header;
 	void *zimage;
+	void *oftree = NULL;
 	u32 end;
 	int usemap = 0;
 	struct memory_bank *bank = list_first_entry(&memory_banks, struct memory_bank, list);
@@ -105,8 +107,11 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 	}
 
 	printf("loaded zImage from %s with size %d\n", argv[1], end);
+#ifdef CONFIG_OFTREE
+	oftree = of_get_fixed_tree();
+#endif
 
-	start_linux(zimage, swap, NULL);
+	start_linux(zimage, swap, 0, 0, oftree);
 
 	return 0;
 
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
