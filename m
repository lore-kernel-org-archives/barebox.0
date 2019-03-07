Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmZ-0004tS-GF
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id n22so10810491pfa.3
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:10 -0800
Message-Id: <20190307074926.20539-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/17] libfile: Make failure path of open_and_lseek()
 consistent
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change the code of open_and_lseek() to make sure that opened file is
closed in every failure path as well. While at it make sure we don't
mix returning function return code and returning errno by opting to
always return the former.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/libfile.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 9a223d232..089749253 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -522,12 +522,12 @@ err_out1:
  * @mode:	The file open mode
  * @pos:	The position to lseek to
  *
- * Return: If successful this function returns a positive filedescriptor
- *         number, otherwise a negative error code is returned
+ * Return: If successful this function returns a positive
+ *         filedescriptor number, otherwise -1 is returned
  */
 int open_and_lseek(const char *filename, int mode, loff_t pos)
 {
-	int fd, ret;
+	int fd;
 
 	fd = open(filename, mode);
 	if (fd < 0) {
@@ -541,28 +541,26 @@ int open_and_lseek(const char *filename, int mode, loff_t pos)
 	if (mode & (O_WRONLY | O_RDWR)) {
 		struct stat s;
 
-		ret = fstat(fd, &s);
-		if (ret) {
+		if (fstat(fd, &s)) {
 			perror("fstat");
-			return ret;
+			goto out;
 		}
 
-		if (s.st_size < pos) {
-			ret = ftruncate(fd, pos);
-			if (ret) {
-				perror("ftruncate");
-				return ret;
-			}
+		if (s.st_size < pos && ftruncate(fd, pos)) {
+			perror("ftruncate");
+			goto out;
 		}
 	}
 
 	if (lseek(fd, pos, SEEK_SET) != pos) {
 		perror("lseek");
-		close(fd);
-		return -errno;
+		goto out;
 	}
 
 	return fd;
+out:
+	close(fd);
+	return -1;
 }
 
 /**
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
