Delivery-date: Fri, 22 May 2026 13:00:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNbs-002ZsH-0g
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 13:00:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNbq-0002HG-O5
	for lore@pengutronix.de; Fri, 22 May 2026 13:00:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G7XinYEm900fSMKF6VSeCdivZH6/h2AfbIs2IhEMVR8=; b=bnpp3kZtz3twHEnPYziEpRgFq/
	gkJq2Rf5udJ9SbLz/938hAFjQ3EMa3h5+nQqJYYGbWYhPQssPTOwiQBuB6mZmndCs2MzHja/+lSSj
	F8h8qn7frWIQoHtSWluXq/+M8eS9aI1A5vhhDcofeprRKqRW7de8NiQRBGndQVMsMIvMNj9yKE6nY
	G2Ek3YhbkCuoWziHepDsgemzD8HnygiwuNnlX8LbReSVu1hvOGkgiOcZW8xWV3yAW3R4zbmtUE9T1
	6PWwWMjp6LxNi0zIY9mOJF2935ntjbausrLjBF/zEmJWgTek7gei2BsDWt3ag40YhwbeYT/NuTyZK
	zsjNdtCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNan-0000000AZSp-09Pp;
	Fri, 22 May 2026 10:59:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNah-0000000AZOz-2sUk
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 10:58:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0001uS-5M; Fri, 22 May 2026 12:58:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-001FnC-1k;
	Fri, 22 May 2026 12:58:54 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0000000BFtq-03JU;
	Fri, 22 May 2026 12:58:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 12:53:10 +0200
Message-ID: <20260522105852.2681680-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
References: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_035856_029191_12CFB9C1 
X-CRM114-Status: UNSURE (   8.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 4/6] ARM: switch to CONFIG_MALLOC_OFFSET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for using the barebox proper malloc area in PBL too,
switch over to CONFIG_MALLOC_OFFSET as this allows calculating the
malloc area start without needing to know the eventual size of
barebox proper itself.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                                   |  2 +-
 arch/arm/configs/animeo_ip_defconfig               |  2 +-
 arch/arm/configs/at91rm9200ek_defconfig            |  2 +-
 arch/arm/configs/at91sam9260ek_defconfig           |  2 +-
 arch/arm/configs/at91sam9261ek_bootstrap_defconfig |  2 +-
 arch/arm/configs/at91sam9261ek_defconfig           |  2 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |  2 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |  2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |  2 +-
 arch/arm/configs/at91sam9m10ihd_defconfig          |  2 +-
 arch/arm/configs/at91sam9n12ek_defconfig           |  2 +-
 arch/arm/configs/clps711x_defconfig                |  2 +-
 arch/arm/configs/dss11_defconfig                   |  2 +-
 arch/arm/configs/haba_knx_lite_defconfig           |  2 +-
 arch/arm/configs/pm9261_defconfig                  |  2 +-
 arch/arm/configs/pm9263_defconfig                  |  2 +-
 arch/arm/configs/pm9g45_defconfig                  |  2 +-
 arch/arm/configs/qil_a9260_defconfig               |  2 +-
 arch/arm/configs/qil_a9g20_defconfig               |  2 +-
 arch/arm/configs/telit_evk_pro3_defconfig          |  2 +-
 arch/arm/configs/tny_a9260_defconfig               |  2 +-
 arch/arm/configs/tny_a9263_bootstrap_defconfig     |  2 +-
 arch/arm/configs/tny_a9263_defconfig               |  2 +-
 arch/arm/configs/tny_a9g20_defconfig               |  2 +-
 arch/arm/configs/usb_a9260_defconfig               |  2 +-
 arch/arm/configs/usb_a9263_bootstrap_defconfig     |  2 +-
 arch/arm/configs/usb_a9263_defconfig               |  2 +-
 arch/arm/configs/usb_a9g20_defconfig               |  2 +-
 arch/arm/configs/zynq_defconfig                    |  2 +-
 arch/arm/cpu/start.c                               | 14 +-------------
 30 files changed, 30 insertions(+), 42 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 53bddd55e179..593d7af135de 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -20,7 +20,7 @@ config ARM
 	select ARCH_HAS_DMA_WRITE_COMBINE
 	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
 	select PBL_IMAGE_ELF
-	select ARCH_HAS_MALLOC_SIZE
+	select ARCH_HAS_MALLOC_OFFSET
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 869e3912500f..b2942931d06e 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -8,7 +8,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="Animeo-IP:"
 CONFIG_BAUDRATE=38400
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 03e98458a149..8cfdf47408bf 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -6,7 +6,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="9200-EK:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 1b05225d9713..d04af99da0ed 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -8,7 +8,7 @@ CONFIG_NAME="at91sam9260ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="9260-EK:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
index 118021678a13..a61a35aa75e6 100644
--- a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
+++ b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
@@ -8,7 +8,7 @@ CONFIG_NAME="at91sam9261ek_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_MALLOC_DUMMY=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="9261-EK:"
 CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 560e4ae49e17..417665ef9680 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -8,7 +8,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="9261-EK:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index a347f8704ae5..9b99e1da5a10 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -8,7 +8,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="9G10-EK:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index c333cecfb482..fac5270d04c3 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -8,7 +8,7 @@ CONFIG_NAME="at91sam9g20ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="9G20-EK:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 3163602331f3..15bebbccc2c1 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -7,7 +7,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="at91sam9m10g45ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MALLOC_SIZE=0x800000
+CONFIG_MALLOC_OFFSET=0xa00000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10G45-EK:"
 CONFIG_PROMPT_HUSH_PS2=">"
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index 02516ee96000..94e8b9532c3f 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -6,7 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="at91sam9m10ihd_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MALLOC_SIZE=0xa00000
+CONFIG_MALLOC_OFFSET=0xc00000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10IHD:"
 CONFIG_PROMPT_HUSH_PS2=">"
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 75e0bfb35458..c1755b3fbfdf 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -8,7 +8,7 @@ CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_NAME="at91sam9n12ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MALLOC_SIZE=0xa00000
+CONFIG_MALLOC_OFFSET=0xc00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9G20-EK:"
diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
index bfebf1cea65e..26b9485e5d22 100644
--- a/arch/arm/configs/clps711x_defconfig
+++ b/arch/arm/configs/clps711x_defconfig
@@ -6,7 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="clps711x_defconfig"
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_BAUDRATE=57600
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index 6cef088e2422..2b95706d568f 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -4,7 +4,7 @@ CONFIG_MACH_DSS11=y
 CONFIG_NAME="dss11_defconfig"
 CONFIG_BOOT_ATAGS=y
 CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index e3f99d593278..b47a29beee0d 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -10,7 +10,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="HABA-KNX-LITE:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index d7c0e84298b2..b078a368886f 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -4,7 +4,7 @@ CONFIG_MACH_PM9261=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="pm9261_defconfig"
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="PM9261:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index 03365e84959c..7721510140af 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -3,7 +3,7 @@ CONFIG_ARCH_AT91SAM9263=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="pm9263_defconfig"
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 30ac5da05f01..78f1e14b7b0a 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -8,7 +8,7 @@ CONFIG_NAME="pm9g45_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_GLOB_SORT=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 0f2dfe247155..4faaed381762 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -8,7 +8,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="qil_a9260_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 32cbbad26ce4..281dddcfdbca 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -8,7 +8,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="qil_a9g20_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index f5b7c488370c..8ad63a6ee753 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -8,7 +8,7 @@ CONFIG_NAME="telit_evk_pro3_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="EVK-PRO3:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index 6335871c2cda..c3a578a1696f 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -10,7 +10,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="TNY-9260:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/tny_a9263_bootstrap_defconfig b/arch/arm/configs/tny_a9263_bootstrap_defconfig
index 08d289927fc1..a7fb2c8828fa 100644
--- a/arch/arm/configs/tny_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/tny_a9263_bootstrap_defconfig
@@ -9,7 +9,7 @@ CONFIG_NAME="tny_a9263_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_MALLOC_DUMMY=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
 CONFIG_CONSOLE_SIMPLE=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index a4ab927ce2a3..3d7daee61f95 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -10,7 +10,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="TNY-9263:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index c470cb9ec946..a123aa0b11b3 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -10,7 +10,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="TNY-9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 85f76f44ab48..9fed08b9b944 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -9,7 +9,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
index 2b204e0ee4ff..e4cdf4df1fa7 100644
--- a/arch/arm/configs/usb_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
@@ -10,7 +10,7 @@ CONFIG_NAME="usb_a9263_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_MALLOC_DUMMY=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 287d590d066a..f671c82a0de7 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -9,7 +9,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_OFFSET=0x600000
 CONFIG_PROMPT="USB-9263:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index bea0e00455d6..17d2b9bd043b 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -7,7 +7,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="usb_a9g20_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MALLOC_SIZE=0x800000
+CONFIG_MALLOC_OFFSET=0xa00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_RELOCATABLE=y
diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index 76c73639d6a0..222b031b634a 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -7,7 +7,7 @@ CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_NAME="zynq_defconfig"
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0xf000
-CONFIG_MALLOC_SIZE=0x8000000
+CONFIG_MALLOC_OFFSET=0x8200000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index bbcf465be4db..3b8411b01d63 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -156,19 +156,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 		armv7r_mpu_init_coherent(malloc_end, REGION_8MB);
 	}
 
-	/*
-	 * Maximum malloc space is the Kconfig value if given
-	 * or 1GB.
-	 */
-	if (MALLOC_SIZE > 0) {
-		malloc_start = malloc_end - MALLOC_SIZE;
-		if (malloc_start < membase)
-			malloc_start = membase;
-	} else {
-		malloc_start = malloc_end - (malloc_end - membase) / 2;
-		if (malloc_end - malloc_start > SZ_1G)
-			malloc_start = malloc_end - SZ_1G;
-	}
+	malloc_start = barebox_malloc_base(membase, memsize);
 
 	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
 			malloc_start, malloc_end - malloc_start);
-- 
2.47.3



