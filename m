Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCYc-0007EX-6d
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 18:54:43 +0000
Received: by mail-pl0-x243.google.com with SMTP id d5-v6so4410037pll.4
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 11:54:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 11:54:21 -0700
Message-Id: <20180810185421.8912-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] pinctrl: i.MX: Add code to parse "input-enable"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to parse "input-enable" and intepret it as SION bit. This is
needed for I2C configuration on i.MX8MQ EVK board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pinctrl/imx-iomux-v3.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 38451875e..d176199c5 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -117,6 +117,9 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 		if (of_get_property(np, "input-schmitt-enable", NULL))
 			share_conf_val |= SHARE_CONF_PAD_CTL_HYS;
 
+		if (of_get_property(np, "input-enable", NULL))
+			share_conf_val |= IMX_PAD_SION;
+
 		if (of_get_property(np, "bias-pull-up", NULL))
 			share_conf_val |= SHARE_CONF_PAD_CTL_PUE;
 	} else {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
