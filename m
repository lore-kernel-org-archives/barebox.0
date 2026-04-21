Delivery-date: Tue, 21 Apr 2026 12:30:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF8Mq-00EgV9-0n
	for lore@lore.pengutronix.de;
	Tue, 21 Apr 2026 12:30:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF8Mp-0006hp-A5
	for lore@pengutronix.de; Tue, 21 Apr 2026 12:30:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fnWthE2NbvCx4BG8cJ/DJ2vqRkSXA78ADiY/x6ffiws=; b=vqq+aLBfNvEDXu+eQk9TPwrkFp
	k//egGAzSg/PLK9pz8QTkDVKVLF3UX1MJyg21+RmEZeq7TNZ/BDGZ1m4erYFTYU34m5NjomnoGOja
	0xC/guyH6hCRQ7Hbkum6f3huN/A2kQids1GG/JWDS2SZ8M7giWxtRWXe1ATqNZyVsOiMFLS6C22as
	UIzs0Tri01Gz/8HUnxQi47VkiljuPOY1I2EPuuMiO61AKkhMyZPiYUpwansM5cZx7SDxYLS6gSA3e
	kKW08HklWO8ljDWxGKIqD1V9CoeRE2K/aSsYIa5IdlCz619fPcEz74GiUS0gU9mduSko6iE1ZHaHo
	U5kfEThA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF8MN-00000008REA-2MeQ;
	Tue, 21 Apr 2026 10:29:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF8MK-00000008RBd-11jg
	for barebox@lists.infradead.org;
	Tue, 21 Apr 2026 10:29:37 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wF8MI-0006MC-Pl; Tue, 21 Apr 2026 12:29:34 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 21 Apr 2026 12:29:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260421-v2026-02-0-topic-sconfig_console-v8-7-261cdfc6b0da@pengutronix.de>
References: <20260421-v2026-02-0-topic-sconfig_console-v8-0-261cdfc6b0da@pengutronix.de>
In-Reply-To: <20260421-v2026-02-0-topic-sconfig_console-v8-0-261cdfc6b0da@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_032936_352194_BDED9483 
X-CRM114-Status: GOOD (  15.83  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v8 7/7] security: kernel_pinctrl: fixup pinctrl in kernel
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
index 510fe5af65..52d9683d83 100644
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



