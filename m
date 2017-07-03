Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dRxIS-00049R-Qo
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 09:05:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dRxHR-00063j-MG
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 11:04:29 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  3 Jul 2017 11:04:29 +0200
Message-Id: <20170703090429.28806-1-l.stach@pengutronix.de>
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
Subject: [PATCH] Revert "param: fix stub prototype of dev_add_param"
To: barebox@lists.infradead.org

This reverts commit 441941f5a664e0333d78ee480ea8b974a9a99d9d, which was on
top of the recently reverted nvvar rework, so needs to be reverted, too.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/param.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/param.h b/include/param.h
index 2592a09c3afc..b618a2305d89 100644
--- a/include/param.h
+++ b/include/param.h
@@ -104,8 +104,8 @@ static inline struct param_d *get_param_by_name(struct device_d *dev,
 }
 
 static inline struct param_d *dev_add_param(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, const char *val),
-		const char *(*get)(struct param_d *p),
+		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
+		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
 {
 	return ERR_PTR(-ENOSYS);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
