Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6ko8-00038g-0Z
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:31:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:31:04 +0200
Message-Id: <1301927465-23717-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301927465-23717-1-git-send-email-s.hauer@pengutronix.de>
References: <1301927465-23717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: move bootz code to its own file
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/Makefile   |    1 +
 arch/arm/lib/armlinux.c |   95 --------------------------------------------
 arch/arm/lib/bootz.c    |  100 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 101 insertions(+), 95 deletions(-)
 create mode 100644 arch/arm/lib/bootz.c

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index bb1c202..8165aea 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
+obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
 obj-y	+= arm.o
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index a37f710..bb4bcd3 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -232,101 +232,6 @@ void start_linux(void *adr, int swap, struct image_data *data)
 	kernel(0, armlinux_architecture, armlinux_bootparams);
 }
 
-#ifdef CONFIG_CMD_BOOTZ
-struct zimage_header {
-	u32	unused[9];
-	u32	magic;
-	u32	start;
-	u32	end;
-};
-
-#define ZIMAGE_MAGIC 0x016F2818
-
-static int do_bootz(struct command *cmdtp, int argc, char *argv[])
-{
-	void (*theKernel)(int zero, int arch, void *params);
-	int fd, ret, swap = 0;
-	struct zimage_header header;
-	void *zimage;
-	u32 end;
-
-	if (argc != 2) {
-		barebox_cmd_usage(cmdtp);
-		return 1;
-	}
-
-	fd = open(argv[1], O_RDONLY);
-	if (fd < 0) {
-		perror("open");
-		return 1;
-	}
-
-	ret = read(fd, &header, sizeof(header));
-	if (ret < sizeof(header)) {
-		printf("could not read %s\n", argv[1]);
-		goto err_out;
-	}
-
-	switch (header.magic) {
-#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
-	case swab32(ZIMAGE_MAGIC):
-		swap = 1;
-		/* fall through */
-#endif
-	case ZIMAGE_MAGIC:
-		break;
-	default:
-		printf("invalid magic 0x%08x\n", header.magic);
-		goto err_out;
-	}
-
-	end = header.end;
-
-	if (swap)
-		end = swab32(end);
-
-	zimage = xmalloc(end);
-	memcpy(zimage, &header, sizeof(header));
-
-	ret = read(fd, zimage + sizeof(header), end - sizeof(header));
-	if (ret < end - sizeof(header)) {
-		printf("could not read %s\n", argv[1]);
-		goto err_out1;
-	}
-
-	if (swap) {
-		void *ptr;
-		for (ptr = zimage; ptr < zimage + end; ptr += 4)
-			*(u32 *)ptr = swab32(*(u32 *)ptr);
-	}
-
-	theKernel = zimage;
-
-	printf("loaded zImage from %s with size %d\n", argv[1], end);
-
-	start_linux(theKernel, swap, NULL);
-
-	return 0;
-
-err_out1:
-	free(zimage);
-err_out:
-	close(fd);
-
-	return 1;
-}
-
-static const __maybe_unused char cmd_bootz_help[] =
-"Usage: bootz [FILE]\n"
-"Boot a Linux zImage\n";
-
-BAREBOX_CMD_START(bootz)
-	.cmd            = do_bootz,
-	.usage          = "bootz - start a zImage",
-	BAREBOX_CMD_HELP(cmd_bootz_help)
-BAREBOX_CMD_END
-#endif /* CONFIG_CMD_BOOTZ */
-
 #ifdef CONFIG_CMD_BOOTU
 static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 {
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
new file mode 100644
index 0000000..cd8f495
--- /dev/null
+++ b/arch/arm/lib/bootz.c
@@ -0,0 +1,100 @@
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <malloc.h>
+#include <asm/byteorder.h>
+#include <asm/armlinux.h>
+#include <asm/system.h>
+
+struct zimage_header {
+	u32	unused[9];
+	u32	magic;
+	u32	start;
+	u32	end;
+};
+
+#define ZIMAGE_MAGIC 0x016F2818
+
+static int do_bootz(struct command *cmdtp, int argc, char *argv[])
+{
+	int fd, ret, swap = 0;
+	struct zimage_header header;
+	void *zimage;
+	u32 end;
+
+	if (argc != 2) {
+		barebox_cmd_usage(cmdtp);
+		return 1;
+	}
+
+	fd = open(argv[1], O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = read(fd, &header, sizeof(header));
+	if (ret < sizeof(header)) {
+		printf("could not read %s\n", argv[1]);
+		goto err_out;
+	}
+
+	switch (header.magic) {
+#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
+	case swab32(ZIMAGE_MAGIC):
+		swap = 1;
+		/* fall through */
+#endif
+	case ZIMAGE_MAGIC:
+		break;
+	default:
+		printf("invalid magic 0x%08x\n", header.magic);
+		goto err_out;
+	}
+
+	end = header.end;
+
+	if (swap)
+		end = swab32(end);
+
+	zimage = xmalloc(end);
+	memcpy(zimage, &header, sizeof(header));
+
+	ret = read(fd, zimage + sizeof(header), end - sizeof(header));
+	if (ret < end - sizeof(header)) {
+		printf("could not read %s\n", argv[1]);
+		goto err_out1;
+	}
+
+	if (swap) {
+		void *ptr;
+		for (ptr = zimage; ptr < zimage + end; ptr += 4)
+			*(u32 *)ptr = swab32(*(u32 *)ptr);
+	}
+
+	printf("loaded zImage from %s with size %d\n", argv[1], end);
+
+	start_linux(zimage, swap, NULL);
+
+	return 0;
+
+err_out1:
+	free(zimage);
+err_out:
+	close(fd);
+
+	return 1;
+}
+
+static const __maybe_unused char cmd_bootz_help[] =
+"Usage: bootz [FILE]\n"
+"Boot a Linux zImage\n";
+
+BAREBOX_CMD_START(bootz)
+	.cmd            = do_bootz,
+	.usage          = "bootz - start a zImage",
+	BAREBOX_CMD_HELP(cmd_bootz_help)
+BAREBOX_CMD_END
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
