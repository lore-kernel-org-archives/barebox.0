Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPAGf-0006qr-Ro
 for barebox@lists.infradead.org; Mon, 18 Jul 2016 15:15:39 +0000
Received: by mail-pf0-x243.google.com with SMTP id i6so11666708pfe.0
 for <barebox@lists.infradead.org>; Mon, 18 Jul 2016 08:15:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 18 Jul 2016 08:14:49 -0700
Message-Id: <1468854889-6057-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
References: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 7/7] i.MX: ocotp: Register regmap against orignal device
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Register regmap against orignal device passed to probe, this way further
in the code/call-chain cdev's device_node will be correctly populated
and it will be discoverable via cdev_by_device_node()

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 1dc9108..17b944b 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -404,7 +404,7 @@ static int imx_ocotp_probe(struct device_d *dev)
 	priv->map_config.reg_stride = 4;
 	priv->map_config.max_register = data->num_regs - 1;
 
-	priv->map = regmap_init(&priv->dev, &imx_ocotp_regmap_bus, priv, &priv->map_config);
+	priv->map = regmap_init(dev, &imx_ocotp_regmap_bus, priv, &priv->map_config);
 	if (IS_ERR(priv->map))
 		return PTR_ERR(priv->map);
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
