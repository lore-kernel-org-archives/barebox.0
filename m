Delivery-date: Tue, 01 Nov 2022 07:28:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkl3-00APV8-S0
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:28:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkl2-00023h-Ih
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:28:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l6xx885netP1VkmIkzN1tuBE9RDj+Uq5cM/aVF7847M=; b=ndsKN2vjjAMPO7uc3he4p8MDj3
	2S6RGk/LX+sYQzSLlB+kxPSmSZRC7/3pa/aeKq/jG0OuOy4PMloy7cW8Pkl+MADIYQUc0FM0LDS8d
	0O3DGEDQSCHSqL8JpdFA7CWJB8pYfLwnMyf/sCJU0OGj6BCZ5HPkVCHJfvAlwe8sbZBqSM28NBjD/
	AD3kLPY+gJ34Pt2X8FSpG8ccwfzqtu+KjGVz5WSFxK41uIlF9WimCq8S6ckpzv4FAEql5PhKUyM0B
	Vn4+nr7ccdD+F2WkNKhoNam4cW/FF9ClclNKm/Lo5092Lqd55q9/HT+gLV0XuKg3B7vbt74MYf3xV
	eUAbsPMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjk-002Psr-Tk; Tue, 01 Nov 2022 06:27:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjW-002Pn4-Ix
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:26:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjU-0001mu-OS; Tue, 01 Nov 2022 07:26:44 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjU-001ciR-Vk; Tue, 01 Nov 2022 07:26:44 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjT-00DSKg-97; Tue, 01 Nov 2022 07:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 07:26:39 +0100
Message-Id: <20221101062642.3207113-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
References: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_232646_663115_247F3297 
X-CRM114-Status: GOOD (  12.80  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/4] ARM: psci: of: fixup only version if node already exists
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When barebox is booted as QEMU -kernel, PSCI will have method = "hvc",
because QEMU will act as Hypervisor. barebox handles this correctly and
will use hvc instead of smc, but of_psci_fixup() always fixes up
method = "smc" thereby breaking kernel boot.

Fix this by only updating version if the node already exists and
omitting everything else.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci-of.c | 39 +++++++++++++++++++++++----------------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/psci-of.c b/arch/arm/cpu/psci-of.c
index ef83b0edee69..e08a04b36d05 100644
--- a/arch/arm/cpu/psci-of.c
+++ b/arch/arm/cpu/psci-of.c
@@ -7,16 +7,10 @@
 #include <asm/psci.h>
 #include <linux/arm-smccc.h>
 
-int of_psci_fixup(struct device_node *root, unsigned long psci_version)
+static int of_psci_version_fixup(struct device_node *psci,
+				 unsigned long psci_version)
 {
-	struct device_node *psci;
-	int ret;
 	const char *compat;
-	struct device_node *cpus, *cpu;
-
-	psci = of_create_node(root, "/psci");
-	if (!psci)
-		return -EINVAL;
 
 	if (psci_version >= ARM_PSCI_VER_1_0) {
 		compat = "arm,psci-1.0";
@@ -27,6 +21,27 @@ int of_psci_fixup(struct device_node *root, unsigned long psci_version)
 		return -EINVAL;
 	}
 
+	return of_property_write_string(psci, "compatible", compat);
+}
+
+int of_psci_fixup(struct device_node *root, unsigned long psci_version)
+{
+	struct device_node *psci;
+	int ret;
+	struct device_node *cpus, *cpu;
+
+	psci = of_find_node_by_path_from(root, "/psci");
+	if (psci)
+		return of_psci_version_fixup(psci, psci_version);
+
+	psci = of_create_node(root, "/psci");
+	if (!psci)
+		return -EINVAL;
+
+	ret = of_property_write_string(psci, "method", "smc");
+	if (ret)
+		return ret;
+
 	cpus = of_find_node_by_path_from(root, "/cpus");
 	if (!cpus) {
 		pr_err("Cannot find /cpus node, PSCI fixup aborting\n");
@@ -42,13 +57,5 @@ int of_psci_fixup(struct device_node *root, unsigned long psci_version)
 		pr_debug("Fixed %s\n", cpu->full_name);
 	}
 
-	ret = of_property_write_string(psci, "compatible", compat);
-	if (ret)
-		return ret;
-
-	ret = of_property_write_string(psci, "method", "smc");
-	if (ret)
-		return ret;
-
 	return 0;
 }
-- 
2.30.2



