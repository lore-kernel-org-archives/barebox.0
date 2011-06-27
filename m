Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qb62T-0001wA-Ei
	for barebox@lists.infradead.org; Mon, 27 Jun 2011 07:15:23 +0000
Received: by fxg17 with SMTP id 17so1448420fxg.16
	for <barebox@lists.infradead.org>; Mon, 27 Jun 2011 00:15:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 27 Jun 2011 11:15:08 +0400
Message-Id: <1309158909-19978-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] include/linux/stat.h: make MIPS arch possible.
To: barebox@lists.infradead.org
Cc: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/stat.h |   56 ++++++++++++++++++++++++-------------------------
 1 files changed, 27 insertions(+), 29 deletions(-)

diff --git a/include/linux/stat.h b/include/linux/stat.h
index 10103d4..c12ff57 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -65,34 +65,7 @@ struct stat {
 	unsigned long  	__unused5;
 };
 
-#else
-
-struct stat {
-	unsigned short st_dev;
-	unsigned short __pad1;
-	unsigned long st_ino;
-	unsigned short st_mode;
-	unsigned short st_nlink;
-	unsigned short st_uid;
-	unsigned short st_gid;
-	unsigned short st_rdev;
-	unsigned short __pad2;
-	unsigned long  st_size;
-	unsigned long  st_blksize;
-	unsigned long  st_blocks;
-	unsigned long  st_atime;
-	unsigned long  __unused1;
-	unsigned long  st_mtime;
-	unsigned long  __unused2;
-	unsigned long  st_ctime;
-	unsigned long  __unused3;
-	unsigned long  __unused4;
-	unsigned long  __unused5;
-};
-
-#endif	/* __ARM__ */
-
-#if defined (__MIPS__)
+#elif defined(__MIPS__)
 
 struct stat {
 	dev_t           st_dev;
@@ -121,7 +94,32 @@ struct stat {
 	long            st_pad4[14];
 };
 
-#endif	/* __MIPS__ */
+#else
+
+struct stat {
+	unsigned short st_dev;
+	unsigned short __pad1;
+	unsigned long st_ino;
+	unsigned short st_mode;
+	unsigned short st_nlink;
+	unsigned short st_uid;
+	unsigned short st_gid;
+	unsigned short st_rdev;
+	unsigned short __pad2;
+	unsigned long  st_size;
+	unsigned long  st_blksize;
+	unsigned long  st_blocks;
+	unsigned long  st_atime;
+	unsigned long  __unused1;
+	unsigned long  st_mtime;
+	unsigned long  __unused2;
+	unsigned long  st_ctime;
+	unsigned long  __unused3;
+	unsigned long  __unused4;
+	unsigned long  __unused5;
+};
+
+#endif	/* __ARM__ */
 
 #ifdef __cplusplus
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
