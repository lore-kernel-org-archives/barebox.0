Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMtrI-0002a9-AX
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 12:01:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Nov 2018 13:01:11 +0100
Message-Id: <20181114120112.20748-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubiformat: print messages after checking a block is not bad
To: Barebox List <barebox@lists.infradead.org>

ubiformat prints its "flashing eraseblock x" and "formatting eraseblock
x" messages before having checked that a block is actually good. This
is misleading, so first check if a block is good and only if it is
print a message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ubiformat.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index 9fe1c7c501..0811525bd2 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -235,6 +235,9 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 		int err, new_len;
 		long long ec;
 
+		if (si->ec[eb] == EB_BAD)
+			continue;
+
 		if (!args->quiet && !args->verbose) {
 			if (is_timeout(lastprint, 300 * MSECOND) ||
 			    eb == eb_cnt - 1) {
@@ -244,9 +247,6 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 			}
 		}
 
-		if (si->ec[eb] == EB_BAD)
-			continue;
-
 		if (args->verbose) {
 			normsg_cont("eraseblock %d: erase", eb);
 		}
@@ -357,6 +357,9 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 	for (eb = start_eb; eb < eb_cnt; eb++) {
 		long long ec;
 
+		if (si->ec[eb] == EB_BAD)
+			continue;
+
 		if (!args->quiet && !args->verbose) {
 			if (is_timeout(lastprint, 300 * MSECOND) ||
 			    eb == eb_cnt - 1) {
@@ -366,9 +369,6 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 			}
 		}
 
-		if (si->ec[eb] == EB_BAD)
-			continue;
-
 		if (args->override_ec)
 			ec = args->ec;
 		else if (si->ec[eb] <= EC_MAX)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
