Delivery-date: Tue, 30 May 2023 13:20:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOU-002jyb-At
	for lore@lore.pengutronix.de; Tue, 30 May 2023 13:20:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOR-0001Xa-T8
	for lore@pengutronix.de; Tue, 30 May 2023 13:20:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7FBc8Nd4LiAuFcSRdcJQE27f9Kul68dzX3OFUEkBtCs=; b=l0RJu110b3KFn4yogdAI71FjFo
	Fal9paTpLwr0eCXHSLhsBrmzkl85g6yQ6Z536m/vF9f677vE09fl5y8maYlZ+7ZXR7o+Rsaa0v+xh
	KxPVDCGY1fZA+IC7k/ZxwXol9QXVrHcmSaLKonTlwxp5F2GNq9rdPtBJC7tBK3mzK/K7277L6wZoY
	6mGZ5mt5R+/2zDRWwIOj68+KnabZct0q7fTicvb0sZJuQYqPvZMZAkRuP4lU6sGD4+ZG+d0U/v2xV
	jCGgM7KTdLkrZAiG0MhpexOF7DEmbUGfWe/h8Q4vigucYuSEGKpG6Z+O+Evevysn6laETx+2kLvKx
	4A7SvlUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNM-00DbqS-0j;
	Tue, 30 May 2023 11:18:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNA-00Dbix-1e
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 11:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-00014q-Ox; Tue, 30 May 2023 13:18:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-003rOl-3f; Tue, 30 May 2023 13:18:36 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN3-0082b8-NO; Tue, 30 May 2023 13:18:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 May 2023 13:18:28 +0200
Message-Id: <20230530111832.1916542-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530111832.1916542-1-s.hauer@pengutronix.de>
References: <20230530111832.1916542-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_041840_602347_23B7AD40 
X-CRM114-Status: GOOD (  15.75  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/10] ARM: dts: rk3588s: Set CPU clock to 816MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Originally the Kernel rk3588s.dtsi assigned the CPU clock rates in the
scmi_clk node. We had to remove the assigned-clock-rates properties
because our SCMI clock driver didn't work properly. Now it does, so we
can bring these properties back. In the meantime the assigned-clock-rates
properties were moved to the cpu nodes in the upstream dtsi file in
87810bda8a847 ("arm64: dts: rockchip: Fix SCMI assigned clocks on rk3588s")
We do not have a driver on the CPU nodes (and neither does the kernel),
so the properties do not help us there. Instead, add the
assigned-clock-rates properties to our local rk3588s.dtsi file.

With this the CPU clocks are configured to 816MHz where the SoC
previously came up with only 24MHz.

Note that the CPU could run with 2.4GHz, but I am not sure yet if all
voltages are configured correctly for that frequency, so for now run
with the frequency that has been the default in the dtsi files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588s.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/rk3588s.dtsi b/arch/arm/dts/rk3588s.dtsi
index ba6561f97e..6f055d826e 100644
--- a/arch/arm/dts/rk3588s.dtsi
+++ b/arch/arm/dts/rk3588s.dtsi
@@ -130,6 +130,7 @@ combphy2_psu: phy@fee20000 {
 };
 
 &scmi_clk {
-	/delete-property/ assigned-clocks;
-	/delete-property/ assigned-clock-rates;
+	assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>,
+			  <&scmi_clk SCMI_CLK_CPUB23>;
+	assigned-clock-rates = <816000000>, <816000000>;
 };
-- 
2.39.2



