Delivery-date: Tue, 20 Jan 2026 19:14:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viGF5-003TZC-30
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 19:14:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viGF4-0007uv-T0
	for lore@pengutronix.de; Tue, 20 Jan 2026 19:14:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TiHqRWz+nHq83kG+kMGt7PpTkHflPW63531M3UysE2M=; b=DqBpk9HKdBRpkLwg7a33ALi+28
	d3orMLeAqo7Vykwj5WLpCPJbwvyoP2O5fojnh7veceCiHB8Zwaj3OhLO4eXcJS65GbMwI2nuAs0m+
	jdFNCW62BqSnsFWZk8B7dcIcBfEbSryh6OxXkgW49ut43T/LHLe7Te0MvYOer2vqK8fR6smApBKkP
	M2esrWh9OISEdYJwzlDiW5kHRlOr3/PbaT0Qx1uRLDZW0Vpf0XW0XUYJJL6Cc4ix8I4eAml5yi0Cj
	4TRi2BT3eeJO3qj4ySHCyhzwEnb5+P952C1HLUlkj2pYHO7UrAi4ktWtKMtMS2i1G7J5Nas9MO3xK
	a3sJWhsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viGEW-00000004I3q-48ta;
	Tue, 20 Jan 2026 18:13:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viGEV-00000004I3M-1fXF
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 18:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=TiHqRWz+nHq83kG+kMGt7PpTkHflPW63531M3UysE2M=; b=OzN5rqZTdiULxgSIctRPIEgVic
	kB/yHrtmAd+bmRqmsHhhxk0Ymi1KI3ZP7v3K9aWS/vBvTBy2H59s1xeR4Lo3GS5IRNLQzt6+AqkyF
	4aw0/SqiAOswNeUii+DCng0If81ZDe4f/Jg+v86dqfxZ4X0vUqMXiwjp6YqvzoMOZeB9TawFslCru
	JyHy+qVnWNgsdP2oLHdAzCz6wra5GP0kDqBcJiKIR5AXbJDmUlCTg3H9IwZ3Sgqaa1tFEtSSvy6gp
	cy1SPFKAVYjDeAgWk9NW+9tWByVLGXkTYAFPcdsrnnibyd9A7Dx+/NudpQRdWKoU/cnjkReTH5b9w
	qk06bcPw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viGES-0000000EZUZ-1yN1
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 18:13:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viGEQ-0007m6-H5; Tue, 20 Jan 2026 19:13:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viGER-001ct0-00;
	Tue, 20 Jan 2026 19:13:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viGEQ-0000000EAFb-3sP2;
	Tue, 20 Jan 2026 19:13:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Jan 2026 19:13:30 +0100
Message-ID: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_181336_631134_5D02064C 
X-CRM114-Status: GOOD (  14.25  )
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
Subject: [PATCH 1/2] of: base: add new barebox,status property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I am confronted with an occasional hang on the Radxa Rock 3A during
PCI probe. The board has no PCI devices connected.

This hang doesn't happen in Linux and doesn't happen on the QNAP
TS433-eU, which is also RK3568, but actually has PCIe devices, which are
probed normally.

For such purposes, add a barebox,status property as setting the status
to disabled, would impact Linux as well if barebox were to pass along
its own device tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,status.rst        | 8 ++++++++
 drivers/of/base.c                                         | 4 +++-
 2 files changed, 11 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,status.rst

diff --git a/Documentation/devicetree/bindings/barebox/barebox,status.rst b/Documentation/devicetree/bindings/barebox/barebox,status.rst
new file mode 100644
index 000000000000..06524b218fb1
--- /dev/null
+++ b/Documentation/devicetree/bindings/barebox/barebox,status.rst
@@ -0,0 +1,8 @@
+barebox,status property
+=======================
+
+barebox interprets ``barebox,status`` the same as it does ``status``,
+but gives the former precedence if both exist.
+
+Use this property only for devices for which barebox has a driver, but
+that barebox should not be probing on a per-board basis.
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 54fd458bd9a1..4e83a757a4e9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2149,7 +2149,9 @@ int of_device_is_available(const struct device_node *device)
 	const char *status;
 	int statlen;
 
-	status = of_get_property(device, "status", &statlen);
+	status = of_get_property(device, "barebox,status", &statlen);
+	if (status == NULL)
+		status = of_get_property(device, "status", &statlen);
 	if (status == NULL)
 		return 1;
 
-- 
2.47.3



