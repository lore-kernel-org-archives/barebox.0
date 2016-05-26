Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5sER-0003Jg-Qb
 for barebox@lists.infradead.org; Thu, 26 May 2016 10:09:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1b5sE6-00017h-8e
 for barebox@lists.infradead.org; Thu, 26 May 2016 12:09:14 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 26 May 2016 12:09:12 +0200
Message-Id: <1464257353-5640-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1464257353-5640-1-git-send-email-l.stach@pengutronix.de>
References: <1464257353-5640-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] nvvar: add missing static inline stubs
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/globalvar.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/globalvar.h b/include/globalvar.h
index e94e9ed6ee88..5dfa3714093e 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -153,6 +153,18 @@ static inline int nvvar_load(void)
 	return 0;
 }
 
+static inline void nvvar_print(void) {}
+
+static inline int nvvar_add(const char *name, const char *value)
+{
+	return 0;
+}
+
+static inline int nvvar_remove(const char *name)
+{
+	return 0;
+}
+
 #endif
 
 #endif /* __GLOBALVAR_H */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
