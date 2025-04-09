Delivery-date: Wed, 09 Apr 2025 11:02:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2RKB-00ALe9-2F
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 11:02:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2RKB-0004WY-0Q
	for lore@pengutronix.de; Wed, 09 Apr 2025 11:02:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GgfjZXp1Jps87JKWnITk9zF96jX9e2GRs34vk1uAcYw=; b=RAy3iUpAEdtNxOZAqdhUmfsnmT
	2laJwaJPC6IB5LIG6Qk03PPKGcpbb5zavIRhB3Hd5Op6rYew6FB60UsQ+W8hvhcazHOEnEt8pfMHW
	F+wHmQ8EgY6IQGb26dKOVP9KcqjXg3U2lSlOx8kh8Kd5XVCqUqWXDy4zOpMXdLUVx634+3B8538IJ
	STitzEF/Pf9Ubu01GyKuEmiNXogDGquqd1ZqQzpfgRBWhXyiNrCFazX/qfIAjes6wPK1F/114ty0a
	rQL73iVRIeovNq4QFk5ZSiuydADy+jivGA2RQ7zu0OcbeoikEXQK5CtQn9VCgQC2j0YOu0WMwbTwF
	lVJbT63g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RJU-00000006ejD-3u6m;
	Wed, 09 Apr 2025 09:01:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RJS-00000006eiK-1fM5
	for barebox@bombadil.infradead.org;
	Wed, 09 Apr 2025 09:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GgfjZXp1Jps87JKWnITk9zF96jX9e2GRs34vk1uAcYw=; b=TqaVEibg5itBLOt9kUhwLNgbTL
	fYmh+aSV6aRVX7yQNe+eLrbri3QGmhZeCGGg6QOMfJItKm3KABiyRW7z9rsI5KdRKG10wBhESvQc7
	5TLe3JJvVcwUmKTqcz84oA4emzeBZKS3JBjH2QjD/UQeT3YXHKqvg5lYCPUnYbbgAvvtdy9Kt+sXM
	KL2zlDljwB88Plwofv2HnZndCREgD7bAflhbMiISUG4D1RcOZfCt79p7E4Z6oHgxPaNfqcYDPPWYy
	leiSV6ORL05Bmi9DptuQVqfnP8R7iSmsR1mcF7Y14Xv56FljKyJus3ZkSabT4RRCL79Xffb1wz1Cu
	sB2VzL5A==;
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u2RJP-00000008YbQ-0BfS
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 09:01:37 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-30c44a87b9cso52368231fa.3
        for <barebox@lists.infradead.org>; Wed, 09 Apr 2025 02:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744189292; x=1744794092; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GgfjZXp1Jps87JKWnITk9zF96jX9e2GRs34vk1uAcYw=;
        b=eu/mrJmFOzHeDCZfmPz1Enkgazbkk1rCthFRGUiUeyBBUMXynlwxNrG/ChAtb3Ovtg
         VCnPY2OmdQQxTqvCw3RpsAmMl0PdUW3PL8uZVhPMPAPAvX6i3VQiCs6QeCAuQNpbyU33
         j4OGWZhHpHMVxXhLL4VcAaxd3Ewy4dn4iCjwVEhRE9SXIC891XOnx/KO5p+8mjYfbHNT
         5Fq3Wd1cXUe/bQXMI1X0oOeehxYgb8JVarYFUL62gq8UUr5shyalWL0x8Y6/R7Uzgmj2
         fKHivvGfY4yojSJMbi431v86J0eUQbhtEPP2phqzWyA3jMgyMsCBKa9MbghX6Km8OReY
         o9dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744189292; x=1744794092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgfjZXp1Jps87JKWnITk9zF96jX9e2GRs34vk1uAcYw=;
        b=iWW6eX7Ka041Kxe6eZBrzEHSKdvuR3dn6AoD0uhbAdLWVCdn9DzAYr+ZTzcMHkoWQO
         h0/1wvoTX5Uc3ET1qjm+eoyblSXw3FBVNIHXsrnK2GycBz2RZ6i0kJw3A/tANDTt/+DR
         PZrRCpnymu6cPB6yXcK35pczWldpWVyqUPs7qbjJiSU0nFGypZa5SpdCQcI18mUltzzx
         Xr1iYV91HSyYq9seJvQWxi6r8iM5gYwfguNBqVS/Hc5oJER3jYoEZ6FcVw72ooHooqCC
         8FOy/+K3Je4NvCyFdizkipqCpYT7bko2PzlD1zP31huaPSXP/RYVwxwTYoJsEyvMqvdg
         QNZw==
X-Gm-Message-State: AOJu0Yy4djjGN7VR9MYZ+ommJLOX7IZYnLSGt+UUPx7hwik4nfACObYu
	M2OZp0z55zug2nXwg/EZWTeAw7Qe7OYSUQbAkrdtqiCFVd+Pap+AcMo7fA==
X-Gm-Gg: ASbGncvpdndXmUb3wx/SWs7Hh+alprtpY4UMk+Ls/YxnCDw9K2z72XPybxt+hittXv8
	4sEiAVr8S11z97ITiWNuLoQJygKabwqIrl/+SS5XDhmq1+PAprf6nxWToWpqeFaHb0ZRCUMUdPD
	segoY4RQy+7BZmz9LexhGno891Ecw2abLZIn31+6+bsTY9IuFNxmR8gD6DATZyi2YYRg++/tXAd
	mzpd7yQi02jLcNrLqcQ3B5OuH5sa40+KUUhZ58Xrcwjw3p2CVezBSB2qYCJe62cCjCdRJdkqRLw
	NVgvYHktjF2ShdtSe/8Cvt9vjmmYRk9HkDMkIeFgW3ClUG720vW3GLCHwQ2bSEs=
X-Google-Smtp-Source: AGHT+IFBZaDoshnBN3GjVUtROB/EqrT2pMCXx6dV3XsREi1hpMr55CGcvD2CQzSJ0+hCyK7TQVnblA==
X-Received: by 2002:a2e:bcd0:0:b0:30b:9813:affa with SMTP id 38308e7fff4ca-30f4380250cmr5965801fa.24.1744189291393;
        Wed, 09 Apr 2025 02:01:31 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465f779asm1015411fa.91.2025.04.09.02.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 02:01:30 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  9 Apr 2025 12:01:17 +0300
Message-Id: <20250409090117.32359-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250409090117.32359-1-eagle.alexander923@gmail.com>
References: <20250409090117.32359-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_100135_220606_05A9AA09 
X-CRM114-Status: GOOD (  13.25  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ARM: rockchip: rk3568: Remove hardcoded clock initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of hardcoding the clock initialization in the clk-rk3568
driver, let's use the "assigned-clocks" device tree nodes to
configure the initial desired clock for the chip.
Inspecting the current settings shows that some clocks are already
defined in upstream dts, some don't need to be touched, and some
are initialized to the proper state by default.
The rest of the clock setup has been moved to the barebox rk3568.dtsi.
Tested on custom rk3568-based board.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/rk356x.dtsi          | 21 +++++++++++++++++++++
 drivers/clk/rockchip/clk-rk3568.c | 28 ----------------------------
 2 files changed, 21 insertions(+), 28 deletions(-)

diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
index 995a9d5d92..5087c9cfce 100644
--- a/arch/arm/dts/rk356x.dtsi
+++ b/arch/arm/dts/rk356x.dtsi
@@ -3,6 +3,27 @@
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
 / {
+	assigned-clocks =
+		<&cru CLK_SDMMC0>,
+		<&cru CCLK_EMMC>,
+		<&cru ACLK_BUS>,
+		<&cru PCLK_BUS>,
+		<&cru PCLK_TOP>,
+		<&cru PLL_APLL>,
+		<&cru PLL_NPLL>,
+		<&cru PLL_VPLL>;
+	assigned-clock-parents =
+		<&cru CPLL_50M>;
+	assigned-clock-rates =
+		<0>,
+		<200000000>,
+		<150000000>,
+		<100000000>,
+		<100000000>,
+		<816000000>,
+		<1200000000>,
+		<500000000>;
+
 	aliases {
 		pmugrf.reboot_mode = &reboot_mode_pmugrf;
 		pwm0 = &pwm0;
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index bd6c8269ca..cdc7b99e47 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1636,12 +1636,6 @@ static void __init rk3568_pmu_clk_init(struct device_node *np)
 				      ARRAY_SIZE(rk3568_pmucru_critical_clocks));
 
 	rockchip_clk_of_add_provider(np, ctx);
-
-	clk_name_set_parent("ppll", "pll_ppll");
-	clk_name_set_parent("clk_rtc_32k", "clk_rtc32k_frac");
-	clk_name_set_rate("clk_rtc_32k", 32768);
-	clk_name_set_rate("pclk_pmu", 100000000);
-	clk_name_set_rate("pll_ppll", 200000000);
 }
 
 static void __init rk3568_clk_init(struct device_node *np)
@@ -1682,28 +1676,6 @@ static void __init rk3568_clk_init(struct device_node *np)
 				      ARRAY_SIZE(rk3568_cru_critical_clocks));
 
 	rockchip_clk_of_add_provider(np, ctx);
-
-	clk_name_set_parent("npll", "pll_npll");
-	clk_name_set_parent("vpll", "pll_vpll");
-	clk_name_set_parent("pclk_bus", "gpll_100m");
-	clk_name_set_parent("clk_sdmmc0", "cpll_50m");
-	clk_name_set_parent("cclk_emmc", "gpll_200m");
-
-	clk_name_set_rate("pll_cpll", 1000000000);
-	clk_name_set_rate("pll_gpll", 1188000000);
-	clk_name_set_rate("armclk", 600000000);
-	clk_name_set_rate("aclk_bus", 150000000);
-	clk_name_set_rate("pclk_bus", 100000000);
-	clk_name_set_rate("aclk_top_high", 300000000);
-	clk_name_set_rate("aclk_top_low", 200000000);
-	clk_name_set_rate("hclk_top", 150000000);
-	clk_name_set_rate("pclk_top", 100000000);
-	clk_name_set_rate("aclk_perimid", 300000000);
-	clk_name_set_rate("hclk_perimid", 150000000);
-	clk_name_set_rate("pll_npll", 1200000000);
-	clk_name_set_rate("pll_apll", 816000000);
-
-	clk_name_set_parent("pclk_top", "gpll_100m");
 }
 
 struct clk_rk3568_inits {
-- 
2.39.1



