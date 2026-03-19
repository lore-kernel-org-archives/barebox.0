Delivery-date: Thu, 19 Mar 2026 08:02:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Oc-002XpY-2w
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 08:02:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Oc-0005n8-Cz
	for lore@pengutronix.de; Thu, 19 Mar 2026 08:02:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5DOYurwLUOX+k5SpdPmaDLotxrz+pTtuFjNwM4nAarg=; b=EplHoUPjjl2or1gh1o4ZSI5GkY
	yHXmnkrFcZ6LZ5/xnAdBhyaBL++3EHpXwayyBOxhgBBngli3YLL/kYiXLlPA8SwnG4LIEjUaq+LQZ
	wzUDlSNaYjzILKNz++y8FlE/eu5PrZCLoorRMGp4sTjHGv+L9BTFF8sBB7Nq4a7+L1cwwgJsJzwb8
	yMOeprLWtIIQLaQKEyqfbkjnkVIrMDdP9IYkIkqNmQL9yEYV9/PSFHD/6dpsppZImk9zT/YSN5/Ng
	vzU237q0UMEJRLdhv/dR/dRs3fXEgUqpVb/43whDNiKO58cWpMiwQxJOXZHs7CfxYqg6+5/3aKlaq
	YBr04hgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37OC-0000000A5kT-2gMd;
	Thu, 19 Mar 2026 07:01:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37O9-0000000A5je-0u9N
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 07:01:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37O7-0005Y7-JT; Thu, 19 Mar 2026 08:01:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37O6-0011yT-34;
	Thu, 19 Mar 2026 08:01:46 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37O6-000000082op-3bdv;
	Thu, 19 Mar 2026 08:01:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Mar 2026 08:01:45 +0100
Message-ID: <20260319070145.1915091-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_000150_722409_C52D73B4 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: radxa-rock5t: Disable pcie3x2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pcie3x2 has no chance to come up as its phy (pcie30phy) is disabled, so
disable the PCIe port as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588-rock-5t.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/rk3588-rock-5t.dts b/arch/arm/dts/rk3588-rock-5t.dts
index 09a0592bd5..36fdade1e3 100644
--- a/arch/arm/dts/rk3588-rock-5t.dts
+++ b/arch/arm/dts/rk3588-rock-5t.dts
@@ -65,6 +65,10 @@ &pcie30phy {
 	status = "disabled";
 };
 
+&pcie3x2 {
+	status = "disabled";
+};
+
 &pcie2x1l0 {
 	/* Does not work in barebox */
 	status = "disabled";
-- 
2.47.3



