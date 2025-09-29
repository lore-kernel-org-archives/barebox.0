Delivery-date: Mon, 29 Sep 2025 15:59:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3EPn-002R0a-2A
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 15:59:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3EPn-0006bb-4Z
	for lore@pengutronix.de; Mon, 29 Sep 2025 15:59:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ob7Em+uOQFKDk4Po71eySBjbFx5D5DCZBCYJxClYSaA=; b=xHiXE1Ew+SaDc656NQExDleaCl
	WLl3ZLIDANPkMWV5n+9CvoOTMMgyipVi86hdAL+ItcFSEkPOLwhD6ycrFu606ZajFw+DRnPMUQbqT
	m22yHluu/icvYpuAwmfDmR6XRTmwpIfM5RfPpISyIdSeZhbNYGXuqs8KpBPKJcm2+rhnQv6+ykzwF
	DPIJ8rTYPr+OUz+9z/Z6iHll4Os0L3iGvpS8w2M1Hy4hqvaXAeixqDiAXzjdm7BmxyW/c1fVrp0Ei
	nM4pqMv7CveLAWfH+8tfsPRO0dyvFw/bcKWjLnyXhhtq8sXhMX84KojZJtSB3HcYZYe8F6tZ2w9a5
	77pY8+XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3EPN-00000002bPF-3Iuz;
	Mon, 29 Sep 2025 13:59:17 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3EPL-00000002bOC-1VfR
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 13:59:16 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5821dec0408so3302459e87.1
        for <barebox@lists.infradead.org>; Mon, 29 Sep 2025 06:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759154353; x=1759759153; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ob7Em+uOQFKDk4Po71eySBjbFx5D5DCZBCYJxClYSaA=;
        b=frk4eunkVd13m8aBKZuM1kqPTtMQNq63ZSCAYbqALtbgeCxVu/VfYR/Nqv9MCESPY+
         zviuv0ey9O4McUl4467rBIi04IiKPnmu0IYXgkf+mvjR/Aykxn6hGu7iHJwA/s4NCjGv
         ZiMBx1f+4CFVhzZoG6EeF+oId34Yyut+W9TSFiUqUNiHiu3Zz1/RZqfwLiMU70e6zH/3
         CbB793hZ3/mSFtuR6tfhTnDCFcteG4rlYXl/YnCgyK4jWbADEfcZkJSU8aB7KCKPOZMe
         JutzlHJWTxe5/srpWa8GJaDtrlgaD/etPGucCJBiOmaPQHcy50xkuDu4R0x6ckPFCgrY
         sCuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759154353; x=1759759153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ob7Em+uOQFKDk4Po71eySBjbFx5D5DCZBCYJxClYSaA=;
        b=pIKwBThvCZ5snFxO6sL+eW7InI4gVXRzEo1vwVLVBJcM6Wcmi2ijjWin5vo/Xe1csg
         UL7k3KuEXveDwA8b8jnGFTEKNk2fct7ptrwyW7La+Nvfm5rdHiKQZYQnLEVpt1eOBaEh
         p5/95Mg6oESlix9++PVXiS6jHJRuaYJSKkFZjvSxOPqGytDtzypl3OfhxLh7+c2A9VMZ
         DQ85XfuEoUB/4DZcDcfimxf4fB/lQ0SlQ+8yRIHP4rtoC0mRoYhr27fDslbFZdlNEbC5
         x/lEner2wE2FsG92Z73DsXuoZ2Z/c38jyWW1udYrk6uRZZQqO2u487z4stOaKTeOr3lW
         d9Sg==
X-Gm-Message-State: AOJu0YwuEvjN3PczGZFao7jvE/24lvW8c4Fu0DUcnjNZuHRkeWNeziVZ
	CL3TYu0NIn6X40tlXURqPkZQwS0JZJnmffX7uR417wxkFDrC3bNkT3dJLOWgwpBi
X-Gm-Gg: ASbGncvqno4HGT+VrJDCULrv9OxrSayDB4LpoRj0yfbFEEIwuwKwhtYDjFjUkDECgJh
	R8PXB3AxKoo2qI6XymtSfwJVrRk8RVL2Ek7HI7rrdeonh8N75ALkRsVM1Xh0Goy9QZSnAObdsE6
	bHMXBC0gvZQZwoFG/1V6DHm2rfVkA+wDPKq898HLC/dx2FsW/ysShhzm2jkUzISftxVUhf9e3Et
	ioDF2YOk2jMuRze0jsX9FC1MJvEDIxHGtm+s/FfbuFRwResadUJMoin+Q6DVEDYpvHhLHfu0WzY
	mNeVold1hKvbPGs7GiqlGwwrlDe7ltCZZfTSI7C3GuXtnptctwXLtwiprRnpHJt0ZApr74caIkF
	6atK8sibAiKe87aqZJjw2iMut9peoP/4GawrtNvEWCf1hHe1DEPgovmS1Aw==
X-Google-Smtp-Source: AGHT+IGIhgpvZlAFst2LVYVQHdgZuym7/8domQtfCPYu/oTIPgMnl/rWv/l+H/1+U3RU9uky06j4gA==
X-Received: by 2002:a05:6512:b14:b0:587:a4fa:1e53 with SMTP id 2adb3069b0e04-587a4fa1f8bmr1212939e87.42.1759154352642;
        Mon, 29 Sep 2025 06:59:12 -0700 (PDT)
Received: from localhost.localdomain ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665697esm4049927e87.78.2025.09.29.06.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 06:59:12 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 29 Sep 2025 16:58:57 +0300
Message-Id: <20250929135857.965181-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20250929135857.965181-1-eagle.alexander923@gmail.com>
References: <20250929135857.965181-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_065915_403422_30C96BA8 
X-CRM114-Status: GOOD (  10.23  )
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
Subject: [PATCH 2/2] ARM: dts: rockchip: Set CPLL frequency for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Explicitly configure CPLL frequency to 1500 MHz to ensure system
stability and reliable operation.
The change aligns with Rockchip's recommended practices for clock
configuration in embedded systems using RK3588 SoCs.
Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/rk3588.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 416700cf0e..42d692a9bd 100644
--- a/arch/arm/dts/rk3588.dtsi
+++ b/arch/arm/dts/rk3588.dtsi
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 / {
+	assigned-clocks = <&cru PLL_CPLL>;
+	assigned-clock-rates = <1500000000>;
+
 	dmc: memory-controller {
 		compatible = "rockchip,rk3588-dmc";
 		rockchip,pmu = <&pmu1grf>;
-- 
2.38.2



