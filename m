Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJGoA-00028O-61
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 09:34:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cJGnl-00039l-1D
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 10:33:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 20 Dec 2016 10:33:37 +0100
Message-Id: <20161220093340.14404-6-l.stach@pengutronix.de>
In-Reply-To: <20161220093340.14404-1-l.stach@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
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
Subject: [PATCH 6/9] devparam: add static inline dummy for
 dev_add_param_bitmask
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/param.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/param.h b/include/param.h
index 0f7d2446a265..f5f82ee70c42 100644
--- a/include/param.h
+++ b/include/param.h
@@ -132,6 +132,14 @@ static inline struct param_d *dev_add_param_enum(struct device_d *dev, const cha
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
+                int (*set)(struct param_d *p, void *priv),
+                int (*get)(struct param_d *p, void *priv),
+                unsigned long *value, const char * const *names, int max, void *priv)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
