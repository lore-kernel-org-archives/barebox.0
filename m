Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyYXc-0000me-Ms
 for barebox@lists.infradead.org; Thu, 23 Jul 2020 10:33:35 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 23 Jul 2020 12:33:22 +0200
Message-Id: <20200723103326.23226-8-o.rempel@pengutronix.de>
In-Reply-To: <20200723103326.23226-1-o.rempel@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 07/11] of: of_device_get_match_compatible() helper
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Some times we need to know, against which compatible did the driver
was registered. So, instead of coding it in the driver, add generic
helper for all drivers.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/device.c | 12 ++++++++++++
 include/of_device.h |  6 ++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index 67a67bd565..b3f522e1fa 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -31,3 +31,15 @@ const void *of_device_get_match_data(const struct device_d *dev)
 	return match->data;
 }
 EXPORT_SYMBOL(of_device_get_match_data);
+
+const char *of_device_get_match_compatible(const struct device_d *dev)
+{
+	const struct of_device_id *match;
+
+	match = of_match_device(dev->driver->of_compatible, dev);
+	if (!match)
+		return NULL;
+
+	return match->compatible;
+}
+EXPORT_SYMBOL(of_device_get_match_compatible);
diff --git a/include/of_device.h b/include/of_device.h
index 244f5fcbbb..cef6d5b5cc 100644
--- a/include/of_device.h
+++ b/include/of_device.h
@@ -22,6 +22,7 @@ static inline int of_driver_match_device(struct device_d *dev,
 }
 
 extern const void *of_device_get_match_data(const struct device_d *dev);
+extern const char *of_device_get_match_compatible(const struct device_d *dev);
 
 #else /* CONFIG_OFTREE */
 
@@ -36,6 +37,11 @@ static inline const void *of_device_get_match_data(const struct device_d *dev)
 	return NULL;
 }
 
+static inline const char *of_device_get_match_compatible(const struct device_d *dev)
+{
+	return NULL;
+}
+
 static inline const struct of_device_id *__of_match_device(
 		const struct of_device_id *matches, const struct device_d *dev)
 {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
