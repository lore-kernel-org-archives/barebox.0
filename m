Delivery-date: Wed, 17 Sep 2025 17:51:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRW-0047oS-16
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 17:51:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRU-0000iE-7d
	for lore@pengutronix.de; Wed, 17 Sep 2025 17:51:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qAZSTbPU5t5kIqiRgXgPN8Nzzhh0Qddgkdz27rKZMfw=; b=OnWHw/vX/FT9Pc6n+s+smIR8cz
	IB+kXmddUbRuY93dibMfRGzuiVNHmngWuXMW89wDHDA6K6Nr65DuznRyj1VST1CUHmvUcvwhadYMO
	T3WLZdG5OCTmPXHxt+Y61zLAT7hVplW2DAPc/pRy3zhb7+mE55PjhlL1SI2SgcClTGsDa+81yg4yE
	nJzXKVAVqq6UUH6M7rt8Q1FxnUGcHiB/vJU1/p0VWz1zyVcQcNMRIEV+hAPBAtrqLHnEqEG4BF/pQ
	2i01MgUmsbSZ/YHl2bdSqHU9Rx0eVIW+gjvlwpZDajNgCTcvtL6DqHsf3D0w48xPM7RaBRDhMtNEo
	rk6Ux4xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR5-0000000CtDX-2AtZ;
	Wed, 17 Sep 2025 15:51:11 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR3-0000000CtAB-0BMv
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 15:51:10 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58HFNoCG032210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 17 Sep 2025 17:24:03 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Wed, 17 Sep 2025 17:22:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-boards-enclustra-sa2-add-support-v1-11-2de8f69107a1@clermont.in2p3.fr>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758122641; l=838;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=nkz09cIL3B5oX3+xvV0w8m3WLltb1ZXuIwQA45ScBnA=;
 b=5LroXuSLNhtn4UDSAWYHd+GADqgXCNRc7GHitUT9NKn9YJYsntB1+8sBZJtWghpnbzuvAjrrz
 3cOJzGJFYCIDBVF1wXQAicW/BHxr/6UCXvSqHFcB4aUbI/KA6QfmcTq
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_085109_358286_CD3CE216 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/11] boards: enclustra-sa2: enable SI5338
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The clock generator SI5338 is not implemented on the SA2 module itself,
but on e.g. the ST1 baseboard.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
index fa80b7c63d28d17a24d63ac3ee87531ad320ddb1..81d4a4b0bc556e562a2ef336961d6cd3f3f86af0 100644
--- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
@@ -77,6 +77,12 @@ atsha204a: atsha204a@64 {
 		compatible = "atmel,atsha204a";
 		reg = <0x64>;
 	};
+
+	si5338: si5338@70 {
+		status = "okay";
+		compatible = "silabs,si5338";
+		reg = <0x70>;
+	};
 };
 
 &i2c_encl_fpga {

-- 
2.43.0



