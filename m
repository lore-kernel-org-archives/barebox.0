Delivery-date: Tue, 24 Mar 2026 10:53:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ySB-004SF8-27
	for lore@lore.pengutronix.de;
	Tue, 24 Mar 2026 10:53:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ySA-00084X-SZ
	for lore@pengutronix.de; Tue, 24 Mar 2026 10:53:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1u6ir1YOjWAAM6Vj7g069vQtH2IsaIeTnfCv72REQIM=; b=UMJl7UEJ0sox7RmMPO9/fjHB2K
	K+9DphA8Z0vG5FPFO06BDRSURjvWQBIMB5hZOtYJ6inzrxGsyFRlw9wFN92lSxVDPpXmjezk364Jb
	EF1FPGHnTy3T7i1qFlozugiQMixDc0/lcCS7+Xq6875WQX7c3QVALeVPZeF4+7IWrQkd0viS7gmxF
	bFLzYS/fkWgfrMj5SnJ600I8Fk8Hyd8Zo38sHVjK1D1FTC+1eJflxnJtY/geig7AvBqAW28pOJA4S
	eM7/JXvWdfDZacG7cuykMwZSo+yGMZ5OCjiNIOej8U6h02GsxLltFgidcRN3VfePeaCGv5kxYp0Fa
	0ry3gBPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4yRc-000000018g0-2DLt;
	Tue, 24 Mar 2026 09:53:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4yRb-000000018fP-0Bav
	for barebox@bombadil.infradead.org;
	Tue, 24 Mar 2026 09:53:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=1u6ir1YOjWAAM6Vj7g069vQtH2IsaIeTnfCv72REQIM=; b=bWFu8zTk9ZHQLnam1pfLrs0Lug
	xMb9pGdcYL9nHAhrg1wuY50iqRE8iB6o9AuKVmXh2/Jr7Ceppodf70HCilCxNXhXbIfekjIIG2Duo
	sa12wC5LVwfrIo5pNO2U+SEhgGo7Dua2pdUR1Jn/NeogtAXnHsEHy+GTHVSxuLqMF1CtOsECH6YZN
	ocQ/BXmPpSW+JWGUv5yduCtWnLEGwQ6iNmSGIw21PDhAbz/dusjhH9cCnOb6S0A+J15z2NoVvnIwW
	JGqA3KMyiYJ45RDd+CARYDSKZVkGptDLia5ySEccMesqUM4PxGJeM2BK5pSulcQJ1YGXyzl6onUOw
	0OjV6m3g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4yRX-0000000Do1Z-3voC
	for barebox@lists.infradead.org;
	Tue, 24 Mar 2026 09:53:01 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w4yRU-0007eb-DM; Tue, 24 Mar 2026 10:52:56 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 24 Mar 2026 10:52:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260324-v2026-02-0-topic-sconfig_console-v6-7-f0eb6af2cc06@pengutronix.de>
References: <20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de>
In-Reply-To: <20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_095300_026434_15A346F7 
X-CRM114-Status: GOOD (  14.75  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v6 7/7] security: kernel_pinctrl: fixup pinctrl in kernel
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Going through the kernel dts and replacing
barebox,policy-<active_policy>-<name> with <name> and <name> with
old_<name> if a policy pinctrl has ben found in order to change pinctrl
not only for barebox, but also for kernel when booting with security
profiles.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 security/Makefile         |  1 +
 security/kernel_pinctrl.c | 67 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+)

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
index 0000000000..f02acdfd55
--- /dev/null
+++ b/security/kernel_pinctrl.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <linux/printk.h>
+#include <pinctrl.h>
+#include <security/policy.h>
+#include <security/config.h>
+
+/* Maximun number of names to be available in pinctrl-names. Best guess.*/
+#define MAX_NAMES	10
+
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
+static int policy_console_pinctrl_init(void)
+{
+	return of_register_fixup(kernel_of_fixup_pinctrl, NULL);
+}
+late_initcall(policy_console_pinctrl_init);

-- 
2.47.3



