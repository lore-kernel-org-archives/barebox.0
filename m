Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V0Aww-0008RC-H0
 for barebox@lists.infradead.org; Fri, 19 Jul 2013 13:42:23 +0000
Received: by mail-ee0-f43.google.com with SMTP id l10so2379930eei.2
 for <barebox@lists.infradead.org>; Fri, 19 Jul 2013 06:41:59 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri, 19 Jul 2013 15:41:41 +0200
Message-Id: <1374241301-21277-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] include/printk: fix level of pr_err and pr_warning
To: barebox@lists.infradead.org

The level of pr_err and pr_warning were interchanged.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 include/printk.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/printk.h b/include/printk.h
index 3cd7335..86bf208 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -56,8 +56,8 @@ int dev_printf(const struct device_d *dev, const char *format, ...)
 #define pr_emerg(fmt, arg...)	__pr_printk(0, pr_fmt(fmt), ##arg)
 #define pr_alert(fmt, arg...)	__pr_printk(1, pr_fmt(fmt), ##arg)
 #define pr_crit(fmt, arg...)	__pr_printk(2, pr_fmt(fmt), ##arg)
-#define pr_warning(fmt, arg...)	__pr_printk(3, pr_fmt(fmt), ##arg)
-#define pr_err(fmt, arg...)	__pr_printk(4, pr_fmt(fmt), ##arg)
+#define pr_err(fmt, arg...)	__pr_printk(3, pr_fmt(fmt), ##arg)
+#define pr_warning(fmt, arg...)	__pr_printk(4, pr_fmt(fmt), ##arg)
 #define pr_notice(fmt, arg...)	__pr_printk(5, pr_fmt(fmt), ##arg)
 #define pr_info(fmt, arg...)	__pr_printk(6, pr_fmt(fmt), ##arg)
 #define pr_debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
