Delivery-date: Fri, 08 Nov 2024 12:36:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NIJ-006Iyc-25
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 12:36:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NIK-00043F-A3
	for lore@pengutronix.de; Fri, 08 Nov 2024 12:36:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cyCYNnItT64pS+DfFxouMFPPY5uzWLBCOaUOHjYy9+k=; b=XlpYtL/PY9gew6gO9Kilo7nbtG
	1l9FIzHp1igFZzB2+RIvjOZSfqoC/hnTVhb2Yn5ff5N45mEU9/c989MigN5AKOEv158YokV/Mf/Dc
	EeOE+0xoA7EbqTjS/9VebGhFvldqgamJrZiG+nsq3L9rFooR5R6cO2Qee0fWMUpBa8cvkAG3ADZeB
	bKKWUI6Z3Ka2f13hTkW7i2sFm3d6Sv98VCIsAM9YCC4Cy7FWung3ZiebvBnfn0oC+4wIp1EH2rgVR
	rDgUmXYZy50zHA0Res5qKHZSbJM2Xx4Sl7/TfvhWLjdP68DqPQkxY9oUZizaueKkaqHux1ogGoLBe
	KElnOUOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NHr-0000000AMc3-2Y27;
	Fri, 08 Nov 2024 11:36:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Mgm-0000000AEj0-3Rzn
	for barebox@bombadil.infradead.org;
	Fri, 08 Nov 2024 10:58:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=cyCYNnItT64pS+DfFxouMFPPY5uzWLBCOaUOHjYy9+k=; b=D9w90aJU2loobUu5IaJojKm1Co
	RaTtpFqsmeZXaEDCW3TBeWMqPb6R1ysyqT7wLy88yVaFppJjsH1inTqnq64sUvkXsuRVAubnephb/
	aWOSiaqFqcXJ4K06gmfwA5EdE2HzdZFbx388AtIkMqkde4ItBm+wbgW2pM+rBcOuM/lLTbSkxiBMs
	XbbbFDDAWrokNT1AKz99937q6QiQKRZhuS64OKcJsYsIAjZ/CYCfB5Q3obmPtIHgILXjHSQ6JCm21
	sHHq2nJgBDkable9+u4CoxOc0JmHeri4ZBMZTg2UwGj5IXZdKZTqkQn/8bBvWkyUX12RJBm/FyBQS
	05/56fHg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Mgf-0000000CI9Q-1fxg
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 10:58:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <has@pengutronix.de>)
	id 1t9Mge-0000zf-24; Fri, 08 Nov 2024 11:57:56 +0100
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <has@pengutronix.de>)
	id 1t9Mgd-002bfB-2n;
	Fri, 08 Nov 2024 11:57:55 +0100
Received: from has by dude03.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <has@pengutronix.de>)
	id 1t9Mgd-007rCf-2K;
	Fri, 08 Nov 2024 11:57:55 +0100
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>
Date: Fri,  8 Nov 2024 11:57:51 +0100
Message-Id: <20241108105751.1872681-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_105800_670993_D3C3007E 
X-CRM114-Status: UNSURE (   9.92  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: i.MX8MP: disable NPU node if hardware is missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Besides its power domain, the NPU node itself also needs to be disabled
in the kernel device tree if no respective hardware is present at the
SoC.

The power domain has already been dealt with by upstream commit
924101c81d6e ("ARM: i.MX8MP: add feature controller support for Plus").
This patch adds the necessary entry for the NPU node.

Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 4d1f1bf588..1604fa13a5 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -99,6 +99,10 @@ &vpumix_blk_ctrl {
 	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
 };
 
+&npu {
+	barebox,feature-gates = <&feat IMX8M_FEAT_NPU>;
+};
+
 &pgc_mlmix {
 	barebox,feature-gates = <&feat IMX8M_FEAT_NPU>;
 };
-- 
2.39.5



