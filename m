Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP21b-00014S-9t
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 10:13:24 +0000
Received: from geraet.fritz.box (unknown [91.217.168.176])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 3C360FF812
 for <barebox@lists.infradead.org>; Mon, 28 Oct 2019 10:13:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Oct 2019 11:12:57 +0100
Message-Id: <20191028101257.31352-1-ahmad@a3f.at>
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
Subject: [PATCH] mfd: superio: use strerrorp helper instead of open-coding
To: barebox@lists.infradead.org

Apparently, we have a helper for strerror(-PTR_ERR(regmap)). Use it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/mfd/superio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/superio.c b/drivers/mfd/superio.c
index 0f08d56cb357..12d74b40f6f8 100644
--- a/drivers/mfd/superio.c
+++ b/drivers/mfd/superio.c
@@ -88,7 +88,7 @@ void superio_chip_add(struct superio_chip *siochip)
 			     &superio_regmap_config);
 	if (IS_ERR(regmap))
 		pr_warn("creating %s regmap failed: %s\n",
-			chipname, strerror(-PTR_ERR(regmap)));
+			chipname, strerrorp(regmap));
 
 	ret = regmap_register_cdev(regmap, chipname);
 	if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
