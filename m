Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfmO-00046o-91
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 17:04:37 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 5E35924001E
 for <barebox@lists.infradead.org>; Mon,  4 Nov 2019 17:04:24 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  4 Nov 2019 18:04:18 +0100
Message-Id: <20191104170418.32414-1-ahmad@a3f.at>
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
Subject: [PATCH] param: drop unused parameters in helpers
To: barebox@lists.infradead.org

These parameters aren't currently used anywhere, but are still useful to
have nonetheless. Keep them but drop the unused parameters.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/param.h | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/include/param.h b/include/param.h
index bc4370b908a4..bd2f9f67a2b4 100644
--- a/include/param.h
+++ b/include/param.h
@@ -270,8 +270,6 @@ static inline struct param_d *dev_add_param_bool_ro(struct device_d *dev, const
 }
 
 static inline struct param_d *dev_add_param_string_ro(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
 		char **value, void *priv)
 {
 	return dev_add_param_string(dev, name, param_set_readonly, NULL, value, NULL);
@@ -291,9 +289,7 @@ static inline struct param_d *dev_add_param_enum_ro(struct device_d *dev, const
 }
 
 static inline struct param_d *dev_add_param_bitmask_ro(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		unsigned long *value, const char * const *names, int max, void *priv)
+		unsigned long *value, const char * const *names, int max)
 {
 	return dev_add_param_bitmask(dev, name, param_set_readonly, NULL,
 				     value, names, max, NULL);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
