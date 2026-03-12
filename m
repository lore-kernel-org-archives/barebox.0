Delivery-date: Thu, 12 Mar 2026 10:17:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0cAx-00AlsV-0F
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 10:17:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0cAv-0006PX-23
	for lore@pengutronix.de; Thu, 12 Mar 2026 10:17:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tSRHDSKtOL7vzdr4q1MhNmJ/tESQEZOp1fhXvZAxzKU=; b=iZivUFVWfojRo3hFPtyaa8nX83
	oy/wV3vfDDTk5cpJB1Vb9ng543rGuZd/EFOlnorH2ZftNpLBA7MUpklawOP3ujcYgZ51Di4+KcMG8
	uG/A9GDNd7q/RnMzix20ESvCZYBZveeMsmJ72GklI/jowdXPWcpKD+xYs52ciKrfOHkAtGdfnQMN2
	9CNwCeAFjZhi+ilssd9O7ZWlOP9cWR8nTWOWvsP/EwdExb9fbe16m9IXQiD/VaTTZwMubsQ+jcZbC
	Zd5vWmGQQccJiI0uvkQdL1OxgthpCov2vpPjyPwaGyliR2poY4slRsiLUMMz4k7Cg5NjBRXfQmfEE
	7evxAZvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0cAK-0000000DhQB-197r;
	Thu, 12 Mar 2026 09:17:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0cAD-0000000DhND-1F8b
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 09:17:07 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w0cA9-00066g-UR; Thu, 12 Mar 2026 10:17:01 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 12 Mar 2026 10:16:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-v2026-02-0-topic-sconfig_console-v1-4-4c3fccafab1e@pengutronix.de>
References: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
In-Reply-To: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_021705_361270_A266180C 
X-CRM114-Status: GOOD (  15.13  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] security: kernel_pinctrl: fixup pinctrl in kernel dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Going through the kernel dts and replacing
barebox,policy-<active_policy> with default in order to change pinctrl
not only for barebox, but also for kernel when booting with security
profiles.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 security/Makefile         |  1 +
 security/kernel_pinctrl.c | 70 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 71 insertions(+)

diff --git a/security/Makefile b/security/Makefile
index 1096cbfb9b..2e8cdfe7c2 100644
--- a/security/Makefile
+++ b/security/Makefile
@@ -2,6 +2,7 @@
 
 obj-$(CONFIG_SECURITY_POLICY)		+= policy.o
 obj-$(CONFIG_SECURITY_POLICY_NAMES)	+= sconfig_names.o
+obj-$(CONFIG_SECURITY_POLICY_PINCTRL)	+= kernel_pinctrl.o
 obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_JWT)		+= jwt.o
 obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
diff --git a/security/kernel_pinctrl.c b/security/kernel_pinctrl.c
new file mode 100644
index 0000000000..6ad75eb113
--- /dev/null
+++ b/security/kernel_pinctrl.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <linux/printk.h>
+#include <pinctrl.h>
+#include <security/policy.h>
+#include <security/config.h>
+
+#define NUM_NAMES	10
+
+
+/**
+ * Replace 'default' with 'old_default' and 'barebox,policy-<active_policy>'
+ * with 'default', if both are found in pinctrl.
+ */
+static void kernel_of_fixup_pinctrl(struct device_node *node, char *policy_name)
+{
+	struct device_node *n;
+	const char *names[NUM_NAMES];
+	int num_read = of_property_read_string_array(node, "pinctrl-names", names, NUM_NAMES);
+	struct property *prop = of_find_property(node, "pinctrl-names", NULL);
+	int pos_default = -1, pos_policy = -1;
+
+	for (int i = 0; i < num_read; i++) {
+		if (strcmp(policy_name, names[i]) == 0)
+			pos_policy = i;
+		if (strcmp("default", names[i]) == 0)
+			pos_default = i;
+	}
+	if (pos_default >= 0 && pos_policy >= 0) {
+		// old_default is shorter then barebox,policy-*
+		char *val = malloc(prop->length);
+		char *cur = val;
+		const char *src;
+		int len;
+
+		for (int i = 0; i < num_read; i++) {
+			if (i == pos_policy)
+				src = "default";
+			else if (i == pos_default)
+				src = "old_default";
+			else
+				src = names[i];
+			len = strlen(src);
+			memcpy(cur, src, len);
+			cur += len;
+		}
+		of_set_property(node, "pinctrl-names", val, cur - val, false);
+	}
+
+	list_for_each_entry(n, &node->children, parent_list) {
+		kernel_of_fixup_pinctrl(n, policy_name);
+	}
+}
+
+static int kernel_of_fixup_pinctrl_start(struct device_node *root, void *unused)
+{
+	char *policy_pinctrl;
+
+	policy_pinctrl = basprintf("barebox,policy-%s", active_policy->name);
+	kernel_of_fixup_pinctrl(root, policy_pinctrl);
+	free(policy_pinctrl);
+	return 0;
+}
+
+static int policy_console_pinctrl_init(void)
+{
+	return of_register_fixup(kernel_of_fixup_pinctrl_start, NULL);
+}
+late_initcall(policy_console_pinctrl_init);

-- 
2.47.3



