Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2wGE-0007uB-GM
 for barebox@lists.infradead.org; Tue, 25 Apr 2017 08:55:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1d2wFq-0005VB-S8
 for barebox@lists.infradead.org; Tue, 25 Apr 2017 10:55:26 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Apr 2017 10:55:26 +0200
Message-Id: <20170425085526.4037-4-l.stach@pengutronix.de>
In-Reply-To: <20170425085526.4037-1-l.stach@pengutronix.de>
References: <20170425085526.4037-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] param: fix stub prototype const annotation
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/param.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/param.h b/include/param.h
index f9f3398cae51..23abb524068c 100644
--- a/include/param.h
+++ b/include/param.h
@@ -98,7 +98,7 @@ static inline struct param_d *get_param_by_name(struct device_d *dev,
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param(struct device_d *dev, char *name,
+static inline struct param_d *dev_add_param(struct device_d *dev, const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
