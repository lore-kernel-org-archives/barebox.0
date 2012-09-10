Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TB2FG-0007oU-47
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 11:33:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6B3E5BF0E7
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 13:33:30 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 10 Sep 2012 13:33:29 +0200
Message-Id: <1347276809-8029-1-git-send-email-j.weitzel@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] smsc911x: Check platformdata pointer
To: barebox@lists.infradead.org

If pdata is NULL smc911x_probe will crash. Checking the zero initialized
priv->shift results in default configuration if pdata is not set.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/net/smc911x.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index bc1e001..f697608 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -435,7 +435,7 @@ static int smc911x_probe(struct device_d *dev)
 		priv->shift = pdata->shift;
 
 	if (is_32bit) {
-		if (pdata->shift) {
+		if (priv->shift) {
 			priv->reg_read = __smc911x_reg_readl_shift;
 			priv->reg_write = __smc911x_reg_writel_shift;
 		} else {
@@ -443,7 +443,7 @@ static int smc911x_probe(struct device_d *dev)
 			priv->reg_write = __smc911x_reg_writel;
 		}
 	} else {
-		if (pdata->shift) {
+		if (priv->shift) {
 			priv->reg_read = __smc911x_reg_readw_shift;
 			priv->reg_write = __smc911x_reg_writew_shift;
 		} else {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
