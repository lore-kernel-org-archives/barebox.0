Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x236.google.com ([2607:f8b0:400e:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2ED-0007d6-48
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:34 +0000
Received: by mail-pf0-x236.google.com with SMTP id x3so56149261pfb.1
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:40 -0700
Message-Id: <1458099232-9050-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/16] fec_imx: Free phy_reset GPIO if when probe fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index da4eb55..e7dbc16 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -701,7 +701,7 @@ static int fec_probe(struct device_d *dev)
 
 		ret = gpio_direction_output(phy_reset, 0);
 		if (ret)
-			goto release_res;
+			goto free_gpio;
 
 		mdelay(msec);
 		gpio_set_value(phy_reset, 1);
@@ -741,7 +741,7 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	if (ret)
-		goto release_res;
+		goto free_gpio;
 
 	fec_init(edev);
 
@@ -761,6 +761,9 @@ static int fec_probe(struct device_d *dev)
 
 	return 0;
 
+free_gpio:
+	if (gpio_is_valid(phy_reset))
+		gpio_free(phy_reset);
 release_res:
 	release_region(iores);
 disable_clk:
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
