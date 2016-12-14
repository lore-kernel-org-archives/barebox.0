Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cH93X-0004Le-7z
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 12:53:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1cH93G-0008Fc-1G
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 13:52:54 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <mgr@pengutronix.de>) id 1cH93F-0000YX-QC
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 13:52:53 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 14 Dec 2016 13:52:52 +0100
Message-Id: <20161214125252.2039-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] da9053: reset FAULTLOG after read
To: barebox@lists.infradead.org

The driver has to reset the FAULTLOG register after every read by
writing the value back. In the current case the FALUTLOG register keep
its value over every software reset and will only reset on power-off.
This drives the reset-source value unreliable.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/mfd/da9053.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 0de8c66..9adab8c 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -240,6 +240,10 @@ static void da9053_detect_reset_source(struct da9053_priv *da9053)
 	priority = of_get_reset_source_priority(da9053->dev->device_node);
 
 	reset_source_set_priority(type, priority);
+
+	ret = da9053_reg_write(da9053, DA9053_FAULTLOG_REG, val);
+	if (ret < 0)
+		return;
 }
 
 static void __noreturn da9053_force_system_reset(struct restart_handler *rst)
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
