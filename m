Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNoKH-0004Gr-1V
	for barebox@lists.infradead.org; Thu, 24 Dec 2009 14:06:05 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id nBOE5tYh023541
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 24 Dec 2009 08:05:58 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 24 Dec 2009 19:35:55 +0530
Message-Id: <1261663555-445-1-git-send-email-premi@ti.com>
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
Subject: [PATCHv2 1/1] net: Exclude code based on selected protocol
To: barebox@lists.infradead.org

Exclude the code for TFTP/NFS if either of the
protocols is not selected.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 commands/net.c |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index df06227..3d49e36 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -37,7 +37,9 @@
 #include <libbb.h>
 #include <libgen.h>
 
+#if defined(CONFIG_NET_NFS) || defined(CONFIG_NET_TFTP)
 static int netboot_common (proto_t, cmd_tbl_t *, int , char *[]);
+#endif
 
 void netboot_update_env(void)
 {
@@ -77,6 +79,7 @@ void netboot_update_env(void)
 		setenv ("domain", NetOurNISDomain);
 }
 
+#ifdef CONFIG_NET_TFTP
 static int do_tftpb (cmd_tbl_t *cmdtp, int argc, char *argv[])
 {
 	return netboot_common (TFTP, cmdtp, argc, argv);
@@ -92,6 +95,8 @@ BAREBOX_CMD_START(tftp)
 	BAREBOX_CMD_HELP(cmd_tftp_help)
 BAREBOX_CMD_END
 
+#endif
+
 /**
  * @page tftp_command tftp
  *
@@ -157,9 +162,14 @@ BAREBOX_CMD_END
 
 int net_store_fd;
 
+#ifdef CONFIG_NET_TFTP
 extern void TftpStart(char *);       /* Begin TFTP get */
+#endif
+#ifdef CONFIG_NET_NFS
 extern void NfsStart(char *);
+#endif
 
+#if defined(CONFIG_NET_NFS) || defined(CONFIG_NET_TFTP)
 static int
 netboot_common (proto_t proto, cmd_tbl_t *cmdtp, int argc, char *argv[])
 {
@@ -188,11 +198,15 @@ netboot_common (proto_t proto, cmd_tbl_t *cmdtp, int argc, char *argv[])
 		goto out;
 
 	switch (proto) {
+#ifdef CONFIG_NET_TFTP
 	case TFTP:
 		TftpStart(remotefile);
 		break;
+#endif
+#ifdef CONFIG_NET_NFS
 	case NFS:
 		NfsStart(remotefile);
+#endif
 	default:
 		break;
 	}
@@ -209,6 +223,7 @@ out:
 	close(net_store_fd);
 	return rcode;
 }
+#endif	/* defined(CONFIG_NET_NFS) || defined(CONFIG_NET_TFTP) */
 
 #ifdef CONFIG_NET_CDP
 
-- 
1.6.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
