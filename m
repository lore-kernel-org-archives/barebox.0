Delivery-date: Fri, 27 Mar 2026 14:35:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lu-005jlc-28
	for lore@lore.pengutronix.de;
	Fri, 27 Mar 2026 14:35:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lt-0007RJ-Vv
	for lore@pengutronix.de; Fri, 27 Mar 2026 14:35:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Xh336+ZJJkaI6LfRyBQt81XFgBSFqtaRJAntjWzNaw=; b=aZm7x0y4eRycKzXLbI/RkoGWgJ
	r6GPWslEvF9Sd2CPNABS1mqsbjjnTm5vTS5bXZfSL4c5mIg4jhnNGglq+fzhoEFsBsrSg3q/gjVXz
	uHvT3hjcqsqWrk3gNnEiJSt1wWCRf4ogILqSrdaqEfj5f1CIwcjy+sRNBjjxnPWY/Q3k8+NQuOgfN
	zAAJKIXyWa4vpWqkVG+EExGu3uF3gBvuBy0/NAJvp2ifxkJd0vqs+5DEUoaOTJF1OrQwEt5tE4yAI
	HY1+d75KrN2K3U9hOjU24qshKd4Ml7Fk9ZxWXR4lWi5BYSX5+yAFwTqAEouDhCLssQRa5yHqp7srj
	OkjAafpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LO-00000007S90-0QYt;
	Fri, 27 Mar 2026 13:35:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LH-00000007S57-3k51
	for barebox@lists.infradead.org;
	Fri, 27 Mar 2026 13:35:18 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w67LE-0006yD-HP; Fri, 27 Mar 2026 14:35:12 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 27 Mar 2026 14:35:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260327-v2026-02-0-topic-sconfig_console-v7-7-67a52ff65ed3@pengutronix.de>
References: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
In-Reply-To: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_063515_996784_CBB74EA7 
X-CRM114-Status: GOOD (  15.54  )
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
Subject: [PATCH v7 7/7] security: kernel_pinctrl: fixup pinctrl in kernel
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Going through the kernel dts and replacing
barebox,policy-<active_policy>-<name> with <name> and <name> with
old_<name> if a policy pinctrl has been found in order to change
pinctrl not only for barebox, but also for kernel when booting with
security profiles.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 security/Makefile         |  1 +
 security/kernel_pinctrl.c | 73 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 74 insertions(+)

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
index 0000000000..32ace5c79b
--- /dev/null
+++ b/security/kernel_pinctrl.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <linux/printk.h>
+#include <pinctrl.h>
+#include <security/policy.h>
+#include <security/config.h>
+
+/* Maximum number of names to be available in pinctrl-names. Best guess.*/
+#define MAX_NAMES 10
+
+/**
+ * Replace 'default' with 'old_default' and 'barebox,policy-<active_policy>-default'
+ * with 'default', if both are found in pinctrl.
+ * Same for every other name, that starts with barebox,policy-<active_policy>- and
+ * has another name without the prefix.
+ */
+static int kernel_of_fixup_pinctrl(struct device_node *root, void *unused)
+{
+	char *basename;
+	int base_len;
+	struct device_node *node;
+	const struct security_policy *active_policy = security_policy_get_active();
+
+	if (!active_policy || !active_policy->name)
+		return -EINVAL;
+	basename = basprintf("barebox,policy-%s-", active_policy->name);
+	base_len = strlen(basename);
+
+	list_for_each_entry(node, &root->list, list) {
+		const char *names[MAX_NAMES];
+		int num_read;
+		bool changed = false;
+
+		num_read = of_property_read_string_array(node, "pinctrl-names", names, MAX_NAMES);
+		if (num_read == MAX_NAMES) {
+			int total = of_property_count_strings(node, "pinctrl-names");
+
+			if (total > MAX_NAMES)
+				pr_warn("Node %s has more then %d pinctrl names defined. Skipping last %d\n",
+					node->full_name, MAX_NAMES, total - MAX_NAMES);
+		}
+
+		for (int i = 0; i < num_read; i++) {
+			if (strncmp(basename, names[i], base_len) == 0) {
+				const char *name = names[i] + base_len;
+
+				for (int ii = 0; ii < num_read; ii++) {
+					if (strcmp(name, names[ii]) == 0) {
+						/* this never gets freed,
+						 * but we are starting the kernel,
+						 * so there should be no problem.
+						 */
+						names[ii] = basprintf("old_%s", name);
+						names[i] = name;
+						changed = true;
+						break;
+					}
+				}
+			}
+		}
+		if (changed)
+			of_property_write_string_array(node, "pinctrl-names", names, num_read);
+	}
+	free(basename);
+	return 0;
+}
+
+static int policy_kernel_pinctrl_fixup_init(void)
+{
+	return of_register_fixup(kernel_of_fixup_pinctrl, NULL);
+}
+late_initcall(policy_kernel_pinctrl_fixup_init);

-- 
2.47.3



