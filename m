Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmp-0005E8-PO
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:58 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 196so10616563pgf.13
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:24 -0800
Message-Id: <20190307074926.20539-16-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/17] state: Fix lseek error check in state_mtd_peb_write()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use 'int' to store lseek()'s return value to avoid problems with
large seek offsets. While at it, make sure to populate return error
code from 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/state/backend_bucket_circular.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 791f39b9b..4676730d0 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -190,11 +190,10 @@ static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *cir
 
 	offset += circ->eraseblock * circ->mtd->erasesize;
 
-	ret = lseek(circ->fd, offset, SEEK_SET);
-	if (ret < 0) {
+	if (lseek(circ->fd, offset, SEEK_SET) != offset) {
 		dev_err(circ->dev, "Failed to set position for circular write %lld, %d\n",
-			(long long) offset, ret);
-		return ret;
+			(long long) offset, -errno);
+		return -errno;
 	}
 
 	ret = write_full(circ->fd, buf, len);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
