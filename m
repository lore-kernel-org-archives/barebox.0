Delivery-date: Fri, 16 Jan 2026 20:43:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpja-0024TK-1F
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjV-0001f0-OV
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9sbJjEOj48Cx3v4aBNJzFhGC3uuic/kotrQbhJu3b4k=; b=gATMFkQDUdXWYrCwZFqRW9Q0pf
	kjPlVhrHcX10wniK8TqU0iXCQUe+qvpbhI04NyeShIIKTbtAIdfDiuYbgMzZjB0wR1NsrptQ7RrUF
	mQnjpywMSb6L0SU8VD6wafwoZ+qwxkTIYP9Kr92n6Z5lWJUu7a7n2lx7xjCVjGkIgG53OCI57qWqD
	qM/0eFyHlwLcR/vcpK444aUqET8BchAHRT8j3dB2uM5AO5M2rhDnUUCq1td3ngWuzy19neEUbtQKq
	+75F1GRXezM/Ir5jXgme02Sr+bUo1sBnhCd6TR9zxI8YwaP+ubOrvEY7m7VC2AKwBwxs3kGdKSzGK
	S/zeodSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpid-0000000Ehjp-2QgY;
	Fri, 16 Jan 2026 19:42:51 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpia-0000000EhiB-1DKl
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:49 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-655af782859so2052902a12.2
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592566; x=1769197366; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9sbJjEOj48Cx3v4aBNJzFhGC3uuic/kotrQbhJu3b4k=;
        b=dIy+MZaWz6M0V8jUEr+ERd5UH2R8KwjSDyteLaP3kkmm8dfWukgtupXxy29hAXgzjq
         8zbJooBT+z014DzFXDzwMqNMz0BjHidB1IOftgMfHHF39qNa2aQlkMZIJqMBb+rd/VZ6
         KhOz4nRQfK/rhLCxmbsfWG5Fqm+4zLA2kboV63/C7oSS0L8dLrUDSEu3WdoQkj70TVEl
         vmOz+Ouf4uK9pm80NL1R2s1ckIjeOxuxhacmJt4KFN0hxnHrzMGUIlSyYztSAXXu/AOn
         fxPjjKEhqAWi2xQ7sX9eTw4hd7zMKEbr1ZkI8jIofV4dESUncZnplgF4dPyzmPgnkEx3
         JPgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592566; x=1769197366;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9sbJjEOj48Cx3v4aBNJzFhGC3uuic/kotrQbhJu3b4k=;
        b=Zw8X7KLQgDzpP+EF2fMUSN6Zjpc8jzgUxLMbGQBQIbXoBKn7pklSXexChCCmpp33Fa
         bCh8YxtT9ZV0aLTB7HvXT1zLE+W69mmVaS//Qg3EjhWYuhJR7Tkkqp1R8Z2gEi8498pG
         ksFX/g+rpubgznSJFnVMVGsH9vSd2nxwG42hY1YUy44TqfY5nunxIo9EZ2UkRzeFhj0l
         G4F9gpP0t2AYRgJJUVzOtyJzkv6eWen2csc+OnrVPLjAnSmuJ5DJkRuKYhLpHXg5sO8l
         MyO0NoImBEA67ruO7bd6aRPZaWtKuTg302xMkjG8ig2UlXELqXanC0bQK9RkTN8D49uw
         hGJg==
X-Forwarded-Encrypted: i=1; AJvYcCU3nC3U/ep3uKOCE85ay6akuDardV3UaMmu2rWHUFPtFT6TwUTvSmGiIp4dyOLLyjk1hijEEgnC@lists.infradead.org
X-Gm-Message-State: AOJu0YwdOKqFTOtQcFSwQgfMktN5Oyo6pp9uyniv5wSyc0bWnKWi1j5B
	HjkZgWgn/5W8XmbQa8+W+yiLQ8M8w08656UBfFl1I0Mx1aITfXsNk7Ci
X-Gm-Gg: AY/fxX5x1tQJlz9geDGM2YD9R5L2j8bnpXPmo2pm9Gfnck0Ez5dcJ0ICFOywOCfrfnl
	sEtjpp9j+P4aU/qXEAojxFbPWBNqUcoKH+h8+3lNUHOpqSi3q8xsaR5o60U+LZfAEKyUYtRbl6w
	gFMo+qteKE4fyHAKCxWS64SznvhHxQghiXkEj1YKWdIZzH+2g9WGad1KxydK3HPIFUff3MLc5j0
	NuvvDiWfI9wt9vvUB8vexSZjyri4+tLNWr9/D9pmm5lDk16eiQtVrQPEwZtlazmwzaHG4sKBGGu
	hULGSiw91NqrMm3pL11hK1pwwJEGHqGPB8MMvEsfQe42crQFk0xg/QwQbUQV8+rSzQ5+Mhou+lF
	4prR7ubIZnp+NPDC77tLT9QwzwWwnAWb+BsXn/RaXGmub8yTAJtmRhhm/GlicELOsvnU/RkRN3M
	60K3xjb6Go3JWNbeRUkn9lkApkJUnMmzJmCRBzNFyFgdsKODbwHRMocc0tkuCgizcR1f7iJIu/j
	rDngn7+MmxFPktCqR696m7XAHwgxWCds5E/XFZy+smQJpeJN3e54dIR2iiU4q/mZ9hN+lg5/xLJ
	VK0Azrt7GX/CmDw6OE0gBZyGf3Mf+0iqw1DWMNO7dQ==
X-Received: by 2002:a17:907:702:b0:b7f:e703:fd77 with SMTP id a640c23a62f3a-b8792e0c40fmr345548466b.11.1768592566048;
        Fri, 16 Jan 2026 11:42:46 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:45 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-1-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=14544;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=W6m2kofJ7Xo4zSYCf4RxSJrxqXdKOAbhWnAOL9ooIVk=;
 b=G8dAd/yJ6tZ6qY+oT4pYGvWMZD5WWbFMJF64ccJ0KQj750G7V9DJnrPG/BqCIJFdGTg6jmm0C
 Bewae/N8Fi9BQ9uBkJBOV8Y1iy2jcEp0JLu3NifNbQ1BOmu7bfFEQdA
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114248_479563_F0CBC2F6 
X-CRM114-Status: GOOD (  25.70  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/14] ARM: rockchip: Add initial RK3562 SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add basic RK3562 support including ATF integration, low-level init,
debug UART configuration, and bootrom integration.

Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 arch/arm/mach-rockchip/Kconfig      |  4 ++++
 arch/arm/mach-rockchip/Makefile     |  1 +
 arch/arm/mach-rockchip/atf.c        | 38 +++++++++++++++++++++++++++++++++++++
 arch/arm/mach-rockchip/dmc.c        | 33 ++++++++++++++++++++++++++++++++
 arch/arm/mach-rockchip/rk3562.c     | 20 +++++++++++++++++++
 arch/arm/mach-rockchip/rockchip.c   |  4 ++++
 common/Kconfig.debug_ll             |  9 +++++++++
 firmware/Makefile                   |  2 ++
 include/mach/rockchip/atf.h         |  6 ++++++
 include/mach/rockchip/debug_ll.h    |  6 ++++++
 include/mach/rockchip/dmc.h         |  1 +
 include/mach/rockchip/rk3562-regs.h | 21 ++++++++++++++++++++
 include/mach/rockchip/rockchip.h    | 10 ++++++++++
 13 files changed, 155 insertions(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 6f6e43101c..a91e7db72d 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -27,6 +27,10 @@ config ARCH_ROCKCHIP_V8
 	select CPU_V8
 	select ARM_ATF
 
+config ARCH_RK3562
+	bool
+	select ARCH_ROCKCHIP_V8
+
 config ARCH_RK3568
 	bool
 	select ARCH_ROCKCHIP_V8
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 40454d0284..9e2ef82221 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -4,6 +4,7 @@ obj-y += rockchip.o bootrom.o
 pbl-$(CONFIG_ARCH_ROCKCHIP_ATF) += atf.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
+obj-pbl-$(CONFIG_ARCH_RK3562) += rk3562.o
 obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
 obj-pbl-$(CONFIG_ARCH_RK3576) += rk3576.o
 obj-pbl-$(CONFIG_ARCH_RK3588) += rk3588.o
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index c4ed84aae6..55d9918f3e 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -11,6 +11,7 @@
 #include <mach/rockchip/dmc.h>
 #include <mach/rockchip/rockchip.h>
 #include <mach/rockchip/bootrom.h>
+#include <mach/rockchip/rk3562-regs.h>
 #include <mach/rockchip/rk3568-regs.h>
 #include <mach/rockchip/rk3576-regs.h>
 #include <mach/rockchip/rk3588-regs.h>
@@ -132,6 +133,43 @@ static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
 		   SOC##_BAREBOX_LOAD_ADDRESS, (uintptr_t)fdt);                 \
 } while (0)                                                                     \
 
+void rk3562_atf_load_bl31(void *fdt)
+{
+	rockchip_atf_load_bl31(RK3562, rk3562_bl31_bin, rk3562_bl32_bin, fdt);
+}
+
+void __noreturn rk3562_barebox_entry(void *fdt)
+{
+	unsigned long membase, endmem;
+
+	membase = RK3562_DRAM_BOTTOM;
+	endmem = rk3562_ram0_size();
+
+	rk_scratch = (void *)arm_mem_scratch(endmem);
+
+	if (current_el() == 3) {
+		rk3562_lowlevel_init();
+		rockchip_store_bootrom_iram(IOMEM(RK3562_IRAM_BASE));
+
+		/*
+		 * The downstream TF-A doesn't cope with our device tree when
+		 * CONFIG_OF_OVERLAY_LIVE is enabled, supposedly because it is
+		 * too big for some reason. Otherwise it doesn't have any visible
+		 * effect if we pass a device tree or not, except that the TF-A
+		 * fills in the ethernet MAC address into the device tree.
+		 * The upstream TF-A doesn't use the device tree at all.
+		 *
+		 * Pass NULL for now until we have a good reason to pass a real
+		 * device tree.
+		 */
+		rk3562_atf_load_bl31(NULL);
+		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
+	}
+
+	optee_set_membase(rk_scratch_get_optee_hdr());
+	barebox_arm_entry(membase, endmem - membase, fdt);
+}
+
 void rk3568_atf_load_bl31(void *fdt)
 {
 	rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin, rk3568_bl32_bin, fdt);
diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 3cb17b9694..4c0b9c3975 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -16,12 +16,16 @@
 #include <mach/rockchip/dmc.h>
 #include <mach/rockchip/atf.h>
 #include <mach/rockchip/rk3399-regs.h>
+#include <mach/rockchip/rk3562-regs.h>
 #include <mach/rockchip/rk3568-regs.h>
 #include <mach/rockchip/rk3576-regs.h>
 
 #define RK3399_PMUGRF_OS_REG2		0x308
 #define RK3399_PMUGRF_OS_REG3		0x30C
 
+#define RK3562_PMUGRF_OS_REG2           0x208
+#define RK3562_PMUGRF_OS_REG3           0x20c
+
 #define RK3568_PMUGRF_OS_REG2           0x208
 #define RK3568_PMUGRF_OS_REG3           0x20c
 
@@ -29,6 +33,7 @@
 #define RK3576_PMUGRF_OS_REG3           0x20c
 
 #define RK3399_INT_REG_START		0xf0000000
+#define RK3562_INT_REG_START		RK3399_INT_REG_START
 #define RK3568_INT_REG_START		RK3399_INT_REG_START
 #define RK3576_INT_REG_START		0x10000000
 #define RK3588_INT_REG_START		RK3399_INT_REG_START
@@ -155,6 +160,23 @@ resource_size_t rk3399_ram0_size(void)
 	return size;
 }
 
+resource_size_t rk3562_ram0_size(void)
+{
+	void __iomem *pmugrf = IOMEM(RK3562_PMUGRF_BASE);
+	u32 sys_reg2, sys_reg3;
+	resource_size_t size;
+
+	sys_reg2 = readl(pmugrf + RK3562_PMUGRF_OS_REG2);
+	sys_reg3 = readl(pmugrf + RK3562_PMUGRF_OS_REG3);
+
+	size = rockchip_sdram_size(sys_reg2, sys_reg3);
+	size = min_t(resource_size_t, RK3562_INT_REG_START, size);
+
+	pr_debug("%s() = %llu\n", __func__, (u64)size);
+
+	return size;
+}
+
 resource_size_t rk3568_ram0_size(void)
 {
 	void __iomem *pmugrf = IOMEM(RK3568_PMUGRF_BASE);
@@ -314,6 +336,13 @@ static const struct rockchip_dmc_drvdata rk3399_drvdata = {
 	.membase = RK3399_DRAM_BOTTOM,
 };
 
+static const struct rockchip_dmc_drvdata rk3562_drvdata = {
+	.os_reg2 = RK3562_PMUGRF_OS_REG2,
+	.os_reg3 = RK3562_PMUGRF_OS_REG3,
+	.internal_registers_start = RK3562_INT_REG_START,
+	.membase = RK3562_DRAM_BOTTOM,
+};
+
 static const struct rockchip_dmc_drvdata rk3568_drvdata = {
 	.os_reg2 = RK3568_PMUGRF_OS_REG2,
 	.os_reg3 = RK3568_PMUGRF_OS_REG3,
@@ -342,6 +371,10 @@ static struct of_device_id rockchip_dmc_dt_ids[] = {
 		.compatible = "rockchip,rk3399-dmc",
 		.data = &rk3399_drvdata,
 	},
+	{
+		.compatible = "rockchip,rk3562-dmc",
+		.data = &rk3562_drvdata,
+	},
 	{
 		.compatible = "rockchip,rk3568-dmc",
 		.data = &rk3568_drvdata,
diff --git a/arch/arm/mach-rockchip/rk3562.c b/arch/arm/mach-rockchip/rk3562.c
new file mode 100644
index 0000000000..9ab5b82695
--- /dev/null
+++ b/arch/arm/mach-rockchip/rk3562.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier:     GPL-2.0+
+#include <common.h>
+#include <io.h>
+#include <bootsource.h>
+#include <mach/rockchip/rk3562-regs.h>
+#include <mach/rockchip/rockchip.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/rockchip/bootrom.h>
+
+void rk3562_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+}
+
+int rk3562_init(void)
+{
+	rockchip_parse_bootrom_iram(rockchip_scratch_space()->iram);
+
+	return 0;
+}
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index 0828f0fa72..ce1c06ff38 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -17,6 +17,8 @@ int rockchip_soc(void)
 		__rockchip_soc = 3188;
 	else if (of_machine_is_compatible("rockchip,rk3288"))
 		__rockchip_soc = 3288;
+	else if (of_machine_is_compatible("rockchip,rk3562"))
+		__rockchip_soc = 3562;
 	else if (of_machine_is_compatible("rockchip,rk3566"))
 		__rockchip_soc = 3566;
 	else if (of_machine_is_compatible("rockchip,rk3568"))
@@ -49,6 +51,8 @@ static int rockchip_init(void)
 		return rk3188_init();
 	case 3288:
 		return rk3288_init();
+	case 3562:
+		return rk3562_init();
 	case 3566:
 		return rk3568_init();
 	case 3568:
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index a08d29859d..75d500862b 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -198,6 +198,14 @@ config DEBUG_ROCKCHIP_RK3288_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3288.
 
+config DEBUG_ROCKCHIP_RK3562_UART
+	bool "RK3562 Debug UART"
+	depends on ARCH_RK3562
+	select DEBUG_ROCKCHIP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3562.
+
 config DEBUG_ROCKCHIP_RK3568_UART
 	bool "RK3568 Debug UART"
 	depends on ARCH_RK3568
@@ -430,6 +438,7 @@ config DEBUG_OMAP_UART_PORT
 config DEBUG_ROCKCHIP_UART_PORT
 	int "RK3xxx UART debug port" if DEBUG_ROCKCHIP_RK3188_UART || \
 				DEBUG_ROCKCHIP_RK3288_UART || \
+				DEBUG_ROCKCHIP_RK3562_UART || \
 				DEBUG_ROCKCHIP_RK3568_UART || \
 				DEBUG_ROCKCHIP_RK3576_UART || \
 				DEBUG_ROCKCHIP_RK3588_UART || \
diff --git a/firmware/Makefile b/firmware/Makefile
index 163055554d..f0204a8bf6 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -28,12 +28,14 @@ fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE) += imx93-bl32.bin \
 					      mx93a1-ahab-container.img
 fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE_A0) += mx93a0-ahab-container.img
+pbl-firmware-$(CONFIG_ARCH_RK3562) += rk3562-bl31.bin
 pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
 pbl-firmware-$(CONFIG_ARCH_RK3576) += rk3576-bl31.bin
 pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
 ifeq ($(CONFIG_ARCH_ROCKCHIP_OPTEE),y)
 # We install BL31 & BL32 while already running in DRAM,
 # so fw-external is not needed
+pbl-firmware-$(CONFIG_ARCH_RK3562) += rk3562-bl32.bin
 pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl32.bin
 pbl-firmware-$(CONFIG_ARCH_RK3576) += rk3576-bl32.bin
 pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl32.bin
diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
index 8fc2a4bebe..b8627a3598 100644
--- a/include/mach/rockchip/atf.h
+++ b/include/mach/rockchip/atf.h
@@ -5,6 +5,7 @@
 
 /* First usable DRAM address. Lower mem is used for ATF and OP-TEE */
 #define RK3399_DRAM_BOTTOM		0xa00000
+#define RK3562_DRAM_BOTTOM		0xa00000
 #define RK3568_DRAM_BOTTOM		0xa00000
 #define RK3576_DRAM_BOTTOM		0x40a00000
 #define RK3588_DRAM_BOTTOM		0xa00000
@@ -19,6 +20,7 @@
  * The values are taken from rkbin/RKTRUST/RK3*.ini: [BL32_OPTION] ADDR
  */
 #define RK3399_OPTEE_LOAD_ADDRESS	0x8400000
+#define RK3562_OPTEE_LOAD_ADDRESS	0x8400000
 #define RK3568_OPTEE_LOAD_ADDRESS	0x8400000
 #define RK3576_OPTEE_LOAD_ADDRESS	0x8400000
 #define RK3588_OPTEE_LOAD_ADDRESS	0x8400000
@@ -35,22 +37,26 @@
  * OP-TEE jumps to after initialization.
  */
 #define RK3399_BAREBOX_LOAD_ADDRESS	(RK3399_DRAM_BOTTOM + 1024*1024)
+#define RK3562_BAREBOX_LOAD_ADDRESS	(RK3562_DRAM_BOTTOM + 1024*1024)
 #define RK3568_BAREBOX_LOAD_ADDRESS	(RK3568_DRAM_BOTTOM + 1024*1024)
 #define RK3576_BAREBOX_LOAD_ADDRESS	(RK3576_DRAM_BOTTOM + 1024*1024)
 #define RK3588_BAREBOX_LOAD_ADDRESS	(RK3588_DRAM_BOTTOM + 1024*1024)
 
 #ifndef __ASSEMBLY__
 #ifdef CONFIG_ARCH_ROCKCHIP_ATF
+void rk3562_atf_load_bl31(void *fdt);
 void rk3568_atf_load_bl31(void *fdt);
 void rk3576_atf_load_bl31(void *fdt);
 void rk3588_atf_load_bl31(void *fdt);
 #else
+static inline void rk3562_atf_load_bl31(void *fdt) { }
 static inline void rk3568_atf_load_bl31(void *fdt) { }
 static inline void rk3576_atf_load_bl31(void *fdt) { }
 static inline void rk3588_atf_load_bl31(void *fdt) { }
 #endif
 #endif
 
+void __noreturn rk3562_barebox_entry(void *fdt);
 void __noreturn rk3568_barebox_entry(void *fdt);
 void __noreturn rk3576_barebox_entry(void *fdt);
 void __noreturn rk3588_barebox_entry(void *fdt);
diff --git a/include/mach/rockchip/debug_ll.h b/include/mach/rockchip/debug_ll.h
index a51c2cda0b..941d1505e5 100644
--- a/include/mach/rockchip/debug_ll.h
+++ b/include/mach/rockchip/debug_ll.h
@@ -7,6 +7,7 @@
 #include <io.h>
 #include <mach/rockchip/rk3188-regs.h>
 #include <mach/rockchip/rk3288-regs.h>
+#include <mach/rockchip/rk3562-regs.h>
 #include <mach/rockchip/rk3568-regs.h>
 #include <mach/rockchip/rk3576-regs.h>
 #include <mach/rockchip/rk3588-regs.h>
@@ -24,6 +25,11 @@
 #define RK_DEBUG_UART_CLOCK	24000000
 #define RK_DEBUG_SOC		RK3288
 
+#elif defined CONFIG_DEBUG_ROCKCHIP_RK3562_UART
+
+#define RK_DEBUG_UART_CLOCK	24000000
+#define RK_DEBUG_SOC		RK3562
+
 #elif defined CONFIG_DEBUG_ROCKCHIP_RK3568_UART
 
 #define RK_DEBUG_UART_CLOCK	24000000
diff --git a/include/mach/rockchip/dmc.h b/include/mach/rockchip/dmc.h
index a379ba3294..ddcf989a30 100644
--- a/include/mach/rockchip/dmc.h
+++ b/include/mach/rockchip/dmc.h
@@ -84,6 +84,7 @@ enum {
 #define SYS_REG_CS1_COL_MASK			3
 
 resource_size_t rk3399_ram0_size(void);
+resource_size_t rk3562_ram0_size(void);
 resource_size_t rk3568_ram0_size(void);
 resource_size_t rk3576_ram0_size(void);
 resource_size_t rk3588_ram0_size(void);
diff --git a/include/mach/rockchip/rk3562-regs.h b/include/mach/rockchip/rk3562-regs.h
new file mode 100644
index 0000000000..e0a06e6427
--- /dev/null
+++ b/include/mach/rockchip/rk3562-regs.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_RK3562_REGS_H
+#define __MACH_RK3562_REGS_H
+
+/* UART */
+#define RK3562_UART0_BASE	0xff210000
+#define RK3562_UART1_BASE	0xff670000
+#define RK3562_UART2_BASE	0xff680000
+#define RK3562_UART3_BASE	0xff690000
+#define RK3562_UART4_BASE	0xff6a0000
+#define RK3562_UART5_BASE	0xff6b0000
+#define RK3562_UART6_BASE	0xff6c0000
+#define RK3562_UART7_BASE	0xff6d0000
+#define RK3562_UART8_BASE	0xff6e0000
+#define RK3562_UART9_BASE	0xff6f0000
+
+#define RK3562_IRAM_BASE	0xfe480000
+#define RK3562_PMUGRF_BASE	0xff010000
+
+#endif /* __MACH_RK3562_REGS_H */
diff --git a/include/mach/rockchip/rockchip.h b/include/mach/rockchip/rockchip.h
index bb9597cb01..bf115b5576 100644
--- a/include/mach/rockchip/rockchip.h
+++ b/include/mach/rockchip/rockchip.h
@@ -23,6 +23,15 @@ static inline int rk3288_init(void)
 }
 #endif
 
+#ifdef CONFIG_ARCH_RK3562
+int rk3562_init(void);
+#else
+static inline int rk3562_init(void)
+{
+	return -ENOTSUPP;
+}
+#endif
+
 #ifdef CONFIG_ARCH_RK3568
 int rk3568_init(void);
 #define PMU_GRF		0xfdc20000
@@ -53,6 +62,7 @@ static inline int rk3588_init(void)
 }
 #endif
 
+void rk3562_lowlevel_init(void);
 void rk3568_lowlevel_init(void);
 void rk3576_lowlevel_init(void);
 void rk3588_lowlevel_init(void);

-- 
2.43.0



