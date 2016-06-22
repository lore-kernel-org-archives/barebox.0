Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFe5Z-0004y8-Hw
 for barebox@lists.infradead.org; Wed, 22 Jun 2016 09:04:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 33524A002FD
 for <barebox@lists.infradead.org>; Wed, 22 Jun 2016 11:05:37 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 22 Jun 2016 11:02:40 +0200
Message-Id: <1466586161-14532-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1466586161-14532-1-git-send-email-t.remmet@phytec.de>
References: <1466586161-14532-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 3/4] commands: ubi: Add ubiupdatevol command
To: barebox@lists.infradead.org

Add ubiupdatevol command. This is to update static
and dynamic volumes.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 commands/ubi.c | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/commands/ubi.c b/commands/ubi.c
index f4ff5e7..e727776 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -5,12 +5,64 @@
 #include <ioctl.h>
 #include <errno.h>
 #include <getopt.h>
+#include <libfile.h>
 #include <linux/mtd/mtd.h>
 #include <linux/kernel.h>
+#include <linux/stat.h>
 #include <linux/mtd/mtd-abi.h>
 #include <mtd/ubi-user.h>
 #include <mtd/ubi-media.h>
 
+static int do_ubiupdatevol(int argc, char *argv[])
+{
+	int fd_vol, ret;
+	uint64_t size = 0;
+	void *buf;
+
+	if (argc - optind < 2)
+		return COMMAND_ERROR_USAGE;
+
+	buf = read_file(argv[optind+1], (size_t *) &size);
+	if (!buf) {
+		perror("read");
+		return 1;
+	}
+
+	fd_vol = open(argv[optind], O_WRONLY);
+	if (fd_vol < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = ioctl(fd_vol, UBI_IOCVOLUP, &size);
+	if (ret) {
+		printf("failed to start update: %s\n", strerror(-ret));
+		goto error;
+	}
+
+	ret = write(fd_vol, buf, size);
+	if (ret < 0)
+		perror("write");
+
+error:
+	close(fd_vol);
+	return ret ? 1 : 0;
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
