Delivery-date: Wed, 11 Dec 2024 07:33:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLGHz-006g7O-0Y
	for lore@lore.pengutronix.de;
	Wed, 11 Dec 2024 07:33:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLGHz-0003bt-5s
	for lore@pengutronix.de; Wed, 11 Dec 2024 07:33:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DktxO3043+7orImZh0aoUTnvDF/Eb16xsLR+mgYJjgM=; b=S+OE3q+Xthd88jIOs1ekx3TNoQ
	Mncil5QHGNstdPqi+eQpiIt/3gb/YDCVuQtSAFrh/ost3bZDmp2ilGjFu+cK02U8ZsVTAwscFnHOl
	qsBa24JCnTh1blhGX/4w3P4TrC0jvlefX2rMcT0+04KEKlpZ7SlCZydl73j8RuyjEEmboIkJ5xx5v
	elVdl38JZsLwcUzhGNIzWCC0YtiziL702TXRzudVqIWAhpJFMa6zg9HjsdE16I+SyCdM4hWsXNJsG
	i3o2c5y/5fvna7/KnUsnFVpdWTWBdacicB39SmVpAjQhLTcHeMh2rwq11/s6Mduea0ZoogS1pnrOh
	aLsAoJow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGHS-0000000DwU7-24rC;
	Wed, 11 Dec 2024 06:33:06 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGHQ-0000000DwTD-0Reg
	for barebox@lists.infradead.org;
	Wed, 11 Dec 2024 06:33:05 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-53df6322ea7so7366763e87.0
        for <barebox@lists.infradead.org>; Tue, 10 Dec 2024 22:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733898782; x=1734503582; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DktxO3043+7orImZh0aoUTnvDF/Eb16xsLR+mgYJjgM=;
        b=ZDxPTWGqxj2+DK/7lBPKw+UrUzRyoXkf/0dEG4Obzt9fnUm7oJvzvU3t3DW9sDXiLG
         GZjtt6IhyLqYIjo3iwyjKejcCPsgh3bvg34h236hV1ZOuMxU5aTLuA2Cq/8qspdTrBoz
         DJppn9Lxo71aDJeXoR9rTnICrIA11QW+VvigvM3/NX0lIjH8gxYuOHXcSvvMFoypaEsw
         0MBYxOIMK27IFT0l3uXElusMQOLz4cfw71RynQscfhoaufYiRZMo/S1N1lPw22UmzNZ0
         HxPpb46pGD3L9vj0LjyjvAuBNa6F265rkq+LaKvsRazirn4Wecji8ngMwlmr/GqI+LcD
         ua0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733898782; x=1734503582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DktxO3043+7orImZh0aoUTnvDF/Eb16xsLR+mgYJjgM=;
        b=mDqZ8p1pUxSoIAdk2RWUUMyrvfeboNl/76iKBAqhi6G8W4uWiNtR9TANkE+/ZtZXbp
         5XXCbEopgVYkwkRgg4BwzM+XBU90Z0dVwjqHJpWAb0NjBVBd1t9Xh5irOvPCEfRpfwE6
         5CnF1BsOhKIwOZpBIRqborRVPDZCh2rOP1TrpHo6JC73xMm4yRc2RhTtCDcl0jKLLheJ
         y8aB8GdjEJsNCWmqEW5ClkFSqdqUTvpdKeMdsh5lnzqr2k9pz821wFLff+x7Xfq1eDWU
         +GwsPxzTOmtJRlq5h0BYt86oP1hPIMRlrRUKqLDkrqu6uEGw1GTI8/FGlWz6iUCqTPwd
         efkg==
X-Gm-Message-State: AOJu0YybBfTi4hM+TqEXASwlgbuqP5EXD/BJh3dMUREAuHlXSgSn5pc7
	G7Ml/U6vWSDTUXukJ/7l/YwEUe9KHpti1ok82MqOJ6uzzcbPhIjPRu+Jaw==
X-Gm-Gg: ASbGncui5RCW+ARzHWlLK8yL6CRWCA+f7QSUmsPyTVpKh0qMNWI4oSo+w2aNYB3XrV+
	4+qhiNKetPGNCDtOHo1wUxo4ttT1wOQ2JaOCpccbl9tZiYAA8tGYr4+EiIwJVkaslsY7i6+IrWY
	ME+qknalylUq4xWm2wupTBCw0VKhrTocu/94aWUkfBwoNIyTJiM2SvVSevtix0SrNBUhy0P61sM
	vwwgVej7IzHljSwpnHbx5XlnQtnn2gCDuRmrcG0TL8nACJJW+PCEFdSswrhZUGLvcJi6/Ffl4SM
	+w==
X-Google-Smtp-Source: AGHT+IECZSD84hDQPcONVgFpyKyGV3UPpq3Ly8lcypmdZOVIu741KAzxmVs6qGUwY47Ml9opU+V2aw==
X-Received: by 2002:a05:6512:1392:b0:540:1a3f:e848 with SMTP id 2adb3069b0e04-5402a5e4b1cmr433469e87.15.1733898781454;
        Tue, 10 Dec 2024 22:33:01 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401b5ef585sm1097614e87.233.2024.12.10.22.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 22:32:59 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 11 Dec 2024 09:32:48 +0300
Message-Id: <20241211063248.4774-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_223304_141051_7DE89E7B 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: dts: rk356x: Use RNG node from upstream DTSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the RNG node was added to the upstream DTSI, let's reuse it.
Keep the compatibility string to support the barebox HWRNG driver.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/rk356x.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
index fbabf2a6a6..1a51b9f1b9 100644
--- a/arch/arm/dts/rk356x.dtsi
+++ b/arch/arm/dts/rk356x.dtsi
@@ -44,14 +44,6 @@ cpu_id: id@a {
 			reg = <0x0a 0x10>;
 		};
 	};
-
-	rng: rng@fe388000 {
-		compatible = "rockchip,rk3568-rng", "rockchip,cryptov2-rng";
-		reg = <0x0 0xfe388000 0x0 0x2000>;
-		clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
-		clock-names = "trng_clk", "trng_hclk";
-		resets = <&cru SRST_TRNG_NS>;
-	};
 };
 
 &pmugrf {
@@ -62,3 +54,7 @@ reboot_mode_pmugrf: reboot-mode {
 		mode-serial = <0xef08a53c>; /* rk-usb-loader */
 	};
 };
+
+&rng {
+	compatible = "rockchip,rk3568-rng", "rockchip,cryptov2-rng";
+};
-- 
2.39.1



