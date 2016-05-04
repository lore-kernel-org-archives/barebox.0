Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22c.google.com ([2a00:1450:400c:c09::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axrFo-0003Dq-HE
 for barebox@lists.infradead.org; Wed, 04 May 2016 07:29:53 +0000
Received: by mail-wm0-x22c.google.com with SMTP id e201so175089348wme.0
 for <barebox@lists.infradead.org>; Wed, 04 May 2016 00:29:30 -0700 (PDT)
From: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Date: Wed,  4 May 2016 09:28:55 +0200
Message-Id: <1462346935-31609-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Subject: [PATCH] net: fec: add simple support for fixed-link
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
---
 drivers/net/fec_imx.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 696483f..31802c2 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -669,6 +669,8 @@ static int fec_probe(struct device_d *dev)
 	enum fec_type type;
 	int phy_reset;
 	u32 msec = 1;
+	struct device_node *fixed_link_node;
+	int speed;
 
 	ret = dev_get_drvdata(dev, (const void **)&type);
 	if (ret)
@@ -716,6 +718,16 @@ static int fec_probe(struct device_d *dev)
 		gpio_set_value(phy_reset, 1);
 	}
 
+	fixed_link_node = of_get_child_by_name(dev->device_node, "fixed-link");
+	if (fixed_link_node) {
+		if (!of_property_read_u32(fixed_link_node, "speed", &speed)) {
+			if (speed == 100)
+				fec->phy_flags |= PHYLIB_FORCE_100;
+			else if (speed == 10)
+				fec->phy_flags |= PHYLIB_FORCE_10;
+		}
+	}
+
 	/* Reset chip. */
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
 	while(readl(fec->regs + FEC_ECNTRL) & 1) {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
