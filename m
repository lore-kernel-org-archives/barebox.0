Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005z8-Qe
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:04:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:55 +0200
Message-Id: <20181002140403.3735-7-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] fs: Add SB_* flags
To: Barebox List <barebox@lists.infradead.org>

Newer Kernel fs code uses SB_* flags rather than the same MS_* flags.
Add them to barebox to make porting code easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/fs.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/linux/fs.h b/include/linux/fs.h
index 0c91434039..e2a69890f0 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -49,6 +49,25 @@ struct dir_context {
 	loff_t pos;
 };
 
+/*
+ * sb->s_flags.  Note that these mirror the equivalent MS_* flags where
+ * represented in both.
+ */
+#define SB_RDONLY        1      /* Mount read-only */
+#define SB_NOSUID        2      /* Ignore suid and sgid bits */
+#define SB_NODEV         4      /* Disallow access to device special files */
+#define SB_NOEXEC        8      /* Disallow program execution */
+#define SB_SYNCHRONOUS  16      /* Writes are synced at once */
+#define SB_MANDLOCK     64      /* Allow mandatory locks on an FS */
+#define SB_DIRSYNC      128     /* Directory modifications are synchronous */
+#define SB_NOATIME      1024    /* Do not update access times. */
+#define SB_NODIRATIME   2048    /* Do not update directory access times */
+#define SB_SILENT       32768
+#define SB_POSIXACL     (1<<16) /* VFS does not apply the umask */
+#define SB_KERNMOUNT    (1<<22) /* this is a kern_mount call */
+#define SB_I_VERSION    (1<<23) /* Update inode I_version field */
+#define SB_LAZYTIME     (1<<25) /* Update the on-disk [acm]times lazily */
+
 /*
  * These are the fs-independent mount-flags: up to 32 flags are supported
  */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
