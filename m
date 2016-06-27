Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHUy5-00005w-6i
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 11:44:46 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D7365A0050C
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 13:45:30 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 27 Jun 2016 13:42:19 +0200
Message-Id: <1467027740-24201-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1467027740-24201-1-git-send-email-t.remmet@phytec.de>
References: <1467027740-24201-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 3/4] commands: ubi: Add ubiupdatevol command
To: barebox@lists.infradead.org

Add ubiupdatevol command. This is to update static
and dynamic volumes.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
Changes in v2:
	- instead of using read_file, used a smaller
		buffer and read/write in a loop

 commands/ubi.c | 81 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/commands/ubi.c b/commands/ubi.c
index dc2b4b5..b8b3f38 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -7,10 +7,91 @@
 #include <getopt.h>
 #include <linux/mtd/mtd.h>
 #include <linux/kernel.h>
+#include <linux/stat.h>
 #include <linux/mtd/mtd-abi.h>
 #include <mtd/ubi-user.h>
 #include <mtd/ubi-media.h>
 
+static int do_ubiupdatevol(int argc, char *argv[])
+{
+	int fd_img, fd_vol, ret = 0;
+	uint64_t size = 0;
+	struct stat st;
+	unsigned int count;
+	void *buf;
+
+	if (argc - optind < 2)
+		return COMMAND_ERROR_USAGE;
+
+	if (stat(argv[optind+1], &st)) {
+		perror("stat image");
+		return 1;
+	}
+
+	size = st.st_size;
+
+	fd_img  = open(argv[optind+1], O_RDONLY);
+	if (fd_img < 0) {
+		perror("open image");
+		return 1;
+	}
+
+	fd_vol = open(argv[optind], O_WRONLY);
+	if (fd_vol < 0) {
+		perror("open volume");
+		ret = 1;
+		goto error_img;
+	}
+
+	ret = ioctl(fd_vol, UBI_IOCVOLUP, &size);
+	if (ret) {
+		printf("failed to start update: %s\n", strerror(-ret));
+		goto error;
+	}
+
+	buf = xmalloc(RW_BUF_SIZE);
+
+	while (size) {
+
+		count = read(fd_img, buf, RW_BUF_SIZE);
+		if (count < 0) {
+			perror("read");
+			ret = 1;
+			break;
+		}
+
+		ret = write(fd_vol, buf, count);
+		if (ret < 0) {
+			perror("write");
+			break;
+		}
+
+		size -= count;
+	}
+
+	free(buf);
+
+error:
+	close(fd_vol);
+error_img:
+	close(fd_img);
+	return ret;
+}
+
+
+BAREBOX_CMD_HELP_START(ubiupdatevol)
+BAREBOX_CMD_HELP_TEXT("Update UBI volume with an image.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ubiupdatevol)
+	.cmd		= do_ubiupdatevol,
+	BAREBOX_CMD_DESC("Update an UBI volume")
+	BAREBOX_CMD_OPTS("UBIVOL IMAGE")
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
+	BAREBOX_CMD_HELP(cmd_ubiupdatevol_help)
+BAREBOX_CMD_END
+
+
 static int do_ubimkvol(int argc, char *argv[])
 {
 	int opt;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
