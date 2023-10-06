Delivery-date: Fri, 06 Oct 2023 07:49:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qodif-007yCV-Vj
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 07:49:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qodie-0007wC-R8
	for lore@pengutronix.de; Fri, 06 Oct 2023 07:49:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/DeLhGV0GOqOQdlXRJTt4t1UrZ62tCjKkGrMNYok8ak=; b=cT2wXc35v+jCpx08qoTlb0SjYw
	MEuo73BdVBzGPQwkHglCBU4RD9YAzTZ9vGpTtx4e45qpQfxVLjt9Vo/T2RqMEGEFahCcnNzArFEmU
	o8jA4dsHZ3vLKhCSnBjCHJCYAQ3SSa/RgtsbrM+XYfsHyH6UT02YyaOiSDZyUMLWxN08Blo+6P6uF
	djkJYlxQ1VUq9bEd+Tr4uNdmp001XgdzbRJZ3b1xna21Tzghdb+zhNwG48j4T8rgi+PCxd7Wak/7S
	jp8eq7qJ04HtZwRZ5hFXcnM3KRRnMh6p7Nmz4NeEyae+ZDyBoHGIkWzA1M+Q4jMH9M5Kw2vgZCIFd
	5WrMm/0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qodhO-0051KM-37;
	Fri, 06 Oct 2023 05:48:30 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qodhL-0051JH-31
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 05:48:29 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50435ad51bbso2200630e87.2
        for <barebox@lists.infradead.org>; Thu, 05 Oct 2023 22:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696571304; x=1697176104; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/DeLhGV0GOqOQdlXRJTt4t1UrZ62tCjKkGrMNYok8ak=;
        b=dVBnEH2vJM6WcjQyCDitnCD1eUHbvpEpI8x/loS7ENtbtBdvGyX+HKd0zyiG+YdmeT
         bPgy+9q2H5qRYbkuZIIqj4Yl1uve5nLpoGfLTkshrILauApQvKyq9FzQsSu+tqNtZVzM
         yG3bgOUNbvrIDsWkWcxMqUeCgPNLFMpMl8C+uMvbGaDU9iwKQv0QvGN8aXnzDStS7t5y
         uXHn+twYI3GHMu0syaR2DhALte8iHKjeJFDu8zc0WBprhbwk0wBEEV8Ns3PeAPJ3lwFR
         Z1XXKf+BRpMZxYHU+W7x1aUD7tSSshgUefNBciXzng1MLxbP9byg2/ttt+YGxZmwDVNn
         MVMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696571304; x=1697176104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/DeLhGV0GOqOQdlXRJTt4t1UrZ62tCjKkGrMNYok8ak=;
        b=PgPg/auN864JrbOTowDHA23rTzzRLMFHy9kmXDUSr2QTzCsrd3x0HleLGOQkR7qwpb
         U39CErz6SsZKkmuJUatrRZ+6SbLIGla59XSOBYBc9eMZ0KI22E8w939/T8ElAdNYavxN
         GvV1x2Eo14ebP/VOwN9c2Ox84g7HpnLj42mCanN5Q36rdaFXke25qPbnET8RqfPaLwm3
         dgvSSoBNux/2/gZeoV7QV+mMMQwizVjwHTY4cQiaB6ZvCQG/QyDa8229n1gzvhjy4jnz
         hT+Xga3OYwhk+6iAFPD5d5qXgcdy1ukHrlOWI9km4PrBg62HeHMBMBUQS+RfrDEmWQXA
         aW/Q==
X-Gm-Message-State: AOJu0Yw7xjhd2WirozeFQqJF1RAr86Sfzt6kdJMxxjnhvxuZ3uUC5h0X
	TlmUARxb0oKJNSzn4Eo1ROZqLlG+SNQ=
X-Google-Smtp-Source: AGHT+IEA/oRRT+QCwui++dwTGqqLDpjcUVq7FL3tRsWU2ExLKTb9k5YTFiohXHrJ8ErvsrBDT/jcKA==
X-Received: by 2002:ac2:58cf:0:b0:503:3803:9e99 with SMTP id u15-20020ac258cf000000b0050338039e99mr5413580lfo.15.1696571303603;
        Thu, 05 Oct 2023 22:48:23 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id r5-20020ac252a5000000b00503041fc2dfsm164866lfm.0.2023.10.05.22.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 22:48:23 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  6 Oct 2023 08:48:12 +0300
Message-Id: <20231006054812.4343-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20231006054812.4343-1-eagle.alexander923@gmail.com>
References: <20231006054812.4343-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_224827_995549_1E5EC955 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] dts: rk356x: Add devicetree node for OTP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/rk356x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
index 4de2404b50..195b42a8b0 100644
--- a/arch/arm/dts/rk356x.dtsi
+++ b/arch/arm/dts/rk356x.dtsi
@@ -11,4 +11,15 @@ dmc: memory-controller {
 		compatible = "rockchip,rk3568-dmc";
 		rockchip,pmu = <&pmugrf>;
 	};
+
+	otp: nvmem@fe38c000 {
+		compatible = "rockchip,rk3568-otp";
+		reg = <0x0 0xfe38c000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		cpu_id: id@a {
+			reg = <0x0a 0x10>;
+		};
+	};
 };
-- 
2.39.1



