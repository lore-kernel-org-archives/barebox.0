Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVJJp-0001YM-K1
 for barebox@lists.infradead.org; Fri, 18 May 2012 09:17:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 May 2012 11:17:48 +0200
Message-Id: <1337332668-13419-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] lseek: return -1 instead of -errno
To: barebox@lists.infradead.org

The patch making errno a positive value has another bug:
lseek was switched to return -errno instead of -1. This does not
work since we can lseek we can address the whole 4G address space,
have of which has a negative offset when interpreted as a signed
integer. Let lseek return -1 on failure again instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/crc.c |    2 +-
 commands/mem.c |    4 ++--
 fs/fs.c        |    4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/commands/crc.c b/commands/crc.c
index a0d3af6..df22941 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -48,7 +48,7 @@ static int file_crc(char* filename, ulong start, ulong size, ulong *crc,
 
 	if (start > 0) {
 		ret = lseek(fd, start, SEEK_SET);
-		if (ret < 0) {
+		if (ret == -1) {
 			perror("lseek");
 			goto out;
 		}
diff --git a/commands/mem.c b/commands/mem.c
index f32e5d8..080bfde 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -122,10 +122,10 @@ static int open_and_lseek(const char *filename, int mode, off_t pos)
 		return fd;
 
 	ret = lseek(fd, pos, SEEK_SET);
-	if (ret < 0) {
+	if (ret == -1) {
 		perror("lseek");
 		close(fd);
-		return ret;
+		return -errno;
 	}
 
 	return fd;
diff --git a/fs/fs.c b/fs/fs.c
index e5ae6d5..9cda1d9 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -732,13 +732,13 @@ off_t lseek(int fildes, off_t offset, int whence)
 		goto out;
 	}
 
-	ret = fsdrv->lseek(dev, f, pos);
+	return fsdrv->lseek(dev, f, pos);
 
 out:
 	if (ret)
 		errno = -ret;
 
-	return ret;
+	return -1;
 }
 EXPORT_SYMBOL(lseek);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
