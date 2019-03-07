Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmo-0005CE-Dq
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id q206so10618427pgq.4
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:23 -0800
Message-Id: <20190307074926.20539-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/17] state: Fix lseek error check in state_mtd_peb_read()
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
index da7c8421a..791f39b9b 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -162,11 +162,10 @@ static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ
 
 	offset += (off_t)circ->eraseblock * circ->mtd->erasesize;
 
-	ret = lseek(circ->fd, offset, SEEK_SET);
-	if (ret < 0) {
+	if (lseek(circ->fd, offset, SEEK_SET) != offset) {
 		dev_err(circ->dev, "Failed to set circular read position to %lld, %d\n",
-			(long long) offset, ret);
-		return ret;
+			(long long) offset, -errno);
+		return -errno;
 	}
 
 	dev_dbg(circ->dev, "Read state from %lld length %d\n", (long long) offset,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
