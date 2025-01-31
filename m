Delivery-date: Fri, 31 Jan 2025 09:22:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdmIT-006fp5-01
	for lore@lore.pengutronix.de;
	Fri, 31 Jan 2025 09:22:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdmIT-0001pL-1F
	for lore@pengutronix.de; Fri, 31 Jan 2025 09:22:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UsU7BFuDp6F41SwqjBlN4JS4MXmMgv2Hck8s0E//ScA=; b=VH9J5xDwnoNwJ8WSRmoJoUkdDu
	AuzdiwpfLrpylzfBpf21YIyDBNGfbPWXKy9P31CMb/W1Ffyt9nRTX9z/P98mrHqpEFzTUQag39EFJ
	eqzzfJmfrgyOxCR1TB7FefyE0ohKoPkQS2mB5c9pWPnjGa3W/0EPTFK2iAHhxBDaglP68BFtSAU0/
	Ci/ApbN+dl+36L05sly8KDeo01dH2WmCpl62yBKED1BR2KtN59fOxisLhmFaI0KwpT6rW4ftt1SHx
	PUZ7mHXxn9dSq5IZKXohHxeK6kpJLo62Hd3Zhj2UZzUzw3wz4qi6BCvLOAGpn4bVVZu3kcPQWc9gZ
	L8U3sNHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdmHe-0000000ABvD-1Rtp;
	Fri, 31 Jan 2025 08:21:50 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdmHb-0000000ABur-2qxE
	for barebox@lists.infradead.org;
	Fri, 31 Jan 2025 08:21:48 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-543cc81ddebso1916323e87.1
        for <barebox@lists.infradead.org>; Fri, 31 Jan 2025 00:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738311705; x=1738916505; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UsU7BFuDp6F41SwqjBlN4JS4MXmMgv2Hck8s0E//ScA=;
        b=BncZf3AjTGUa0aDbBT2xUBEt8TnnuDB90DOkJELybLqJjJ2J9XWtLCttagBUUwa1mm
         9dnsCsG1nT9HopyNnAzmc9jODraHv85rfbYZUCfAPdBvNfAxW14bG2+MAbCsHa5sdZjV
         SpY5d5Zuy4dT9BbzPfhKzb7YJ20kcbZ3l5fClVM/IkUTYGru7l7JOZthRQ5OBuHAq9SL
         5jdrS+aQvgOxjOttMXkbrkQUisuiK+VDhVL0F/SeWRLkUCPV2YFWgqKPcF4gWRdkR5r2
         CJ/gA6tYs+gnAnmvdrQ8WCTIEwLqB6yuRW9W48cFwvkJkBgu6+afhFvDz11UoOw8S+ju
         po+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738311705; x=1738916505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UsU7BFuDp6F41SwqjBlN4JS4MXmMgv2Hck8s0E//ScA=;
        b=Qw4DW/HvGv7OV25KYQq1dzTclxSNLbxzHi5xbTM/XaG2sRxPAO70mq6uJAcXi6GI1i
         tqizXHzGcql5yiORg4xslITf/4qiyCV+y/GvEqbQfxRqQcKE6fL6q03DiC2ah7rbRRJ4
         imY356ox/dx9uZEy2kw+XA9RdjKv6CAwqcWTUDzOAprk+BWnVr7XgAW9wvkO7fS5MIQJ
         BOY7JRWvm3Ip7f4DHJ6Ox62z9YfTlkMgELTrU8Sbic4tpBEHXMKpf/TzXsRD9h3iy40w
         rHXKAM/aGlZOKxmWjyf7eJeemtY1RjykrdUDxbQpBtIhBQdg0zpQgEN3/8XfnPcvYSJN
         ALkA==
X-Gm-Message-State: AOJu0Yy9icOBAdtKKYJ9O89IA1ONgiNWZyjfizVFpcI79qUtmyiXsDHu
	B4LItG2oJH/hEObntz+2u3PQ25yhqjKubL2htqOR21/+MbpEMvJ84UCU1w==
X-Gm-Gg: ASbGncvFqdsvwAuYByoOxBP1TncOOgZrhj012gQfRKfr988S3/VDVSUrKayf+53SsaS
	kKg5qy6dFIZVB9WTMtsHHFxsuVNQAWpXOFilMxNwmSx4CZfvJ4fO6aY36yi1Y6v/lGeTDga7Ch7
	btEKJ0bIyJq5l0fNPFKC+B8TGkMfGppnymi/CsylaJaOK7qu+e7E0ljVX5uiuhylMD6VcJfIzrG
	/L9dwHvW83Ada772o/lsNwUrAHYFiKwsgR0iLNJYmR6gHQlczcU6BXfwcCg5PMWMo302LtbgVBx
	VpGsaKFwF14ZlQ0H1z1hynv2rm0eewgXNjsS0A==
X-Google-Smtp-Source: AGHT+IEDP+p0UnCFqZDOOTvmgG5rQ6P+DxGd+/V3O9fK/1rW9NXsVE/kOC5w1KaQbL+6itfdEHKc9A==
X-Received: by 2002:a05:6512:114a:b0:53f:6c6a:f99f with SMTP id 2adb3069b0e04-543e4be004emr3237610e87.8.1738311704629;
        Fri, 31 Jan 2025 00:21:44 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb07cdsm396976e87.131.2025.01.31.00.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 00:21:42 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 31 Jan 2025 11:21:31 +0300
Message-Id: <20250131082131.37538-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_002147_715201_0B786B60 
X-CRM114-Status: UNSURE (   7.24  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arch: treewide: Cleanup generated devicetree overlay objects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/Makefile      | 1 +
 arch/kvx/dts/Makefile      | 1 +
 arch/mips/dts/Makefile     | 1 +
 arch/openrisc/dts/Makefile | 1 +
 arch/riscv/dts/Makefile    | 1 +
 arch/sandbox/dts/Makefile  | 1 +
 6 files changed, 6 insertions(+)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e86282db4c..372c0ce0da 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -237,3 +237,4 @@ lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o \
 obj-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5-io-expander.dtbo.o \
 				     rk3568-wolfvision-pf5-display-vz.dtbo.o
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/arch/kvx/dts/Makefile b/arch/kvx/dts/Makefile
index 41613033ce..f3fbe0af21 100644
--- a/arch/kvx/dts/Makefile
+++ b/arch/kvx/dts/Makefile
@@ -12,3 +12,4 @@ endif
 obj-$(CONFIG_BOARD_K200) += k200.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index d99c4c6358..2df597594d 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -19,3 +19,4 @@ pbl-$(CONFIG_BOARD_TPLINK_MR3020) += ar9331_tl_mr3020.dtb.o
 pbl-$(CONFIG_BOARD_TPLINK_WDR4300) += ar9344-tl-wdr4300-v1.7.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/arch/openrisc/dts/Makefile b/arch/openrisc/dts/Makefile
index 6778abe1b4..d7de52e17a 100644
--- a/arch/openrisc/dts/Makefile
+++ b/arch/openrisc/dts/Makefile
@@ -4,3 +4,4 @@ BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index a3c8fbd9d0..841f86064a 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -11,3 +11,4 @@ pbl-$(CONFIG_BOARD_BEAGLEV) += jh7100-beaglev-starlight.dtb.o
 pbl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
index 79625b103e..61bdb53527 100644
--- a/arch/sandbox/dts/Makefile
+++ b/arch/sandbox/dts/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_OFTREE) += \
 obj- += dummy.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
-- 
2.39.1



