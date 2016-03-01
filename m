Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x234.google.com ([2a00:1450:400c:c09::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaiD0-0006nN-Bb
 for barebox@lists.infradead.org; Tue, 01 Mar 2016 11:11:19 +0000
Received: by mail-wm0-x234.google.com with SMTP id l68so28260415wml.1
 for <barebox@lists.infradead.org>; Tue, 01 Mar 2016 03:10:57 -0800 (PST)
From: yegorslists@googlemail.com
Date: Tue,  1 Mar 2016 12:10:02 +0100
Message-Id: <1456830604-8469-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH v5 1/3] linux/types.h: add sector_t and blkcnt_t types
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 include/linux/types.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/types.h b/include/linux/types.h
index 9f8eb67..f64ec4a 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -157,6 +157,22 @@ typedef __u32 __bitwise __wsum;
 #define __aligned_be64 __be64 __attribute__((aligned(8)))
 #define __aligned_le64 __le64 __attribute__((aligned(8)))
 
+/**
+ * The type used for indexing onto a disc or disc partition.
+ *
+ * Linux always considers sectors to be 512 bytes long independently
+ * of the devices real block size.
+ *
+ * blkcnt_t is the type of the inode's block count.
+ */
+#ifdef CONFIG_LBDAF
+typedef u64 sector_t;
+typedef u64 blkcnt_t;
+#else
+typedef unsigned long sector_t;
+typedef unsigned long blkcnt_t;
+#endif
+
 /*
  * The type of an index into the pagecache.
  */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
