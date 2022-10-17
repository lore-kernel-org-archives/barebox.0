Delivery-date: Mon, 17 Oct 2022 09:11:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHY-00BNgx-Uq
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:11:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHW-0005oo-Rk
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:11:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uE/z27p9OyKihSTSpxB5eVFhRlq0Au5VWSiJ1esS1bA=; b=wx0AJUnE2q8MeRwTEfED9pqAUz
	duJfcWLKzGkrlzHCrDG/1PSXJ5O8XLYxfVdXt7YZ8jjXXqvf0rI+qC4QxMm//wDVm0roAzz64ZwgE
	FwGuv7oddUutJ59PZc9RLSPD2ijDgAm2qRic1wdT0xLqTJJQN/b/cmM7MArP67XoePuy2ezk8LjxZ
	e3g1Vf+M2fQ0ZVnjeOTwchqWp3X7+poY+IcIS1iBwlHG8pdjUu1JQjkgE0yaJxrbJzVTeAH53jC/N
	P3O4ruvrV76ZBcO5slrUCtuPNyJIHRMywTNM8JeAQQqZi7kQ2V2rav/MWY4bGUrNYa3kzscp26kLd
	qr6hIo3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGK-008MdU-4k; Mon, 17 Oct 2022 07:10:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGD-008MZg-1V
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGB-0004xn-37; Mon, 17 Oct 2022 09:10:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG9-0021UG-QH; Mon, 17 Oct 2022 09:10:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG8-0067Od-Ot; Mon, 17 Oct 2022 09:10:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:09:54 +0200
Message-Id: <20221017071000.1458292-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
References: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001005_128951_D5631274 
X-CRM114-Status: GOOD (  19.04  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] restart: do restart-priority OF parsing in restart_handler_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The restart-priority OF property is parsed for a number of MFDs, but
there is no reason really not to parse it for every restart handler that
has a device tree node like we already do for watchdogs.
Add a new struct restart_handler::of_node field and look into it if
populated. With this of_get_restart_priority, is no longer used, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../devicetree/bindings/power/restart.rst     | 10 ++++++++++
 common/restart.c                              | 20 +++++--------------
 drivers/mfd/da9053.c                          |  2 +-
 drivers/mfd/da9063.c                          |  2 +-
 drivers/mfd/rn5t568.c                         |  2 +-
 include/restart.h                             |  5 +++--
 6 files changed, 21 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/restart.rst

diff --git a/Documentation/devicetree/bindings/power/restart.rst b/Documentation/devicetree/bindings/power/restart.rst
new file mode 100644
index 000000000000..8c866f6e0ded
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/restart.rst
@@ -0,0 +1,10 @@
+System Restart Controllers
+==========================
+
+In addition to upstream bindings, following properties are understood:
+
+Optional properties:
+
+- ``restart-priority`` : Overrides the priority set by the driver. Normally,
+  the device with the biggest reach should reset the system.
+  See :ref:`_system_reset` for more information.
diff --git a/common/restart.c b/common/restart.c
index b6f2bbf25b10..9e988838bc60 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -27,6 +27,11 @@ int restart_handler_register(struct restart_handler *rst)
 	if (!rst->priority)
 		rst->priority = RESTART_DEFAULT_PRIORITY;
 
+	if (rst->of_node) {
+		of_property_read_u32(rst->of_node, "restart-priority",
+				     &rst->priority);
+	}
+
 	list_add_tail(&rst->list, &restart_handler_list);
 
 	pr_debug("registering restart handler \"%s\" with priority %d\n",
@@ -102,21 +107,6 @@ void __noreturn restart_machine(void)
 	hang();
 }
 
-/**
- * of_get_restart_priority() - get the desired restart priority from device tree
- * @node:	The device_node to read the property from
- *
- * return: The priority
- */
-unsigned int of_get_restart_priority(struct device_node *node)
-{
-	unsigned int priority = RESTART_DEFAULT_PRIORITY;
-
-	of_property_read_u32(node, "restart-priority", &priority);
-
-	return priority;
-}
-
 /*
  * restart_handlers_print - print informations about all restart handlers
  */
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 99827c968922..693c0ca606f7 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -272,7 +272,7 @@ static int da9053_probe(struct device_d *dev)
 
 	da9053_detect_reset_source(da9053);
 
-	da9053->restart.priority = of_get_restart_priority(dev->device_node);
+	da9053->restart.of_node = dev->device_node;
 	da9053->restart.name = "da9063";
 	da9053->restart.restart = &da9053_force_system_reset;
 
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index a4e5226f3c98..4627dd1aa5a2 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -383,7 +383,7 @@ static int da9063_probe(struct device_d *dev)
 
 	da9063_detect_reset_source(priv);
 
-	priv->restart.priority = of_get_restart_priority(dev->device_node);
+	priv->restart.of_node = dev->device_node;
 	priv->restart.name = "da9063";
 	priv->restart.restart = &da9063_restart;
 
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index c1c792cbecf0..4bbab54fe48b 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -138,7 +138,7 @@ static int __init rn5t568_i2c_probe(struct device_d *dev)
 	regmap_write(pmic_instance->regmap, RN5T568_REPCNT, RN5T568_REPCNT_OFF_RESETO_16MS |
 		     RN5T568_REPCNT_OFF_REPWRTIM_1000MS | RN5T568_REPCNT_OFF_REPWRON);
 
-	pmic_instance->restart.priority = of_get_restart_priority(dev->device_node);
+	pmic_instance->restart.of_node = dev->device_node;
 	pmic_instance->restart.name = "RN5T568";
 	pmic_instance->restart.restart = &rn5t568_restart;
 	restart_handler_register(&pmic_instance->restart);
diff --git a/include/restart.h b/include/restart.h
index 27fab1b80dfb..330b50a53ab2 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -11,9 +11,12 @@ void restart_handlers_print(void);
 void __noreturn restart_machine(void);
 struct restart_handler *restart_handler_get_by_name(const char *name);
 
+struct device_node;
+
 struct restart_handler {
 	void (*restart)(struct restart_handler *);
 	int priority;
+	struct device_node *of_node;
 	const char *name;
 	struct list_head list;
 };
@@ -24,6 +27,4 @@ int restart_handler_register_fn(const char *name,
 
 #define RESTART_DEFAULT_PRIORITY 100
 
-unsigned int of_get_restart_priority(struct device_node *node);
-
 #endif /* __INCLUDE_RESTART_H */
-- 
2.30.2



