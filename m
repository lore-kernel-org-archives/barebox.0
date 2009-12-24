Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNoAJ-0002DS-Nw
	for barebox@lists.infradead.org; Thu, 24 Dec 2009 13:55:48 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id nBODtdNY017898
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 24 Dec 2009 07:55:41 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 24 Dec 2009 19:25:37 +0530
Message-Id: <1261662937-31474-2-git-send-email-premi@ti.com>
In-Reply-To: <1261662937-31474-1-git-send-email-premi@ti.com>
References: <1261662937-31474-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 1/1] net: Exclude code based on selected protocol
To: barebox@lists.infradead.org

Exclude the code for TFTP/NFS if either of the
protocols is not selected.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 commands/net.c |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index df06227..8071c9b 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -77,6 +77,7 @@ void netboot_update_env(void)
 		setenv ("domain", NetOurNISDomain);
 }
 
+#ifdef CONFIG_NET_TFTP
 static int do_tftpb (cmd_tbl_t *cmdtp, int argc, char *argv[])
 {
 	return netboot_common (TFTP, cmdtp, argc, argv);
@@ -92,6 +93,8 @@ BAREBOX_CMD_START(tftp)
 	BAREBOX_CMD_HELP(cmd_tftp_help)
 BAREBOX_CMD_END
 
+#endif
+
 /**
  * @page tftp_command tftp
  *
@@ -157,9 +160,14 @@ BAREBOX_CMD_END
 
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
@@ -188,11 +196,15 @@ netboot_common (proto_t proto, cmd_tbl_t *cmdtp, int argc, char *argv[])
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
@@ -209,6 +221,7 @@ out:
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
