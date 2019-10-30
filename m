Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrQu-0002Xj-EB
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 17:06:57 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Oct 2019 18:06:52 +0100
Message-Id: <20191030170653.5559-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/2] mfd: da9063: fix TWDSCALE debug message
To: barebox@lists.infradead.org, p.zabel@pengutronix.de, enrico.scholz@sigma-chemnitz.de

The TWDSCALE is the found scale + 1 as described in the datasheets
for the DA9062/3 devices. The driver logic is correct just the debug
message is wrong.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mfd/da9063.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index f0381944d9..4d459c7f18 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -270,7 +270,7 @@ static int da9063_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 		while (timeout > (2048 << scale) && scale <= 6)
 			scale++;
 		dev_dbg(dev, "calculated TWDSCALE=%u (req=%ims calc=%ims)\n",
-				scale, timeout, 2048 << scale);
+			scale + 1, timeout, 2048 << scale);
 		scale++; /* scale 0 disables the WD */
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
