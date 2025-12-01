Delivery-date: Mon, 01 Dec 2025 09:48:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPza0-006kxH-0M
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 09:48:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzZz-0002w9-Hv
	for lore@pengutronix.de; Mon, 01 Dec 2025 09:48:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QwbKFxFQ04DgmRq0DH2JixrQ9a/pIxNW+FDVf53b0no=; b=eW0GFdGLaeofTH5C/KkkSVGH4h
	tR0bNIo6zvbGIDRscoU5rLC4XQrLZhsfBnVHjAnLc5KGKW1hjJFjK1XWQjkKF/EFFQFcuKxPe0x4m
	VDsJ1Hoydbns2tyxdvkX7IBQAtKVUmxfAb5sHvZmR4x53RMhJuOZRj1DRbl0ePHuR9ECDQlUnV98k
	iwsBLa+JFTJMtlLUW7UNuG6NJrvoYBeg4SMD8O/c16tVpqeaWso/4SoN/oOMcqzG+dlI3ovRrA89n
	7g0C9VMY4cFvCmJ38+smJloMfLU7CLfOkwgJiDdxkjCYJZVlKhCyxFXflWIsTEcyEHLS1XoOEpvvy
	6MrW56mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZS-000000039Dc-48fv;
	Mon, 01 Dec 2025 08:47:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZP-000000039Av-2CwB
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 08:47:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vPzZM-0002eN-8A; Mon, 01 Dec 2025 09:47:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 09:45:51 +0100
Message-ID: <20251201084737.1270303-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_004743_563388_DD821130 
X-CRM114-Status: GOOD (  11.40  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/6] ARM: zynqmp: dts: mark power domain as dummy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have deep probe enabled for the ZynqMP boards, but don't have a power
domain driver and indeed never needed one till now.

Mark it optional using the barebox,allow-dummy property.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - new change to suppress warning introduced later in series
---
 arch/arm/dts/zynqmp-zcu102-revA.dts | 1 +
 arch/arm/dts/zynqmp-zcu102-revB.dts | 1 +
 arch/arm/dts/zynqmp-zcu104-revA.dts | 1 +
 arch/arm/dts/zynqmp-zcu106-revA.dts | 1 +
 arch/arm/dts/zynqmp.dtsi            | 5 +++++
 5 files changed, 9 insertions(+)
 create mode 100644 arch/arm/dts/zynqmp.dtsi

diff --git a/arch/arm/dts/zynqmp-zcu102-revA.dts b/arch/arm/dts/zynqmp-zcu102-revA.dts
index 225745cb7488..105ef05e33d3 100644
--- a/arch/arm/dts/zynqmp-zcu102-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu102-revA.dts
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 
 #include <arm64/xilinx/zynqmp-zcu102-revA.dts>
+#include "zynqmp.dtsi"
 
 / {
 	barebox,deep-probe;
diff --git a/arch/arm/dts/zynqmp-zcu102-revB.dts b/arch/arm/dts/zynqmp-zcu102-revB.dts
index a71769da3979..a20737b0ea68 100644
--- a/arch/arm/dts/zynqmp-zcu102-revB.dts
+++ b/arch/arm/dts/zynqmp-zcu102-revB.dts
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 
 #include <arm64/xilinx/zynqmp-zcu102-revB.dts>
+#include "zynqmp.dtsi"
 
 / {
 	barebox,deep-probe;
diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
index d56171ee0c63..c901eec621a0 100644
--- a/arch/arm/dts/zynqmp-zcu104-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -8,6 +8,7 @@
  */
 
 #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
+#include "zynqmp.dtsi"
 
 / {
 	barebox,disable-deep-probe;
diff --git a/arch/arm/dts/zynqmp-zcu106-revA.dts b/arch/arm/dts/zynqmp-zcu106-revA.dts
index 26734160e1ba..afb6ff4d9337 100644
--- a/arch/arm/dts/zynqmp-zcu106-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu106-revA.dts
@@ -9,6 +9,7 @@
  */
 
 #include <arm64/xilinx/zynqmp-zcu106-revA.dts>
+#include "zynqmp.dtsi"
 
 / {
 	barebox,disable-deep-probe;
diff --git a/arch/arm/dts/zynqmp.dtsi b/arch/arm/dts/zynqmp.dtsi
new file mode 100644
index 000000000000..27a52f44e16e
--- /dev/null
+++ b/arch/arm/dts/zynqmp.dtsi
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+&zynqmp_firmware {
+	barebox,allow-dummy;
+};
-- 
2.47.3



