Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XD8lX-0006X8-76
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 09:04:44 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri,  1 Aug 2014 11:04:14 +0200
Message-Id: <1406883854-9249-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] fixup! Add support for metadata in barebox images
To: barebox@lists.infradead.org

stat() and mmap() don't work on MTD devices, so use lseek() and read()
instead.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 scripts/bareboximd.c | 61 +++++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 46 insertions(+), 15 deletions(-)

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 1bd98e1d3c4f..6855b5874c28 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -57,38 +57,69 @@ int imd_command_setenv(const char *variable_name, const char *value)
 
 static int read_file_2(const char *filename, size_t *size, void **outbuf, loff_t max_size)
 {
-	struct stat s;
+	off_t fsize;
+	ssize_t rsize;
 	int ret, fd;
 	void *buf;
 
 	*size = 0;
 	*outbuf = NULL;
 
-	ret = stat(filename, &s);
-	if (ret) {
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
 		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
 		return -errno;
 	}
 
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(-ret));
-		return -errno;
+	fsize = lseek(fd, 0, SEEK_END);
+	if (fsize == -1) {
+		fprintf(stderr, "Cannot get size %s: %s\n", filename, strerror(errno));
+		ret = -errno;
+		goto close;
 	}
 
-	if (s.st_size < max_size)
-		max_size = s.st_size;
+	if (fsize < max_size)
+		max_size = fsize;
 
-	buf = mmap(NULL, max_size, PROT_READ, MAP_PRIVATE, fd, 0);
-	if (buf == MAP_FAILED) {
-		close(fd);
-		return -errno;
+	if (lseek(fd, 0, SEEK_SET) == -1) {
+		fprintf(stderr, "Cannot seek to start %s: %s\n", filename, strerror(errno));
+		ret = -errno;
+		goto close;
+	}
+
+	buf = malloc(max_size);
+	if (!buf) {
+		fprintf(stderr, "Cannot allocate memory\n");
+		ret = -ENOMEM;
+		goto close;
 	}
 
 	*outbuf = buf;
-	*size = max_size;
+	while (*size < max_size) {
+		rsize = read(fd, buf, max_size-*size);
+		if (rsize == 0) {
+			ret = -EIO;
+			goto free;
+		} else if (rsize < 0) {
+			if (errno == EAGAIN)
+				continue;
+			else {
+				ret = -errno;
+				goto free;
+			}
+		} /* ret > 0 */
+		buf += rsize;
+		*size += rsize;
+	}
 
-	return 0;
+	ret = 0;
+	goto close;
+free:
+	*outbuf = NULL;
+	free(buf);
+close:
+	close(fd);
+	return ret;
 }
 
 static unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
