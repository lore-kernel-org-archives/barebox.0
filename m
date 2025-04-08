Delivery-date: Tue, 08 Apr 2025 09:17:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u23DP-009tBM-2p
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 09:17:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u23DP-0004Z8-88
	for lore@pengutronix.de; Tue, 08 Apr 2025 09:17:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ho2Rh2qLUyUOVtMmAQHym7J7L7ui5KyRzLbv/dW/ZdI=; b=yh6xJKeOfAuw9l3rla4GFYMDoy
	U8ZV3jmN+aBIs3ppFdM9qxWVjcwBYUOfekjpZemiIeTWFCpK3LQsJZ3EDAd1PytSVnzHuJ/BLfhEm
	mjchUBDengpY61lkauWRe2PnFBSJBQaPaWwH61/j9Ac7qVoQByV4OaTGo76kKL5rC4ODGvLxMwIkk
	wXpE3NioiGmJPyrnHtrN0xpsWMWefI7Z5p9NLvXCJK1OAit5jooVZKQfCyOqQ8DbvdfAnK/xQOBl9
	4DPVtoGuxOu00C31EM2q34L1rIxVDybI6UXY81r53jtJ0mUkGJ6kZzHggkKHiB1+Pgphr2Xj9B5Oy
	TR7zzrRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u23Cu-000000031Yz-0J1F;
	Tue, 08 Apr 2025 07:17:16 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u23Cq-000000031YK-2zBF
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 07:17:13 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-30beedb99c9so48784991fa.3
        for <barebox@lists.infradead.org>; Tue, 08 Apr 2025 00:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744096630; x=1744701430; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ho2Rh2qLUyUOVtMmAQHym7J7L7ui5KyRzLbv/dW/ZdI=;
        b=JZI26o+LTi8ZS896jzMKKZB3XiANz5M2nZr7Zmm7Ax5GLtiSdHL/nQP27c/idsyCtV
         Tg0Ej4hPxp9fN2MQQjIBe6rc9nknu173+JyoFXk3H5EpC5TuspTRkFcScOMOuhGxq2uj
         XBcchpBrTOc5LzxVWt/mAM7aU6SfMKlcqBNSB7nvih3cWpFV5vSGUloR4aTHy6t9aALZ
         nsSWcTFHR1cSyutm4WynyrIKP/D8ozUz7uTR8Yk/W2CW8L07O9BWmATV4MHwU5DhqnXW
         8hdnXcP/Y5mVTXvASMAQ044KzUm+8Idz3eMxvFnd8U2Z4vnHoM6qbKuBPwTz4G2lhIUI
         PQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744096630; x=1744701430;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ho2Rh2qLUyUOVtMmAQHym7J7L7ui5KyRzLbv/dW/ZdI=;
        b=K10MJZUh0g/wd8cKASDmaOkQWpi0CWi0GPV/MFhtCgp9VQOmtyvlhHGcdlPAv1CEkT
         9TIFrrS5f9iND2z53dcQtA5LwjpRF2oo3gwqAfeyAttrDgr/9WdUiV82Y1/mVRYKgN4T
         61div35nxclTO6NHjlwW6sD4Xjx2yDA3FHSUhOla2c9j/Jxc0VBGAjNNsqUhG1dfYgLN
         uD4wDTWLAtf2pO6mRa9QaPVXG8mXSIbeBvUmll3RZ19G+NeW8I9DvhWcfgc32YJOFREv
         jQUpcgNUN3ws59w32FGp+WVtXfGkVMeq01y+RmDjlqwiGh19HCy2FJozHEjXc/3y7Omu
         BQBA==
X-Gm-Message-State: AOJu0YwYwcCShCfY+jcLS7GLQQU+Dzd2m3kk+pmBisp6sRfaqSCA/otl
	/mwgRAhigHwX936jk/QRgNYFEA0kNymn7RTiPsf1jA3mLa3ptqCmfeL3hg==
X-Gm-Gg: ASbGncs0Nysk0U3IWbJRKZegWan5d0pOSyJxgcdUubHZ6KW/xT0B/GWBsHguD2vKH1H
	Xl3pvgR3VpP1qHluHLtxq+suHn7vBRtJgDSaY5blx9SJh6xfDuqGLt+9/RYkhftHZvG2p8hLfPN
	3n11GSTxik8EOksOZ8878lYyBKjlpVOLbEDbwNOB9RUUa1zGhlSeUUXSY4D0ZT4z0DBel3ITDRS
	S2oYbHXMVr16fDvAEXU1wA0GPWG5IEuYUwwKSd4oAdc3dqjV5H3UBaAKDGFyX0aTHWDDO59pjg/
	DUNo/L9JhHgVcBktHRk8/K2n/0THUBevaofYv3eF+xygyf7pVmQQQQAVvOH8FKm5XOk=
X-Google-Smtp-Source: AGHT+IGQ6Mifx1Fpogs4IBGftWuJTiX5EXAEqdQCqYaadqjCv6Qs71It8rFxwmENM88tRnXLf47EJw==
X-Received: by 2002:a05:651c:199e:b0:30b:b78e:c473 with SMTP id 38308e7fff4ca-30f164f57camr25958521fa.7.1744096630069;
        Tue, 08 Apr 2025 00:17:10 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f031bccb3sm18546771fa.77.2025.04.08.00.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 00:17:09 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue,  8 Apr 2025 10:16:58 +0300
Message-Id: <20250408071658.56670-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_001712_746135_B98BB713 
X-CRM114-Status: GOOD (  12.56  )
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
Subject: [PATCH] ARM: rockchip: Remove support for RK3399
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since barebox does not support RK3399-based boards, let's
remove RK3399 support for now.
It can be easily added later if needed.
This change will help update the Rockchip CLK subsystem to
a more recent version from the kernel.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-rockchip/Kconfig    |    9 -
 arch/arm/mach-rockchip/atf.c      |    5 -
 drivers/clk/rockchip/Makefile     |    1 -
 drivers/clk/rockchip/clk-rk3399.c | 1660 -----------------------------
 firmware/Makefile                 |    2 -
 include/mach/rockchip/atf.h       |    2 -
 6 files changed, 1679 deletions(-)
 delete mode 100644 drivers/clk/rockchip/clk-rk3399.c

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index bfbfa7367a..98dfd11c18 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -27,15 +27,6 @@ config ARCH_ROCKCHIP_V8
 	select CPU_V8
 	select ARM_ATF
 
-config ARCH_RK3399
-	bool
-	select ARCH_ROCKCHIP_V8
-	select ARCH_HAS_RESET_CONTROLLER
-
-config ARCH_RK3399PRO
-	bool
-	select ARCH_RK3399
-
 config ARCH_RK3568
 	bool
 	select ARCH_ROCKCHIP_V8
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 86a28c5101..d3a40e3c1b 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -132,11 +132,6 @@ static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
 		   SOC##_BAREBOX_LOAD_ADDRESS, (uintptr_t)fdt);                 \
 } while (0)                                                                     \
 
-void rk3399_atf_load_bl31(void *fdt)
-{
-	rockchip_atf_load_bl31(RK3399, rk3399_bl31_bin, rk3399_bl32_bin, fdt);
-}
-
 void rk3568_atf_load_bl31(void *fdt)
 {
 	rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin, rk3568_bl32_bin, fdt);
diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index f01014da0c..02320025e5 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -3,6 +3,5 @@ obj-y += clk-cpu.o clk-pll.o clk.o clk-muxgrf.o clk-mmc-phase.o clk-inverter.o
 obj-$(CONFIG_RESET_CONTROLLER) += softrst.o
 obj-$(CONFIG_ARCH_RK3188) += clk-rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += clk-rk3288.o
-obj-$(CONFIG_ARCH_RK3399) += clk-rk3399.o
 obj-$(CONFIG_ARCH_RK3568) += clk-rk3568.o
 obj-$(CONFIG_ARCH_RK3588) += clk-rk3588.o rst-rk3588.o
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
deleted file mode 100644
index 5954e9bebb..0000000000
diff --git a/firmware/Makefile b/firmware/Makefile
index 6b83bb4344..0bc502f3d4 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -25,13 +25,11 @@ fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE) += imx93-bl32.bin \
 fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE_A0) += mx93a0-ahab-container.img
 pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
 pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
-pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
 ifeq ($(CONFIG_ARCH_ROCKCHIP_OPTEE),y)
 # We install BL31 & BL32 while already running in DRAM,
 # so fw-external is not needed
 pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl32.bin
 pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl32.bin
-pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl32.bin
 endif
 
 firmware-$(CONFIG_FIRMWARE_NEXT_IMAGE) += next-image.bin
diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
index db00dc7119..f4f819f4dc 100644
--- a/include/mach/rockchip/atf.h
+++ b/include/mach/rockchip/atf.h
@@ -38,11 +38,9 @@
 
 #ifndef __ASSEMBLY__
 #ifdef CONFIG_ARCH_ROCKCHIP_ATF
-void rk3399_atf_load_bl31(void *fdt);
 void rk3568_atf_load_bl31(void *fdt);
 void rk3588_atf_load_bl31(void *fdt);
 #else
-static inline void rk3399_atf_load_bl31(void *fdt) { }
 static inline void rk3568_atf_load_bl31(void *fdt) { }
 static inline void rk3588_atf_load_bl31(void *fdt) { }
 #endif
-- 
2.39.1



