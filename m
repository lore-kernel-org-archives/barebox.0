Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfdj-0004VW-OE
 for barebox@lists.infradead.org; Thu, 09 May 2019 09:47:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 May 2019 11:46:54 +0200
Message-Id: <20190509094654.1874-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] crypto: digest: fix digesting file windows
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

When digesting a file we always try toread PAGE_SIZE bytes. When we get a
short read because we reached the file end then the code works
correctly. If instead we only want to digest a part of the file then
we must make sure to only read up to 'size' bytes.

Fixes: b77582effd ("crypto: digest: Split memory vs. file code into separate functions")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/digest.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index 2c4de2e4f1..360c261e40 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -233,17 +233,18 @@ static int digest_update_from_fd(struct digest *d, int fd,
 	}
 
 	while (size) {
-		const ssize_t now = read(fd, buf, PAGE_SIZE);
-		if (now < 0) {
-			ret = now;
+		unsigned long now = min_t(typeof(size), PAGE_SIZE, size);
+
+		ret = read(fd, buf, now);
+		if (ret < 0) {
 			perror("read");
 			goto out_free;
 		}
 
-		if (!now)
+		if (!ret)
 			break;
 
-		ret = digest_update_interruptible(d, buf, now);
+		ret = digest_update_interruptible(d, buf, ret);
 		if (ret)
 			goto out_free;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
