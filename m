Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NRjs6-0007ON-VH
	for barebox@lists.infradead.org; Mon, 04 Jan 2010 10:09:12 +0000
Date: Mon, 4 Jan 2010 11:08:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100104100831.GD8799@pengutronix.de>
References: <1261662937-31474-1-git-send-email-premi@ti.com>
	<1261662937-31474-2-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1261662937-31474-2-git-send-email-premi@ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] net: Exclude code based on selected protocol
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Dec 24, 2009 at 07:25:37PM +0530, Sanjeev Premi wrote:
> Exclude the code for TFTP/NFS if either of the
> protocols is not selected.

Ok, this should be fixed. I would rather use the following patch to do
it. It adds a few bytes of binary space but it moves the code which
belongs together to the appropriate files.

Sascha


From 6c312514f8272409a84b4f235e56262ace283ea8 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 4 Jan 2010 10:08:52 +0100
Subject: [PATCH] remove tftp/nfs specific code to net/*

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/net.c |  108 --------------------------------------------------------
 net/nfs.c      |   56 ++++++++++++++++++++++++++++-
 net/tftp.c     |   72 ++++++++++++++++++++++++++++++++++++-
 3 files changed, 126 insertions(+), 110 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index 902c8bb..5fa49cf 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -32,12 +32,8 @@
 #include <driver.h>
 #include <net.h>
 #include <fs.h>
-#include <fcntl.h>
 #include <errno.h>
 #include <libbb.h>
-#include <libgen.h>
-
-static int netboot_common (proto_t, cmd_tbl_t *, int , char *[]);
 
 void netboot_update_env(void)
 {
@@ -77,37 +73,6 @@ void netboot_update_env(void)
 		setenv ("domain", NetOurNISDomain);
 }
 
-static int do_tftpb (cmd_tbl_t *cmdtp, int argc, char *argv[])
-{
-	return netboot_common (TFTP, cmdtp, argc, argv);
-}
-
-static const __maybe_unused char cmd_tftp_help[] =
-"Usage: tftp <file> [localfile]\n"
-"Load a file via network using BootP/TFTP protocol.\n";
-
-BAREBOX_CMD_START(tftp)
-	.cmd		= do_tftpb,
-	.usage		= "Load file using tftp protocol",
-	BAREBOX_CMD_HELP(cmd_tftp_help)
-BAREBOX_CMD_END
-
-/**
- * @page tftp_command tftp
- *
- * Usage is: tftp \<filename\> [\<localfilename\>]
- *
- * Load a file via network using BootP/TFTP protocol. The loaded file you
- * can find after download in you current ramdisk. Refer \b ls command.
- *
- * \<localfile> can be the local filename only, or also a device name. In the
- * case of a device name, the will gets stored there. This works also for
- * partitions of flash memory. Refer \b erase, \b unprotect for flash
- * preparation.
- *
- * Note: This command is available only, if enabled in the menuconfig.
- */
-
 #ifdef CONFIG_NET_RARP
 extern void RarpRequest(void);
 
@@ -137,79 +102,6 @@ BAREBOX_CMD_START(rarpboot)
 BAREBOX_CMD_END
 #endif /* CONFIG_NET_RARP */
 
-#ifdef CONFIG_NET_NFS
-static int do_nfs (cmd_tbl_t *cmdtp, int argc, char *argv[])
-{
-	return netboot_common(NFS, cmdtp, argc, argv);
-}
-
-static const __maybe_unused char cmd_nfs_help[] =
-"Usage: nfs <file> [localfile]\n"
-"Load a file via network using nfs protocol.\n";
-
-BAREBOX_CMD_START(nfs)
-	.cmd		= do_nfs,
-	.usage		= "boot image via network using nfs protocol",
-	BAREBOX_CMD_HELP(cmd_nfs_help)
-BAREBOX_CMD_END
-
-#endif	/* CONFIG_NET_NFS */
-
-int net_store_fd;
-
-extern void TftpStart(char *);       /* Begin TFTP get */
-extern void NfsStart(char *);
-
-static int
-netboot_common (proto_t proto, cmd_tbl_t *cmdtp, int argc, char *argv[])
-{
-	int   rcode = 0;
-	int   size;
-	char  *localfile;
-	char  *remotefile;
-
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
-	remotefile = argv[1];
-
-	if (argc == 2)
-		localfile = basename(remotefile);
-	else
-		localfile = argv[2];
-
-	net_store_fd = open(localfile, O_WRONLY | O_CREAT);
-	if (net_store_fd < 0) {
-		perror("open");
-		return 1;
-	}
-
-	if (NetLoopInit(proto) < 0)
-		goto out;
-
-	switch (proto) {
-	case TFTP:
-		TftpStart(remotefile);
-		break;
-	case NFS:
-		NfsStart(remotefile);
-	default:
-		break;
-	}
-
-	if ((size = NetLoop()) < 0) {
-		rcode = size;
-		goto out;
-	}
-
-	/* NetLoop ok, update environment */
-	netboot_update_env();
-
-out:
-	close(net_store_fd);
-	return rcode;
-}
-
 static int do_ethact (cmd_tbl_t *cmdtp, int argc, char *argv[])
 {
 	struct eth_device *edev;
diff --git a/net/nfs.c b/net/nfs.c
index fe0bc70..f68741a 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -29,6 +29,9 @@
 #include <malloc.h>
 #include <libgen.h>
 #include <fs.h>
+#include <libgen.h>
+#include <fcntl.h>
+#include <errno.h>
 #include "nfs.h"
 
 /*#define NFS_DEBUG*/
@@ -63,7 +66,7 @@ static char *nfs_filename;
 static char *nfs_path;
 static char nfs_path_buff[2048];
 
-extern int net_store_fd;
+static int net_store_fd;
 
 static __inline__ int
 store_block (uchar * src, unsigned offset, unsigned len)
@@ -703,3 +706,54 @@ NfsStart (char *p)
 	NfsSend ();
 }
 
+static int do_nfs (cmd_tbl_t *cmdtp, int argc, char *argv[])
+{
+	int   rcode = 0;
+	char  *localfile;
+	char  *remotefile;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	remotefile = argv[1];
+
+	if (argc == 2)
+		localfile = basename(remotefile);
+	else
+		localfile = argv[2];
+
+	net_store_fd = open(localfile, O_WRONLY | O_CREAT);
+	if (net_store_fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	if (NetLoopInit(NFS) < 0)
+		goto out;
+
+	NfsStart(remotefile);
+
+	rcode = NetLoop();
+	if (rcode < 0) {
+		rcode = 1;
+		goto out;
+	}
+
+	/* NetLoop ok, update environment */
+	netboot_update_env();
+
+out:
+	close(net_store_fd);
+	return rcode;
+}
+
+static const __maybe_unused char cmd_nfs_help[] =
+"Usage: nfs <file> [localfile]\n"
+"Load a file via network using nfs protocol.\n";
+
+BAREBOX_CMD_START(nfs)
+	.cmd		= do_nfs,
+	.usage		= "boot image via network using nfs protocol",
+	BAREBOX_CMD_HELP(cmd_nfs_help)
+BAREBOX_CMD_END
+
diff --git a/net/tftp.c b/net/tftp.c
index 169855f..b9c6fdd 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -11,6 +11,8 @@
 #include <clock.h>
 #include <fs.h>
 #include <errno.h>
+#include <libgen.h>
+#include <fcntl.h>
 #include "tftp.h"
 
 #undef	ET_DEBUG
@@ -49,7 +51,7 @@ static int	TftpState;
 
 static char *tftp_filename;
 
-extern int net_store_fd;
+static int net_store_fd;
 
 static int store_block(unsigned block, uchar * src, unsigned len)
 {
@@ -253,3 +255,71 @@ void TftpStart(char *filename)
 
 	TftpSend();
 }
+
+static int do_tftpb (cmd_tbl_t *cmdtp, int argc, char *argv[])
+{
+	int   rcode = 0;
+	char  *localfile;
+	char  *remotefile;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	remotefile = argv[1];
+
+	if (argc == 2)
+		localfile = basename(remotefile);
+	else
+		localfile = argv[2];
+
+	net_store_fd = open(localfile, O_WRONLY | O_CREAT);
+	if (net_store_fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	if (NetLoopInit(TFTP) < 0)
+		goto out;
+
+	TftpStart(remotefile);
+
+	rcode = NetLoop();
+	if (rcode < 0) {
+		rcode = 1;
+		goto out;
+	}
+
+	/* NetLoop ok, update environment */
+	netboot_update_env();
+
+out:
+	close(net_store_fd);
+	return rcode;
+}
+
+static const __maybe_unused char cmd_tftp_help[] =
+"Usage: tftp <file> [localfile]\n"
+"Load a file via network using BootP/TFTP protocol.\n";
+
+BAREBOX_CMD_START(tftp)
+	.cmd		= do_tftpb,
+	.usage		= "Load file using tftp protocol",
+	BAREBOX_CMD_HELP(cmd_tftp_help)
+BAREBOX_CMD_END
+
+/**
+ * @page tftp_command tftp
+ *
+ * Usage is: tftp \<filename\> [\<localfilename\>]
+ *
+ * Load a file via network using BootP/TFTP protocol. The loaded file you
+ * can find after download in you current ramdisk. Refer \b ls command.
+ *
+ * \<localfile> can be the local filename only, or also a device name. In the
+ * case of a device name, the will gets stored there. This works also for
+ * partitions of flash memory. Refer \b erase, \b unprotect for flash
+ * preparation.
+ *
+ * Note: This command is available only, if enabled in the menuconfig.
+ */
+
-- 
1.6.5.2


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
