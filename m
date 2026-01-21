Delivery-date: Wed, 21 Jan 2026 12:33:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWSV-003kFZ-1b
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:33:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWSU-00031A-GH
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:33:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ONVykiRf6xTjQp4zIi7a73SMNmqcxxM8FdKfiQ6z0zI=; b=uUB7W3KJ796KiHRA+z72sISdwe
	LxINmUEfByqDRXTXbV8IxL7+/5lWcrSqN29EJ2ziLEx+Wn4t4aIua0k86PeSglA+7w/EXYf3+1eLL
	kbltr0DTPv7T1RDmVWBDGCK+vVImU9zYec4c7RxSTs2yJPU8YwwD+J72JX7xStCVtAJuoxSRQauyE
	jVzAKUkTnSzs2Z28Oi0NiJ1W1162wwkH8/+qvZFeZiXgIGKtmx0iKMeMZ3r0Q8QaZoaCxz5poezRK
	LT+Gp9QH01w0S0IxZlGa0EhcTgG7hI3y6aPl2ZZN7ts9sS3005jDpl0GWiyTvMXM0LzitsDPaPtWA
	wwz3sC2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWS8-00000005LsV-0aR9;
	Wed, 21 Jan 2026 11:32:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWS6-00000005Lrq-0bAP
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:32:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWRv-0002kY-KC; Wed, 21 Jan 2026 12:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWRw-001jx2-0J;
	Wed, 21 Jan 2026 12:32:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWRw-000000063wC-042A;
	Wed, 21 Jan 2026 12:32:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Jan 2026 12:31:28 +0100
Message-ID: <20260121113234.1438699-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260121113234.1438699-1-a.fatoum@pengutronix.de>
References: <20260121113234.1438699-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_033246_182756_40A1D8E2 
X-CRM114-Status: GOOD (  13.72  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] arm: dts: rk356x: rock3a: disable pcie3x2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The board hangs occasionally on PCI probe after:

  phy7: lane number 0, val 1

On other boots, it continues to:

  rockchip-dw-pcie 3c0800000.pcie@fe280000.of: Phy link never came up

In both cases, the hang affects the second PCIe host controller
to probe and the first probe never hangs:

  rockchip-dw-pcie 3c0000000.pcie@fe260000.of: Phy link never came up

This hang happens on the very first read access to the PCI controller
at register PCIE_ATU_VIEWPORT. Reading Linux code, the first access
seems to be to PCIE_VERSION_NUMBER (0x8F8), but accessing that in
barebox equally hangs from time to time.

My board doesn't have any PCIe devices connected and this hang
doesn't happen in Linux and doesn't happen on the QNAP
TS433-eU, which is also RK3568, but actually has PCIe devices, which are
probed normally.

Disable the device in barebox, so the board is usable with
rockchip_v8_defconfig, which enables the PCI driver.
barebox,status is used, so the Linux device tree is not affected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add short comment explaining why we disable this device in particular
---
 arch/arm/dts/rk3568-rock-3a.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
index bcbfab14a580..4834a85b367a 100644
--- a/arch/arm/dts/rk3568-rock-3a.dts
+++ b/arch/arm/dts/rk3568-rock-3a.dts
@@ -55,3 +55,8 @@ environment_sd: partition@408000 {
 		};
 	};
 };
+
+/* Device driver probe occasionally hangs, but pcie2x1 is fine... */
+&pcie3x2 {
+	barebox,status = "disabled";
+};
-- 
2.47.3



