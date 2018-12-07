Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAcX-0000ta-BW
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:32:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id i12so1520383pfo.7
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:32:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:32:04 -0800
Message-Id: <20181207073204.3358-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] nvmem: ocotp: Make use of postcore_platform_driver macro
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/ocotp.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index e0cf35f0b..2952988f8 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -697,11 +697,4 @@ static struct driver_d imx_ocotp_driver = {
 	.probe	= imx_ocotp_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_ocotp_dt_ids),
 };
-
-static int imx_ocotp_init(void)
-{
-	platform_driver_register(&imx_ocotp_driver);
-
-	return 0;
-}
-postcore_initcall(imx_ocotp_init);
+postcore_platform_driver(imx_ocotp_driver);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
