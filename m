Delivery-date: Tue, 04 May 2021 11:28:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldrME-0004xj-J3
	for lore@lore.pengutronix.de; Tue, 04 May 2021 11:28:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldrMD-0001b1-LS
	for lore@pengutronix.de; Tue, 04 May 2021 11:28:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mbi0wM7wsXBBfwgQG5dWXoFLoK9CTndujCBWrWANomc=; b=oNKGAaVQO5UH+cinmchXTk30Qu
	f87B6y16C0i09LSDtzzoGJMk34TGmYrxxSH0FDmnCfEojBGNfk1eBqjjKkZ1rbp1nIBelkhDGgKnn
	jaNMbLXTqwjSyBMDVz5NF4MCXdn9KepbZKRLfVFm/nrzApKH0wUCC7pOLQC2SKse22u1E6OpeflaP
	bWGQhfEDQlgVmqGv4UQD7Hc1FipmDMkKUjXl8GgSHEveeOitIxCkScuVTuoNcNwLZV7F2sHNgp2Je
	//Pbo1NYoTFBvLB4V5sWuE8e8BVLFVDwPbfksfkUsiKOTZIT++dXSxeQdD7AcSHqLoGSOaj+frJta
	sF0UmX+g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldrL1-00Fst5-I4; Tue, 04 May 2021 09:27:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldrKw-00Fsso-Et
 for barebox@desiato.infradead.org; Tue, 04 May 2021 09:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Jpe6hg4Mqn0srt6HZjMnteyKIQAoWSNZPwSBjXSlvOo=; b=M3MisbHvjJdkov4VxSyxqw69k/
 MZz4/1dlM5sEqWZt0zyWtn6V9Sx/Y9Ukx/QVCy98jOh0h9xM/KZvw6wZQAZ/GrHCOT1rhsylVBDBv
 Sjbq0pXSxC0eyF0JZpM8cnS0otpLvYRcpTGVdngGG+/Jf05cP8yJdxX5HX7kKiDKhFcMsM2gQFi9r
 Jte03hfVMvKChkiTzlX1a+cJilDjWF6GeuiQNu3l94ANn2sWUa24mTrY0zbl+/e1AhVfHQw5t92Vm
 AJ94maQKiC+p218Yyb1bkFhI4HJOEyIoCJe+pith91Pnt2rc4kNTxC50ZFGxedmJlCrhCqDrvx+22
 qeOahfRw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldrKt-003rFf-N1
 for barebox@lists.infradead.org; Tue, 04 May 2021 09:27:25 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1ldrKq-0001WI-8J; Tue, 04 May 2021 11:27:20 +0200
Received: from has by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1ldrKp-0007Jl-Ub; Tue, 04 May 2021 11:27:19 +0200
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>
Date: Tue,  4 May 2021 11:26:54 +0200
Message-Id: <20210504092654.5219-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_022723_771450_576A76CC 
X-CRM114-Status: GOOD (  13.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add variant for 512MB RAM. RAM size is appended to the image name.

Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
---
 ...sh-header-imx6ul-webasto-ccbv2-256.imxcfg} |  0
 ...ash-header-imx6ul-webasto-ccbv2-512.imxcfg | 88 +++++++++++++++++++
 arch/arm/boards/webasto-ccbv2/lowlevel.c      | 22 ++++-
 images/Makefile.imx                           |  4 +-
 4 files changed, 109 insertions(+), 5 deletions(-)
 rename arch/arm/boards/webasto-ccbv2/{flash-header-imx6ul-webasto-ccbv2.imxcfg => flash-header-imx6ul-webasto-ccbv2-256.imxcfg} (100%)
 create mode 100644 arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg

diff --git a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2.imxcfg b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256.imxcfg
similarity index 100%
rename from arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2.imxcfg
rename to arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256.imxcfg
diff --git a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg
new file mode 100644
index 0000000000..d438a665f1
--- /dev/null
+++ b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg
@@ -0,0 +1,88 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+loadaddr 0x80000000
+soc imx6
+ivtofs 0x400
+
+/* Enable all clocks */
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+
+/* IOMUX */
+/* DDR IO type */
+wm 32 0x020E04B4 0x000C0000
+wm 32 0x020E04AC 0x00000000
+/* Clock */
+wm 32 0x020E027C 0x00000028
+/* Control */
+wm 32 0x020E0250 0x00000028
+wm 32 0x020E024C 0x00000028
+wm 32 0x020E0490 0x00000028
+wm 32 0x020E0288 0x00000028
+wm 32 0x020E0270 0x00000000
+wm 32 0x020E0260 0x00000028
+wm 32 0x020E0264 0x00000028
+wm 32 0x020E04A0 0x00000028
+/* Data strobe */
+wm 32 0x020E0494 0x00020000
+wm 32 0x020E0280 0x00000028
+wm 32 0x020E0284 0x00000028
+/* Data */
+wm 32 0x020E04B0 0x00020000
+wm 32 0x020E0498 0x00000028
+wm 32 0x020E04A4 0x00000028
+wm 32 0x020E0244 0x00000028
+wm 32 0x020E0248 0x00000028
+
+/* DDR Controller registers */
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B0800 0xA1390003
+/* Calibration values */
+wm 32 0x021B080C 0x00090000
+wm 32 0x021B083C 0x01580158
+wm 32 0x021B0848 0x40405050
+wm 32 0x021B0850 0x4040524C
+wm 32 0x021B081C 0x33333333
+wm 32 0x021B0820 0x33333333
+wm 32 0x021B082C 0xf3333333
+wm 32 0x021B0830 0xf3333333
+/* END of calibration values */
+wm 32 0x021B08C0 0x00921012
+wm 32 0x021B08b8 0x00000800
+
+/* MMDC init */
+wm 32 0x021B0004 0x0002002D
+wm 32 0x021B0008 0x1b333030
+wm 32 0x021B000C 0x676B52F3
+wm 32 0x021B0010 0xB66D0B63
+wm 32 0x021B0014 0x01FF00DB
+/* Consider reducing RALAT (currently set to 5) */
+wm 32 0x021B0018 0x00211740
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B002C 0x000026D2
+wm 32 0x021B0030 0x006B1023
+wm 32 0x021B0040 0x0000004F
+wm 32 0x021B0000 0x84180000
+
+/* Mode registers writes for CS0 */
+wm 32 0x021B001C 0x02008032
+wm 32 0x021B001C 0x00008033
+wm 32 0x021B001C 0x00048031
+wm 32 0x021B001C 0x15208030
+wm 32 0x021B001C 0x04008040
+
+/* Final DDR setup */
+wm 32 0x021B0020 0x00007800
+wm 32 0x021B0818 0x00000227
+wm 32 0x021B0004 0x0002556D
+wm 32 0x021B0404 0x00011006
+wm 32 0x021B001C 0x00000000
+
+/* Disable TZASC bypass */
+wm 32 0x020E4024 0x00000001
+
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index 8529ea3735..d3c9fa73f9 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -32,7 +32,7 @@ static void configure_uart(void)
 
 }
 
-static void noinline start_ccbv2(u32 r0)
+static void noinline start_ccbv2(u32 r0, unsigned long memsize)
 {
 	int tee_size;
 	void *tee;
@@ -48,7 +48,7 @@ static void noinline start_ccbv2(u32 r0)
 	 */
 	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
 	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
-	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
+	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + memsize)) {
 		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
 
 		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
@@ -59,7 +59,7 @@ static void noinline start_ccbv2(u32 r0)
 	imx6ul_barebox_entry(__dtb_z_imx6ul_webasto_ccbv2_start);
 }
 
-ENTRY_FUNCTION(start_imx6ul_ccbv2, r0, r1, r2)
+ENTRY_FUNCTION(start_imx6ul_ccbv2_256mb, r0, r1, r2)
 {
 
 	imx6ul_cpu_lowlevel_init();
@@ -70,5 +70,19 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0);
+	start_ccbv2(r0, SZ_256M);
+}
+
+ENTRY_FUNCTION(start_imx6ul_ccbv2_512mb, r0, r1, r2)
+{
+
+	imx6ul_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00910000);
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	start_ccbv2(r0, SZ_512M);
 }
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 382493488b..b86224edc1 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -366,7 +366,9 @@ $(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico
 
 $(call build_imx_habv4img, CONFIG_MACH_DIGI_CCIMX6ULSBCPRO, start_imx6ul_ccimx6ulsbcpro, digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro, imx6ul-ccimx6ulsbcpro)
 
-$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2, imx6ul-webasto-ccbv2)
+$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2_256mb, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256, imx6ul-webasto-ccbv2-256m)
+
+$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2_512mb, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512, imx6ul-webasto-ccbv2-512m)
 
 # ----------------------- vf6xx based boards ---------------------------
 pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

