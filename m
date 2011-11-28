Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAc-0000Zn-0R
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:08 +0100
Message-Id: <1322467340-10596-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] factor out iminfo command
To: barebox@lists.infradead.org

The rests of U-Boots iminfo command are sitting in commands/bootm.c and
are in a nonusable state. Factor it out to its own file and make it work
again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    6 ++++
 commands/Makefile |    1 +
 commands/bootm.c  |   79 -----------------------------------------------------
 commands/iminfo.c |   71 +++++++++++++++++++++++++++++++++++++++++++++++
 common/image.c    |    2 +-
 include/image.h   |    3 --
 6 files changed, 79 insertions(+), 83 deletions(-)
 create mode 100644 commands/iminfo.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 18ab840..6c526f2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -309,6 +309,12 @@ config CMD_BOOTM_SHOW_TYPE
 	depends on CMD_BOOTM
 	prompt "show image information"
 
+config CMD_IMINFO
+	bool
+	prompt "iminfo"
+	help
+	  Show information about uImages
+
 config CMD_BOOTZ
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 5c51916..02d1451 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
+obj-$(CONFIG_CMD_IMINFO)	+= iminfo.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
 obj-$(CONFIG_CMD_LOADB)		+= loadb.o xyzModem.o
 obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
diff --git a/commands/bootm.c b/commands/bootm.c
index 2a4fde8..823d387 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -318,85 +318,6 @@ BAREBOX_CMD_START(bootm)
 	BAREBOX_CMD_HELP(cmd_bootm_help)
 BAREBOX_CMD_END
 
-/**
- * @page bootm_command
-
-\todo What does bootm do, what kind of image does it boot?
-
- */
-
-#ifdef CONFIG_CMD_IMI
-static int do_iminfo(struct command *cmdtp, int argc, char *argv[])
-{
-	int	arg;
-	ulong	addr;
-	int     rcode=0;
-
-	if (argc < 2) {
-		return image_info (load_addr);
-	}
-
-	for (arg=1; arg <argc; ++arg) {
-		addr = simple_strtoul(argv[arg], NULL, 16);
-		if (image_info (addr) != 0) rcode = 1;
-	}
-	return rcode;
-}
-
-static int image_info (ulong addr)
-{
-	ulong	data, len, checksum;
-	image_header_t *hdr = &header;
-
-	printf ("\n## Checking Image at %08lx ...\n", addr);
-
-	/* Copy header so we can blank CRC field for re-calculation */
-	memmove (&header, (char *)addr, image_get_header_size());
-
-	if (image_get_magic(hdr) != IH_MAGIC) {
-		puts ("   Bad Magic Number\n");
-		return 1;
-	}
-
-	data = (ulong)&header;
-	len  = image_get_header_size();
-
-	checksum = image_get_hcrc(hdr);
-	hdr->ih_hcrc = 0;
-
-	if (crc32 (0, (uchar *)data, len) != checksum) {
-		puts ("   Bad Header Checksum\n");
-		return 1;
-	}
-
-	/* for multi-file images we need the data part, too */
-	print_image_hdr ((image_header_t *)addr);
-
-	data = addr + image_get_header_size();
-	len  = image_get_size(hdr);
-
-	puts ("   Verifying Checksum ... ");
-	if (crc32 (0, (uchar *)data, len) != image_get_dcrc(hdr)) {
-		puts ("   Bad Data CRC\n");
-		return 1;
-	}
-	puts ("OK\n");
-	return 0;
-}
-
-BAREBOX_CMD_HELP_START(iminfo)
-BAREBOX_CMD_HELP_USAGE("iminfo\n")
-BAREBOX_CMD_HELP_SHORT("Print header information for an application image.\n")
-BAREBOX_CMD_HELP_END
-
-BAREBOX_CMD_START(iminfo)
-	.cmd		= do_iminfo,
-	.usage		= "print header information for an application image",
-	BAREBOX_CMD_HELP(cmd_iminfo_help)
-BAREBOX_CMD_END
-
-#endif	/* CONFIG_CMD_IMI */
-
 #ifdef CONFIG_BZLIB
 void bz_internal_error(int errcode)
 {
diff --git a/commands/iminfo.c b/commands/iminfo.c
new file mode 100644
index 0000000..2fde9bc
--- /dev/null
+++ b/commands/iminfo.c
@@ -0,0 +1,71 @@
+#include <common.h>
+#include <command.h>
+#include <image.h>
+#include <fs.h>
+#include <malloc.h>
+#include <fcntl.h>
+#include <errno.h>
+
+static int image_info(image_header_t *hdr)
+{
+	u32 len, checksum;
+
+	if (image_get_magic(hdr) != IH_MAGIC) {
+		puts ("   Bad Magic Number\n");
+		return 1;
+	}
+
+	len = image_get_header_size();
+
+	checksum = image_get_hcrc(hdr);
+	hdr->ih_hcrc = 0;
+
+	if (crc32 (0, hdr, len) != checksum) {
+		puts ("   Bad Header Checksum\n");
+		return 1;
+	}
+
+	image_print_contents(hdr, NULL);
+
+	return 0;
+}
+
+static int do_iminfo(struct command *cmdtp, int argc, char *argv[])
+{
+	int rcode = 1;
+	int fd;
+	int ret;
+	image_header_t hdr;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	fd = open(argv[1], O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = read(fd, &hdr, sizeof(image_header_t));
+	if (ret != sizeof(image_header_t))
+		goto err_out;
+
+	printf("Image at %s:\n", argv[1]);
+	image_info(&hdr);
+
+err_out:
+	close(fd);
+
+	return rcode;
+}
+
+BAREBOX_CMD_HELP_START(iminfo)
+BAREBOX_CMD_HELP_USAGE("iminfo\n")
+BAREBOX_CMD_HELP_SHORT("Print header information for an application image.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(iminfo)
+	.cmd		= do_iminfo,
+	.usage		= "print header information for an application image",
+	BAREBOX_CMD_HELP(cmd_iminfo_help)
+BAREBOX_CMD_END
diff --git a/common/image.c b/common/image.c
index 4a6402d..939fe4b 100644
--- a/common/image.c
+++ b/common/image.c
@@ -290,7 +290,7 @@ void image_print_contents(const image_header_t *hdr, void *data)
 	printf ("%sEntry Point:  %08x\n", p, image_get_ep(hdr));
 
 	type = image_get_type(hdr);
-	if (type == IH_TYPE_MULTI || type == IH_TYPE_SCRIPT) {
+	if (data && (type == IH_TYPE_MULTI || type == IH_TYPE_SCRIPT)) {
 		int i;
 		ulong img_data, len;
 		ulong count = image_multi_count(data);
diff --git a/include/image.h b/include/image.h
index 691bf2d..f3a9949 100644
--- a/include/image.h
+++ b/include/image.h
@@ -335,9 +335,6 @@ void image_print_size(uint32_t size);
 
 void image_print_contents(const image_header_t *hdr, void *data);
 
-/* commamds/bootm.c */
-void	print_image_hdr (image_header_t *hdr);
-
 /*
  * Load an image into memory. Returns a pointer to the loaded
  * image.
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
