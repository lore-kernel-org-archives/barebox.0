Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f54.google.com ([74.125.83.54])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5yXX-0002B2-At
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 13:07:53 +0000
Received: by mail-ee0-f54.google.com with SMTP id c41so1289938eek.41
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2013 05:07:48 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu, 14 Feb 2013 14:08:29 +0100
Message-Id: <1360847311-16931-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360847311-16931-1-git-send-email-alex.aring@gmail.com>
References: <1360847311-16931-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/4] fs: add pread and pwrite functions
To: barebox@lists.infradead.org

Add pread and pwrite functions.

These functions setting file pointer to a given
offset with lseek and call read or write afterwards.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 fs/fs.c      | 28 ++++++++++++++++++++++++++++
 include/fs.h |  2 ++
 2 files changed, 30 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 48d1c89..fea7e02 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -785,6 +785,20 @@ ssize_t read(int fd, void *buf, size_t count)
 }
 EXPORT_SYMBOL(read);
 
+ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
+{
+	int ret;
+
+	ret = lseek(fd, offset, SEEK_SET);
+	if (ret < 0)
+		goto out;
+
+	ret = read(fd, buf, count);
+out:
+	return ret;
+}
+EXPORT_SYMBOL(pread);
+
 ssize_t write(int fd, const void *buf, size_t count)
 {
 	struct device_d *dev;
@@ -821,6 +835,20 @@ out:
 }
 EXPORT_SYMBOL(write);
 
+ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
+{
+	int ret;
+
+	ret = lseek(fd, offset, SEEK_SET);
+	if (ret < 0)
+		goto out;
+
+	ret = write(fd, buf, count);
+out:
+	return ret;
+}
+EXPORT_SYMBOL(pwrite);
+
 int flush(int fd)
 {
 	struct device_d *dev;
diff --git a/include/fs.h b/include/fs.h
index d6b22f7..7c4e461 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -114,8 +114,10 @@ int flush(int fd);
 int lstat(const char *filename, struct stat *s);
 int stat(const char *filename, struct stat *s);
 ssize_t read(int fd, void *buf, size_t count);
+ssize_t pread(int fd, void *buf, size_t count, loff_t offset);
 int ioctl(int fd, int request, void *buf);
 ssize_t write(int fd, const void *buf, size_t count);
+ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset);
 
 #define SEEK_SET	1
 #define SEEK_CUR	2
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
