Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueh9b-0002QS-Td
 for barebox@lists.infradead.org; Tue, 21 May 2013 07:38:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 09:38:11 +0200
Message-Id: <1369121895-11282-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
References: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] pinctrl: imx-iomux-v3: only register pinctrl when device
 node is available
To: barebox@lists.infradead.org

The pinctrl support is devicetree only, so only register it
when we actually have a devicetree. Otherwise we crash boards
using the iomux-v3 from platform code in pinctrl_register().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 3ff3c15..c867a23 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -177,7 +177,7 @@ static int imx_iomux_v3_probe(struct device_d *dev)
 	iomuxv3_base = dev_request_mem_region(dev, 0);
 	iomuxv3_dev = dev;
 
-	if (IS_ENABLED(CONFIG_PINCTRL))
+	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
 		ret = imx_pinctrl_dt(dev, iomuxv3_base);
 
 	return ret;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
