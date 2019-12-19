Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihsl3-0004Dp-64
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 10:10:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihsl1-0005fM-Gm
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 11:10:11 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Dec 2019 11:10:11 +0100
Message-Id: <20191219101011.17583-1-l.stach@pengutronix.de>
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
Subject: [PATCH] driver: add function to look up device by DT node
To: barebox@lists.infradead.org

Useful if we need to remove a deivce from the Barebox internal DT.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
This is a prerequisite for "ARM: zii-imx8mq-dev: add DT fixups", which
I missed to send out in the series.
---
 drivers/base/driver.c | 12 ++++++++++++
 include/driver.h      |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index eec2a2d8a2a5..437b0162d3f7 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -70,6 +70,18 @@ static struct device_d *get_device_by_name_id(const char *name, int id)
 	return NULL;
 }
 
+struct device_d *get_device_by_device_node(struct device_node *np)
+{
+	struct device_d *dev;
+
+	for_each_device(dev) {
+		if(dev->device_node == np)
+			return dev;
+	}
+
+	return NULL;
+}
+
 int get_free_deviceid(const char *name_template)
 {
 	int i = 0;
diff --git a/include/driver.h b/include/driver.h
index ad59ce90c3a3..4e3b2443a708 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -170,6 +170,7 @@ int unregister_device(struct device_d *);
 struct device_d *get_device_by_type(ulong type, struct device_d *last);
 struct device_d *get_device_by_id(const char *id);
 struct device_d *get_device_by_name(const char *name);
+struct device_d *get_device_by_device_node(struct device_node *np);
 
 /* Find a free device id from the given template. This is archieved by
  * appending a number to the template. Dynamically created devices should
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
