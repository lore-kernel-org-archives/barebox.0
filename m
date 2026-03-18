Delivery-date: Wed, 18 Mar 2026 10:22:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n6s-0028BR-0f
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 10:22:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n6q-0004tW-6g
	for lore@pengutronix.de; Wed, 18 Mar 2026 10:22:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h5yAmF5OO5OuEWJ+NJ8Dyw2jPBkt9igsRtgKC+wuVcU=; b=MSfwjz6joJBlE7EqHp0q/7zeob
	3VZ9YqUDMSWNRaUrSs9zDQ0f5scJRg4pwRMSaGeqNUdmhy7Ul2TnmiXnG9eOislo0mFoDVKb6lpJU
	UiZzb3syYMhHo/sllsTWUqmrt19rg4wNTXrm0pJmbdPl1MqED+uDR/qPuLHcyRDNvwH0CPAzSQgVL
	7PidRXJiFf2HB+bZWndBscdJwoHEsQq8xIfJVZfmYk3FnPrxBhS2B0tAWsxwb0tnNjeYxR6y+Rc7j
	LcS4mYuWjpJ3SwWkXQ7VBdSb6kILNNmg0FzGL3Smi6diKItMviG9VgJI6KcAqJONsddYlervq58Wg
	vb1vS6Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6T-000000087ti-35rx;
	Wed, 18 Mar 2026 09:22:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6N-000000087on-3dxV
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 09:22:10 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w2n6L-0004T5-1s; Wed, 18 Mar 2026 10:22:05 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 18 Mar 2026 10:22:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-v2026-02-0-topic-sconfig_console-v3-4-e26055294723@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
In-Reply-To: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_022207_933951_86E6BB6A 
X-CRM114-Status: GOOD (  20.10  )
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
Subject: [PATCH v3 4/5] security: configure pinctrl based on policy name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When using security policies to disable console input on the default
console, it might be more advantagous to also disable the RX pin hard
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
	pinctrl-names = "default", "barebox,policy-devel";
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
default on every other configuration.

A Kconfig option to enable this feature has been chosen, because parsing
pinctrl and mapping the names is a lot of string operations, that could
increase boottime for a feature, that is maybe not needed for everyone.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/base/driver.c   | 12 +++++++++++-
 security/Kconfig.policy |  8 ++++++++
 security/policy.c       | 12 ++++++++++++
 3 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 20beb1e9e6..147c3cbad8 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -30,6 +30,7 @@
 #include <pinctrl.h>
 #include <featctrl.h>
 #include <linux/clk/clk-conf.h>
+#include <security/policy.h>
 
 #ifdef CONFIG_DEBUG_PROBES
 #define pr_report_probe		pr_info
@@ -135,7 +136,16 @@ int device_probe(struct device *dev)
 
 	pr_report_probe("%*sprobe-> %s\n", depth * 4, "", dev_name(dev));
 
-	pinctrl_select_state_default(dev);
+
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY_PINCTRL)) {
+		char *policy_pinctrl;
+
+		policy_pinctrl = basprintf("barebox,policy-%s", active_policy->name);
+		if (IS_ERR(pinctrl_get_select(dev, policy_pinctrl)))
+			pinctrl_select_state_default(dev);
+		free(policy_pinctrl);
+	} else
+		pinctrl_select_state_default(dev);
 	of_clk_set_defaults(dev->of_node, false);
 
 	list_add(&dev->active, &active_device_list);
diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index 9ea52e91da..8ddb67ac2d 100644
--- a/security/Kconfig.policy
+++ b/security/Kconfig.policy
@@ -68,6 +68,14 @@ config SECURITY_POLICY_DEFAULT_PERMISSIVE
 	  A security policy should always be selected, either early on by
 	  board code or via CONFIG_SECURITY_POLICY_INIT.
 
+config SECURITY_POLICY_PINCTRL
+	bool "Update pinctrl based on policy-name"
+	help
+	  Changing the security policy, will look for a pinctrl with the name
+	  barebox,policy-<policyname>. If there is one, it will change the
+	  pinctrl for this. This could be used to disable the RX (and TX)
+	  Pin in lockdown mode for the console or disable the usage of SPI.
+
 config SECURITY_POLICY_PATH
 	string
 	depends on SECURITY_POLICY
diff --git a/security/policy.c b/security/policy.c
index e2d1b10a78..4d51af63e7 100644
--- a/security/policy.c
+++ b/security/policy.c
@@ -7,6 +7,7 @@
 #include <linux/bitmap.h>
 #include <param.h>
 #include <device.h>
+#include <pinctrl.h>
 #include <stdio.h>
 
 #include <security/policy.h>
@@ -90,12 +91,23 @@ bool is_allowed(const struct security_policy *policy, unsigned option)
 int security_policy_activate(const struct security_policy *policy)
 {
 	const struct security_policy *old_policy = active_policy;
+	struct device *dev;
+	char *policy_pinctrl;
 
 	if (policy == old_policy)
 		return 0;
 
 	active_policy = policy;
 
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY_PINCTRL)) {
+		policy_pinctrl = basprintf("barebox,policy-%s", active_policy->name);
+		list_for_each_entry(dev, &active_device_list, active) {
+			if (IS_ERR(pinctrl_get_select(dev, policy_pinctrl)))
+				pinctrl_select_state_default(dev);
+		}
+		free(policy_pinctrl);
+	}
+
 	for (int i = 0; i < SCONFIG_NUM; i++) {
 		if (__is_allowed(policy, i) == __is_allowed(old_policy, i))
 			continue;

-- 
2.47.3



