Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0kmK-00019b-PG
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:15:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Apr 2017 10:15:31 +0200
Message-Id: <20170419081531.10935-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] state: backend_bucket_circular: Do not leak memory
To: Barebox List <barebox@lists.infradead.org>

buf was just allocated, free it before returning an error.

Reported-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 5279ec9ce2..832f44e599 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -385,7 +385,7 @@ static int state_backend_bucket_circular_init(
 
 	ret = state_mtd_peb_read(circ, buf, 0, circ->max_size);
 	if (ret && ret != -EUCLEAN)
-		return ret;
+		goto out;
 
 	for (sub_offset = circ->max_size - circ->writesize; sub_offset >= 0;
 	     sub_offset -= circ->writesize) {
@@ -408,9 +408,11 @@ static int state_backend_bucket_circular_init(
 	circ->write_area = sub_offset + circ->writesize;
 	circ->last_written_length = written_length;
 
+	ret = 0;
+out:
 	free(buf);
 
-	return 0;
+	return ret;
 }
 
 static void state_backend_bucket_circular_free(struct
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
