Delivery-date: Tue, 02 Sep 2025 21:12:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWQo-007NeA-0k
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 21:12:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWQm-0006hb-Kl
	for lore@pengutronix.de; Tue, 02 Sep 2025 21:12:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bWLvqmc72OiPfTpz0T3c+4uCccICbNz4hJ1Tjaef2pQ=; b=bk5tM4OAVzG9wLaB+mP1c5mZ3i
	+ZFB/HfI2QtBdNja/P+cwZE3Ys+pVgxnc1tFSx2hCvCtieh12W+v0VgIRg8GhDn+iU7msILoQ/FX5
	Cd9X/vs/O2H5fc23uUrdgjdSavtTtx8bRpZv9qFSx6ZaqXeS3RBP60/SMtiEpN348ayvBdFGgwM8s
	7nkjqxmBLqkhT+qco5mSuzqGZKobWeu1yNZaXVbG989ScUlhAFi4NXjKqsPMX3ye73yF4UBdJLiMl
	tEEI7IkJWzNhp6ED+10eNYtgOU/0UgFHHl4pN34S/cFNJs/RbXvvKhNsuNqTmAHHWwPp2oOke2bRu
	JUfnh6iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utWQI-00000001d7J-1Bug;
	Tue, 02 Sep 2025 19:12:06 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utRYe-00000000DeS-2MUS
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 14:00:25 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-afefc7be9d4so634561666b.1
        for <barebox@lists.infradead.org>; Tue, 02 Sep 2025 07:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756821623; x=1757426423; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bWLvqmc72OiPfTpz0T3c+4uCccICbNz4hJ1Tjaef2pQ=;
        b=gKDekJr0j0rFcQmXlOAQ8FWEsziNRafoqUE289Dz+Q+Szlk7Anl2t85Bng+G2Kjtv4
         P4Zqwqr3iIDNe/50lRUr5yOeVT7rzQOpz2gWFaJYjbDrMAIQFFZ+j4uGJL01ujO5MfaP
         hB5J6D9c4TyEsNHfK55/M+hYFoO8ARdDF3WlNzrIUnsdeMFEMa5hdJuf23ijvrxvkxks
         rvK9lezqZy8/JSmoNTn4BCXnpSWz8dY4Vie60VDSh3M3lKKE6eAl4aIDGDxxFLb8eiDL
         kId0j/Dr9oCJcdfbk0aUZECQQXwqeK87S7o5wC/Tln4cVchEEq5CmBXf096LmyaSqQkQ
         tPLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821623; x=1757426423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bWLvqmc72OiPfTpz0T3c+4uCccICbNz4hJ1Tjaef2pQ=;
        b=Exlmj4XziS2FgMZgzlO9J99IZDElYEmm9+wnl3CQay88iPTOplKU0q4nLEtYVcH354
         xh++Bh0hUgpsNDH+6Jbeq4erl7G5i/XKQIwjnM5aivxM8+191qfZlzK5mQ+9fNtHk/bq
         MdldTgi3S8cCMRpleWpibZZrNhjjy4Rkm4tquRvNP6GIV90tVvWmi2xrGgCYLfoeyKAU
         JvysM2KHzAM1FEZ3Vy/TOAnqUR5GNAVyOynaIrUvQ3Se6VZyGMqzSeZ4e/ldaHpfmw+e
         3IdR+RhE3KG6GWWPNffLc+ra0wweNU2yo58T06MtndAZN5/UouRnmFFN7mYuwJhAauxm
         XN7Q==
X-Gm-Message-State: AOJu0YydvMVMq0cKJ2L0AVa3Jvzuwo757vGee0TS/9XZn7YMsS7apElZ
	BYwdE0zfp4t+zpzR2d1dLUurk06ogIs/kvXTHIPcV3rhzbf5nbRDZdNHDhN4+Q==
X-Gm-Gg: ASbGncugKwTGK7yTGFJ/JqLuFYS8PBOaNFaffIP3Dz5bETqy0UzKr4QvexDHgwaI+HE
	g6uDjF9d28W7XioZKFZNbEfnC/12s7yo8OGIvtkQsF8/CGWE17/VGfhnK5w2gRdq7DyjnljuIKI
	MmjkYoGccGSi5taNIqowCniJGblnqO5fu1ik01ZCMb7Lf1mA0w+OLaHGFDJInzDFPQNFSZb4VFU
	I0OWE2Be4pnAge40a9M9Zi55RokBNO4wUW1sYMDjIkWTrdK4Be0+RmeXHytmUq++PzDHj7wiGqV
	UGw6sfAc10tBIOl0JVQl7vkdYp6zuexKBFEzJlB57ep5F1A7P9rOZy6xiRzwr3aefdSNVCJ16yQ
	CzoK8JCDFlygnxnpWOH2ion7TPboD8f5Y
X-Google-Smtp-Source: AGHT+IHRdsm4P76EZx1nyioi8arK0ffPO09SpWnyNKh8PrNcfgTorMD7dEiIke0ahEH+Rj3doNk6lw==
X-Received: by 2002:a17:906:3883:b0:b04:1957:8e72 with SMTP id a640c23a62f3a-b041957f0b6mr685886966b.65.1756821621209;
        Tue, 02 Sep 2025 07:00:21 -0700 (PDT)
Received: from ivaylo-T580.. ([37.63.16.182])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff08b86833sm1034411366b.48.2025.09.02.07.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:20 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue,  2 Sep 2025 17:00:06 +0300
Message-ID: <20250902140006.1410408-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_070024_602990_E1437A35 
X-CRM114-Status: GOOD (  21.32  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] ARM: boards: add support for Samsung Galaxy S20 5G (x1s)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for Samsung Galaxy S20 5G, based on exynos 990, to the
current samsung board support. This platform, just like exynos8895,
needs a bit to be set in order to allow the framebuffer to refresh.

Barebox has to be packaged as an android boot image:

mkbootimg --kernel images/barebox-exynos.img \
--ramdisk ramdisk.bin \
--dt stock.dtb
--cmdline "buildvariant=eng" \
--base 0x10000000 \
--kernel_offset 0x00008000 \
--ramdisk_offset 0x01000000 \
--second_offset 0x00f00000 \
--tags_offset 0x00000100 \
--os_version 9.0.0 \
--os_patch_level 2019-10 \
--pagesize 2048 \
--hash sha1 \
--output boot.img

And then flashed to the boot partition:

heimdall flash --BOOT boot.img

Currently, only a minimal set of features work. It's possible to
boot a FIT image packaged as a ramdisk with mkbootimg.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Tested-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>

---
The tester is also the one who upstreamed support for x1s in mainline
linux. He volunteered for me to upstream barebox support for it
alongside dreamlte, hence why I have my copyright in the x1s overlay
device tree.
---
 arch/arm/boards/samsung-exynos/board.c              |  4 ++++
 .../samsung-exynos/defaultenv-exynos/boot/ramfit    |  4 ++++
 arch/arm/boards/samsung-exynos/lowlevel.c           |  3 +++
 arch/arm/dts/Makefile                               |  3 ++-
 arch/arm/dts/exynos990-x1s.dts                      | 13 +++++++++++++
 5 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/exynos990-x1s.dts

diff --git a/arch/arm/boards/samsung-exynos/board.c b/arch/arm/boards/samsung-exynos/board.c
index 2d0c2248..f26da64a 100644
--- a/arch/arm/boards/samsung-exynos/board.c
+++ b/arch/arm/boards/samsung-exynos/board.c
@@ -13,6 +13,7 @@
 #include <of_address.h>
 
 #define EXYNOS8895_DECON0	0x12860000
+#define EXYNOS990_DECON0	0x19050000
 #define HW_SW_TRIG_CONTROL	0x70
 #define TRIG_AUTO_MASK_EN	BIT(12)
 #define SW_TRIG_EN		BIT(8)
@@ -30,6 +31,8 @@ static int exynos_postcore_init(void)
 	 */
 	if (of_machine_is_compatible("samsung,exynos8895"))
 		trig_ctrl = IOMEM(EXYNOS8895_DECON0 + HW_SW_TRIG_CONTROL);
+	else if (of_machine_is_compatible("samsung,exynos990"))
+		trig_ctrl = IOMEM(EXYNOS990_DECON0 + HW_SW_TRIG_CONTROL);
 	else
 		return 0;
 
@@ -52,6 +55,7 @@ static inline int exynos_init(struct device *dev)
 
 static const struct of_device_id exynos_of_match[] = {
 	{ .compatible = "samsung,dreamlte" },
+	{ .compatible = "samsung,x1s" },
 	{ /* Sentinel */},
 };
 
diff --git a/arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit b/arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit
index 0912c9fc..c8fc7e55 100644
--- a/arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit
+++ b/arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit
@@ -8,5 +8,9 @@ if test "$global.model" = "Samsung Galaxy S8 (SM-G950F)"; then
 	global fit_offset=0x9000000
 fi
 
+if test "$global.model" = "Samsung Galaxy S20 5G"; then
+	global fit_offset=0x4000000
+fi
+
 addpart /dev/ram0 0x2000000@$global.fit_offset(fit)
 bootm -f /dev/ram0.fit
diff --git a/arch/arm/boards/samsung-exynos/lowlevel.c b/arch/arm/boards/samsung-exynos/lowlevel.c
index bb040611..fe6fd6ed 100644
--- a/arch/arm/boards/samsung-exynos/lowlevel.c
+++ b/arch/arm/boards/samsung-exynos/lowlevel.c
@@ -12,6 +12,7 @@
 #include <asm/mmu.h>
 
 extern char __dtb_exynos8895_dreamlte_start[];
+extern char __dtb_exynos990_x1s_start[];
 
 /* called from assembly */
 void lowlevel_exynos(void *downstream_fdt);
@@ -55,6 +56,8 @@ static noinline void exynos_continue(void *downstream_fdt)
 	/* select device tree dynamically */
 	if (is_model(downstream_fdt, "Samsung DREAMLTE")) {
 		__dtb_start = __dtb_exynos8895_dreamlte_start;
+	} else if (is_model(downstream_fdt, "Samsung X1S")) {
+		__dtb_start = __dtb_exynos990_x1s_start;
 	} else {
 		/* we didn't match any device */
 		return;
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a53834f7..58f05871 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -13,7 +13,8 @@ lwl-$(CONFIG_MACH_BEAGLEPLAY) += k3-am625-beagleplay.dtb.o k3-am625-r5-beaglepla
 lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
 lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
 lwl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
-lwl-$(CONFIG_MACH_EXYNOS) += exynos8895-dreamlte.dtb.o
+lwl-$(CONFIG_MACH_EXYNOS) += exynos8895-dreamlte.dtb.o \
+			exynos990-x1s.dtb.o
 lwl-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
 lwl-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
 lwl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
diff --git a/arch/arm/dts/exynos990-x1s.dts b/arch/arm/dts/exynos990-x1s.dts
new file mode 100644
index 00000000..19d59eaa
--- /dev/null
+++ b/arch/arm/dts/exynos990-x1s.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
+/*
+ * Samsung Galaxy S20 5G (x1s/SM-G981B) barebox device tree source
+ *
+ * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+ */
+
+/dts-v1/;
+#include <arm64/exynos/exynos990-x1s.dts>
+
+/ {
+	barebox,deep-probe;
+};
-- 
2.43.0



