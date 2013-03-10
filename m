Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEZwy-0005sv-O8
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 06:41:42 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 10 Mar 2013 10:41:30 +0400
Message-Id: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 1/6] Extend device_platform_driver macro
To: barebox@lists.infradead.org

This patch extends device_platform_driver macro, so now we allow
use it with various init levels and subsystems.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 include/driver.h | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 46c56c0..138eab4 100644
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
+#define register_driver_macro(level,bus,drv)		\
+	static int __init drv##_register(void)		\
 	{						\
-		return platform_driver_register(&drv);	\
+		return bus##_driver_register(&drv);	\
 	}						\
-	device_initcall(drv ## _register)
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
