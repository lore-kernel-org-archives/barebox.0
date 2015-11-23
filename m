Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0nMg-0001v8-Pq
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 09:24:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Nov 2015 10:24:30 +0100
Message-Id: <1448270671-24307-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1448270671-24307-1-git-send-email-s.hauer@pengutronix.de>
References: <1448270671-24307-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] reset: Remove unused *_optional functions
To: Barebox List <barebox@lists.infradead.org>

Since we now have dummy reset controllers we no longer need the
*_optional functions. These have been unused anyway, so just remove
them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/reset.h | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/include/linux/reset.h b/include/linux/reset.h
index f6c475c..3f810bd 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -15,17 +15,6 @@ void reset_control_put(struct reset_control *rstc);
 
 int __must_check device_reset(struct device_d *dev);
 
-static inline int device_reset_optional(struct device_d *dev)
-{
-	return device_reset(dev);
-}
-
-static inline struct reset_control *reset_control_get_optional(
-					struct device_d *dev, const char *id)
-{
-	return reset_control_get(dev, id);
-}
-
 #else
 
 static inline int reset_control_reset(struct reset_control *rstc)
@@ -51,17 +40,6 @@ static inline void reset_control_put(struct reset_control *rstc)
 	WARN_ON(1);
 }
 
-static inline int device_reset_optional(struct device_d *dev)
-{
-	return -ENOSYS;
-}
-
-static inline struct reset_control *reset_control_get_optional(
-					struct device_d *dev, const char *id)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
 #endif /* CONFIG_RESET_CONTROLLER */
 
 #endif
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
