Delivery-date: Tue, 20 Jan 2026 19:14:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viGF5-003TZB-2s
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 19:14:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viGF4-0007uu-Rq
	for lore@pengutronix.de; Tue, 20 Jan 2026 19:14:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dl+FPg59AVlbpT9zG9eoykbysGH31pEHkz88XCymoH4=; b=XTeBAHiNmgT/IjAVgvIB1pkGWl
	Ge0e9a2KvlBYnbUU/jNlAIqH6Po3npQcLccNFs+XpkvoVbxajUrAJ5pF8SpkfjG50Z5/nP4lsjN0S
	L8WZhqGqkvDyNy67y1GEymbs9Y3zPoDZ6klItETrobLSGpZPT7bXAyOYJ43K2zTvCh/7Whf404UE5
	3rouEHcubm6I2w4tvFkntktDe9mD7d+BRK72CSBhBquuTWrCYoP9Z8CuhqJbHoCfcJcnNA/Pmq7Q0
	b7WISsw1NIcR6gbKr3eUoI10eiD7WueOOCIv2WBH8aQxKi4TbFSCZ88Su8XB+I7dKvitLEr8vx1QX
	bpmGlySA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viGEW-00000004I3h-2ypD;
	Tue, 20 Jan 2026 18:13:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viGEV-00000004I3N-1fX7
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 18:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dl+FPg59AVlbpT9zG9eoykbysGH31pEHkz88XCymoH4=; b=dRNZ3B8/avpu+5OzbFHOuepIsz
	FliMoozlciVO2wdU07zcgUfPU0gDrktYdi4KC8Ld7tX21OirKahcUolw2r8fvPz1ifPDCGnzTZDSJ
	miCx93tPgwnZDlriExtcRkF/TXeG+1EKdmwwWtJKjOcRGt1RMX31Eaz6oFJuDVoAzFGwEvK5299Xf
	JPbqGXctx3E3PYtz/DPDZPg3lQM5ey687pweEx1lpbp7N1HVkX++uJKhxAXVMmIzbUXUWtXGEMz7m
	0ABnP8wrqOEf0CSmpwZGY9FLNTMRTM8CQfnZwWfRk65Bjm5bHaA4Xki2rT398ZFZGmWmTV3AXXdMN
	zlhPoZuA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viGES-0000000EZUY-1yRM
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 18:13:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viGEQ-0007m7-IA; Tue, 20 Jan 2026 19:13:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viGER-001ct1-09;
	Tue, 20 Jan 2026 19:13:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viGEQ-0000000EAFb-44PR;
	Tue, 20 Jan 2026 19:13:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Jan 2026 19:13:31 +0100
Message-ID: <20260120181333.3375979-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
References: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_181336_641716_6EF60E06 
X-CRM114-Status: GOOD (  13.15  )
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
 arch/arm/dts/rk3568-rock-3a.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
index bcbfab14a580..b7258d7e61b3 100644
--- a/arch/arm/dts/rk3568-rock-3a.dts
+++ b/arch/arm/dts/rk3568-rock-3a.dts
@@ -55,3 +55,7 @@ environment_sd: partition@408000 {
 		};
 	};
 };
+
+&pcie3x2 {
+	barebox,status = "disabled";
+};
-- 
2.47.3



