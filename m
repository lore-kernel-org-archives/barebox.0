Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq3-0003MC-4D
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:08 +0200
Message-Id: <1277372108-30332-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] tftp: update doxygen information
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/tftp.c |   21 +++++++++++++--------
 1 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index 000d0cf..c0d3278 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -376,16 +376,21 @@ BAREBOX_CMD_END
 /**
  * @page tftp_command tftp
  *
- * Usage is: tftp \<filename\> [\<localfilename\>]
+ * Usage:
+ *	tftp \<remotefilename\> [\<localfilename\>]
  *
- * Load a file via network using BootP/TFTP protocol. The loaded file you
- * can find after download in you current ramdisk. Refer \b ls command.
+ * or
  *
- * \<localfile> can be the local filename only, or also a device name. In the
- * case of a device name, the will gets stored there. This works also for
- * partitions of flash memory. Refer \b erase, \b unprotect for flash
- * preparation.
+ *	tftp -p \<localfilename\> [\<remotefilename\>]
  *
- * Note: This command is available only, if enabled in the menuconfig.
+ * Load a file from a tftp server or upload a file to a tftp server if
+ * the -p option is given. The second file argument can be skipped in
+ * which case the first filename is used (without the directory part).
+ *
+ * \<localfile> can be the local filename or a device file under /dev.
+ * This also works for flash memory. Refer to \b erase, \b unprotect for
+ * flash preparation.
+ *
+ * Note: This command is available only if enabled in menuconfig.
  */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
