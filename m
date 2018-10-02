Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005z6-Vv
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:05:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:52 +0200
Message-Id: <20181002140403.3735-4-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] Add more mutex no-ops
To: Barebox List <barebox@lists.infradead.org>

Add mutex_lock_nested, mutex_unlock_nested and mutex_is_locked to
include/linux/mutex.h and remove them from UBIFS.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ubifs.h      | 3 ---
 include/linux/mutex.h | 3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index d4df668ca6..d11f213c06 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -84,9 +84,6 @@ struct page {
 #define module_param_named(...)
 
 /* misc.h */
-#define mutex_lock_nested(...)
-#define mutex_unlock_nested(...)
-#define mutex_is_locked(...)	0
 #endif
 
 /* Version of this UBIFS implementation */
diff --git a/include/linux/mutex.h b/include/linux/mutex.h
index a84085cab2..de698dbc4f 100644
--- a/include/linux/mutex.h
+++ b/include/linux/mutex.h
@@ -13,6 +13,9 @@
 #define mutex_init(...)
 #define mutex_lock(...)
 #define mutex_unlock(...)
+#define mutex_lock_nested(...)
+#define mutex_unlock_nested(...)
+#define mutex_is_locked(...)	0
 struct mutex { int i; };
 
 #endif /* __LINUX_MUTEX_H */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
