Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f48.google.com ([74.125.83.48])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Oxs-00059t-B3
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 10:44:24 +0000
Received: by mail-ee0-f48.google.com with SMTP id t10so1351163eei.35
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 02:44:22 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 11:44:55 +0100
Message-Id: <1360233900-26486-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
References: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/6] common: fix codestyle in ALIGN macros
To: barebox@lists.infradead.org


Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 include/common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/common.h b/include/common.h
index e559b94..1c7d599 100644
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
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
