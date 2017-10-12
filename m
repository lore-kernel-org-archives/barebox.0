Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2ai1-0004dm-AM
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 10:27:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1e2ahe-0003Lx-Du
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 12:26:58 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 12 Oct 2017 12:26:50 +0200
Message-Id: <20171012102658.17104-4-l.stach@pengutronix.de>
In-Reply-To: <20171012102658.17104-1-l.stach@pengutronix.de>
References: <20171012102658.17104-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2 04/12] clocksource: sp804: silently ignore secondary
 instaces
To: barebox@lists.infradead.org

When probing from an upstream DT, we don't always have influence on
how many timer instances are enabled. Just use the first one and
silently skip the other instances.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clocksource/amba-sp804.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
index c5ad9947cd96..66e3988b4cf8 100644
--- a/drivers/clocksource/amba-sp804.c
+++ b/drivers/clocksource/amba-sp804.c
@@ -35,8 +35,8 @@ static int sp804_probe(struct amba_device *dev, const struct amba_id *id)
 	int ret;
 
 	if (sp804_base) {
-		dev_err(&dev->dev, "single instance driver\n");
-		return -EBUSY;
+		dev_dbg(&dev->dev, "skipping secondary instance\n");
+		return 0;
 	}
 
 	sp804_clk = clk_get(&dev->dev, NULL);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
