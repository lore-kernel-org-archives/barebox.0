Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwR-0003nM-Ni
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:09 +0000
Received: by mail-pa0-x22a.google.com with SMTP id ho8so1499549pac.2
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:11 -0800
Message-Id: <1455672559-25061-11-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/18] fec_imx: Free phy_reset GPIO if when probe fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index c059882..d132586 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -732,7 +732,7 @@ static int fec_probe(struct device_d *dev)
 
 		ret = gpio_direction_output(phy_reset, 0);
 		if (ret)
-			goto release_res;
+			goto free_gpio;
 
 		mdelay(msec);
 		gpio_set_value(phy_reset, 1);
@@ -772,7 +772,7 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	if (ret)
-		goto release_res;
+		goto free_gpio;
 
 	fec_init(edev);
 
@@ -792,6 +792,9 @@ static int fec_probe(struct device_d *dev)
 
 	return 0;
 
+free_gpio:
+	if (gpio_is_valid(phy_reset))
+		gpio_free(phy_reset);
 release_res:
 	release_region(res);
 disable_clk:
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
