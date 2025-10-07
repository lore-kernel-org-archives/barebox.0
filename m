Delivery-date: Tue, 07 Oct 2025 10:52:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63QT-005Bkv-2D
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 10:52:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63QT-00073j-4V
	for lore@pengutronix.de; Tue, 07 Oct 2025 10:52:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7WQiJrJPlRHcpiAzVB4kFCvxgzEqvf/YPm1R1j2vA3I=; b=wCVIO6USkaXybINKK0r8y7y5yL
	IQ6xHlw7OoGnjSiPRVxd62MHStX5M0yPb5QGm0PZ2mCe5usHLt96vwrRpzmKB/gwG4KX2brKPmsp3
	yEYgA5tICFZ8q1ekSZWrXQo265ZcDXSBxOf29Q1WKC0an1QDsxMRApsDrk7HlPxB8PxDHIScK4Bd0
	KRsnwl6iPbgig9lfRV3SEc3rpDK4mG+C+029VbVTHGI8xZT4OJK/xvbsVAKNli86gGZLi7Kx5CoOi
	1U8EHFX708Kmy8PGmYRe6C2M4ZnSaux6yqzDVcH+lMGMjKco4Pb3PLyvB9dx4I3ycWN411eqe7zaH
	UdxW2Ywg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63Pn-00000001e4V-3SBN;
	Tue, 07 Oct 2025 08:51:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63Pm-00000001e47-0hyp
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 08:51:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v63Pi-0006xj-SG; Tue, 07 Oct 2025 10:51:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v63Pi-002N7V-2E;
	Tue, 07 Oct 2025 10:51:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v63Pi-00000003wuB-2Phd;
	Tue, 07 Oct 2025 10:51:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  7 Oct 2025 10:51:17 +0200
Message-ID: <20251007085117.941408-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_015122_245641_B64A6EBD 
X-CRM114-Status: GOOD (  12.46  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: am62lx: fix secondary core startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Disable the rti1 watchdog which fixes startup of the secondary CPU core
under Linux.

Enabling the rti1 watchdog leads to enabling its power domain,
<&scmi_pds 61> in this case. With this starting the secondary core fails
under Linux:

[    5.095816] CPU1: failed to come online
[    5.095832] CPU1: failed in unknown state : 0x0
[    5.095892] smp: Brought up 1 node, 1 CPU
[    5.095898] SMP: Total of 1 processors activated.

I don't know what's exactly going on here, but it seems enabling the
power domain either indirectly starts the secondary core in barebox
already or it causes some weird power state for the secondary CPU from
which the Tf-A can't recover later.

The device node is the same as under Linux later, but in Linux the rti1
watchdog is configured after the secondary CPU has been started.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-barebox.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
index 3524fbb979..ce99dfd921 100644
--- a/arch/arm/dts/k3-am62l-barebox.dtsi
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -11,6 +11,10 @@ &gpio2 {
 	status = "okay";
 };
 
+&rti1 {
+	status = "disabled";
+};
+
 &wkup_gpio0 {
 	status = "okay";
 };
-- 
2.47.3



