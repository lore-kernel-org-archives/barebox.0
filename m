Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmn-00058l-DR
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:55 +0000
Received: by mail-pf1-x432.google.com with SMTP id n22so10810871pfa.3
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:21 -0800
Message-Id: <20190307074926.20539-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/17] state: Fix lseek error check in
 state_backend_bucket_direct_read()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use 'int' to store lseek()'s return value to avoid problems with
large seek offsets. While at it, make sure to populate return error
code from 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/state/backend_bucket_direct.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 1f00b0fb2..152431214 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -56,10 +56,9 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 	void *buf;
 	int ret;
 
-	ret = lseek(direct->fd, direct->offset, SEEK_SET);
-	if (ret < 0) {
-		dev_err(direct->dev, "Failed to seek file, %d\n", ret);
-		return ret;
+	if (lseek(direct->fd, direct->offset, SEEK_SET) != direct->offset) {
+		dev_err(direct->dev, "Failed to seek file, %d\n", -errno);
+		return -errno;
 	}
 	ret = read_full(direct->fd, &meta, sizeof(meta));
 	if (ret < 0) {
@@ -77,10 +76,11 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 			return -EINVAL;
 		}
 		read_len = direct->max_size;
-		ret = lseek(direct->fd, direct->offset, SEEK_SET);
-		if (ret < 0) {
-			dev_err(direct->dev, "Failed to seek file, %d\n", ret);
-			return ret;
+		if (lseek(direct->fd, direct->offset, SEEK_SET) !=
+		    direct->offset) {
+			dev_err(direct->dev, "Failed to seek file, %d\n",
+				-errno);
+			return -errno;
 		}
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
