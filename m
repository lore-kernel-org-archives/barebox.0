Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-15.arcor-online.net ([151.189.21.55])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boTX6-0006zt-Jn
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 10:53:14 +0000
Received: from mail-in-17-z2.arcor-online.net (mail-in-17-z2.arcor-online.net
 [151.189.8.34])
 by mx.arcor.de (Postfix) with ESMTP id 3sjLQm1mwxzC168
 for <barebox@lists.infradead.org>; Mon, 26 Sep 2016 12:52:48 +0200 (CEST)
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Date: Mon, 26 Sep 2016 12:52:33 +0200
Message-Id: <20160926105233.26387-3-iw3gtf@arcor.de>
In-Reply-To: <20160926105233.26387-1-iw3gtf@arcor.de>
References: <20160926105233.26387-1-iw3gtf@arcor.de>
In-Reply-To: <20160926061912.elzmjbs4mdv5ztrb@pengutronix.de>
References: <20160926061912.elzmjbs4mdv5ztrb@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: ubi: commands: added the new command 'ubirename'.
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <iw3gtf@arcor.de>

Signed-off-by: Giorgio Dal Molin <iw3gtf@arcor.de>
---
 commands/ubi.c | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/commands/ubi.c b/commands/ubi.c
index 7c55195..34247d6 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -328,3 +328,75 @@ BAREBOX_CMD_START(ubirmvol)
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
 BAREBOX_CMD_END
+
+static int get_vol_id(u32 ubi_num, const char *name)
+{
+	struct ubi_volume_desc *desc;
+	struct ubi_volume_info vi;
+
+	desc = ubi_open_volume_nm(ubi_num, name, UBI_READONLY);
+	if(IS_ERR(desc))
+		return PTR_ERR(desc);
+
+	ubi_get_volume_info(desc, &vi);
+	ubi_close_volume(desc);
+
+	return vi.vol_id;
+};
+
+static int do_ubirename(int argc, char *argv[])
+{
+	struct ubi_rnvol_req req;
+	u32 ubi_num;
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
+	fd = open(argv[1], O_WRONLY);
+	if (fd < 0) {
+		perror("unable to open the UBI device");
+		return 1;
+	}
+
+	ret = ioctl(fd, UBI_IOCGETUBINUM, &ubi_num);
+	if (ret) {
+		perror("failed to get the ubi num");
+		return COMMAND_ERROR_USAGE;
+	}
+	close(fd);
+
+	for(i=2, j=0; i < argc; ++j, i += 2) {
+		req.ents[j].vol_id = get_vol_id(ubi_num, argv[i]);
+		if(req.ents[j].vol_id < 0) {
+			printf("Volume '%s' does not exist on %s\n", argv[i], argv[1]);
+			return COMMAND_ERROR_USAGE;
+		}
+		strncpy(req.ents[j].name, argv[i+1], UBI_MAX_VOLUME_NAME);
+		req.ents[j].name_len = strlen(req.ents[j].name);
+	}
+
+	ret = ubi_api_rename_volumes(ubi_num, &req);
+	if (ret)
+		perror("failed to rename.");
+
+	return ret ? 1 : 0;
+};
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
