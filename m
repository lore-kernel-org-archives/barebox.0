Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbT-0008G0-Um
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:23 +0200
Message-Id: <20170331070346.26878-20-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/42] state: backend_bucket_direct: max_size is always given
To: Barebox List <barebox@lists.infradead.org>

max_size is always != 0, so if(direct->max_size) can be skipped.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_direct.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 9996ac2919..b72e8adb96 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -103,7 +103,7 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
 	int ret;
 	struct state_backend_storage_bucket_direct_meta meta;
 
-	if (direct->max_size && len > direct->max_size - sizeof(meta))
+	if (len > direct->max_size - sizeof(meta))
 		return -E2BIG;
 
 	ret = lseek(direct->fd, direct->offset, SEEK_SET);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
