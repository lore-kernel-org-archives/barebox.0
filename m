Delivery-date: Thu, 25 Sep 2025 14:00:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke7-000vtV-1K
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke5-0005Fl-Fj
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MZwRLwKZ4+3q2kn0eztznKyKTzWQlppELX13FnaRqwI=; b=oPX4J11USGl0QQIu/mtMebS/VR
	QbUG5E1oAz/zV2vh/inknVK3Fz1PPJUOnsVDHvDuNdcYhcSsaEv162nR7OCUh10aPaP+uhotM2sJ8
	yvHsbNT3NZQOyEDRlTJM2s1orROCP3HrK0EEW7RFa18WzruW4tMPmtyv/5LVk3ruKNW+wP5+gPtsc
	YXj/uEacnkDu1WruYAkcaeYeWK6MhtssewJZ4VLSQ8Z5Q3G3Z0y7b5Y8QIjeq8vG/Q6S/v7MJpjCt
	6DswfTZOaWiEJ8jGPWTC3y4QKeiphmWasqNDX/NmvMnRabMNdbM1cRC/Daqgx9HeGpeaZN4ynErOB
	zvLXHT+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdL-00000008jxt-0PuS;
	Thu, 25 Sep 2025 11:59:35 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdG-00000008jqc-1HPx
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:33 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEkw016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-7-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=797;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=fR84efDx0+bxl3TgbgOUWUnZ+OSr6pPTKHiwQ1dh9E0=;
 b=vBj/4BAjUPAJPovfH+yGkTFx0lFg5oFMoupBiUXoOUN6kkX4NaJSy3nH4qUf9JVHoZHWIqewE
 +t60mcTkEu3A+dfr7+G++Fm2tM0azMyL7/lL0Z0JKWyAp+aUubD0KtJ
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045930_634080_2920570D 
X-CRM114-Status: UNSURE (   7.43  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/10] boards: enclustra-sa2: enable SI5338
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The clock generator SI5338 is not implemented on the SA2 module itself,
but on e.g. the ST1 baseboard.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
index 55d54d289c81fa4a6d46123bcb93c5fc483485e4..78ba8008af5d60f10d6a64b0f05e97bf2381079c 100644
--- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
@@ -90,6 +90,12 @@ mac_address_0: mac@10 {
 			};
 		};
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



