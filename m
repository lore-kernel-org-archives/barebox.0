Delivery-date: Wed, 06 Nov 2024 20:03:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJA-005dZw-1o
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 20:03:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJA-0001xl-OP
	for lore@pengutronix.de; Wed, 06 Nov 2024 20:03:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eqGdM9IBeii4fG/tUxheUOn0nagiLHnlQa+CzDZuBsw=; b=VHnZuX3lGRAfQW8kJ1X2/qUanM
	xTon6HFvZcdeRdn9GfDoMnJwYt1iOD2KXRRmqCYd1xm7S9WwZXf2qqEmt28XeMy8VT21McRz6hc1j
	hIrpJn8tM3LVJdTODT7ptaOuegsuK706Odsr9B2hsAAXEF9Gs3TI/3WMv/aC6SjX5bQqVdnb6o7vJ
	GaBnUzU+XEPnrFLhNr6YoC3KvHmGWcLCHBnnGLmb37oocmInDc0X3LhOJkt6QI8GiNQtX5fACNZNH
	EoawB5vRrZdlnmoNIVoEaGttPQhTo2khngGpKtQ6Lwxg/VXIUe/UJ+/QpayrMVapqqBF8JjnxqnCL
	WupTz3mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lIe-00000004R4h-0Hvv;
	Wed, 06 Nov 2024 19:02:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lDc-00000004Puw-1sfr
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 18:57:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-0000Va-1g; Wed, 06 Nov 2024 19:57:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-002LMe-2i;
	Wed, 06 Nov 2024 19:57:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-0005bP-2P;
	Wed, 06 Nov 2024 19:57:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2024 19:57:19 +0100
Message-Id: <20241106185724.2526-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241106185724.2526-1-a.fatoum@pengutronix.de>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_105728_588990_A7C4BA24 
X-CRM114-Status: GOOD (  15.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] firmware: rockchip: rename from rk3xxx-op-tee.bin to rk3xxx-bl32.bin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Judging by the addresses used for locating OP-TEE, the OP-TEE support in
barebox could never have worked. This is also Sascha's recollection.

Follow-up patches will fix this, but lets set the stage by cleaning
up first and the future OP-TEE support for Rockchip:

  - Have a single single option for OP-TEE support instead of one per SoC
  - Rename the binaries to end in -bl32.bin, like they do on i.MX

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/rockchip.rst |  2 +-
 arch/arm/mach-rockchip/Kconfig    | 14 ++++----------
 arch/arm/mach-rockchip/atf.c      |  8 ++++----
 firmware/Makefile                 | 11 ++++++++---
 4 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index aa2febc8ebe8..2d2e0572dd8f 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -76,7 +76,7 @@ The build process needs three binary files which have to be copied from the
 .. code-block:: sh
 
   cp $RKBIN/bin/rk35/rk3568_bl31_v1.34.elf firmware/rk3568-bl31.bin
-  cp $RKBIN/bin/rk35/rk3568_bl32_v2.08.bin firmware/rk3568-op-tee.bin
+  cp $RKBIN/bin/rk35/rk3568_bl32_v2.08.bin firmware/rk3568-bl32.bin
   cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.13.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
 
 With these barebox can be compiled as:
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ddaab7c28414..4069ad4ca138 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -135,18 +135,12 @@ config ARCH_ROCKCHIP_ATF
 	  useful for debugging early startup, but for all other cases,
 	  say y here.
 
-config ARCH_RK3399_OPTEE
-	bool "Build rk3399 OP-TEE binary into barebox"
+config ARCH_ROCKCHIP_OPTEE
+	bool "Build rockchip OP-TEE binary into barebox"
 	depends on ARCH_ROCKCHIP_ATF && ARCH_RK3399
+	select PBL_OPTEE
 	help
-	  With this option enabled the RK3399 OP-TEE binary is compiled
-	  into barebox and started along with the BL31 trusted firmware.
-
-config ARCH_RK3568_OPTEE
-	bool "Build rk3568 OP-TEE binary into barebox"
-	depends on ARCH_ROCKCHIP_ATF && ARCH_RK3568
-	help
-	  With this option enabled the RK3568 OP-TEE binary is compiled
+	  With this option enabled the OP-TEE binary is compiled
 	  into barebox and started along with the BL31 trusted firmware.
 
 endmenu
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index eaba209ff32d..1e1861191c99 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -49,7 +49,7 @@ static unsigned long load_elf64_image_phdr(const void *elf)
 										\
 	bl31 = load_elf64_image_phdr(bl31_elf);                                 \
 										\
-	if (IS_ENABLED(CONFIG_ARCH_##SOC##_OPTEE)) {                            \
+	if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE)) {                           \
 		optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;                  \
 										\
 		get_builtin_firmware(tee_bin, &optee, &optee_size);             \
@@ -68,12 +68,12 @@ static unsigned long load_elf64_image_phdr(const void *elf)
 
 void rk3399_atf_load_bl31(void *fdt)
 {
-	rockchip_atf_load_bl31(RK3399, rk3399_bl31_bin, rk3399_op_tee_bin, fdt);
+	rockchip_atf_load_bl31(RK3399, rk3399_bl31_bin, rk3399_bl32_bin, fdt);
 }
 
 void rk3568_atf_load_bl31(void *fdt)
 {
-	rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin, rk3568_op_tee_bin, fdt);
+	rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin, rk3568_bl32_bin, fdt);
 }
 
 void __noreturn rk3568_barebox_entry(void *fdt)
@@ -107,7 +107,7 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 
 void rk3588_atf_load_bl31(void *fdt)
 {
-	rockchip_atf_load_bl31(RK3588, rk3588_bl31_bin, rk3588_op_tee_bin, fdt);
+	rockchip_atf_load_bl31(RK3588, rk3588_bl31_bin, rk3588_bl32_bin, fdt);
 }
 
 void __noreturn rk3588_barebox_entry(void *fdt)
diff --git a/firmware/Makefile b/firmware/Makefile
index fd63de1c559d..2f47e04bee41 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -24,11 +24,16 @@ fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE) += imx93-bl32.bin \
 					      mx93a0-ahab-container.img \
 					      mx93a1-ahab-container.img
 pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
-pbl-firmware-$(CONFIG_ARCH_RK3568_OPTEE) += rk3568-op-tee.bin
 pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
-pbl-firmware-$(CONFIG_ARCH_RK3588_OPTEE) += rk3588-op-tee.bin
 pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
-pbl-firmware-$(CONFIG_ARCH_RK3399_OPTEE) += rk3399-op-tee.bin
+ifeq ($(CONFIG_ARCH_ROCKCHIP_OPTEE),y)
+# We install BL31 & BL32 while already running in DRAM,
+# so fw-external is not needed
+pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl32.bin
+pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl32.bin
+pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl32.bin
+endif
+
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
 
 fw-external-$(CONFIG_FIRMWARE_LS1028A_ATF) += ls1028a-bl31.bin
-- 
2.39.5



