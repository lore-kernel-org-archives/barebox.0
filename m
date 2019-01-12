Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giEbR-0002CG-A5
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 08:25:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id c25so7316972pgb.4
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 00:25:12 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 00:24:54 -0800
Message-Id: <20190112082456.7441-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190112082456.7441-1-andrew.smirnov@gmail.com>
References: <20190112082456.7441-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] crypto: digest: Split memory vs. file code into separate
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of trying to fit two rather different cases into a single
loop, split digesting memory and digesting files into separate
subroutines. While duplicating some of the code shared by both of the
while() loops this makes the body of the loop easier to follow as well
as gets rid of poorly named "flags" variable.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 crypto/digest.c | 118 ++++++++++++++++++++++++++++--------------------
 1 file changed, 70 insertions(+), 48 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index 980a694915..7b34742c52 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -211,14 +211,76 @@ void digest_free(struct digest *d)
 }
 EXPORT_SYMBOL_GPL(digest_free);
 
+static int digest_update_interruptible(struct digest *d, const void *data,
+				       unsigned long len)
+{
+	if (ctrlc())
+		return -EINTR;
+
+	return digest_update(d, data, len);
+}
+
+static int digest_update_from_fd(struct digest *d, int fd,
+				 ulong start, ulong size)
+{
+	unsigned char *buf = xmalloc(PAGE_SIZE);
+	int ret = 0;
+
+	ret = lseek(fd, start, SEEK_SET);
+	if (ret == -1) {
+		perror("lseek");
+		goto out_free;
+	}
+
+	while (size) {
+		const ssize_t now = read(fd, buf, PAGE_SIZE);
+		if (now < 0) {
+			ret = now;
+			perror("read");
+			goto out_free;
+		}
+
+		if (!now)
+			break;
+
+		ret = digest_update_interruptible(d, buf, now);
+		if (ret)
+			goto out_free;
+
+		size -= now;
+	}
+
+out_free:
+	free(buf);
+	return ret;
+}
+
+static int digest_update_from_memory(struct digest *d,
+				     const unsigned char *buf,
+				     ulong size)
+{
+	while (size) {
+		unsigned long now = min_t(typeof(size), PAGE_SIZE, size);
+		int ret;
+
+		ret = digest_update_interruptible(d, buf, now);
+		if (ret)
+			return ret;
+
+		size -= now;
+		buf  += now;
+	}
+
+	return 0;
+}
+
 int digest_file_window(struct digest *d, const char *filename,
 		       unsigned char *hash,
 		       const unsigned char *sig,
 		       ulong start, ulong size)
 {
-	int fd, now, ret = 0;
+	int fd, ret;
 	unsigned char *buf;
-	int flags = 0;
 
 	ret = digest_init(d);
 	if (ret)
@@ -231,58 +293,18 @@ int digest_file_window(struct digest *d, const char *filename,
 	}
 
 	buf = memmap(fd, PROT_READ);
-	if (buf == MAP_FAILED) {
-		buf = xmalloc(PAGE_SIZE);
-		flags = 1;
-	}
-
-	if (start > 0) {
-		if (flags) {
-			ret = lseek(fd, start, SEEK_SET);
-			if (ret == -1) {
-				perror("lseek");
-				goto out;
-			}
-		} else {
-			buf += start;
-		}
-	}
-
-	while (size) {
-		now = min((ulong)PAGE_SIZE, size);
-		if (flags) {
-			now = read(fd, buf, now);
-			if (now < 0) {
-				ret = now;
-				perror("read");
-				goto out_free;
-			}
-			if (!now)
-				break;
-		}
-
-		if (ctrlc()) {
-			ret = -EINTR;
-			goto out_free;
-		}
-
-		ret = digest_update(d, buf, now);
-		if (ret)
-			goto out_free;
-		size -= now;
+	if (buf == MAP_FAILED)
+		ret = digest_update_from_fd(d, fd, start, size);
+	else
+		ret = digest_update_from_memory(d, buf + start, size);
 
-		if (!flags)
-			buf += now;
-	}
+	if (ret)
+		goto out;
 
 	if (sig)
 		ret = digest_verify(d, sig);
 	else
 		ret = digest_final(d, hash);
-
-out_free:
-	if (flags)
-		free(buf);
 out:
 	close(fd);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
