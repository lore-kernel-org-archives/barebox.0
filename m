Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ypynx-0004Uh-K5
 for barebox@lists.infradead.org; Wed, 06 May 2015 12:52:02 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  6 May 2015 14:51:30 +0200
Message-Id: <1430916691-12459-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
References: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 5/6] watchdog: add static inline no-ops if WD is disabled
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/watchdog.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/include/watchdog.h b/include/watchdog.h
index 3e2d08e87645..7e37b7c22a8d 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -17,8 +17,25 @@ struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 };
 
+#ifdef CONFIG_WATCHDOG
 int watchdog_register(struct watchdog *);
 int watchdog_deregister(struct watchdog *);
 int watchdog_set_timeout(unsigned);
+#else
+static inline int watchdog_register(struct watchdog *w)
+{
+	return 0;
+}
+
+int watchdog_deregister(struct watchdog *w)
+{
+	return 0;
+}
+
+int watchdog_set_timeout(unsigned t)
+{
+	return 0;
+}
+#endif
 
 #endif /* INCLUDE_WATCHDOG_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
