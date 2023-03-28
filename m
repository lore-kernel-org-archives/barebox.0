Delivery-date: Tue, 28 Mar 2023 09:42:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xu-00HMeS-JO
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 09:42:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xu-0001V9-9D
	for lore@pengutronix.de; Tue, 28 Mar 2023 09:41:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H15KQhcMK9z8TIqsOqn1nzx3Z/z60W/i8uK7WJyY7jU=; b=5By0r9+AMo/aM05A/TvmZQZqBI
	dSpOqP0AQJDAt6Z79cuRW9xaPby0F2AN7cpz7Mx2yd+c1xd14KqA2lxLYXX4x/oaDe6XXtacEOQPk
	oauO41n87cmrig8CwKUmEHCrmv4m7UAhy7RnxFxPkt0yru1W1hSmN5lXGEQ858A5Wb8dsfVdlqcq6
	wlmqlMf6wIE4HhYjtw2KXcQj31Bp9DjK/qAiOB0lc5KtdUcIudqlmcIP31kMLYMJF+1potDW+gKJW
	yq4QGTbXlBxz4GYitGT2sc4p+Aj4uwzPcyu9T6ZkL8YA4OL6+wpVnBDl16Vd74Sgce7nKH576JalS
	x66EcSAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wo-00DUzs-1G;
	Tue, 28 Mar 2023 07:40:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wg-00DUvH-2F
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 07:40:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3we-00017e-1V; Tue, 28 Mar 2023 09:40:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wc-007Fvh-Le; Tue, 28 Mar 2023 09:40:38 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wb-0052xe-LG; Tue, 28 Mar 2023 09:40:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 09:40:32 +0200
Message-Id: <20230328074037.1202993-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328074037.1202993-1-s.hauer@pengutronix.de>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_004042_729212_F90BD9D3 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] ARM: dts: rk356x: Add DMC controller node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's currently no DMC controller node in the upstream dtsi file.
Add one until it's there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk356x.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
index 6a9cd14d2d..4de2404b50 100644
--- a/arch/arm/dts/rk356x.dtsi
+++ b/arch/arm/dts/rk356x.dtsi
@@ -6,4 +6,9 @@
 		barebox,bootsource-mmc1 = &sdmmc0;
 		barebox,bootsource-mmc2 = &sdmmc1;
 	};
+
+	dmc: memory-controller {
+		compatible = "rockchip,rk3568-dmc";
+		rockchip,pmu = <&pmugrf>;
+	};
 };
-- 
2.39.2



