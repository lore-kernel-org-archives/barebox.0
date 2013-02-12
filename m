Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5.mail.ru ([94.100.176.132])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5KI1-0003WF-39
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 18:09:10 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 12 Feb 2013 22:08:56 +0400
Message-Id: <1360692537-22260-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 1/2] Introduce device_platform_driver() macro
To: barebox@lists.infradead.org

device_platform_driver() - Helper macro for drivers that don't do
anything special in module registration. This eliminates a lot of
boilerplate. Driver registration will called on device_initcall.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 include/driver.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/driver.h b/include/driver.h
index 31f5d69..151829e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -390,6 +390,18 @@ extern struct list_head bus_list;
 extern struct bus_type platform_bus;
 
 int platform_driver_register(struct driver_d *drv);
+
+/* device_platform_driver() - Helper macro for drivers that don't do
+ * anything special in module registration. This eliminates a lot of
+ * boilerplate. Each module may only use this macro once.
+ */
+#define device_platform_driver(drv)			\
+	static int __init drv ## _register(void)	\
+	{						\
+		return platform_driver_register(&drv);	\
+	}						\
+	device_initcall(drv ## _register)
+
 int platform_device_register(struct device_d *new_device);
 
 struct file_operations {
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
