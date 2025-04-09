Delivery-date: Wed, 09 Apr 2025 11:12:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2RTq-00ALzb-0d
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 11:12:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2RTp-0007l0-Lx
	for lore@pengutronix.de; Wed, 09 Apr 2025 11:12:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s0q/bjwBFDVMWp5WCoCs/Ae23SloFoWbOLt+6P//9ZQ=; b=WM7sJQhwwQO3B9LazZ/ck2ZkRj
	Lxal6EmKwDXuaTLWvuzw70hxWIhlaoRxagSFMfXK5WoGcpYqwrs5QmsIEKC8/o3lKn0C+0kfNw9jS
	f3878CgYYEZUYcABVCVEFqhtS9Z8it1fh4CXnvYvx/w65rADE7qTyZoGcaZ5HtQK5g2OZ8ZBQW+5R
	UT6qZIYHGRZuf0rzhLFSeQkzCDeqCWb1P6QyOeghWETKwGy8f+dR1bycVSLknh45H3/+s3qaCriDc
	diM3+wJarFmIRW4oKSRHyc7JDQ3yCNvA/6LOJdoYG6dkR4n1UA9MGXdy23xCVBPvtOtH0nMoij1V/
	aM2vr7lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RTL-00000006fpB-34vT;
	Wed, 09 Apr 2025 09:11:51 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RTI-00000006fo2-1Fu2
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 09:11:49 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-30db3f3c907so58999191fa.1
        for <barebox@lists.infradead.org>; Wed, 09 Apr 2025 02:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744189906; x=1744794706; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s0q/bjwBFDVMWp5WCoCs/Ae23SloFoWbOLt+6P//9ZQ=;
        b=kd7WWi7eEUBbp4CKg7doUppVoZkRZ5Icc3qVQhPMRKezLUf+t78+ABjOsujRQLrlex
         BmH/xCFItYDU+m4W2sCaIgQFoXSBMN2p4yiTzQLWbR4h0ErzflJljnMq1LfDN8q7xTaT
         h0IJOv2yhfLSzlSRWzjBbcJAeEr8ZXeEvcwvg8HHyuoPuhFIaxIQPDVePl9XAvcWEG5r
         pBgqKuPN5UZh64wUUfQ0GWLFpJ1hAaJZwZLgOK5q718VQZIaBHawOlvOpMAehIBDfa3A
         I1nJiPHeGix4gdaw1qerEB88GfLmgM2QG56296WoFHdDfmlAUkBi86KO3xC3wNb+m3tg
         hAiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744189906; x=1744794706;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s0q/bjwBFDVMWp5WCoCs/Ae23SloFoWbOLt+6P//9ZQ=;
        b=J6N1Jw7tuqWpVKrjaeU0SDXwUwwvZlgV5ZT87kfB4NEoGwB060Cxsecf68ASyK0s1o
         tdPo3sWtBjFuQoWOv9pNhrtaVKn9ZV7tsth0KWitnQJj7VAnt33dyPUZU8cuTosibHeo
         T0uW2XUklbXN3v4qrXAVQJUJTXg32OQH5aw06svmoYTIumNgJt6lbyLXWF7BOBAzupN4
         m1WTYJNRqF/4tl+At6kuVWOW0iM1j3YX7Y4A7IP6I60n4dxBoVhcvwCoAJasJubdy3Z5
         7erCVvhAQZEKcCVxrnYIejQ5QGwmz8IfDMVd2l1xHwESHo7pyGskKZeJbM9G7hPQqNfI
         zpgg==
X-Gm-Message-State: AOJu0YzmkRMzPUuCKpUfHBd+9jsd4gasYnjr1XEWbJxgb9/EMDXWFnDt
	IVnCjIFLHLdva+jIJVQOHNPcxSzIKZfmhUzmANQtaD6BKBdZdQZ1MtV4KA==
X-Gm-Gg: ASbGncsJTVx71Xvp+MjHGxU29OLjzJmyxJnVwRAZQOPCNt6X2t/S3HhG12HRjFHWHe+
	4f6B/mviTET7dJVVfXgOuADj/2ytc365spAamYu6l/DvumrMgJJ2kbGlKkTrtXfKc2lQJ1bBOSY
	nkHizewB3/ugYjzIAHjlfjeKpG+3N3sWpxvv7p72MT/RwpUgb1Oha7Eo7urWiEERjculUkNRFg3
	HkAb0ml3xDUp/Mb13fxRRKJyZRGLYkGtBW4QZtG6S7EQ/9LIDv/jx2NTjj+Zrqawtn1gppCAx/U
	Ybq26NPuHEC7MEFKiY8EsSw0Yavg9GlEZ/7TpDeUOUgQLFYVCr65MCrYrnpJ2hY=
X-Google-Smtp-Source: AGHT+IGIhMXRlSVC77BXwvMB1EV1qmCzh7AfrHLci7H7YSA6F6PQfQJ7ggBYrTezETcXu50vcnVmwg==
X-Received: by 2002:a05:651c:886:b0:30b:9813:b00e with SMTP id 38308e7fff4ca-30f44fc286amr4716301fa.24.1744189905763;
        Wed, 09 Apr 2025 02:11:45 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465f836bsm1019741fa.109.2025.04.09.02.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 02:11:45 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  9 Apr 2025 12:11:33 +0300
Message-Id: <20250409091133.35145-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_021148_521466_8A55572F 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: dts: rockchip: Remove extra file rk3588s.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All RK3588 barebox-specific devicetree nodes can be placed
into one file. The CPU variant-specific split rk3588{s/j}.dtsi
can be used later if needed.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/rk3588.dtsi  | 13 ++++++++++---
 arch/arm/dts/rk3588s.dtsi | 12 ------------
 2 files changed, 10 insertions(+), 15 deletions(-)
 delete mode 100644 arch/arm/dts/rk3588s.dtsi

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 0aef30eaff..667dd0c5a8 100644
--- a/arch/arm/dts/rk3588.dtsi
+++ b/arch/arm/dts/rk3588.dtsi
@@ -1,7 +1,14 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
-#include <dt-bindings/phy/phy.h>
-#include "rk3588s.dtsi"
-
 / {
+	dmc: memory-controller {
+		compatible = "rockchip,rk3588-dmc";
+		rockchip,pmu = <&pmu1grf>;
+	};
+};
+
+&scmi_clk {
+	assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>,
+			  <&scmi_clk SCMI_CLK_CPUB23>;
+	assigned-clock-rates = <816000000>, <816000000>;
 };
diff --git a/arch/arm/dts/rk3588s.dtsi b/arch/arm/dts/rk3588s.dtsi
deleted file mode 100644
index 6572588ad6..0000000000
-- 
2.39.1



