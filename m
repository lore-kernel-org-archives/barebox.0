Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6NNY-0001yD-WB
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 15:39:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 16:39:09 +0100
Message-Id: <1360942749-28102-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360942214-8280-1-git-send-email-s.hauer@pengutronix.de>
References: <1360942214-8280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] fix brown paper bag bug introduced with compile time
 loglevel
To: barebox@lists.infradead.org

__dev_printf is a define which uses a local variable 'ret'. This
means that whenever someone does a dev_*(dev, "ret: %d\n", ret);
ret will be 0.

Fix this by writing this without a local variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/printk.h |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/include/printk.h b/include/printk.h
index 1d45616..3de8905 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -23,10 +23,7 @@ int dev_printf(const struct device_d *dev, const char *format, ...)
 
 #define __dev_printf(level, dev, format, args...) \
 	({	\
-		int ret = 0; \
-		if (level <= LOGLEVEL) \
-			ret = dev_printf(dev, format, ##args);	\
-		ret;						\
+		(level) <= LOGLEVEL ? dev_printf((dev), (format), ##args) : 0; \
 	 })
 
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
