Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra1.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1djpUj-000088-K0
 for barebox@lists.infradead.org; Mon, 21 Aug 2017 16:24:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id F026E28071C
 for <barebox@lists.infradead.org>; Mon, 21 Aug 2017 18:23:40 +0200 (CEST)
Received: from zimbra1.kalray.eu ([127.0.0.1])
 by localhost (zimbra1.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id xSeJrImBFY9C for <barebox@lists.infradead.org>;
 Mon, 21 Aug 2017 18:23:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id 7243A28187E
 for <barebox@lists.infradead.org>; Mon, 21 Aug 2017 18:23:40 +0200 (CEST)
Received: from zimbra1.kalray.eu ([127.0.0.1])
 by localhost (zimbra1.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 26PQmdfBfpsb for <barebox@lists.infradead.org>;
 Mon, 21 Aug 2017 18:23:40 +0200 (CEST)
Received: from zimbra1.kalray.eu (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id 5EF97281810
 for <barebox@lists.infradead.org>; Mon, 21 Aug 2017 18:23:40 +0200 (CEST)
Date: Mon, 21 Aug 2017 18:23:40 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <908276710.287135237.1503332620287.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] TFTP: Add support for custom server and port
To: barebox@lists.infradead.org

From de97046a780acf75263f932b34b32eb33a9d6eea Mon Sep 17 00:00:00 2001
From: Clement Leger <clement.leger@kalray.eu>
Date: Mon, 21 Aug 2017 18:08:01 +0200
Subject: [PATCH] TFTP: Add support for custom server and port

This patch add argument to the tftp command which allow to specify a
custom tftp server and port. These options are now given to the tftp
filesystem by using serveri[:port] format.
In order to maintain backward compatibity with direct mount usage, the
port is optional and defaults to the standard tftp port if not given.
These parameters are useful when using a different server than the 
one provided by dhcp and not running on a standard port.

Signed-off-by: Clement Leger <clement.leger@kalray.eu>
---
 commands/tftp.c | 31 +++++++++++++++++++++++++------
 fs/tftp.c       | 19 ++++++++++++++++---
 2 files changed, 41 insertions(+), 9 deletions(-)

diff --git a/commands/tftp.c b/commands/tftp.c
index 08366b4..3c6ec72 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -28,6 +28,10 @@
 
 #define TFTP_MOUNT_PATH	"/.tftp_tmp_path"
 
+#define IPV4_STR_SIZE	sizeof("255.255.255.255:12345")
+
+#define TFTP_PORT	69
+
 static int do_tftpb(int argc, char *argv[])
 {
 	char *source, *dest, *freep;
@@ -36,13 +40,22 @@ static int do_tftpb(int argc, char *argv[])
 	int tftp_push = 0;
 	int ret;
 	IPaddr_t ip;
-	char ip4_str[sizeof("255.255.255.255")];
+	int port = TFTP_PORT;
+	char server_str[IPV4_STR_SIZE] = {0};
+	int server_given = 0;
 
-	while ((opt = getopt(argc, argv, "p")) > 0) {
+	while ((opt = getopt(argc, argv, "pP:s:")) > 0) {
 		switch(opt) {
 		case 'p':
 			tftp_push = 1;
 			break;
+		case 'P':
+			port = simple_strtol(optarg, NULL, 0);
+			break;
+		case 's':
+			server_given = 1;
+			strncpy(server_str, optarg, IPV4_STR_SIZE - 1);
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -73,9 +86,13 @@ static int do_tftpb(int argc, char *argv[])
 	if (ret)
 		goto err_free;
 
-	ip = net_get_serverip();
-	sprintf(ip4_str, "%pI4", &ip);
-	ret = mount(ip4_str, "tftp", TFTP_MOUNT_PATH, NULL);
+	if (!server_given) {
+		ip = net_get_serverip();
+		sprintf(server_str, "%pI4", &ip);
+	}
+
+	snprintf(server_str + strlen(server_str), IPV4_STR_SIZE - 1, ":%d", port);
+	ret = mount(server_str, "tftp", TFTP_MOUNT_PATH, NULL);
 	if (ret)
 		goto err_rmdir;
 
@@ -100,12 +117,14 @@ BAREBOX_CMD_HELP_TEXT("server address is taken from the environment (ethX.server
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-p", "push to TFTP server")
+BAREBOX_CMD_HELP_OPT ("-P", "TFTP port")
+BAREBOX_CMD_HELP_OPT ("-s", "Server IP")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(tftp)
 	.cmd		= do_tftpb,
 	BAREBOX_CMD_DESC("load (or save) a file using TFTP")
-	BAREBOX_CMD_OPTS("[-p] SOURCE [DEST]")
+	BAREBOX_CMD_OPTS("[-pPs] SOURCE [DEST]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_tftp_help)
 BAREBOX_CMD_END
diff --git a/fs/tftp.c b/fs/tftp.c
index 847921a..c4a2769 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -87,6 +87,7 @@ struct file_priv {
 
 struct tftp_priv {
 	IPaddr_t server;
+	uint16_t port;
 };
 
 static int tftp_create(struct device_d *dev, const char *pathname, mode_t mode)
@@ -423,7 +424,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 		goto out;
 	}
 
-	priv->tftp_con = net_udp_new(tpriv->server, TFTP_PORT, tftp_handler,
+	priv->tftp_con = net_udp_new(tpriv->server, tpriv->port, tftp_handler,
 			priv);
 	if (IS_ERR(priv->tftp_con)) {
 		ret = PTR_ERR(priv->tftp_con);
@@ -647,12 +648,24 @@ static int tftp_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct tftp_priv *priv = xzalloc(sizeof(struct tftp_priv));
+	char *tmp = xstrdup(fsdev->backingstore);
+	char *port;
+	int ret = 0;
 
 	dev->priv = priv;
 
-	priv->server = resolv(fsdev->backingstore);
+	port = strchr(tmp, ':');
+	if (!port) {
+		priv->port = TFTP_PORT;
+	} else {
+		*port = 0;
+		priv->port = simple_strtol(port + 1, NULL, 0);
+	}
 
-	return 0;
+	priv->server = resolv(tmp);
+
+	free(tmp);
+	return ret;
 }
 
 static void tftp_remove(struct device_d *dev)
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
