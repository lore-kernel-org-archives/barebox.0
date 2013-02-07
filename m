Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f182.google.com ([209.85.215.182])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Oxu-0005Aj-2G
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 10:44:26 +0000
Received: by mail-ea0-f182.google.com with SMTP id a12so1068481eaa.27
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 02:44:24 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 11:44:56 +0100
Message-Id: <1360233900-26486-3-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/6] common: add ALIGN_DOWN macro
To: barebox@lists.infradead.org


Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 include/common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/common.h b/include/common.h
index 1c7d599..73d51c1 100644
--- a/include/common.h
+++ b/include/common.h
@@ -184,6 +184,7 @@ int run_shell(void);
 
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
+#define ALIGN_DOWN(x, a)	((x) & ~((typeof(x))(a) - 1))
 #define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
 #define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
 
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
