Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbc-0001ef-2p
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:45 +0200
Message-Id: <20170331070346.26878-42-s.hauer@pengutronix.de>
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
Subject: [PATCH 41/42] state: Remove -EUCLEAN check from userspace tool
To: Barebox List <barebox@lists.infradead.org>

The state code is used for the userspace tool aswell, kept in sync
manually. This patch only introduces a change for the userspace
tool, not for barebox.

In Linux userspace there is no direct possibility to check for -EUCLEAN.
To indirectly check for -EUCLEAN the state tool reads the number of
corrected bits before and after reading a block. Unfortunately it does
not take the number of acceptable bitflips into account, but instead
returns -EUCLEAN even when only a single bitflip occurred on a whole
page. To be correct the algorithm must be more complicated: We would
have to read the bitflip_threshold from sysfs. This value is per ECC
step (often 512 byte), not per page. We would have to read the page
in ECC step size chunks, testing for bitflips lower than the threshold
for each chunk. Even if we would do that, there's still another issue.
The eccstats ioctl delivers the eccstats for the whole device, so a
concurrent reader would falsify the result.

Let's decide that this is not worth the hassle and assume that no
device has enough uptime that a cleanup in barebox is not sufficient.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index d99ba39126..5279ec9ce2 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -171,33 +171,12 @@ static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ
 	dev_dbg(circ->dev, "Read state from %ld length %zd\n", offset,
 		len);
 
-	ret = ioctl(circ->fd, ECCGETSTATS, &stat1);
-	if (ret)
-		nostats = true;
 
 	ret = read_full(circ->fd, buf, len);
 	if (ret < 0) {
 		dev_err(circ->dev, "Failed to read circular storage len %zd, %d\n",
 			len, ret);
 		free(buf);
-		return ret;
-	}
-
-	if (nostats)
-		return 0;
-
-	ret = ioctl(circ->fd, ECCGETSTATS, &stat2);
-	if (ret)
-		return 0;
-
-	if (stat2.failed - stat1.failed > 0) {
-		ret = -EUCLEAN;
-		dev_dbg(circ->dev, "PEB %u has ECC error, forcing rewrite\n",
-			circ->eraseblock);
-	} else if (stat2.corrected - stat1.corrected > 0) {
-		ret = -EUCLEAN;
-		dev_dbg(circ->dev, "PEB %u is unclean, forcing rewrite\n",
-			circ->eraseblock);
 	}
 
 	return ret;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
