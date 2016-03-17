Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agUkb-0002Pa-Vq
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:01:56 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 0F81027A700
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:14 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:20 +0100
Message-Id: <1458208829-25570-5-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 04/13] printk: Add printk_once
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

This is needed by upcoming list_sort implementation.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 include/printk.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/printk.h b/include/printk.h
index 822f64c..4b76ca1 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -92,6 +92,16 @@ static inline int pr_print(int level, const char *format, ...)
 #define debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
 #define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
 
+#define printk_once(fmt, ...)					\
+({								\
+	static bool __print_once	;			\
+								\
+	if (!__print_once) {					\
+		__print_once = true;				\
+		printk(fmt, ##__VA_ARGS__);			\
+	}							\
+})
+
 struct log_entry {
 	struct list_head list;
 	char *msg;
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
