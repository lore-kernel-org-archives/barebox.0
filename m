Delivery-date: Thu, 18 Sep 2025 11:37:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzB4e-004Q9m-07
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 11:37:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzB4d-0000PO-HC
	for lore@pengutronix.de; Thu, 18 Sep 2025 11:37:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CLWB+bnD+EzJSx79EtfnzGqhZcxjXur1OKzhSs1Q3ug=; b=r+2v6FTDvSm78oAP7RVuZtN1i3
	Pbzz7pK3lO7kGAguzTqEgnrTcLA4Zr+qMQrYJkvdOqd5I5Qyzrvwcep262v8xYkssCcvZn4KPkSXL
	O/6c8zntwsp2bJtg3/Wmoj19vjGj4X9ufjRAZih5BU1N0vewsH/1b58NJG508SWgX7o03jWr/tXHw
	Pg7P6DnnoguK6zebD+ROuj8NqTWr78Hz/zbynabDkpPTecDsX45omjwv0tHiBmpJvnmlXX/kzOPtC
	faeBE4OYipk3TiWPtWQKSPBKnZOmW2aF/Wl4ocnau2YrcGmtIeS9Qr6Xx0XAKku/UyVMQ//L5yye3
	ag+szTvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzB41-0000000GtqW-1qC1;
	Thu, 18 Sep 2025 09:36:29 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzB3z-0000000Gtpt-2SkS
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 09:36:28 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-579363a4602so375944e87.0
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 02:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758188185; x=1758792985; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CLWB+bnD+EzJSx79EtfnzGqhZcxjXur1OKzhSs1Q3ug=;
        b=dJrO/rWR/UPOUeshLDo9PcYDG1PFqKHsVNR2kU7E/g+WQuye20Dp00ylhjmYLc16V2
         22+oI+jGlCFAsj2VTJjBNEeXGsw32HSJ6WKOfzDPZZQCMRFPY6saARyKoJ7hNh6PTlnQ
         NSrMrkqttPbiU/HMZ39Bcu1Fu0Hh8lbb2q1iAmTyGZNWYNvF4aWwX/dsUM/3xLncuxZJ
         kDdNWCMnzJz3EvbVMpubk7YApeusqO0tNX0O+rSXX1YtFzEZuycjFY4ogIbsV4ZMNZxE
         2c3ZqDoR8owuz5CVo1A2by5ToExe5SVmEW72hW69ZB08NLb/dl7N9WCBirALiFLpdpD9
         VSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758188185; x=1758792985;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CLWB+bnD+EzJSx79EtfnzGqhZcxjXur1OKzhSs1Q3ug=;
        b=tuPqyAVb2DvG7zmIOtoh/PcKgI0FgzwjgxX2ksGVg6w0OxRawtHdExU57USkW5GQQh
         AbXadcuRHBStK3yDfpV8TItKmsIFfP/F52rUF489O8KDSpP1SYllY75OADEaniKTMlmm
         pgU5yhceJDXCWqKlnTnl0iFiHheArzhhOwDGPvNbnOBHY7o/7yLwiJJW1ef0iWyOSZss
         Pk7IbzoHKilyjWcx35RF59dZP/2yD5NZSQzHPMDTNpbZfZOo37SIHLhYcm1VC8FpeGZd
         QL/8y7gsNGR6dZgg+RSdnLq4/7k/e1jC8qsQWzM0ppUYFvG+2t1eq709OPRh4ph919LB
         YApA==
X-Gm-Message-State: AOJu0Yyd3Ts6MMR/zt9zklYagDNVzrLS7MeQFifKP0rZeNPav+LetuSs
	/UgfS4ORoyHcspB0qglKhoofXgnRwZ1q5/XKFHbOsPXsegeIhWM4kZoqngHLOw==
X-Gm-Gg: ASbGncu48AKtJ37y5N8Wip1npUwp5xPvoZ3q2CUqmG8+5evT6wTlBdFBJuLBnGchFRp
	dMlk4kGCCNMVwqtD8UH45/ZsRgs3JPEQNH7IDLChNfxhdKQ9h2/hFF4ZY8SPqH93bzbNZJerezG
	l+Gv0JUR0a9/RaZUQYQQDTJpOv4d9s/Rx/7jCNJdeWdNloXC+1Pws50uOgH7Sci7/OsjLslunOI
	vKgJYphpn8aMP5wQiP2KvnCxyXvO7mp5B9dhySwpDIMFVMpofDbwxTmmqLmgFGK8Fnz4q4aQ4F0
	yg5C1KF+l0eatOEkBnzRdJBrxrCocDYAKRTAlLxXv/Jdm6SVkMMZAXknPxF9e0Wu3gQ+HXjopqk
	kNdotYsN0JkqT9YnfOeWNk31wOmBB0gNMaCHjfC3mBADst6h3FG+1+RtM/sMYdxM=
X-Google-Smtp-Source: AGHT+IG+UVJiOLJ6bbNLRIUvqAyIJ06t2ngk4cdxdDAYuEtNG8R+DGXO2EGRSflWrHUWVHS/ndVDQw==
X-Received: by 2002:a05:651c:2120:b0:336:e102:95fd with SMTP id 38308e7fff4ca-35f6445008dmr16943741fa.29.1758188184703;
        Thu, 18 Sep 2025 02:36:24 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361aa38c4f7sm4609041fa.62.2025.09.18.02.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 02:36:24 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 18 Sep 2025 12:36:13 +0300
Message-Id: <20250918093613.168067-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_023627_629206_8824BB05 
X-CRM114-Status: UNSURE (   8.30  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] [PATCH] Revert "ARM: at91: choose proper parent for both MCI clocks"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This reverts commit 238cf3326ac1ec009173c85fa664889d5cb57bdb.
The patch is no longer needed after commit:
"clk: at91: sync drivers with Linux".

barebox@Mega-Milas SAMA5D2 EVB:/ clk_dump -v
...
            utmick (rate 480000000, enable_count: 2, enabled)
                sdmmc1_gclk (rate 240000000, enable_count: 1, enabled)
                \---- possible parents: slowck mainck plladivck utmick masterck_div audiopll_pmcck
...

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/sama5d2.dtsi | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/dts/sama5d2.dtsi b/arch/arm/dts/sama5d2.dtsi
index 15682f9d27..6bbd6a9e93 100644
--- a/arch/arm/dts/sama5d2.dtsi
+++ b/arch/arm/dts/sama5d2.dtsi
@@ -8,11 +8,3 @@ aliases {
 };
 
 /delete-node/ &{/memory@20000000};
-
-&sdmmc0 {
-	assigned-clock-parents = <&pmc PMC_TYPE_CORE PMC_UTMI>;
-};
-
-&sdmmc1 {
-	assigned-clock-parents = <&pmc PMC_TYPE_CORE PMC_UTMI>;
-};
-- 
2.39.1



