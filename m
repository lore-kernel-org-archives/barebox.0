Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmn-0005AD-Bv
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id 125so10374009pgc.12
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:22 -0800
Message-Id: <20190307074926.20539-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/17] state: Fix lseek error check in
 state_backend_bucket_direct_write()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use 'int' to store lseek()'s return value to avoid problems with
large seek offsets. While at it, make sure to populate return error
code from 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/state/backend_bucket_direct.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 152431214..95ddb9310 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -113,10 +113,9 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
 	if (len > direct->max_size - sizeof(meta))
 		return -E2BIG;
 
-	ret = lseek(direct->fd, direct->offset, SEEK_SET);
-	if (ret < 0) {
-		dev_err(direct->dev, "Failed to seek file, %d\n", ret);
-		return ret;
+	if (lseek(direct->fd, direct->offset, SEEK_SET) != direct->offset) {
+		dev_err(direct->dev, "Failed to seek file, %d\n", -errno);
+		return -errno;
 	}
 
 	/* write the meta data only if there is head room */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
