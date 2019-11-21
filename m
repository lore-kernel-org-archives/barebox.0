Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXn7s-0007Gi-QZ
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 14:08:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iXn7q-0000XE-02
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 15:08:02 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 21 Nov 2019 15:08:01 +0100
Message-Id: <20191121140801.18955-1-l.stach@pengutronix.de>
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
Subject: [PATCH] mfd: da9053: fix typo in variable name
To: barebox@lists.infradead.org

Fixes: 06928c7d1758 (mfd: da9053: use new reset_source_set_device)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/da9053.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 1faba813bee8..4c31beb26701 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -235,7 +235,7 @@ static void da9053_detect_reset_source(struct da9053_priv *da9053)
 	else
 		return;
 
-	reset_source_set_device(da9053->dev, ltype);
+	reset_source_set_device(da9053->dev, type);
 
 	ret = da9053_reg_write(da9053, DA9053_FAULTLOG_REG, val);
 	if (ret < 0)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
