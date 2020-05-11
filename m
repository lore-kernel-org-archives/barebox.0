Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBdE-0002or-C3
 for barebox@lists.infradead.org; Mon, 11 May 2020 16:50:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jYBdD-00052q-6Q
 for barebox@lists.infradead.org; Mon, 11 May 2020 18:50:19 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 11 May 2020 18:50:17 +0200
Message-Id: <20200511165019.22278-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] i2c: add coredevice_i2c_driver() macro
To: barebox@lists.infradead.org

Some i2c device want to be coredevices. Add a macro to avoid
boilerplate code.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/i2c/i2c.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index a694e4ab2ff1..cb65c43e4110 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -318,6 +318,8 @@ static inline int i2c_driver_register(struct driver_d *drv)
 	return register_driver(drv);
 }
 
+#define coredevice_i2c_driver(drv) \
+	register_driver_macro(coredevice, i2c, drv)
 #define device_i2c_driver(drv) \
 	register_driver_macro(device, i2c, drv)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
