Delivery-date: Mon, 09 Dec 2024 11:35:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKb7G-005vu9-0U
	for lore@lore.pengutronix.de;
	Mon, 09 Dec 2024 11:35:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKb7G-0006cu-3N
	for lore@pengutronix.de; Mon, 09 Dec 2024 11:35:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZRcYOqctiTRFnL42SAuTtPs0qANBjYRw9E796bt1854=; b=aL6LAYDwGTtkb20PBCcvuq/XyW
	xbx74gYo/SNYc95L25av5Wpp+VgLzYPMVo6dQaElFX7HQMgO7DnnpMWT4ZvXHdbbAwKX63EzCe7Cq
	Tk4Y37yNUjketTJTxchCD9op2/fVynI0Pg4chWPxoh4vcO+vKswPGFYs7t0JCg1O1Aequ67KJAiLj
	r5LhQaLPuChs7xg3We8stKyoQVA/DOmaLf6b+WliB55cusJEW45WHioOkQrQCTeZlfK5LcAuweNPR
	sMyMZ145UVsllfzUdNxlGLPyTzsEmFaCeHP4ihTx55emsBjesqtdkMBPaQ1KOaW156c1P5ZSmtEaJ
	XEaBxuJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKb6Y-00000007JZK-400t;
	Mon, 09 Dec 2024 10:35:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKb26-00000007I9o-2Mon
	for barebox@lists.infradead.org;
	Mon, 09 Dec 2024 10:30:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKb22-0005DU-SA; Mon, 09 Dec 2024 11:30:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKb21-002UnL-2v;
	Mon, 09 Dec 2024 11:30:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKb22-001VVe-1n;
	Mon, 09 Dec 2024 11:30:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  9 Dec 2024 11:30:25 +0100
Message-Id: <20241209103025.359093-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_023030_600601_00354D86 
X-CRM114-Status: GOOD (  15.41  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: psci-client: better search for existing psci node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PSCI fixup code assumes the psci node is at /psci. This is not the
case for all boards. TI AM62x upstream dtsi files have the psci node at
/firmware/psci where the current code doesn't find it and creates a new
node, so on this SoC we end up with two PSCI nodes.

Fix this by searching for a node compatible to "arm,psci-0.2" or
"arm,psci-1.0" instead of assuming a fixed location.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/psci-of.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/psci-of.c b/arch/arm/cpu/psci-of.c
index 1b6371ddd6..7c74860146 100644
--- a/arch/arm/cpu/psci-of.c
+++ b/arch/arm/cpu/psci-of.c
@@ -7,6 +7,24 @@
 #include <asm/psci.h>
 #include <linux/arm-smccc.h>
 
+static struct device_node *find_or_create_psci_node(struct device_node *root)
+{
+	struct device_node *psci;
+	const char *compat[] = {
+		"arm,psci-0.2",
+		"arm,psci-1.0"
+	};
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(compat); i++) {
+		psci = of_find_compatible_node(root, NULL, compat[i]);
+		if (psci)
+			return psci;
+	}
+
+	return of_create_node(root, "/psci");
+}
+
 int of_psci_fixup(struct device_node *root, unsigned long psci_version,
 		  const char *method)
 {
@@ -15,10 +33,6 @@ int of_psci_fixup(struct device_node *root, unsigned long psci_version,
 	const char *compat;
 	struct device_node *cpus, *cpu;
 
-	psci = of_create_node(root, "/psci");
-	if (!psci)
-		return -EINVAL;
-
 	if (psci_version >= ARM_PSCI_VER_1_0) {
 		compat = "arm,psci-1.0";
 	} else if (psci_version >= ARM_PSCI_VER_0_2) {
@@ -28,6 +42,10 @@ int of_psci_fixup(struct device_node *root, unsigned long psci_version,
 		return -EINVAL;
 	}
 
+	psci = find_or_create_psci_node(root);
+	if (!psci)
+		return -EINVAL;
+
 	cpus = of_find_node_by_path_from(root, "/cpus");
 	if (!cpus) {
 		pr_err("Cannot find /cpus node, PSCI fixup aborting\n");
-- 
2.39.5



