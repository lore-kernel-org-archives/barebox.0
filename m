Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dGkUq-0002EZ-4w
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 11:12:05 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A11EBA00409
 for <barebox@lists.infradead.org>; Fri,  2 Jun 2017 13:12:35 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 2 Jun 2017 13:11:36 +0200
Message-Id: <1496401896-38147-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH] fs: Makefile: Add parseopt to all builds
To: barebox@lists.infradead.org

parseopt.h was included to fs.c with commit 9248b, but parseopt.o has a
dependency to CONFIG_FS_NFS.

Moved parseopt.o to the default build to eliminate build failures.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 fs/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/Makefile b/fs/Makefile
index f2bb702..b3f929f 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -4,11 +4,11 @@ obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
 obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
 obj-$(CONFIG_FS_FAT)	+= fat/
-obj-y	+= fs.o
+obj-y	+= fs.o parseopt.o
 obj-$(CONFIG_FS_UBIFS)	+= ubifs/
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
 obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
-obj-$(CONFIG_FS_NFS)	+= nfs.o parseopt.o
+obj-$(CONFIG_FS_NFS)	+= nfs.o
 obj-$(CONFIG_FS_BPKFS) += bpkfs.o
 obj-$(CONFIG_FS_UIMAGEFS)	+= uimagefs.o
 obj-$(CONFIG_FS_EFI)	 += efi.o
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
