Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8aa-0004Da-E0
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:26 +0100
Message-Id: <1323945034-19687-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] libbb: add read_full/write_full functions
To: barebox@lists.infradead.org

These functions read/write all data or return with an error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libbb.h |    3 +++
 lib/libbb.c     |   50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+), 0 deletions(-)

diff --git a/include/libbb.h b/include/libbb.h
index 2d17c3f..110e8ec 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -32,4 +32,7 @@ int process_escape_sequence(const char *source, char *dest, int destlen);
 
 char *simple_itoa(unsigned int i);
 
+int write_full(int fd, void *buf, size_t size);
+int read_full(int fd, void *buf, size_t size);
+
 #endif /* __LIBBB_H */
diff --git a/lib/libbb.c b/lib/libbb.c
index 3d02202..9a0a60b 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -127,3 +127,53 @@ char *simple_itoa(unsigned int i)
 	return p + 1;
 }
 EXPORT_SYMBOL(simple_itoa);
+
+/*
+ * write_full - write to filedescriptor
+ *
+ * Like write, but guarantees to write the full buffer out, else
+ * it returns with an error.
+ */
+int write_full(int fd, void *buf, size_t size)
+{
+	size_t insize = size;
+	int now;
+
+	while (size) {
+		now = write(fd, buf, size);
+		if (now <= 0)
+			return now;
+		size -= now;
+		buf += now;
+	}
+
+	return insize;
+}
+EXPORT_SYMBOL(write_full);
+
+/*
+ * read_full - read from filedescriptor
+ *
+ * Like read, but this function only returns less bytes than
+ * requested when the end of file is reached.
+ */
+int read_full(int fd, void *buf, size_t size)
+{
+	size_t insize = size;
+	int now;
+	int total = 0;
+
+	while (size) {
+		now = read(fd, buf, size);
+		if (now == 0)
+			return total;
+		if (now < 0)
+			return now;
+		total += now;
+		size -= now;
+		buf += now;
+	}
+
+	return insize;
+}
+EXPORT_SYMBOL(read_full);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
