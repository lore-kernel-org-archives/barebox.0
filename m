Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiIoJ-0000lf-8z
 for barebox@lists.infradead.org; Thu, 08 May 2014 07:32:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 May 2014 09:31:36 +0200
Message-Id: <1399534299-27051-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
References: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] spi: i.MX: Move to coredevice_initcall
To: barebox@lists.infradead.org

SPI is often used by other devices, so make sure it's initialized
early.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index e07cf1a..3146339 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -586,4 +586,4 @@ static struct driver_d imx_spi_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_spi_dt_ids),
 	.id_table = imx_spi_ids,
 };
-device_platform_driver(imx_spi_driver);
+coredevice_platform_driver(imx_spi_driver);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
