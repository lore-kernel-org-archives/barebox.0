Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8aa-0001Zy-Jf
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:31 +0100
Message-Id: <1323945034-19687-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] remove now obsolete iminfo command
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    6 ----
 commands/Makefile |    1 -
 commands/iminfo.c |   71 -----------------------------------------------------
 3 files changed, 0 insertions(+), 78 deletions(-)
 delete mode 100644 commands/iminfo.c

diff --git a/commands/Kconfig b/commands/Kconfig
index fc37971..6d59591 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -332,12 +332,6 @@ config CMD_BOOTM_OFTREE_UIMAGE
 	  Support using oftree uImages. Without this only raw oftree
 	  blobs can be used.
 
-config CMD_IMINFO
-	bool
-	prompt "iminfo"
-	help
-	  Show information about uImages
-
 config CMD_UIMAGE
 	tristate
 	prompt "uimage"
diff --git a/commands/Makefile b/commands/Makefile
index 01cd1a2..24753be 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,5 +1,4 @@
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
-obj-$(CONFIG_CMD_IMINFO)	+= iminfo.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
 obj-$(CONFIG_CMD_LOADB)		+= loadb.o xyzModem.o
diff --git a/commands/iminfo.c b/commands/iminfo.c
deleted file mode 100644
index 2fde9bc..0000000
--- a/commands/iminfo.c
+++ /dev/null
@@ -1,71 +0,0 @@
-#include <common.h>
-#include <command.h>
-#include <image.h>
-#include <fs.h>
-#include <malloc.h>
-#include <fcntl.h>
-#include <errno.h>
-
-static int image_info(image_header_t *hdr)
-{
-	u32 len, checksum;
-
-	if (image_get_magic(hdr) != IH_MAGIC) {
-		puts ("   Bad Magic Number\n");
-		return 1;
-	}
-
-	len = image_get_header_size();
-
-	checksum = image_get_hcrc(hdr);
-	hdr->ih_hcrc = 0;
-
-	if (crc32 (0, hdr, len) != checksum) {
-		puts ("   Bad Header Checksum\n");
-		return 1;
-	}
-
-	image_print_contents(hdr, NULL);
-
-	return 0;
-}
-
-static int do_iminfo(struct command *cmdtp, int argc, char *argv[])
-{
-	int rcode = 1;
-	int fd;
-	int ret;
-	image_header_t hdr;
-
-	if (argc != 2)
-		return COMMAND_ERROR_USAGE;
-
-	fd = open(argv[1], O_RDONLY);
-	if (fd < 0) {
-		perror("open");
-		return 1;
-	}
-
-	ret = read(fd, &hdr, sizeof(image_header_t));
-	if (ret != sizeof(image_header_t))
-		goto err_out;
-
-	printf("Image at %s:\n", argv[1]);
-	image_info(&hdr);
-
-err_out:
-	close(fd);
-
-	return rcode;
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
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
