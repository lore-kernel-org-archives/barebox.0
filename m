Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CCD-0005au-Cy
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 10:58:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2020 11:58:02 +0100
Message-Id: <20200213105803.32096-2-s.hauer@pengutronix.de>
In-Reply-To: <20200213105803.32096-1-s.hauer@pengutronix.de>
References: <20200213105803.32096-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] clk-conf.h: Add static inline wrapper for
 of_clk_set_defaults()
To: Barebox List <barebox@lists.infradead.org>

Will be needed once we call of_clk_set_defaults() from the driver core.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/clk/clk-conf.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/clk/clk-conf.h b/include/linux/clk/clk-conf.h
index ac6cfdf711..8da0f99d66 100644
--- a/include/linux/clk/clk-conf.h
+++ b/include/linux/clk/clk-conf.h
@@ -16,5 +16,13 @@
 struct device_node;
 int of_clk_set_defaults(struct device_node *node, bool clk_supplier);
 
+#else
+
+static inline int of_clk_set_defaults(struct device_node *node,
+				      bool clk_supplier)
+{
+	return 0;
+}
+
 #endif
 #endif /* __CLK_CONF_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
