Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22d.google.com ([2a00:1450:4008:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjduW-0005r5-N9
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 23:11:33 +0000
Received: by mail-bk0-f45.google.com with SMTP id je10so1783085bkc.4
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 16:11:02 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue,  4 Jun 2013 01:13:48 +0200
Message-Id: <1370301232-12962-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
References: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/5] common: fix codestyle in ALIGN macros
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 include/common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/common.h b/include/common.h
index 59fcd35..293ca49 100644
--- a/include/common.h
+++ b/include/common.h
@@ -182,8 +182,8 @@ int run_shell(void);
 #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:-!!(e); }))
 #define BUILD_BUG_ON_NULL(e) ((void *)sizeof(struct { int:-!!(e); }))
 
-#define ALIGN(x,a)		__ALIGN_MASK(x,(typeof(x))(a)-1)
-#define __ALIGN_MASK(x,mask)	(((x)+(mask))&~(mask))
+#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
+#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
 #define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
 #define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
 
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
