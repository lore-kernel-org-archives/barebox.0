Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpPTA-0005g0-4w
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 20:59:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Jun 2013 22:58:48 +0200
Message-Id: <1371675528-6380-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] read_file: Make it work on tftp servers which do not pass size
To: barebox@lists.infradead.org

Some tftp servers (for example netkit-tftp) do not pass the filesize.
Add a workaround for read_file which reads the file into a temporary
file which then is copied to a buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      | 18 ++++++++++++++++++
 fs/tftp.c    |  5 ++++-
 include/fs.h |  2 ++
 3 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index dc3a6e3..7046f2c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -38,10 +38,21 @@ void *read_file(const char *filename, size_t *size)
 	int fd;
 	struct stat s;
 	void *buf = NULL;
+	const char *tmpfile = "/.read_file_tmp";
+	int ret;
 
+again:
 	if (stat(filename, &s))
 		return NULL;
 
+	if (s.st_size == FILESIZE_MAX) {
+		ret = copy_file(filename, tmpfile, 0);
+		if (ret)
+			return NULL;
+		filename = tmpfile;
+		goto again;
+	}
+
 	buf = xzalloc(s.st_size + 1);
 
 	fd = open(filename, O_RDONLY);
@@ -56,12 +67,19 @@ void *read_file(const char *filename, size_t *size)
 	if (size)
 		*size = s.st_size;
 
+	if (filename == tmpfile)
+		unlink(tmpfile);
+
 	return buf;
 
 err_out1:
 	close(fd);
 err_out:
 	free(buf);
+
+	if (filename == tmpfile)
+		unlink(tmpfile);
+
 	return NULL;
 }
 
diff --git a/fs/tftp.c b/fs/tftp.c
index 98cbb37..1c37acf 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -597,7 +597,10 @@ static int tftp_stat(struct device_d *dev, const char *filename, struct stat *s)
 		return PTR_ERR(priv);
 
 	s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
-	s->st_size = priv->filesize;
+	if (priv->filesize)
+		s->st_size = priv->filesize;
+	else
+		s->st_size = FILESIZE_MAX;
 
 	tftp_do_close(priv);
 
diff --git a/include/fs.h b/include/fs.h
index 8ff7300..fa6a8da 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -147,6 +147,8 @@ int protect(int fd, size_t count, unsigned long offset, int prot);
 int protect_file(const char *file, int prot);
 void *memmap(int fd, int flags);
 
+#define FILESIZE_MAX	((size_t)-1)
+
 #define PROT_READ	1
 #define PROT_WRITE	2
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
