Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDV9P-0005yS-Ch
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 07:22:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Mar 2013 08:21:59 +0100
Message-Id: <1362640919-2715-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix another brown paper bag bug introduced with compile time
 loglevel
To: barebox@lists.infradead.org

__pr_printk is a define which uses a local variable 'ret'. This
means that whenever someone does a pr_*("ret: %d\n", ret);
ret will be 0.

Fix this by writing this without a local variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/printk.h | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/include/printk.h b/include/printk.h
index 3de8905..3cd7335 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -46,10 +46,7 @@ int dev_printf(const struct device_d *dev, const char *format, ...)
 
 #define __pr_printk(level, format, args...) \
 	({	\
-		int ret = 0;	\
-		if (level <= LOGLEVEL) \
-			ret = printk(format, ##args);	\
-		ret;					\
+		(level) <= LOGLEVEL ? printk((format), ##args) : 0; \
 	 })
 
 #ifndef pr_fmt
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
