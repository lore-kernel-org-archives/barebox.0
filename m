Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZJIV-0000tK-Ca
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 16:32:16 +0000
Received: by mail-pg0-x244.google.com with SMTP id z20so8943148pgv.6
 for <barebox@lists.infradead.org>; Wed, 10 Jan 2018 08:32:05 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 10 Jan 2018 08:31:59 -0800
Message-Id: <20180110163159.16379-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i.MX: ecspi: Enable imx->clk as a part of initialization
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Some SoCs (e. g. i.MX7) do not enable this clock by default, so add
code to take care of that in the driver.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/imx_spi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 78198798a..30ed97c25 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -621,6 +621,13 @@ static int imx_spi_probe(struct device_d *dev)
 		goto err_free;
 	}
 
+	ret = clk_enable(imx->clk);
+	if (ret) {
+		dev_err(dev, "Failed to enable clock: %s\n",
+			strerror(ret));
+		return ret;
+	}
+
 	imx->chipselect = devdata->chipselect;
 	imx->xchg_single = devdata->xchg_single;
 	imx->do_transfer = devdata->do_transfer;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
