Delivery-date: Mon, 29 Sep 2025 15:59:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3EPn-002R0F-0t
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 15:59:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3EPm-0006bP-OY
	for lore@pengutronix.de; Mon, 29 Sep 2025 15:59:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JSiDj8DGnyzunnZMPCit95Gzn++zLLWI0/3UJ17TD4A=; b=Q+qCEkZGRujSRUhMv+w0jq+LDj
	qxMFRGi0+VKXGudWIU21gdCrY05GkBcShTyTZRzFUijcdpUMtJG4hkNaZnrAH4eFCb1e2ZvNC81oF
	l5ap2YKHS6cTR1SX0HR+f/rwY7+qeax7DM+jQ2InSwg9kPTVPl0bYRgwZ/eHdUALPEYXqhzvIUTTG
	1sw+6QhCJivUE42d7NAvt6hH/zhZBEwDawpPPcyT0zN+UWqp+jDv0S/txSMZ7jYhC3vLxlHYNPMJr
	+vNeFU9pMl9g+LGHU2yLOToS/JShvrtPBNI9n4/CHby6Anoe6l5tR9GvLC1bgaS7mCokUfmjZdFZn
	LZnfWZdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3EPK-00000002bOD-20NA;
	Mon, 29 Sep 2025 13:59:14 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3EPH-00000002bNO-2oRQ
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 13:59:12 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-57bd7f0e5baso4593935e87.3
        for <barebox@lists.infradead.org>; Mon, 29 Sep 2025 06:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759154349; x=1759759149; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JSiDj8DGnyzunnZMPCit95Gzn++zLLWI0/3UJ17TD4A=;
        b=bDghBUVRRB8W/bn6ox1d0TBc51aCb3jzsBURYJOg9+/Gl4Uc9JuNVskqAkaNQ5NanG
         4zySPNsL7I81dmN5DTTcrSYoc+BpYbDCEqEOfiI8oOhoPGjxRjQBFUFZMakNKSITPO0g
         TP4EVuJznOOSEcYXYAF1ZgNGjlAg3IvKoQgX/93/ORTDFatbgDmfqI5/Ch6bldiGubAa
         yBAesw5+k4xdHsnqNujIEzbKdywExUrm/D3bxCvWzs1kvis04xOHOZkZjj8unvfWcqfX
         rmsr9RSoorTDw/eQJTLemO0ZLFobffPbtEnebiGfKUwZlnv04Hr5DDUkJojvMjfO+N3I
         KWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759154349; x=1759759149;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JSiDj8DGnyzunnZMPCit95Gzn++zLLWI0/3UJ17TD4A=;
        b=A0q9IoTHCAReQ2Ti62yXQjki8J420mwk+gjtaWj/F3AzssFZJXN4mhYDPkAp7FBkSO
         XHqvc2fBgCJqaeUPnWlY6tqkBaEXfzQss+6He2k+j2YbTuCxtnBA0ENx9gZRbbDAWQB4
         3+uJw7JfXnzhxGP1B7raI8XK4cywWD3QxH/6oHwl3M7RWYDSpTCQ5Va7kNdtrEzk/Sj+
         QmLQd51i3pH7gloTe8EZlkqUo7yPUYYx22G1/SeWEZrkjxgxjYB/89jpL1R00YUU6ZIt
         UudNhx6/Rbqc5erNazQDXlD0ekhvtNABsN3w9G29LvGuO2B9KyrGLvg43X0o1pOt7De0
         rraw==
X-Gm-Message-State: AOJu0YzwAQZ66I3qexw8tLHAZDu47E2xo+PBuilzbwrOLQgM3CUtCur3
	pQl3giIxg9c4FqrBrtYe1jddxfPYRASvEYljEfT7BUpAgwD7pc2lQqjUQAPCypq4
X-Gm-Gg: ASbGncvJLrOxkI8Ho2EUUfrFiKlVci5aTVSc13ltRCW/HyC62XMh9z3RcQ4WB8wbOQY
	EbNcJcoYcC2X90upZi1h8k8ktPV7QX7GlTCiWiNizVXOnsvqNkPdLIunhj0zg2DrfP0gtwu1CxL
	JIN2b+iz/RHczZBR/CjdlpHKhMGKYEi1pqt5ynBOIntuIU3spRwZR4sFDUjrJjhlWXfvUGuZvdR
	+3zkO9K/65CViB382H6TNJAMHRSQyNEq9c37Q2aZYItPsoWqMtBz2Yn7/w7jPrHwa5wM9prOJGp
	Zxo4ddjWD2TWm/W1zMh+D2510kwASF4YxjG3aIieoCE3ecTjFC9wi0UJYWwQEyyyrdNk7/QXBQa
	ANZRk+KBh8rGJfpeJc8KiKfekEq4oVvzhBopvAUxzyWGJ5QZbP6vWubo/DQ==
X-Google-Smtp-Source: AGHT+IFFT78UjgA1AXnuaGSAWpkZmMcqiTKm4g0TYTCIY6xBRbqhLhvmnsVbgf+h53B6HfPm/HuOUA==
X-Received: by 2002:a05:6512:61af:b0:55f:701f:933 with SMTP id 2adb3069b0e04-582d3114babmr5511583e87.41.1759154348960;
        Mon, 29 Sep 2025 06:59:08 -0700 (PDT)
Received: from localhost.localdomain ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665697esm4049927e87.78.2025.09.29.06.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 06:59:08 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 29 Sep 2025 16:58:56 +0300
Message-Id: <20250929135857.965181-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_065911_714619_4554F1A9 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: dts: rockchip: Set initial CPU frequencies for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

During system boot, the cpufreq driver reports unlisted initial frequencies:
cpufreq: cpufreq_policy_online: CPU0: Running at unlisted initial frequency: 900000 kHz, changing to: 1200000 kHz
cpufreq: cpufreq_policy_online: CPU4: Running at unlisted initial frequency: 816000 kHz, changing to: 1200000 kHz
cpufreq: cpufreq_policy_online: CPU6: Running at unlisted initial frequency: 816000 kHz, changing to: 1200000 kHz

Add assigned-clock-rates to the SCMI clock controller node in the device
tree to establish proper initial frequencies.
This ensures all CPU cores boot at valid frequencies that match the
cpufreq policy, eliminating the warning messages and unnecessary
frequency changes during initialization.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/rk3588.dtsi | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 667dd0c5a8..416700cf0e 100644
--- a/arch/arm/dts/rk3588.dtsi
+++ b/arch/arm/dts/rk3588.dtsi
@@ -8,7 +8,12 @@ dmc: memory-controller {
 };
 
 &scmi_clk {
-	assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>,
-			  <&scmi_clk SCMI_CLK_CPUB23>;
-	assigned-clock-rates = <816000000>, <816000000>;
+	assigned-clocks =
+		<&scmi_clk SCMI_CLK_CPUL>,
+		<&scmi_clk SCMI_CLK_CPUB01>,
+		<&scmi_clk SCMI_CLK_CPUB23>;
+	assigned-clock-rates =
+		<1200000000>,
+		<1200000000>,
+		<1200000000>;
 };
-- 
2.38.2



