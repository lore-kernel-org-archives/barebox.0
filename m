Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5sER-0003Jf-Qe
 for barebox@lists.infradead.org; Thu, 26 May 2016 10:09:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1b5sE6-00017h-6w
 for barebox@lists.infradead.org; Thu, 26 May 2016 12:09:14 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 26 May 2016 12:09:11 +0200
Message-Id: <1464257353-5640-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] globalvar: add missing static inline stubs
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/globalvar.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/globalvar.h b/include/globalvar.h
index d0c79c07a818..e94e9ed6ee88 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -137,6 +137,10 @@ static inline int globalvar_add(const char *name,
 	return 0;
 }
 
+static inline void globalvar_remove(const char *name) {}
+
+static inline void globalvar_print(void) {}
+
 static inline char *globalvar_get_match(const char *match, const char *separator)
 {
 	return NULL;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
