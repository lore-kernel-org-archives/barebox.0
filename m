Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knI92-0001O8-9y
 for barebox@lists.infradead.org; Thu, 10 Dec 2020 09:21:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 10 Dec 2020 10:21:48 +0100
Message-Id: <20201210092148.18132-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubifs: remove wrong assertion
To: Barebox List <barebox@lists.infradead.org>

In barebox copy_znode() doesn't make a copy of the znode, We are limited
to readonly support, so copy_znode() returns the original node.
tnc_delete() expects a znode to be dirty and has an assertion for this.
In a normal r/w implementation this is correct, but not in barebox, so
drop the assertion. Instead of removing it just comment it out to make
sure it won't be added again with the next ubifs kernel synchronisation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/tnc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/tnc.c b/fs/ubifs/tnc.c
index 2d7327ad84..72f9b817d8 100644
--- a/fs/ubifs/tnc.c
+++ b/fs/ubifs/tnc.c
@@ -1935,7 +1935,12 @@ static int tnc_delete(struct ubifs_info *c, struct ubifs_znode *znode, int n)
 
 	do {
 		ubifs_assert(c, !ubifs_zn_obsolete(znode));
-		ubifs_assert(c, ubifs_zn_dirty(znode));
+		/*
+		 * This assertion is invalid in barebox due to the shortcuts we take
+		 * in our readonly implementation.
+		 *
+		 * ubifs_assert(c, ubifs_zn_dirty(znode));
+		 */
 
 		zp = znode->parent;
 		n = znode->iip;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
