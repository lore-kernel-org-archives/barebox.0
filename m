Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfGF-0005Xc-IC
 for barebox@lists.infradead.org; Thu, 06 Feb 2020 11:23:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Feb 2020 12:23:29 +0100
Message-Id: <20200206112334.14314-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200206112334.14314-1-a.fatoum@pengutronix.de>
References: <20200206112334.14314-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/8] regmap: forward declare structs used in header
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Both the device_d and device_node struct are used opaquely in this
header. Forward declare them to avoid compilation errors on different
include order.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/regmap.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/regmap.h b/include/regmap.h
index 09b7b57d52f3..049ac0210e43 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -37,6 +37,9 @@ struct regmap_bus {
 	regmap_hw_reg_read reg_read;
 };
 
+struct device_d;
+struct device_node;
+
 struct regmap *regmap_init(struct device_d *dev,
 			     const struct regmap_bus *bus,
 			     void *bus_context,
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
