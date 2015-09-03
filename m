Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXPSQ-0005MS-Ru
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 08:01:20 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZXPS4-0004y9-Na
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 10:00:56 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  3 Sep 2015 10:00:56 +0200
Message-Id: <1441267256-17522-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1441267256-17522-1-git-send-email-l.stach@pengutronix.de>
References: <1441267256-17522-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] reset-source: add stub for of_get_reset_source_priority
To: barebox@lists.infradead.org

Allow drivers to build even if reset source support isn't built in.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/reset_source.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/reset_source.h b/include/reset_source.h
index d484836dff0c..3ff06b70ad1f 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -27,6 +27,7 @@ enum reset_src_type {
 #ifdef CONFIG_RESET_SOURCE
 void reset_source_set_priority(enum reset_src_type, unsigned int priority);
 enum reset_src_type reset_source_get(void);
+unsigned int of_get_reset_source_priority(struct device_node *node);
 #else
 static inline void reset_source_set_priority(enum reset_src_type type,
 		unsigned int priority)
@@ -37,6 +38,11 @@ static inline enum reset_src_type reset_source_get(void)
 {
 	return RESET_UKWN;
 }
+
+static inline unsigned int of_get_reset_source_priority(struct device_node *node)
+{
+	return 0;
+}
 #endif
 
 #define RESET_SOURCE_DEFAULT_PRIORITY 100
@@ -46,6 +52,4 @@ static inline void reset_source_set(enum reset_src_type type)
 	reset_source_set_priority(type, RESET_SOURCE_DEFAULT_PRIORITY);
 }
 
-unsigned int of_get_reset_source_priority(struct device_node *node);
-
 #endif /* __INCLUDE_RESET_SOURCE_H */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
