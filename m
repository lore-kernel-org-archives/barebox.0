Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkIbm-00018k-KQ
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 21:20:15 +0000
Received: by wiclk2 with SMTP id lk2so46001181wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 14:19:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu,  8 Oct 2015 23:19:45 +0200
Message-Id: <1444339185-17508-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH] fs: Fix memcpy_sz for remaining count/rwsize
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

When using memcpy_sz with rwsize != 1 integer division of
count/rwsize may leave some bytes of the request uncopied if
count is not a multiple of rwsize.

Fix this behavior by decrementing count by rwsize instead of
integer division and use plain memcpy for the remaining bytes.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 fs/fs.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index c041e41bb51b..ccbda22d2692 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1580,9 +1580,7 @@ static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
 
 	rwsize = rwsize >> O_RWSIZE_SHIFT;
 
-	count /= rwsize;
-
-	while (count-- > 0) {
+	while (count > 0) {
 		switch (rwsize) {
 		case 1:
 			*((u8 *)dst) = *((u8 *)src);
@@ -1599,7 +1597,12 @@ static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
 		}
 		dst += rwsize;
 		src += rwsize;
+		count -= rwsize;
 	}
+
+	/* copy remaining bytes with plain memcpy */
+	if (count)
+		memcpy(dst, src, count);
 }
 
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
