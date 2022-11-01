Delivery-date: Tue, 01 Nov 2022 07:28:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkkv-00APU2-Pp
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:28:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkku-000210-Gf
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:28:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gx71W9meTy0gpuOUgiWtKqb5Ar8ItVllVOku7ocdDz0=; b=SJlyVDGFExkqjNMAhcWp2g81Lz
	cJU8VOlzdNLXjaPwM6aSEi+vwmHPpoZacm9T3MfIEsTcMVT3M81TJsFX9HFRPRWqW3k/3HaYrvx6H
	IjgFRjp7DFc7Vp+EqS+pSMMhi+bk6I0/bZ3NNv8TbZ4adPWEf12l0hli4FFc2aU8pLOErFbLFc9m2
	JzRNtZYiXar0LgE1DVQgVZJ+46FDJjAhQQK0E2Lsc8koMW5YaAgNGHdtIIGUaaBcomdJ1Kewg/T9G
	dhIwnAhoA2sClLRMfdIM2QnoOFLYPI8n63RnY4Wd7achUobbTxDHsV+n2bCAFD2WXp/Bzf0EYnjzO
	pz78fmxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkji-002PrW-Dp; Tue, 01 Nov 2022 06:26:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjW-002Pn5-Iz
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:26:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjU-0001mv-Rk; Tue, 01 Nov 2022 07:26:44 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjV-001ciU-2t; Tue, 01 Nov 2022 07:26:44 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjT-00DSKp-A6; Tue, 01 Nov 2022 07:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 07:26:42 +0100
Message-Id: <20221101062642.3207113-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
References: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_232646_663681_B1EDC227 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH master 4/4] ARM: psci: keep older PSCI versions in compatible fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The psci device tree binding mandates keeping older ARM PSCI compatibles
as less-specific compatible entries. Have the barebox fixup comply
with this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci-of.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/psci-of.c b/arch/arm/cpu/psci-of.c
index e08a04b36d05..0d25e8b2fdb2 100644
--- a/arch/arm/cpu/psci-of.c
+++ b/arch/arm/cpu/psci-of.c
@@ -10,18 +10,16 @@
 static int of_psci_version_fixup(struct device_node *psci,
 				 unsigned long psci_version)
 {
-	const char *compat;
-
-	if (psci_version >= ARM_PSCI_VER_1_0) {
-		compat = "arm,psci-1.0";
-	} else if (psci_version >= ARM_PSCI_VER_0_2) {
-		compat = "arm,psci-0.2";
-	} else {
-		pr_err("Unsupported PSCI version %ld\n", psci_version);
-		return -EINVAL;
-	}
+	if (psci_version >= ARM_PSCI_VER_1_0)
+		return of_property_write_strings(psci, "compatible",
+			"arm,psci-1.0", "arm,psci-0.2", "arm,psci", NULL);
+
+	if (psci_version >= ARM_PSCI_VER_0_2)
+		return of_property_write_strings(psci, "compatible",
+			"arm,psci-0.2", "arm,psci", NULL);
 
-	return of_property_write_string(psci, "compatible", compat);
+	pr_err("Unsupported PSCI version %ld\n", psci_version);
+	return -EINVAL;
 }
 
 int of_psci_fixup(struct device_node *root, unsigned long psci_version)
-- 
2.30.2



