Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by merlin.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1agUky-0003g4-QZ
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:02:17 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 8BB9E27A702
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:19 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:22 +0100
Message-Id: <1458208829-25570-7-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 06/13] printk: Add pr_cont
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

This is needed by upcoming UBIFS update.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 include/printk.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/printk.h b/include/printk.h
index 4b76ca1..f62e57d 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -91,6 +91,7 @@ static inline int pr_print(int level, const char *format, ...)
 #define pr_debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
 #define debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
 #define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
+#define pr_cont(fmt, arg...)	__pr_printk(0, pr_fmt(fmt), ##arg)
 
 #define printk_once(fmt, ...)					\
 ({								\
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
