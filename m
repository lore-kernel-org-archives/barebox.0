Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVClE-0007US-1E
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 11:58:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0007DS-UQ
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0000dR-7c
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 21 Oct 2020 13:58:06 +0200
Message-Id: <20201021115813.31645-4-m.felsch@pengutronix.de>
In-Reply-To: <20201021115813.31645-1-m.felsch@pengutronix.de>
References: <20201021115813.31645-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v3 03/10] of: platform: Keep track of populated platform
 devices
To: barebox@lists.infradead.org

Linux does not allow to populate the same of device more than once.
Linux uses the OF_POPULATED flag for that purpose. Align the logic with
the current linux state with the exception that we are returning the
already created device. This is needed for the later added deep-probe
mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:

v3:
- new patch
---
 drivers/of/platform.c | 20 +++++++++++++++++++-
 include/of.h          |  1 +
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 51781798c6..01de6f98af 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -106,6 +106,13 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	if (!of_device_is_available(np))
 		return NULL;
 
+	/*
+	 * Linux uses the OF_POPULATED flag to skip already populated/created
+	 * devices.
+	 */
+	if (np->dev)
+		return np->dev;
+
 	/* count the io resources */
 	if (of_can_translate_address(np))
 		while (of_address_to_resource(np, num_reg, &temp_res) == 0)
@@ -141,8 +148,10 @@ struct device_d *of_platform_device_create(struct device_node *np,
 		(num_reg) ? &dev->resource[0].start : &resinval);
 
 	ret = platform_device_register(dev);
-	if (!ret)
+	if (!ret) {
+		np->dev = dev;
 		return dev;
+	}
 
 	free(dev);
 	if (num_reg)
@@ -223,6 +232,13 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	if (!of_device_is_available(np))
 		return NULL;
 
+	/*
+	 * Linux uses the OF_POPULATED flag to skip already populated/created
+	 * devices.
+	 */
+	if (np->dev)
+		return np->dev;
+
 	dev = xzalloc(sizeof(*dev));
 
 	/* setup generic device info */
@@ -246,6 +262,8 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	if (ret)
 		goto amba_err_free;
 
+	np->dev = &dev->dev;
+
 	return &dev->dev;
 
 amba_err_free:
diff --git a/include/of.h b/include/of.h
index 08a02e1105..d1dbb702d8 100644
--- a/include/of.h
+++ b/include/of.h
@@ -35,6 +35,7 @@ struct device_node {
 	struct list_head parent_list;
 	struct list_head list;
 	phandle phandle;
+	struct device_d *dev;
 };
 
 struct of_device_id {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
