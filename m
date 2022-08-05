Delivery-date: Fri, 05 Aug 2022 07:43:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJq7e-00C9A5-Sp
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 07:43:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJq7f-00070D-50
	for lore@pengutronix.de; Fri, 05 Aug 2022 07:43:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VLxMJbvTkjyPCrVfhgUNVGJAQ0FEGFVlDUbTea70QY0=; b=IMm3qIDEC+spdvLjqbXnn1ThAJ
	2zyamGb1XMgUt34dvlYPv/KEKV7aW56Rv9zdZZ1Vi5FLvel44CCDFhPby9S+5ieIa3rI/kRs+C0CJ
	GfvVAy/oyI6UHasKp90hp/ncylqfK5XflNAYIgKbrsR+2+vX5hJk2D3VUUqWHLs4uyfE8g3WJkaDZ
	56eH8sNkz7EbD/IIoQs8Fw7J/IS5x0PivUZgJ0F8lcVCGiNHyy9fOL4tiBQ22xN7Rr7zNrrgPcP83
	Mac+KBZeh11vtcO2GzWjAWtLpyp+ND4YggMdaq5J00b2j920t8gBi0yStN45xQwJm01vdwIJX0ACb
	HhWseYdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJq6N-00C7hD-0N; Fri, 05 Aug 2022 05:42:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJq6G-00C7eb-90
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 05:42:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJq6E-0006pG-Bd; Fri, 05 Aug 2022 07:42:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJq6B-001pkK-CD; Fri, 05 Aug 2022 07:42:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJq6C-00EC7E-Pq; Fri, 05 Aug 2022 07:42:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 07:42:15 +0200
Message-Id: <20220805054215.3383099-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805054215.3383099-1-a.fatoum@pengutronix.de>
References: <20220805054215.3383099-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220804_224220_358879_8603F283 
X-CRM114-Status: GOOD (  13.59  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 4/4] ARM: i.MX8MN: assume USBOTG power domains to be powered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When i.MX8MN support was first added, upstream device tree did list no
power domains. Now it does and we defer probe of USB indefinitely
because we have no power domain driver. If we need to do PCI on the
i.MX8MM in barebox, there'll likely be no way around importing the power
domain driver, but for USB which used to work, only thing we need to do
is ignore the new power domain specification. Do so by adding the
new barebox,allow-dummy property to the new known-enabled power domain.

Fixes: b01786baa849 ("dts: update to v5.18-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 arch/arm/dts/imx8mn-evk.dtsi | 2 ++
 arch/arm/dts/imx8mn.dtsi     | 5 +++++
 2 files changed, 7 insertions(+)
 create mode 100644 arch/arm/dts/imx8mn.dtsi

diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
index ceeb5f8b9384..aeb357007991 100644
--- a/arch/arm/dts/imx8mn-evk.dtsi
+++ b/arch/arm/dts/imx8mn-evk.dtsi
@@ -4,6 +4,8 @@
  * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
  */
 
+#include "imx8mn.dtsi"
+
 / {
 	chosen {
 		environment-sd {
diff --git a/arch/arm/dts/imx8mn.dtsi b/arch/arm/dts/imx8mn.dtsi
new file mode 100644
index 000000000000..176125e73bce
--- /dev/null
+++ b/arch/arm/dts/imx8mn.dtsi
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+&pgc_otg1 {
+	barebox,allow-dummy;
+};
-- 
2.30.2



