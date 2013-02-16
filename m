Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp42.i.mail.ru ([94.100.177.102])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6cJv-0006Za-9x
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 07:36:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 16 Feb 2013 11:36:22 +0400
Message-Id: <1361000182-26607-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Make "dev_get_resource" publicly available
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/base/driver.c | 2 +-
 include/driver.h      | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index d4066fc..fa30c68 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -230,7 +230,7 @@ int register_driver(struct driver_d *drv)
 }
 EXPORT_SYMBOL(register_driver);
 
-static struct resource *dev_get_resource(struct device_d *dev, int num)
+struct resource *dev_get_resource(struct device_d *dev, int num)
 {
 	int i, n = 0;
 
diff --git a/include/driver.h b/include/driver.h
index 31f5d69..092a46b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -193,6 +193,10 @@ static inline const char *dev_name(const struct device_d *dev)
 }
 
 /*
+ * get resource 'num' for a device
+ */
+struct resource *dev_get_resource(struct device_d *dev, int num);
+/*
  * get resource base 'name' for a device
  */
 struct resource *dev_get_resource_by_name(struct device_d *dev,
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
