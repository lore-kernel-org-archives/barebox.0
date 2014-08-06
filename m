Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XF8yw-0004J8-Rz
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 21:42:51 +0000
Received: by mail-lb0-f170.google.com with SMTP id l4so119249lbv.1
 for <barebox@lists.infradead.org>; Wed, 06 Aug 2014 14:42:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Aug 2014 01:42:11 +0400
Message-Id: <1407361335-14875-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
References: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/6] net: ethoc: add device tree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/net/ethoc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index 679e1e5..35d7d46 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -565,8 +565,14 @@ static int ethoc_probe(struct device_d *dev)
 	return 0;
 }
 
+static struct of_device_id ethoc_dt_ids[] = {
+	{ .compatible = "opencores,ethoc", },
+	{ }
+};
+
 static struct driver_d ethoc_driver = {
 	.name  = "ethoc",
 	.probe = ethoc_probe,
+	.of_compatible = DRV_OF_COMPAT(ethoc_dt_ids),
 };
 device_platform_driver(ethoc_driver);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
