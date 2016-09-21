Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-05.arcor-online.net ([151.189.21.45])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmcXo-0000do-HO
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 08:06:20 +0000
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Date: Wed, 21 Sep 2016 10:04:43 +0200
Message-Id: <20160921080443.21522-3-iw3gtf@arcor.de>
In-Reply-To: <20160921080443.21522-1-iw3gtf@arcor.de>
References: <20160921080443.21522-1-iw3gtf@arcor.de>
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
Subject: [PATCH 2/2] commands: ubi: added the new command 'ubirename' to
 rename ubi volumes.
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <giorgio.dal.molin@mobotix.com>, Giorgio Dal Molin <iw3gtf@arcor.de>

From: Giorgio Dal Molin <giorgio.dal.molin@mobotix.com>

The syntax was taken from the corresponding command of the 'mts-utils'
userland package:

# ubirename UBIDEV OLD_NAME NEW_NAME [OLD_NAME NEW_NAME ...]

Signed-off-by: Giorgio Dal Molin <iw3gtf@arcor.de>
---
 commands/ubi.c | 87 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/commands/ubi.c b/commands/ubi.c
index 26b521f..3479340 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -6,6 +6,8 @@
 #include <errno.h>
 #include <getopt.h>
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/ubi.h>
+#include <libgen.h>
 #include <linux/kernel.h>
 #include <linux/stat.h>
 #include <linux/mtd/mtd-abi.h>
@@ -306,3 +308,88 @@ BAREBOX_CMD_START(ubirmvol)
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
 BAREBOX_CMD_END
+
+
+static int get_vol_id(const char *vol_name)
+{
+	struct ubi_volume_desc *desc;
+	struct cdev *vol_cdev;
+	struct ubi_volume_info vi;
+
+	vol_cdev = cdev_by_name(vol_name);
+	if(!vol_cdev) {
+		perror("cdev_by_name");
+		return -1;
+	}
+	desc = ubi_open_volume_cdev(vol_cdev, UBI_READONLY);
+	if(IS_ERR(desc)) {
+		perror("ubi_open_volume_cdev");
+		return -1;
+	}
+	ubi_get_volume_info(desc, &vi);
+	ubi_close_volume(desc);
+
+	return vi.vol_id;
+};
+
+static int do_ubirename(int argc, char *argv[])
+{
+	struct ubi_rnvol_req req;
+	struct cdev *ubi_cd;
+	int i, j, fd, ret;
+
+	if ((argc < 4) || (argc % 2))
+		return COMMAND_ERROR_USAGE;
+
+	req.count = (argc / 2) - 1;
+	if (req.count > UBI_MAX_RNVOL) {
+		printf("too many volume renames. (max: %u)\n", UBI_MAX_RNVOL);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	ubi_cd = cdev_by_name(basename(argv[1]));
+	if(!ubi_cd || !ubi_cd->name || (strlen(ubi_cd->name)>127)) {
+		printf("arg 1 (%s) is not an ubi device.\n", argv[1]);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	for(i=2, j=0; i<argc; ++j, i+=2) {
+		char vol_name[128 + UBI_MAX_VOLUME_NAME];
+
+		snprintf(vol_name, sizeof(vol_name), "%s.%s", ubi_cd->name, argv[i]);
+		req.ents[j].vol_id = get_vol_id(vol_name);
+		if(req.ents[j].vol_id < 0) {
+			printf("'%s' is not a volume name.\n", vol_name);
+			return COMMAND_ERROR_USAGE;
+		}
+		strncpy(req.ents[j].name, argv[i+1], UBI_MAX_VOLUME_NAME);
+		req.ents[j].name_len = strlen(req.ents[j].name);
+	}
+
+	fd = open(argv[1], O_WRONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = ioctl(fd, UBI_IOCRNVOL, &req);
+	if (ret)
+		printf("failed to rename: %s\n", strerror(-ret));
+
+	close(fd);
+
+	return ret ? 1 : 0;
+
+}
+
+BAREBOX_CMD_HELP_START(ubirename)
+BAREBOX_CMD_HELP_TEXT("Rename UBI volume(s) from UBIDEV")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ubirename)
+	.cmd		= do_ubirename,
+	BAREBOX_CMD_DESC("rename UBI volume(s)")
+	BAREBOX_CMD_OPTS("UBIDEV OLD_NAME NEW_NAME [OLD_NAME NEW_NAME ...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
+	BAREBOX_CMD_HELP(cmd_ubirename_help)
+BAREBOX_CMD_END
-- 
2.10.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
