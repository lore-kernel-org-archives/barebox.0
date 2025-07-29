Delivery-date: Tue, 29 Jul 2025 22:37:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr50-0052RI-2I
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 22:37:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr4z-0007hP-RM
	for lore@pengutronix.de; Tue, 29 Jul 2025 22:37:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YN3XbZ2tm6rti7FVnFgr/uwO1exBIw4truT4jbOQt/U=; b=Il7b4NOf9nO1FcGhL+nC8NhBai
	ymA/JRuGNbRDVL+bzhOHVb81pI/lxSHQ5q8QI0W9LKPOYJ/YjxOki44GHOm5VUxXM5q4Ar8IVRVdt
	/X/blIlXGtfodudM9eZHppEzUtcZ6joQ/TghP7kjHRzqb8AOVaPejC9+2XDRs818MSc5GAW4GKvmK
	iDa6hfuaHM4OcGS+2hxfRIEj7vZa2mRLt38RYQ70Lk53F9FQdyVEicsdwAQQoCrapB5KU3YTepXKN
	kReUi8JG5Eo9+Hp5GHXktckmO/S4MKCWQwasKgnUr5MMQ8qluwPS1q4FNx0orlS2a93+/8YalKUZO
	LLzcDh2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4S-0000000040D-2y4a;
	Tue, 29 Jul 2025 20:37:12 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4P-000000003ym-3yJB
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 20:37:11 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4537edf2c3cso61341065e9.3
        for <barebox@lists.infradead.org>; Tue, 29 Jul 2025 13:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753821428; x=1754426228; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YN3XbZ2tm6rti7FVnFgr/uwO1exBIw4truT4jbOQt/U=;
        b=JL0hZrPeD2S9uHQevJKMABMmTaS0xxrZ+o95cK6fTNnPsL8JJL80yRj6wsr1wR5Sc6
         tufLWJVgzjkfgjT3UdnmDCbUmyxGTrHpJ29/wZO2WnW0cRCharox42JYXqXX/Z2NfQHs
         Wi1mzFR3RZsAChmlp5BNcQE3pRTPtjM0wQJTp/5SI3VQ9MK+fcNxwMZi0sKxykd4UnC2
         /afW6tLYKwtMGF/Yuy9uWXjSdYWoExRMrjuep8HwzITjqCfjViBewq7pPHL2J8PlG8jI
         YrJQayR0XrUeactd5L9BTqDSWfg8oNcu8oy6rY0WyaBb7y2CoIHhEj7AGIkfL9Uvvrnj
         UtKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753821428; x=1754426228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YN3XbZ2tm6rti7FVnFgr/uwO1exBIw4truT4jbOQt/U=;
        b=epUEsT0rqgRY4lq3LcwEWXotVqCL3SAjDwEe80P5M0m2mLpmQnz4UZ/sIMayT+QEAr
         Gs/bJL2Ryu3aDZiYtLuuR39HAyisqSa+p9b2aDviSx5Pe6nzDGJzYbbtEtozwOh5Tpa2
         0DuepFRvJqxAV6+2m6A2Mk1KMHbP3sUBo9HgftrLpPJ1GsROHb21VvPyDNWV8I2ldR1K
         /3GuQIwz8w09KpeThTXf7xlriK3zXpaXwo+ek/1JtUnsOwfn8oGQo8XJfE3FGSl8bvEN
         5FmF3/YG/QAhc0owC/ASRPnRO0mG08aD5guRY8B1us7Nunurbwq8+leKJTr6XwnnJEzm
         CPGg==
X-Gm-Message-State: AOJu0Yydia59++RmKkRY9v0OKKInYdduvRHT4s9d43o188pNTCBNyk/M
	GBVx1l5owurfmKkwV63TzcvqV3Nj65ZwB7s4dOI2P/HH74YiJls+fycyd+S9rg==
X-Gm-Gg: ASbGncs278pr3lMYc2771dsBnga0lUPnznvj9pk2iHJBTg5yzNlGVg0aFQ67ASMPcud
	KsxVoD4A9lRD2k0xvQLl8DSYufdFM3pG5poOYobKcdmLAVWajsNV7RSi6BJLDO3EWKDl3v03aIc
	b7SjtEZhK2ALAjLkVTQfrSWxpJIIa5OUghuUfoWuHRWNv6EymyKB7SE1X2U8pEiSuy9PJggvKkG
	xKho4/sShBWyr1DIXDsDRZRe0s3C/3yaxuU4b9oBnixwDOkZFb9X6UfOgjLbeGHOH492exCbkRX
	h7VcUC1chB9j9zdCdGLwSAae6BDXeXxfAljL7KqTIyHA0sEG5UpwXvXC5YIX6UxHB1LtGnZdmI3
	LW8RsWx67YOxfSmtzZnCuSGerlCkaWTIbaKpBfsGUEOilSszIdtwr2UDkXgjpy9o+T/LnpdJAMA
	==
X-Google-Smtp-Source: AGHT+IGWuxt6ERFjjjizWUfyYHx0t7YOoxQZoCzIg5AJJOY8l8mLmyieWzWsmjGtodvz4xJD2TmnPw==
X-Received: by 2002:a05:600c:1e01:b0:456:1efa:8fe9 with SMTP id 5b1f17b1804b1-45892ce4323mr9419965e9.2.1753821428129;
        Tue, 29 Jul 2025 13:37:08 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45895386627sm481325e9.19.2025.07.29.13.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 13:37:06 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 29 Jul 2025 23:36:59 +0300
Message-ID: <20250729203659.1858575-5-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_133709_992124_6111EA39 
X-CRM114-Status: GOOD (  18.57  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 4/4] ARM: boards: add support for Samsung Galaxy S20 5G (x1s)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for Samsung Galaxy S20 5G, based on exynos990, to the
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

Currently, only a minimal set of features work. An image can be booted by
barebox by configuring barebox to jump to the address where ramdisk gets
loaded by s-boot, and packaging that payload as a ramdisk with mkbootimg.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Tested-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>

---
The tester is also the one who upstreamed support for x1s in mainline
linux. He volunteered for me to upstream barebox support for it
alongside dreamlte, hence why I have my copyright in the x1s overlay
device tree.
---
 arch/arm/boards/samsung-exynos/board.c    |  3 +++
 arch/arm/boards/samsung-exynos/lowlevel.c |  3 +++
 arch/arm/dts/Makefile                     |  3 ++-
 arch/arm/dts/exynos990-x1s.dts            | 13 +++++++++++++
 4 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/exynos990-x1s.dts

diff --git a/arch/arm/boards/samsung-exynos/board.c b/arch/arm/boards/samsung-exynos/board.c
index 25e4add6..249b1b07 100644
--- a/arch/arm/boards/samsung-exynos/board.c
+++ b/arch/arm/boards/samsung-exynos/board.c
@@ -29,6 +29,8 @@ static int exynos_postcore_init(void)
 	 */
 	if (of_machine_is_compatible("samsung,exynos8895"))
 		decon0_base = IOMEM(0x12860000);
+	else if (of_machine_is_compatible("samsung,exynos990"))
+		decon0_base = IOMEM(0x19050000);
 	else
 		return 0;
 
@@ -49,6 +51,7 @@ static inline int exynos_init(struct device *dev)
 
 static const struct of_device_id exynos_of_match[] = {
 	{ .compatible = "samsung,dreamlte" },
+	{ .compatible = "samsung,x1s" },
 	{ /* Sentinel */},
 };
 
diff --git a/arch/arm/boards/samsung-exynos/lowlevel.c b/arch/arm/boards/samsung-exynos/lowlevel.c
index 9c4a0297..c574535f 100644
--- a/arch/arm/boards/samsung-exynos/lowlevel.c
+++ b/arch/arm/boards/samsung-exynos/lowlevel.c
@@ -12,6 +12,7 @@
 #include <asm/mmu.h>
 
 extern char __dtb_exynos8895_dreamlte_start[];
+extern char __dtb_exynos990_x1s_start[];
 
 static bool is_compat(const void *fdt, const char *prefix)
 {
@@ -42,6 +43,8 @@ static noinline void exynos_continue(void *downstream_fdt)
 	/* select device tree dynamically */
 	if (is_compat(downstream_fdt, "Samsung DREAMLTE")) {
 		__dtb_start = __dtb_exynos8895_dreamlte_start;
+	} else if (is_compat(downstream_fdt, "Samsung X1S")) {
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
+	barebox,disable-deep-probe;
+};
-- 
2.43.0



