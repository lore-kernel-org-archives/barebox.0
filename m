Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvIg-0006Vj-Qt
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:42:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 17:42:44 +0200
Message-Id: <20200928154247.15619-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200928154247.15619-1-a.fatoum@pengutronix.de>
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/7] aiodev: lm75: fix out-of-bounds write on 64-bit SoCs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Probing the lm75 device driver on 64 bit systems invokes
undefined behavior, because of an errant cast. Fix this.

This has a side-effect: Whereas before, probing devices matched by
driver name failed with -ENODEV, they are now considered to be
compatible to adt75 instead. As we don't depend on this, this
is deemed acceptable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/aiodev/lm75.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/aiodev/lm75.c b/drivers/aiodev/lm75.c
index 8186fd2c2b97..4bdccaad5828 100644
--- a/drivers/aiodev/lm75.c
+++ b/drivers/aiodev/lm75.c
@@ -109,9 +109,7 @@ static int lm75_probe(struct device_d *dev)
 	int new, ret;
 	enum lm75_type kind;
 
-	ret = dev_get_drvdata(dev, (const void **)&kind);
-	if (ret)
-		return ret;
+	kind = (enum lm75_type)device_get_match_data(dev);
 
 	data = xzalloc(sizeof(*data));
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
