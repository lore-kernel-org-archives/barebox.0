Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kr98J-0000mJ-VW
 for barebox@lists.infradead.org; Mon, 21 Dec 2020 00:33:04 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 21 Dec 2020 01:32:51 +0100
Message-Id: <20201221003251.83042-3-ahmad@a3f.at>
In-Reply-To: <20201221003251.83042-1-ahmad@a3f.at>
References: <20201221003251.83042-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] regulator: stm32-pwr: don't propagate regulator turn-off
 to supply
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de

Linux walks up the regulator supply chain in the core code, which we
don't do in barebox. Instead the stm32-pwr driver did enable/disable its
parent manually. This is problematic, because it doesn't respect
the regulator-always-on flag the parent supply may have, leading to
prohibited disabling of regulators. Work around this by dropping the
regulator disable altogether and just enable the parent supply
unconditionally.

When we gain proper regulator supply chain handling, this patch can be
reverted.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/regulator/stm32-pwr.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
index 7df8074ba78e..4cb46b081abb 100644
--- a/drivers/regulator/stm32-pwr.c
+++ b/drivers/regulator/stm32-pwr.c
@@ -86,8 +86,6 @@ static int stm32_pwr_reg_enable(struct regulator_dev *rdev)
 	int ret;
 	u32 val;
 
-	regulator_enable(priv->supply);
-
 	val = readl(priv->base + REG_PWR_CR3);
 	val |= rdev->desc->enable_mask;
 	writel(val, priv->base + REG_PWR_CR3);
@@ -120,8 +118,6 @@ static int stm32_pwr_reg_disable(struct regulator_dev *rdev)
 		dev_err(rdev->dev, "%s: regulator disable timed out!\n",
 			desc->name);
 
-	regulator_disable(priv->supply);
-
 	return ret;
 }
 
@@ -194,6 +190,8 @@ static int stm32_pwr_regulator_probe(struct device_d *dev)
 				desc->name, ret);
 			goto release_region;
 		}
+
+		regulator_enable(priv->supply);
 	}
 
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
