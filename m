Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6eZ-0001MQ-3E
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 15:50:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1iw6eW-0006h0-Ck
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 16:50:16 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1iw6eW-00019q-3Y
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 16:50:16 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 27 Jan 2020 16:50:12 +0100
Message-Id: <20200127155013.4388-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20200127155013.4388-1-m.grzeschik@pengutronix.de>
References: <20200127155013.4388-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 3/4] regulator: pfuze: add include regmap.h so struct regmap
 is known
To: barebox@lists.infradead.org

Without this the user of the function will get a compile warning
about the undeclared struct regmap.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 include/mfd/pfuze.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/mfd/pfuze.h b/include/mfd/pfuze.h
index 6045ceec0a..5427b21005 100644
--- a/include/mfd/pfuze.h
+++ b/include/mfd/pfuze.h
@@ -1,6 +1,8 @@
 #ifndef __INCLUDE_PFUZE_H
 #define __INCLUDE_PFUZE_H
 
+#include <regmap.h>
+
 int pfuze_register_init_callback(void(*callback)(struct regmap *map));
 
 #endif /* __INCLUDE_PFUZE_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
