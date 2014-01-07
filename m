Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp11.mail.ru ([94.100.176.85])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0bhl-0008O7-L8
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:48:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  7 Jan 2014 22:48:17 +0400
Message-Id: <1389120497-26828-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] of: platform: Fix possible crash
To: barebox@lists.infradead.org

"dev" may uninitialized or points to incorrect device.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/of/platform.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index e75a69b..5cd32fc 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -174,9 +174,6 @@ static struct device_d *of_platform_device_create(struct device_node *np,
 		}
 	}
 
-	debug("register device 0x%08x\n",
-		(num_reg) ? dev->resource[0].start : (-1));
-
 	/* setup generic device info */
 	dev = xzalloc(sizeof(*dev));
 	dev->id = DEVICE_ID_SINGLE;
@@ -186,6 +183,9 @@ static struct device_d *of_platform_device_create(struct device_node *np,
 	dev->num_resources = num_reg;
 	of_device_make_bus_id(dev);
 
+	debug("register device 0x%08x\n",
+		(num_reg) ? dev->resource[0].start : (-1));
+
 	ret = platform_device_register(dev);
 	if (!ret)
 		return dev;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
