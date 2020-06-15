Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCa-0007Jy-27
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:23 +0200
Message-Id: <20200615060229.7533-6-s.hauer@pengutronix.de>
In-Reply-To: <20200615060229.7533-1-s.hauer@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] digest: Drop usage of memmap
To: Barebox List <barebox@lists.infradead.org>

digest_file_window() first tries to memmap the file before it falls back
to reading it. This is quite unnecessary, we can just always read.

Moreover, memmapping a file has problems with the current code. A
"md5sum foo" result in the filesize argument being MAX_LFS_FILESIZE.
This is fine for files where the file is just read up to the end in
this case, but for memmapped buffers this results in digesting
MAX_LFS_FILESIZE bytes which is wrong. This problem is not apparent
at the moment as there are only a few files which are memmappable,
and on these (/dev/mem, /dev/ram0) digest commands are normally
called with an explicit size argument. This changes once ramfs starts
supporting memmap, so better drop memmapping in the digest code now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/digest.c | 27 +--------------------------
 1 file changed, 1 insertion(+), 26 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index e67e8fba0d..d23245e15f 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -253,32 +253,12 @@ out_free:
 	return ret;
 }
 
-static int digest_update_from_memory(struct digest *d,
-				     const unsigned char *buf,
-				     loff_t size)
-{
-	while (size) {
-		unsigned long now = min_t(typeof(size), PAGE_SIZE, size);
-		int ret;
-
-		ret = digest_update_interruptible(d, buf, now);
-		if (ret)
-			return ret;
-
-		size -= now;
-		buf  += now;
-	}
-
-	return 0;
-}
-
 int digest_file_window(struct digest *d, const char *filename,
 		       unsigned char *hash,
 		       const unsigned char *sig,
 		       loff_t start, loff_t size)
 {
 	int fd, ret;
-	unsigned char *buf;
 
 	ret = digest_init(d);
 	if (ret)
@@ -290,12 +270,7 @@ int digest_file_window(struct digest *d, const char *filename,
 		return -errno;
 	}
 
-	buf = memmap(fd, PROT_READ);
-	if (buf == MAP_FAILED)
-		ret = digest_update_from_fd(d, fd, start, size);
-	else
-		ret = digest_update_from_memory(d, buf + start, size);
-
+	ret = digest_update_from_fd(d, fd, start, size);
 	if (ret)
 		goto out;
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
