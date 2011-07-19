Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7S-0003sw-Jv
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:06 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 9260CFFA70E
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:08:58 +0200
Message-Id: <1311091752-9114-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110719160758.GK5727@game.jcrosoft.org>
References: <20110719160758.GK5727@game.jcrosoft.org>
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
Subject: [PATCH 02/16] device: Add a dev_request_mem_region function
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

We might want to add real resource tracking later. Also
The first resource may not be a IORESOURCE_MEM at all.
For these reasons introduce a wrapper function for
driver so that they do not have to fiddle with resources
directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/driver.h |   14 ++++++++++++++
 lib/driver.c     |   17 +++++++++++++++++
 2 files changed, 31 insertions(+), 0 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index ed3df16..0fc254d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -188,6 +188,20 @@ static inline const char *dev_name(const struct device_d *dev)
 	return dev_id(dev);
 }
 
+/*
+ * get register base 'num' for a device
+ */
+void __iomem *dev_get_mem_region(struct device_d *dev, int num);
+
+/*
+ * exlusively request register base 'num' for a device
+ */
+static inline void __iomem *dev_request_mem_region(struct device_d *dev, int num)
+{
+	/* no resource tracking yet */
+	return dev_get_mem_region(dev, num);
+}
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
diff --git a/lib/driver.c b/lib/driver.c
index 95e42d5..b5166c8 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -233,6 +233,23 @@ int register_driver(struct driver_d *drv)
 }
 EXPORT_SYMBOL(register_driver);
 
+void __iomem *dev_get_mem_region(struct device_d *dev, int num)
+{
+	int i, n = 0;
+
+	for (i = 0; i < dev->num_resources; i++) {
+		struct resource *res = &dev->resource[i];
+		if (resource_type(res) == IORESOURCE_MEM) {
+			if (n == num)
+				return (void __force __iomem *)res->start;
+			n++;
+		}
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(dev_get_mem_region);
+
 int dev_protect(struct device_d *dev, size_t count, unsigned long offset, int prot)
 {
 	printf("%s: currently broken\n", __func__);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
