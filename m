Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2E5-0005RF-Ui
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:41 +0000
Received: by mail-pf1-x444.google.com with SMTP id j26-v6so3803767pfi.10
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:38 -0700
Message-Id: <20180824025243.19479-20-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 19/24] libfile: Introduce pwrite_full()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Analogous to what we have with write()/write_full(), introduce a
lightweight wrapper around pwrite() that guarantees the either all
data is going to be written or a negative error code would be
returned.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/libfile.h |  1 +
 lib/libfile.c     | 24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/include/libfile.h b/include/libfile.h
index 2c5eef71f..f1d695187 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -1,6 +1,7 @@
 #ifndef __LIBFILE_H
 #define __LIBFILE_H
 
+int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index 0052e789f..39c85b2fc 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -23,6 +23,30 @@
 #include <stdlib.h>
 #include <linux/stat.h>
 
+/*
+ * pwrite_full - write to filedescriptor at offset
+ *
+ * Like pwrite, but guarantees to write the full buffer out, else it
+ * returns with an error.
+ */
+int pwrite_full(int fd, const void *buf, size_t size, loff_t offset)
+{
+	size_t insize = size;
+	int now;
+
+	while (size) {
+		now = pwrite(fd, buf, size, offset);
+		if (now <= 0)
+			return now;
+		size -= now;
+		buf += now;
+		offset += now;
+	}
+
+	return insize;
+}
+EXPORT_SYMBOL(pwrite_full);
+
 /*
  * write_full - write to filedescriptor
  *
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
