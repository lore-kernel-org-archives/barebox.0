Delivery-date: Mon, 04 Jul 2022 13:56:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8KgJ-005WNa-Jy
	for lore@lore.pengutronix.de; Mon, 04 Jul 2022 13:56:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8KgL-00079j-MI
	for lore@pengutronix.de; Mon, 04 Jul 2022 13:56:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nYAxmEMpkd67IfkeDnqitYDQOlfDvs3PpcQxcFOwMxk=; b=S0zNVJHELBV2h2uXftPW3HaMUL
	ZNn8oZ2PZ9UO8vnnmXpK9+691E6LH+RCvuf0/on2SOUQrWNfU1DLZCOt5g3rnK1Z1zwC4KhXUqA4c
	zQr+kB0TQ+nQ0++5XNXBAnmXc5S6Ct9+ZfwgBGxrEe6pKQgO52rpgUsX+O7lQRV2yLA9hwqSnDpfo
	UMmKJXIc5kdcUmr4rLJ6B06NciLhfyiT4hIiLfJpeCYQJQjGavJxDfZqw7gz356SDsIXDKjMH4UBL
	nlWGF2iISL10s0/HQsHAwXB5o7sLNWbSxegU7yyrVXJcwD1D5RHfqyEtJ/037Zkh0jHrcPMHw12KB
	veli8Ctg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8KeQ-008Axe-V4; Mon, 04 Jul 2022 11:54:03 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Kae-0086KW-VM
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 11:50:10 +0000
Received: by mail-ej1-x62a.google.com with SMTP id ay16so16299301ejb.6
        for <barebox@lists.infradead.org>; Mon, 04 Jul 2022 04:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=nYAxmEMpkd67IfkeDnqitYDQOlfDvs3PpcQxcFOwMxk=;
        b=J2A3SmSZPoHZ60wO8L7iZX4vbC4kxAUnQQGFJuBKaHuKAxNH9dPN0Y8ra+rgbfCZzF
         xM+nLqSRXLAWTkBAXHGbMUU5INsFPBUZZTZLDUDhceXDgXfcqFeH2GdtDeLRCls0pSGo
         RO+c/HH6yb7CmfirKooHjnhUARottIW8i4n4tzp/NWuqwnr472r9HIF5SwyTUiu1ydjK
         q2yJf3nZypWB/HTSC9fnd+/o9YWaJGjeUY6FuiaJpGNKbY9sbY029ozQccl+BVuxZnib
         iNxMeuZMU2MkeNhVeBc6L9SmXQzISPrQ58RQs4jw4B+y40Wq3elYP6nyKZ+VLeFDC5oo
         6dKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nYAxmEMpkd67IfkeDnqitYDQOlfDvs3PpcQxcFOwMxk=;
        b=zCg3cgN8rID7P5ACPhcvFr65L7g49ALXzR33VlI9vcMCo3mRksVzZpOVpDFVnhWmfx
         /p9f6rln4wR9OKNlQnfYQ5/gUf09ZxS1aX16m5wtDMDGKOh4Z/reZEmZyu/5E2QmkDE7
         bxTlS3UBjlVhAKqpzHxCDeqaD2WFhARIV9jGfLT4FcXFgr/YikFapUxB9fFizsNfrGFv
         mou3O+U54hnEE+9/VX7dBcI8Ml6eHjJdRg2Xua+cTPB5qThFhyJcW5YlZhsphTgc7rbK
         jkyHLhbBh9LXLh0K8vlyQPz5jyATznC+sfDvpwAPdAYVu/kGhhMGkDN8Zj0P9rbAuoMJ
         4vGg==
X-Gm-Message-State: AJIora9folrWM7VNQ3fiqiWo+2JaERkhNmUnMr2lWa9cXYxxb5ot1fV+
	oEwOwpfjhz2ONFW5Kvc7uLqq0nyL62Vigg==
X-Google-Smtp-Source: AGRyM1sWw8IpwHUmNgJsKnHIiUA0LxfXjvgmE9QHpSos4lAtxAzgne97OMPA6+DqaRiqitgB1KRspw==
X-Received: by 2002:a17:907:a05c:b0:72a:3959:43db with SMTP id gz28-20020a170907a05c00b0072a395943dbmr27466098ejc.359.1656935404205;
        Mon, 04 Jul 2022 04:50:04 -0700 (PDT)
Received: from development1.visionsystems.de (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id z5-20020a1709063a0500b00722fadc4279sm14062340eje.124.2022.07.04.04.50.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jul 2022 04:50:03 -0700 (PDT)
From: yegorslists@googlemail.com
To: barebox@lists.infradead.org
Date: Mon,  4 Jul 2022 13:49:59 +0200
Message-Id: <20220704114959.15635-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_045009_075862_BFABF4F6 
X-CRM114-Status: UNSURE (   9.42  )
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
Cc: sha@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: am335x: update cpsw nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yegor Yefremov <yegorslists@googlemail.com>

Switch to cpsw switchdev definition.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/dts/am335x-baltos-minimal.dts | 29 ++++++++++++++++----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index dff901f050..e55a2d7cbb 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -399,33 +399,40 @@
 	};
 };
 
-&mac {
+&mac_sw {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&cpsw_default>;
 	pinctrl-1 = <&cpsw_sleep>;
-	dual_emac = <1>;
 
 	status = "okay";
 };
 
-&davinci_mdio {
+&davinci_mdio_sw {
+	status = "okay";
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&davinci_mdio_default>;
 	pinctrl-1 = <&davinci_mdio_sleep>;
 
-	status = "okay";
+	phy1: ethernet-phy@1 {
+		reg = <7>;
+		eee-broken-100tx;
+		eee-broken-1000t;
+	};
 };
 
-&cpsw_emac0 {
-	phy_id = <&davinci_mdio>, <0>;
+&cpsw_port1 {
 	phy-mode = "rmii";
-	dual_emac_res_vlan = <1>;
+	ti,dual-emac-pvid = <1>;
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
 };
 
-&cpsw_emac1 {
-	phy_id = <&davinci_mdio>, <7>;
-	phy-mode = "rgmii-txid";
-	dual_emac_res_vlan = <2>;
+&cpsw_port2 {
+	phy-mode = "rgmii-id";
+	ti,dual-emac-pvid = <2>;
+	phy-handle = <&phy1>;
 };
 
 &mmc1 {
-- 
2.17.0



