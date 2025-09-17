Delivery-date: Wed, 17 Sep 2025 17:51:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRW-0047oR-0y
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 17:51:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRU-0000iJ-8P
	for lore@pengutronix.de; Wed, 17 Sep 2025 17:51:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uqgRGn5AsWcrrrQqSfrJseHOwU9lDvJvNhc+7oBK0/E=; b=GJ/TA7I1VtKv6piNhYPv8hRUMH
	huACoJwtvsHZZarf2L0KcwoK5/6yUrxVicKgOD4RSLP37tLEZQy8bbYNRTWToAaPua/nDi6Wzyu05
	h54TBjx12doJocK5I1mXrYT7JoMYo9DIdeuHR6NA3qR/Ei5mzLU1+DIW+2IRVwuM/8w115p6FT0Ny
	DDldm9jwn2qKU0U4p6rTiNEVLhcM97XSjqcFD7rL949Zs7pHszg2KCmg29kfj+KjEZFB2jV7GClEe
	YLetRpHFlI2L68DzTtVGBY7ER3EjHpAqMKaW9iIYeEWEf8vaqpPT/yafRcm3OLdRK16Kc3fyOPjw1
	bXlmfacw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR3-0000000CtBk-0wp4;
	Wed, 17 Sep 2025 15:51:09 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR1-0000000CtAB-0hEr
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 15:51:08 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58HFNoCE032210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 17 Sep 2025 17:24:03 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Wed, 17 Sep 2025 17:22:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-boards-enclustra-sa2-add-support-v1-9-2de8f69107a1@clermont.in2p3.fr>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758122641; l=838;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=AG1XGovn4Nzpt1yQXKeSQAXKXZH22zmiFG/5kEu5WDU=;
 b=htSjxBIFy8+/YLGxtvI6IZTmHm84/KPpUY/ol6xqlGmutHX7tVhQeZTO3jKQIueA9aohTfwC8
 UarIvFMavSyAODzdkds7rZMNnCX4OY6wWyp+dp9WePcuMBKhq+j2YSO
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_085107_503688_37950B31 
X-CRM114-Status: UNSURE (   6.68  )
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
Subject: [PATCH 09/11] boards: enclustra-sa2: enable bridges
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable the lw-fpga2hps and fpga2hps bridges.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
index 52a9d1a6c396fb3df56acbaf99d40594dea19944..fa80b7c63d28d17a24d63ac3ee87531ad320ddb1 100644
--- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
@@ -52,6 +52,16 @@ &osc1 {
 	clock-frequency = <50000000>;
 };
 
+&fpga_bridge0 {
+	status = "okay";
+	bridge-enable = <0x1>;
+};
+
+&fpga_bridge1 {
+	status = "okay";
+	bridge-enable = <0x1>;
+};
+
 &i2c_encl {
 	i2c-sda-hold-time-ns = <300>;
 	clock-frequency = <100000>;

-- 
2.43.0



