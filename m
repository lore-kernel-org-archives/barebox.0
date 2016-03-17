Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by casper.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1agUkz-0004j7-As
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:02:21 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 9827427A708
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:32 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:28 +0100
Message-Id: <1458208829-25570-13-git-send-email-alexander.stein@systec-electronic.com>
In-Reply-To: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 12/13] barebox-wrapper: Add kcalloc and __vmalloc
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

They call xzalloc and malloc respectively.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 include/linux/barebox-wrapper.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 67b332e..b57c58c 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -6,7 +6,9 @@
 
 #define kmalloc(len, mode)	malloc(len)
 #define kzalloc(len, mode)	xzalloc(len)
+#define kcalloc(n, len, mode)	xzalloc(n * len)
 #define vmalloc(len)		malloc(len)
+#define __vmalloc(len, mode, pgsz)	malloc(len)
 static inline void kfree(const void *block)
 {
 	free((void *)block);
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
