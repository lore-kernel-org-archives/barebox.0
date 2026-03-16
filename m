Delivery-date: Mon, 16 Mar 2026 12:37:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w26G1-001Q03-1J
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 12:37:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w26G0-0006ly-Ne
	for lore@pengutronix.de; Mon, 16 Mar 2026 12:37:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BnVD8zEe2OnL/Tc+JaIfSUbxypYOQfd8rbzt6RtQql0=; b=L2DBDC7jbOu4vbHsUG0FrrXl1A
	KGJf8aR4K4x2BNJGeeQUxZsjhpe2UC3NhITtFRvPvuAJyHVmS/yMGgN/LfNnPeTR9Ah9qs8/vtRnw
	wisRqcpbfWXF7sAniIYrjY5lqlNfNRzKaQXkdBhTxNOufg2603Vbe4LHdCBNHnzcoISKxySEDildh
	/VQxReb5/ZQQh1xgXhMW8Z29XmZLVXPf8fu+dcFt1IgiHmpVuyENTUEjc0EQjKncjFeG3FosS2C7+
	PhtDOF2LqHnH8WSFPtciMxEKaCqjO0mu3s6WFVy/Z1VqThxpeF2J87GYRL7UTYSVZtLyfmjJ9UFma
	1Ja6wc7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26FW-00000003qAm-2B11;
	Mon, 16 Mar 2026 11:36:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26FU-00000003q9j-1Fde
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 11:36:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=BnVD8zEe2OnL/Tc+JaIfSUbxypYOQfd8rbzt6RtQql0=; b=C+IOTscwMzWagWE5ENWfOqOd/6
	BrIRxe05wzz3ZjlVRwJIths+P4WuBA0ooEGTOxapQ/rHuYCD6b+Dxoez+0TMUg4RlEu0JG8jy84/u
	EtYoC54EX9a8Dcos+HZ1aBRAJNnNvXWOMMHNG2oF8F88nSaictDrUfwCxJ7AhepHNT/tdfcoyugn/
	emLsD51gXc+5Z1SQH8ONfeuo3sYFLmuTYY5F9ERoMq++n+Jj+kopvgfhsg2GIZpBnEsOoNTP1qd2L
	hnJzf+SEcfFU7o2uUIk0JkyiJ0e5GSgMrdGcA6p6gh9LPFkK9yWNH79f9pDYMiGZeyCks+vQY0Ein
	51Kr6K1w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26FR-00000006cae-1Q5y
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 11:36:39 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w26FP-0006QV-1o; Mon, 16 Mar 2026 12:36:35 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 16 Mar 2026 12:36:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-v2026-02-0-topic-sconfig_console-v2-5-1eee8c762beb@pengutronix.de>
References: <20260316-v2026-02-0-topic-sconfig_console-v2-0-1eee8c762beb@pengutronix.de>
In-Reply-To: <20260316-v2026-02-0-topic-sconfig_console-v2-0-1eee8c762beb@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_113637_504382_1440FC08 
X-CRM114-Status: GOOD (  14.63  )
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
Subject: [PATCH v2 5/5] security: kernel_pinctrl: fixup pinctrl in kernel
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Going through the kernel dts and replacing
barebox,policy-<active_policy> with default in order to change pinctrl
not only for barebox, but also for kernel when booting with security
profiles.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 security/Makefile         |  1 +
 security/kernel_pinctrl.c | 58 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)

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
index 0000000000..af65961bbc
--- /dev/null
+++ b/security/kernel_pinctrl.c
@@ -0,0 +1,58 @@
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
+	const char *names[NUM_NAMES];
+	int num_read, pos_default, pos_policy;
+	struct device_node *next;
+
+	while (node) {
+		num_read = of_property_read_string_array(node, "pinctrl-names", names, NUM_NAMES);
+
+		pos_default = -1;
+		pos_policy = -1;
+		for (int i = 0; i < num_read; i++) {
+			if (strcmp(policy_name, names[i]) == 0)
+				pos_policy = i;
+			if (strcmp("default", names[i]) == 0)
+				pos_default = i;
+		}
+		if (pos_default >= 0 && pos_policy >= 0) {
+			names[pos_default] = "old_default";
+			names[pos_policy] = "default";
+			of_property_write_string_array(node, "pinctrl-names", names, num_read);
+		}
+
+		next = list_first_entry(&node->list, struct device_node, list);
+		node = next->parent ? next : NULL;
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



