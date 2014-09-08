Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQspl-0004mg-7w
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:53:55 +0000
Received: by mail-la0-f50.google.com with SMTP id ty20so2025886lab.23
 for <barebox@lists.infradead.org>; Sun, 07 Sep 2014 23:53:28 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  8 Sep 2014 10:53:04 +0400
Message-Id: <1410159189-17328-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/7] net: ethoc: add device tree support
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
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
