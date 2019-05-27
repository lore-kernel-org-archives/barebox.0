Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM5N-0000Or-56
 for barebox@lists.infradead.org; Mon, 27 May 2019 20:19:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so9583608pgv.10
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 13:19:08 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 13:18:48 -0700
Message-Id: <20190527201853.18853-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190527201853.18853-1-andrew.smirnov@gmail.com>
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/7] filetype: Allow specifying cdev's filetype explicitly
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Allow specifying cdev's filetype explicitly to support the cases where
the type of a cdev is known apriori, yet cannot be determined by
reading the cdev's content.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/filetype.c | 6 ++++++
 include/driver.h  | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 429911533..e4c8005b5 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -425,6 +425,11 @@ enum filetype cdev_detect_type(const char *name)
 	if (!cdev)
 		return type;
 
+	if (cdev->filetype != filetype_unknown) {
+		type = cdev->filetype;
+		goto cdev_close;
+	}
+
 	buf = xzalloc(FILE_TYPE_SAFE_BUFSIZE);
 	ret = cdev_read(cdev, buf, FILE_TYPE_SAFE_BUFSIZE, 0, 0);
 	if (ret < 0)
@@ -434,6 +439,7 @@ enum filetype cdev_detect_type(const char *name)
 
 err_out:
 	free(buf);
+cdev_close:
 	cdev_close(cdev);
 	return type;
 }
diff --git a/include/driver.h b/include/driver.h
index 26ec413bd..fe2d30ab5 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -22,6 +22,7 @@
 #include <linux/list.h>
 #include <linux/ioport.h>
 #include <of.h>
+#include <filetype.h>
 
 #define FORMAT_DRIVER_NAME_ID	"%s%d"
 
@@ -464,6 +465,7 @@ struct cdev {
 	struct list_head link_entry, links;
 	struct list_head partition_entry, partitions;
 	struct cdev *master;
+	enum filetype filetype;
 };
 
 int devfs_create(struct cdev *);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
