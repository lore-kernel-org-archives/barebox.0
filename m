Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f51.google.com ([74.125.83.51])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8SKg-0001HH-Mp
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 09:20:51 +0000
Received: by mail-ee0-f51.google.com with SMTP id d17so4355885eek.38
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 01:20:48 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 21 Feb 2013 10:20:38 +0100
Message-Id: <1361438438-27960-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] imx_spi: fix bus-num setup
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/spi/imx_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 71fac3d..950180f 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -533,6 +533,7 @@ static int imx_spi_probe(struct device_d *dev)
 
 	master = &imx->master;
 	master->dev = dev;
+	master->bus_num = dev->id;
 
 	master->setup = imx_spi_setup;
 	master->transfer = imx_spi_transfer;
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
