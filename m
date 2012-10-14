Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLX-00049w-K9
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:41 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A959FFF9658
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:09 +0200
Message-Id: <1350248478-19359-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/12] amba: add bus device
To: barebox@lists.infradead.org

automatically add amba_device as parent of any amba device

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/amba/bus.c |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index f0a40b6..581a25c 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -72,6 +72,11 @@ static void amba_remove(struct device_d *dev)
 	drv->remove(pcdev);
 }
 
+struct device_d amba_bus = {
+	.name = "amba",
+	.id = DEVICE_ID_SINGLE,
+};
+
 struct bus_type amba_bustype = {
 	.name = "amba",
 	.match = amba_match,
@@ -153,6 +158,8 @@ int amba_device_add(struct amba_device *dev)
 		goto err_release;
 
  skip_probe:
+	dev->dev.parent = &amba_bus;
+	dev_add_child(dev->dev.parent, &dev->dev);
 	ret = register_device(&dev->dev);
 	if (ret)
 		goto err_release;
@@ -212,6 +219,7 @@ struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t
 
 static int amba_bus_init(void)
 {
+	register_device(&amba_bus);
 	return bus_register(&amba_bustype);
 }
 pure_initcall(amba_bus_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
