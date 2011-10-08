Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYTV-0001d1-RZ
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 15:06:08 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 18E20DCED80
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 17:07:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:41:56 +0200
Message-Id: <1318084919-3984-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
References: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] digest: factorise file digest to common/digest.c
To: barebox@lists.infradead.org

rename it to digest_file_window

introduce digest_file to digest a file and digest_file_by_name
where we specify the algo by name

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c |   78 ++++++++--------------------------------
 common/digest.c   |  101 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/digest.h  |    8 ++++
 3 files changed, 125 insertions(+), 62 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 2a699e6..1fbffb6 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -29,71 +29,12 @@
 #include <malloc.h>
 #include <digest.h>
 
-static int file_digest(struct digest *d, char *filename,
-		       ulong start, ulong size)
-{
-	ulong len = 0;
-	int fd, now, i, ret = 0;
-	unsigned char *buf;
-
-	d->init(d);
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		perror(filename);
-		return fd;
-	}
-
-	if (start > 0) {
-		ret = lseek(fd, start, SEEK_SET);
-		if (ret == -1) {
-			perror("lseek");
-			goto out;
-		}
-	}
-
-	buf = xmalloc(4096);
-
-	while (size) {
-		now = min((ulong)4096, size);
-		now = read(fd, buf, now);
-		if (now < 0) {
-			ret = now;
-			perror("read");
-			goto out_free;
-		}
-		if (!now)
-			break;
-
-		if (ctrlc()) {
-			ret = -EINTR;
-			goto out_free;
-		}
-
-		d->update(d, buf, now);
-		size -= now;
-		len += now;
-	}
-
-	d->final(d, buf);
-
-	for (i = 0; i < d->length; i++)
-		printf("%02x", buf[i]);
-
-	printf("  %s\t0x%08lx ... 0x%08lx\n", filename, start, start + len);
-
-out_free:
-	free(buf);
-out:
-	close(fd);
-
-	return ret;
-}
-
 static int do_digest(char *algorithm, int argc, char *argv[])
 {
 	struct digest *d;
 	int ret = 0;
+	int i;
+	unsigned char *hash;
 
 	d = digest_get_by_name(algorithm);
 	BUG_ON(!d);
@@ -101,6 +42,12 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
+	hash = calloc(d->length, sizeof(unsigned char));
+	if (!hash) {
+		perror("calloc");
+		return COMMAND_ERROR_USAGE;
+	}
+
 	argv++;
 	while (*argv) {
 		char *filename = "/dev/mem";
@@ -113,12 +60,19 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 				argv++;
 		}
 
-		if (file_digest(d, filename, start, size) < 0)
+		if (digest_file_window(d, filename, hash, start, size) < 0)
 			ret = 1;
 
+		for (i = 0; i < d->length; i++)
+			printf("%02x", hash[i]);
+
+		printf("  %s\t0x%08lx ... 0x%08lx\n", filename, start, start + size);
+
 		argv++;
 	}
 
+	free(hash);
+
 	return ret;
 }
 
diff --git a/common/digest.c b/common/digest.c
index 10ad060..a327395 100644
--- a/common/digest.c
+++ b/common/digest.c
@@ -23,6 +23,9 @@
 #include <common.h>
 #include <digest.h>
 #include <malloc.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <linux/stat.h>
 #include <errno.h>
 #include <module.h>
 #include <linux/err.h>
@@ -75,3 +78,101 @@ struct digest* digest_get_by_name(char* name)
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(digest_get_by_name);
+
+int digest_file_window(struct digest *d, char *filename,
+		       unsigned char *hash,
+		       ulong start, ulong size)
+{
+	ulong len = 0;
+	int fd, now, ret = 0;
+	unsigned char *buf;
+	int flags;
+
+	d->init(d);
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		perror(filename);
+		return fd;
+	}
+
+	buf = memmap(fd, PROT_READ);
+	if (buf == (void *)-1) {
+		buf = xmalloc(4096);
+		flags = 1;
+	}
+
+	if (start > 0) {
+		if (flags) {
+			ret = lseek(fd, start, SEEK_SET);
+			if (ret == -1) {
+				perror("lseek");
+				goto out;
+			}
+		} else {
+			buf += start;
+		}
+	}
+
+	while (size) {
+		now = min((ulong)4096, size);
+		if (flags) {
+			now = read(fd, buf, now);
+			if (now < 0) {
+				ret = now;
+				perror("read");
+				goto out_free;
+			}
+			if (!now)
+				break;
+		}
+
+		if (ctrlc()) {
+			ret = -EINTR;
+			goto out_free;
+		}
+
+		d->update(d, buf, now);
+		size -= now;
+		len += now;
+	}
+
+	d->final(d, hash);
+
+out_free:
+	if (flags)
+		free(buf);
+out:
+	close(fd);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(digest_file_window);
+
+int digest_file(struct digest *d, char *filename,
+		       unsigned char *hash)
+{
+	struct stat st;
+	int ret;
+
+	ret = stat(filename, &st);
+
+	if (ret < 0)
+		return ret;
+
+	return digest_file_window(d, filename, hash, 0, st.st_size);
+}
+EXPORT_SYMBOL_GPL(digest_file);
+
+int digest_file_by_name(char *algo, char *filename,
+		       unsigned char *hash)
+{
+	struct digest *d;
+
+	d = digest_get_by_name(algo);
+	if (!d)
+		return -EIO;
+
+	return digest_file(d, filename, hash);
+}
+EXPORT_SYMBOL_GPL(digest_file_by_name);
diff --git a/include/digest.h b/include/digest.h
index 1dcfd9d..36a8e37 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -46,4 +46,12 @@ void digest_unregister(struct digest *d);
 
 struct digest* digest_get_by_name(char* name);
 
+int digest_file_window(struct digest *d, char *filename,
+		       unsigned char *hash,
+		       ulong start, ulong size);
+int digest_file(struct digest *d, char *filename,
+		       unsigned char *hash);
+int digest_file_by_name(char *algo, char *filename,
+		       unsigned char *hash);
+
 #endif /* __SH_ST_DEVICES_H__ */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
