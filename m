Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXPSQ-0005MR-Rw
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 08:01:20 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZXPS4-0004y9-Mk
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 10:00:56 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  3 Sep 2015 10:00:55 +0200
Message-Id: <1441267256-17522-2-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] wd: add stub for of_get_watchdog_priority
To: barebox@lists.infradead.org

Allow drivers to build even if WD core isn't enabled.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/watchdog.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/watchdog.h b/include/watchdog.h
index 6fd896734b4b..3e8a487a4de9 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -25,6 +25,7 @@ struct watchdog {
 int watchdog_register(struct watchdog *);
 int watchdog_deregister(struct watchdog *);
 int watchdog_set_timeout(unsigned);
+unsigned int of_get_watchdog_priority(struct device_node *node);
 #else
 static inline int watchdog_register(struct watchdog *w)
 {
@@ -40,10 +41,13 @@ static inline int watchdog_set_timeout(unsigned t)
 {
 	return 0;
 }
+
+static inline unsigned int of_get_watchdog_priority(struct device_node *node)
+{
+	return 0;
+}
 #endif
 
 #define WATCHDOG_DEFAULT_PRIORITY 100
 
-unsigned int of_get_watchdog_priority(struct device_node *node);
-
 #endif /* INCLUDE_WATCHDOG_H */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
