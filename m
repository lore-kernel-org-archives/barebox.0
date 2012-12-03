Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaS4-0004wN-JX
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:09:15 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:31 +0000
Message-Id: <1354558114-28799-16-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 15/18] UBIFS: configuration and build directives
To: barebox@lists.infradead.org

This patch allows to include and build UBIFS.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 fs/Kconfig        |    4 ++++
 fs/Makefile       |    1 +
 fs/ubifs/Makefile |    9 +++++++++
 3 files changed, 14 insertions(+), 0 deletions(-)
 create mode 100644 fs/ubifs/Makefile

diff --git a/fs/Kconfig b/fs/Kconfig
index 0ab69d7..0e6db4b 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -39,6 +39,10 @@ config FS_NFS
 	bool
 	prompt "nfs support"
 
+config FS_UBIFS
+	bool
+	prompt "ubifs support"
+
 source fs/fat/Kconfig
 
 config PARTITION_NEED_MTD
diff --git a/fs/Makefile b/fs/Makefile
index ad745d9..fba5131 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -2,6 +2,7 @@ obj-$(CONFIG_FS_CRAMFS)	+= cramfs/
 obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
 obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
+obj-$(CONFIG_FS_UBIFS) += ubifs/
 obj-$(CONFIG_FS_FAT)	+= fat/
 obj-y	+= fs.o
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
diff --git a/fs/ubifs/Makefile b/fs/ubifs/Makefile
new file mode 100644
index 0000000..e3d4cfd
--- /dev/null
+++ b/fs/ubifs/Makefile
@@ -0,0 +1,9 @@
+obj-y += ubifs.o
+obj-y += io.o
+obj-y += super.o
+obj-y += sb.o
+obj-y += master.o
+obj-y += lpt.o
+obj-y += lpt_commit.o scan.o lprops.o
+obj-y += tnc.o tnc_misc.o debug.o crc16.o budget.o
+obj-y += log.o orphan.o recovery.o replay.o
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
