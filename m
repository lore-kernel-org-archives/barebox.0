Delivery-date: Wed, 05 May 2021 12:11:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUj-0007bi-1e
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:11:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUh-0005JE-Mh
	for lore@pengutronix.de; Wed, 05 May 2021 12:11:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OK4lVKU4XhN/Oz/96+E+DPksxfBkk1+vCc9b/NM6svg=; b=GbgvYwlI7Mu26gJSaaLl9wPVs
	68vG9i5ZVRyjPsZfZTvnQZDJ7k+IGJqU4Xw54WrnfjIjQNPWIu7o4czYeioQLAotfFoPT/mF3fmkS
	Sw5xEtGxg6YAbboZIKQcZXzNPsDzljpnTR31zj3evH+8DfXe+sv1DoqbKCInwByTeIGdOUHDZyfxb
	KL3rXjZTtEKVK3sSJemkhUhnDhi0yQkUGxECtXJQu2y0tfLSmG6SlXGboY15yMtWu0BrXC5Q3yhEt
	GJIIsmUzt8+j6QudTd28RjAXH+gDuvNRWTvXM1YyG/84Low7R/TTJrfxrOC2X539yyIfXmVLEqXlf
	kbj3yYjVg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leETg-000qE1-CZ; Wed, 05 May 2021 10:10:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leETB-000q1w-Py
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=QGxaEppM4hMLZ2PYWzxJ8nlyUIoLMBo5hRrg/eirfFs=; b=qypzh4NFM8tevv0NxGWAJnUOSz
 SAzX5KvsdOLu6NPkLKTWwh+QooSHZhnAT0kxrhVcmNVBD3jJshGsLA9y1DJzJT8YPInWftAM7O1yk
 60ELcsCpm5hFsUHDGWxa1OzpE4/ArhuhF9pw2krRoNubgF0sueEkKMzCeyJVriR09ka076RBpwFGb
 ekNlLpK57xg9yHg7hnBRsyxvPYsJzCyciPhfGIxApYuNRwy3oUIw0N2L3YHQCVMPPg+RQw0mxZxQv
 ACQjm7WYBnx/9TCtR4RhdViNO0LjPSeYSDRsRz9iP/j1tzOUixaXUI4tZYYYxOfvj4IRRbUssHTx0
 4wU4/Lrw==;
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET9-004eQe-2j
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:28 +0000
Received: by mail-lj1-x236.google.com with SMTP id b21so1684309ljf.11
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QGxaEppM4hMLZ2PYWzxJ8nlyUIoLMBo5hRrg/eirfFs=;
 b=g7r3qnh7GKV60UJXhmAXCgXvBbt4F3mXvoD9aklc6Q0oTiZi4NT3ilxX5FyQciLMYG
 +8fhEy781gc64nVsziaOsWZ5ybsakBEewqIQ4vjgR1ZDRwBeUJblbVD7OfqOXgMWBBvM
 BqtyxOezOqRDfKgdqWT/VX8++ecJQNG3nDDPrwt7ECrsuT+jaK8fezwxccscbbx+gekg
 0yG63JbSrfegf2DNwJSLVEbxCfqNU+1zy2zjTySKnnPyMpHOM8r/58gLOibr1y4pXibx
 +jibLnF0338eRlgiUWmJYMFL7UxdusmFCVFM3IAePqcPA7uzrEIrAbdKZXFCVU4B6TV6
 CJ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QGxaEppM4hMLZ2PYWzxJ8nlyUIoLMBo5hRrg/eirfFs=;
 b=AeRHvs8rbLcMLY2PtN3q5ZAR3h99cQEdFBgUUej5fbRFj2gCDZSXtM90efAZG4vp9V
 jV62y421mI/rqYDMJkZNUI9nG1/GDPq3yM3nCibEdtCbkRyGcb8YsMoypDs136sMlyNy
 MidbfGzmFkPMMRcUfmYvK4J04bP9U55RSVccdE2FZ6kyZOvka8ESLOJTlEgpIPv6gKS8
 HO6s9rsfBeHv5VxCdf6oX7gVViGZg93KlCQTqB08RxO7yay0YIKmcTWbQu/UWXvoq/oz
 iPVgjTHkfB3x5KjtU6vgfMJeiMWpfUyTEWziHwR5GX4kF5ffFDx+cXosdOPeVkC8A35/
 8imw==
X-Gm-Message-State: AOAM530ClNm2x4bP8OlDJa+G15uNn1WakW5hXtGKWrdFk4tRkbRSZC0E
 AsEkjz36yMnlWWFKnQxVLWKTBzT6CVfwbg==
X-Google-Smtp-Source: ABdhPJwx1LArGnpR+TDAqvogiiEWTEXI9Gp8eDh+ebtEnUhuJSZOfPgjKdQp88/blBQrYj8uNoJOEw==
X-Received: by 2002:a05:651c:cb:: with SMTP id
 11mr20719404ljr.239.1620209364674; 
 Wed, 05 May 2021 03:09:24 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:08:59 +0300
Message-Id: <20210505100900.88141-9-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210505100900.88141-1-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030927_140421_AAC8F047 
X-CRM114-Status: GOOD (  14.70  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 8/9] RISC-V: add litex-linux board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tested on Digilent Arty FPGA board.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/boards/Makefile               |  1 +
 arch/riscv/boards/litex-linux/Makefile   |  3 +
 arch/riscv/boards/litex-linux/lowlevel.c | 20 +++++
 arch/riscv/dts/Makefile                  |  1 +
 arch/riscv/dts/litex-linux.dts           | 96 ++++++++++++++++++++++++
 arch/riscv/mach-litex/Kconfig            |  3 +
 images/Makefile.riscv                    |  4 +
 7 files changed, 128 insertions(+)

diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
index 2ce9af41e0..d477cce362 100644
--- a/arch/riscv/boards/Makefile
+++ b/arch/riscv/boards/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+= erizo/
+obj-$(CONFIG_BOARD_LITEX_LINUX)	+= litex-linux/
diff --git a/arch/riscv/boards/litex-linux/Makefile b/arch/riscv/boards/litex-linux/Makefile
new file mode 100644
index 0000000000..3d217ffe0b
--- /dev/null
+++ b/arch/riscv/boards/litex-linux/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+pbl-y += lowlevel.o
diff --git a/arch/riscv/boards/litex-linux/lowlevel.c b/arch/riscv/boards/litex-linux/lowlevel.c
new file mode 100644
index 0000000000..9ac1a3a42e
--- /dev/null
+++ b/arch/riscv/boards/litex-linux/lowlevel.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-riscv.h>
+#include <debug_ll.h>
+
+ENTRY_FUNCTION(start_litex_linux, a0, a1, a2)
+{
+	extern char __dtb_z_litex_linux_start[];
+	extern void __barebox_nmon_entry(void);
+
+	if (IS_ENABLED(CONFIG_NMON))
+		__barebox_nmon_entry();
+	putc_ll('>');
+
+	/* On POR, we are running from read-only memory here. */
+
+	barebox_riscv_entry(0x40000000, SZ_256M,
+			    __dtb_z_litex_linux_start + get_runtime_offset());
+}
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 4041c34e0c..dc5237b5bb 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -5,5 +5,6 @@
 obj- += dummy.o
 
 pbl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
+pbl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/riscv/dts/litex-linux.dts b/arch/riscv/dts/litex-linux.dts
new file mode 100644
index 0000000000..aa7e072305
--- /dev/null
+++ b/arch/riscv/dts/litex-linux.dts
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include "litex_soc_linux.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "LiteX VexRiscV-SoC-Linux";
+	compatible = "litex,vexriscv-soc-linux";
+
+	aliases {
+		rom = &rom;
+		sram = &sram;
+	};
+
+	/* ARTY board */
+	rom: rom@00000000 {
+		compatible = "mmio-sram";
+		reg = <0x00000000 0x00008000>;
+		read-only;
+	};
+
+	sram: sram@20000000 {
+		compatible = "mmio-sram";
+		reg = <0x20000000 0x00004000>;
+	};
+
+	main_ram: memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x10000000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&mac0 {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	spiflash: w25q128@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "winbond,w25q128", "jedec,spi-nor";
+		spi-max-frequency = <104000000>;
+		reg = <0>;
+	};
+};
+
+/ {
+	ledsgpio: gpio@f0005000 {
+		compatible = "ti,74175";
+		reg = <0xf0005000 0x4>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		ld0 {
+			label = "arty:green:ld0";
+			gpios = <&ledsgpio 0 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		ld1 {
+			label = "arty:green:ld1";
+			gpios = <&ledsgpio 1 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		ld2 {
+			label = "arty:green:ld2";
+			gpios = <&ledsgpio 2 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		ld3 {
+			label = "arty:green:ld3";
+			gpios = <&ledsgpio 3 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+
+	swgpio: gpio@f0007000 {
+		compatible = "ti,74125";
+		reg = <0xf0007000 0x4>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
diff --git a/arch/riscv/mach-litex/Kconfig b/arch/riscv/mach-litex/Kconfig
index 19d5927e44..3ff03b0e02 100644
--- a/arch/riscv/mach-litex/Kconfig
+++ b/arch/riscv/mach-litex/Kconfig
@@ -3,6 +3,9 @@ if MACH_LITEX
 choice
 	prompt "Board type"
 
+config BOARD_LITEX_LINUX
+	bool "litex linux board"
+
 endchoice
 
 endif
diff --git a/images/Makefile.riscv b/images/Makefile.riscv
index 463c6ce440..831858a54d 100644
--- a/images/Makefile.riscv
+++ b/images/Makefile.riscv
@@ -10,3 +10,7 @@ $(obj)/%.nmon: $(obj)/%.img FORCE
 pblb-$(CONFIG_BOARD_ERIZO_GENERIC) += start_erizo_generic
 FILE_barebox-erizo-generic.img = start_erizo_generic.pblb
 image-$(CONFIG_BOARD_ERIZO_GENERIC) += barebox-erizo-generic.img barebox-erizo-generic.nmon
+
+pblb-$(CONFIG_BOARD_LITEX_LINUX) += start_litex_linux
+FILE_barebox-litex-linux.img = start_litex_linux.pblb
+image-$(CONFIG_BOARD_LITEX_LINUX) += barebox-litex-linux.img
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

