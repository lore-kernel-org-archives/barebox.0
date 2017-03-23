Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2gm-0003wM-SA
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:22:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Mar 2017 14:21:42 +0100
Message-Id: <20170323132142.28871-2-s.hauer@pengutronix.de>
In-Reply-To: <20170323132142.28871-1-s.hauer@pengutronix.de>
References: <20170323132142.28871-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] state: bucket_circular: -EUCLEAN means data could be read
To: Barebox List <barebox@lists.infradead.org>

-EUCLEAN returned from state_mtd_peb_read() means that the
data shall still be used. This fixes initialization of buckets
which need cleanup

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index d8504e035c..9cb9dce2ac 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -390,7 +390,7 @@ static int state_backend_bucket_circular_init(
 
 		ret = state_mtd_peb_read(circ, buf, sub_offset,
 					 circ->writesize);
-		if (ret)
+		if (ret && ret != -EUCLEAN)
 			return ret;
 
 		ret = mtd_buf_all_ff(buf, circ->writesize);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
