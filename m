Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tzx7l-0003dp-GK
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 22:24:23 +0000
Received: from mail606.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1FF59DC1CDF
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 23:34:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 28 Jan 2013 23:23:00 +0100
Message-Id: <1359411780-30344-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] w1: add dual search support
To: barebox@lists.infradead.org

Some 1-wire device need to be search twice to be detected

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/w1/Kconfig |    5 +++++
 drivers/w1/w1.c    |   27 ++++++++++++++++++++++++++-
 drivers/w1/w1.h    |    2 ++
 3 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/w1/Kconfig b/drivers/w1/Kconfig
index ab34997..dbc1e3c 100644
--- a/drivers/w1/Kconfig
+++ b/drivers/w1/Kconfig
@@ -11,4 +11,9 @@ if W1
 source drivers/w1/masters/Kconfig
 source drivers/w1/slaves/Kconfig
 
+config W1_DUAL_SEARCH
+	bool "dual search"
+	---help---
+	  Some device need to be searched twice to be detected
+
 endif # W1
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index d2f94c9..eb6bec8 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -402,6 +402,21 @@ struct bus_type w1_bustype= {
 	.remove = w1_bus_remove,
 };
 
+static bool w1_is_registered(struct w1_bus *bus, u64 rn)
+{
+	struct device_d *dev = NULL;
+	struct w1_device *w1_dev;
+
+	bus_for_each_device(&w1_bustype, dev) {
+		w1_dev = to_w1_device(dev);
+
+		if (w1_dev->bus == bus && w1_dev->reg_num == rn)
+			return true;
+	}
+
+	return false;
+}
+
 static int w1_device_register(struct w1_bus *bus, struct w1_device *dev)
 {
 	char str[18];
@@ -442,9 +457,15 @@ int w1_driver_register(struct w1_driver *drv)
 
 void w1_found(struct w1_bus *bus, u64 rn)
 {
-	struct w1_device *dev = xzalloc(sizeof(*dev));
+	struct w1_device *dev;
 	u64 tmp = be64_to_cpu(rn);
 
+	if (IS_ENABLED(CONFIG_W1_DUAL_SEARCH)
+	 && bus->is_searched && w1_is_registered(bus, rn))
+		return;
+
+	dev = xzalloc(sizeof(*dev));
+
 	dev->reg_num = rn;
 	dev->fid = tmp >> 56;
 	dev->id = (tmp >> 8) & 0xffffffffffff;
@@ -605,7 +626,11 @@ int w1_bus_register(struct w1_bus *bus)
 	if (ret)
 		return ret;
 
+	bus->is_searched = false;
 	w1_search(bus, W1_SEARCH);
+	bus->is_searched = true;
+	if (IS_ENABLED(CONFIG_W1_DUAL_SEARCH))
+		w1_search(bus, W1_SEARCH);
 
 	return 0;
 }
diff --git a/drivers/w1/w1.h b/drivers/w1/w1.h
index 1373f69..b92d8cd 100644
--- a/drivers/w1/w1.h
+++ b/drivers/w1/w1.h
@@ -133,6 +133,8 @@ struct w1_bus
 
 	int		max_slave_count, slave_count;
 
+	bool		is_searched;
+
 	void		*data;
 	struct list_head list;
 };
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
