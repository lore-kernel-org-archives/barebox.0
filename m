Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0T-0002yK-FZ
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:37 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:09 +0200
Message-Id: <20190822055114.931-7-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH 06/11] smc911x: fix inverted poll-for-ready
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

The ! operator is applied wrongly to only smc91xx_reg_read's return value,
when probably the intention was for it to apply to the whole expression.

However, wait_on_timeout keeps looping while the condition is false,
so dropping the ! is the right thing to do. Do the right thing.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/net/smc911x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 0d5dcb31ee0e..ea7cea5f1bc4 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -540,7 +540,7 @@ static int smc911x_probe(struct device_d *dev)
 	 * poll the READY bit in PMT_CTRL. Any other access to the device is
 	 * forbidden while this bit isn't set. Try for 100ms
 	 */
-	ret = wait_on_timeout(100 * MSECOND, !smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY);
+	ret = wait_on_timeout(100 * MSECOND, smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY);
 	if (!ret) {
 		dev_err(dev, "Device not READY in 100ms aborting\n");
 		return -ENODEV;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
