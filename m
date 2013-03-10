Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEZwy-0005sy-O9
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 06:41:42 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 10 Mar 2013 10:41:31 +0400
Message-Id: <1362897695-3936-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
References: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 2/6] Add more drivers to using device_platform_driver()
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/net/xgmac.c   | 8 +-------
 drivers/spi/mxs_spi.c | 8 +-------
 2 files changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/net/xgmac.c b/drivers/net/xgmac.c
index 203e682..b4bfd08 100644
--- a/drivers/net/xgmac.c
+++ b/drivers/net/xgmac.c
@@ -731,10 +731,4 @@ static struct driver_d hb_xgmac_driver = {
 	.probe = hb_xgmac_probe,
 	.of_compatible = DRV_OF_COMPAT(xgmac_dt_ids),
 };
-
-static int hb_xgmac_driver_init(void)
-{
-	debug("%s\n", __func__);
-	return platform_driver_register(&hb_xgmac_driver);
-}
-device_initcall(hb_xgmac_driver_init);
+device_platform_driver(hb_xgmac_driver);
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index 89b4d19..e15f2c2 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -276,13 +276,7 @@ static struct driver_d mxs_spi_driver = {
 	.name  = "mxs_spi",
 	.probe = mxs_spi_probe,
 };
-
-static int __init mxs_spi_init(void)
-{
-	return platform_driver_register(&mxs_spi_driver);
-}
-
-device_initcall(mxs_spi_init);
+device_platform_driver(mxs_spi_driver);
 
 MODULE_AUTHOR("Denx Software Engeneering and Michael Grzeschik");
 MODULE_DESCRIPTION("MXS SPI driver");
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
