Delivery-date: Fri, 27 Mar 2026 14:35:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lx-005jmi-2a
	for lore@lore.pengutronix.de;
	Fri, 27 Mar 2026 14:35:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lw-0007Tw-WD
	for lore@pengutronix.de; Fri, 27 Mar 2026 14:35:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7euoq2W1tA3QQBr9Th51HIRlWDklLR9A1rgNS+9IZlE=; b=ceZtbaaCsQ+xCP+F5wPMgVzVbQ
	AHl0h+j1qc8fk3fRri1j/7mjnPGYxDuXmtP43gZT4nYhuUClW0YZw6DZ60d2n13uJI6RBEmef9QpT
	ufdPaMOP5Ev32o2oMHPIQMvNEWEGwq/QScqdxro2qkuTVKeN0c2udw2kC/w1zcGap+43JyP0QqcnT
	GhzMmy8aHjMuwhMWTxeVlR8x7oNs8so074ygeOly4aqh+2Jcrul1LOGscMYMYAOF4hYWEBc8REiIQ
	OUwfrrB/ngfM3O+XINEK+1xkB/KbMTlmx5Mtm8VmauJ+jnxBmmyegBNbymwPCRie/nyHxK8UumHdB
	jze7GWUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LP-00000007S9g-0C6j;
	Fri, 27 Mar 2026 13:35:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LH-00000007S56-3oFb
	for barebox@lists.infradead.org;
	Fri, 27 Mar 2026 13:35:19 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w67LE-0006yD-G6; Fri, 27 Mar 2026 14:35:12 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 27 Mar 2026 14:35:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260327-v2026-02-0-topic-sconfig_console-v7-6-67a52ff65ed3@pengutronix.de>
References: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
In-Reply-To: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_063516_001257_5C5921E3 
X-CRM114-Status: GOOD (  23.09  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v7 6/7] drivers: pinctrl: configure pinctrl based on policy
 name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Security policies can be used to have different functionality on the
system. If systems have different functionality, they might have
different pinctrl settings.

One example could be the console input:
When using security policies to disable console input on the default
console, it might be more advantageous to also disable the RX pin hard
in pinctrl, so that if there is a software error with the security
policy implementation input does not reach to system and cannot be
exploited.

An example devicetree could look like this:
/ {
	chosen {
		stdout-path = &uart3;
	};
};

&uart3 {
	pinctrl-names = "default", "barebox,policy-devel-default";
	pinctrl-0 = <&pinctrl_uart3_tx_only>;
	pinctrl-1 = <&pinctrl_uart3_interactive>;
	status = "okay";
};

&iomuxc {
	pinctrl_uart3_interactive: uart3ingrp {
		fsl,pins = <MX8MP_IOMUXC_SD1_DATA6__UART3_DCE_TX	0x140>,
			   <MX8MP_IOMUXC_SD1_DATA7__UART3_DCE_RX	0x140>;
	};

	pinctrl_uart3_tx_only: uart3txgrp {
		fsl,pins = <MX8MP_IOMUXC_SD1_DATA6__UART3_DCE_TX	0x140>,
			   <MX8MP_IOMUXC_SD1_DATA7__GPIO2_IO09		0x140>;
	};
};

This would apply the devel pinmux on selecting the devel config and the
default on every other security policy configuration.

A Kconfig option to enable this feature has been chosen, because parsing
pinctrl and mapping the names is a lot of string operations, that could
increase boottime for a feature, that is maybe not needed for everyone.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/pinctrl/pinctrl.c | 73 +++++++++++++++++++++++++++++++++++++++++++++--
 security/Kconfig.policy   | 12 ++++++++
 2 files changed, 83 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 01567aa5ae..eb4103c5fd 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -10,11 +10,22 @@
 #include <linux/overflow.h>
 #include <errno.h>
 #include <of.h>
+#include <security/config.h>
+#include <security/policy.h>
 
 struct pinctrl {
 	struct device_node consumer_np;
 };
 
+LIST_HEAD(pinctrl_devices_name_list);
+
+struct pinctrl_devices_name_info {
+	struct device_node *node;
+	const char *name;
+	struct list_head list;
+};
+
+
 static LIST_HEAD(pinctrl_consumer_list);
 
 struct pinctrl_state {
@@ -218,15 +229,48 @@ int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state)
 	return ret;
 }
 
+static void of_pinctrl_policy_update_or_add(struct device_node *np, const char *name)
+{
+	struct pinctrl_devices_name_info *dev;
+
+	list_for_each_entry(dev, &pinctrl_devices_name_list, list) {
+		if (dev->node == np) {
+			free_const(dev->name);
+			dev->name = xstrdup_const(name);
+			return;
+		}
+	}
+	dev = xzalloc(sizeof(*dev));
+	dev->node = np;
+	dev->name = xstrdup_const(name);
+	list_add(&dev->list, &pinctrl_devices_name_list);
+}
+
 int of_pinctrl_select_state(struct device_node *np, const char *name)
 {
 	struct pinctrl *pinctrl = of_pinctrl_get(np);
-	struct pinctrl_state *state;
+	struct pinctrl_state *state = NULL;
 
 	if (!of_find_property(np, "pinctrl-0", NULL))
 		return 0;
 
-	state = pinctrl_lookup_state(pinctrl, name);
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY_PINCTRL)) {
+		const struct security_policy *active_policy = security_policy_get_active();
+
+		of_pinctrl_policy_update_or_add(np, name);
+
+		if (active_policy && active_policy->name && name) {
+			char *policy_pinctrl;
+
+			policy_pinctrl = basprintf("barebox,policy-%s-%s",
+						   active_policy->name,
+						   name);
+			state = pinctrl_lookup_state(pinctrl, policy_pinctrl);
+			free(policy_pinctrl);
+		}
+	}
+	if (IS_ERR_OR_NULL(state))
+		state = pinctrl_lookup_state(pinctrl, name);
 	if (IS_ERR(state))
 		return PTR_ERR(state);
 
@@ -331,3 +375,28 @@ void of_pinctrl_unregister_consumer(struct device *dev)
 	}
 }
 #endif
+
+static int pinctrl_change_policy(struct notifier_block *nb,
+				  unsigned long _ignored,
+				  void *_data)
+{
+	struct pinctrl_devices_name_info *dev;
+
+	list_for_each_entry(dev, &pinctrl_devices_name_list, list) {
+		of_pinctrl_select_state(dev->node, dev->name);
+	}
+	return 0;
+}
+
+static struct notifier_block pinctrl_policy_notifier = {
+	.notifier_call = pinctrl_change_policy
+};
+
+static int pinctrl_policy_init(void)
+{
+	if (!IS_ENABLED(CONFIG_SECURITY_POLICY_PINCTRL))
+		return 0;
+
+	return notifier_chain_register(&sconfig_name_notifier, &pinctrl_policy_notifier);
+}
+pure_initcall(pinctrl_policy_init);
diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index e778327b0d..2c8e8399a0 100644
--- a/security/Kconfig.policy
+++ b/security/Kconfig.policy
@@ -69,6 +69,18 @@ config SECURITY_POLICY_DEFAULT_PERMISSIVE
 	  A security policy should always be selected, either early on by
 	  board code or via CONFIG_SECURITY_POLICY_INIT.
 
+config SECURITY_POLICY_PINCTRL
+	bool "Update pinctrl based on policy-name"
+	help
+	  When selecting a pinctrl with the name <pinctrlname>, if there exists
+	  a pinctrl with the name barebox,policy-<policyname>-<pinctrlname>,
+	  then this pinctrl will be used instead.
+	  This could be used for example to disable the RX (and TX) Pin in
+	  lockdown mode for the console or disable the usage of SPI.
+
+	  Enabling this option does increase the boottime.
+	  If unsure, say N.
+
 config SECURITY_POLICY_PATH
 	string
 	depends on SECURITY_POLICY

-- 
2.47.3



