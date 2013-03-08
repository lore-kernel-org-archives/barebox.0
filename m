Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp13.mail.ru ([94.100.176.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDtEz-0004QD-MU
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 09:05:29 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Mar 2013 13:05:14 +0400
Message-Id: <1362733514-18373-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Extend device_platform_driver macro
To: barebox@lists.infradead.org

This patch extends device_platform_driver macro, so now we allow
use it with various init levels and subsystems.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 include/driver.h | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 46c56c0..b891f80 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -395,16 +395,19 @@ extern struct bus_type platform_bus;
 
 int platform_driver_register(struct driver_d *drv);
 
-/* device_platform_driver() - Helper macro for drivers that don't do
+/* register_driver_macro() - Helper macro for drivers that don't do
  * anything special in module registration. This eliminates a lot of
  * boilerplate. Each module may only use this macro once.
  */
-#define device_platform_driver(drv)			\
-	static int __init drv ## _register(void)	\
-	{						\
-		return platform_driver_register(&drv);	\
-	}						\
-	device_initcall(drv ## _register)
+#define register_driver_macro(level,subsystem,drv)		\
+	static int __init drv##_register(void)			\
+	{							\
+		return subsystem##_driver_register(&drv);	\
+	}							\
+	level##_initcall(drv##_register)
+
+#define device_platform_driver(drv)	\
+	register_driver_macro(device,platform,drv)
 
 int platform_device_register(struct device_d *new_device);
 
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
