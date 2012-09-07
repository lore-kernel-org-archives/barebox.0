Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9zHF-00028P-Ud
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 14:11:23 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E659EFF96E4
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 16:19:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 16:11:39 +0200
Message-Id: <1347027099-1058-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] smc911x: fix typo pn check if the device is ready before
 using it
To: barebox@lists.infradead.org

the check need to be inverted

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc911x.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 3ccb0ef..bc1e001 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -456,7 +456,7 @@ static int smc911x_probe(struct device_d *dev)
 	 * poll the READY bit in PMT_CTRL. Any other access to the device is
 	 * forbidden while this bit isn't set. Try for 100ms
 	 */
-	ret = wait_on_timeout(100 * MSECOND, smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY);
+	ret = wait_on_timeout(100 * MSECOND, !smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY);
 	if (!ret) {
 		dev_err(dev, "Device not READY in 100ms aborting\n");
 		return -ENODEV;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
