Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1ZpV-0005W5-T8
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 10:28:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 12:27:59 +0200
Message-Id: <1374575282-9592-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374575282-9592-1-git-send-email-s.hauer@pengutronix.de>
References: <1374575282-9592-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] UBI: Add ubidetach command
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubi.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/commands/ubi.c b/commands/ubi.c
index 7348394..854ea83 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -92,6 +92,32 @@ BAREBOX_CMD_START(ubiattach)
 	BAREBOX_CMD_HELP(cmd_ubiattach_help)
 BAREBOX_CMD_END
 
+static int do_ubidetach(int argc, char *argv[])
+{
+	int ubi_num, ret;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	ubi_num = simple_strtoul(argv[1], NULL, 0);
+	ret = ubi_detach_mtd_dev(ubi_num, 1);
+
+	if (ret)
+		printf("failed to detach: %s\n", strerror(-ret));
+
+	return ret;
+}
+
+static const __maybe_unused char cmd_ubidetach_help[] =
+"Usage: ubidetach <ubinum>\n"
+"Detach <ubinum> from ubi\n";
+
+BAREBOX_CMD_START(ubidetach)
+	.cmd		= do_ubidetach,
+	.usage		= "detach an ubi dev",
+	BAREBOX_CMD_HELP(cmd_ubidetach_help)
+BAREBOX_CMD_END
+
 static int do_ubirmvol(int argc, char *argv[])
 {
 	struct ubi_mkvol_req req;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
