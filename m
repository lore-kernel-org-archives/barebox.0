Delivery-date: Fri, 22 May 2026 12:59:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNb7-002Zqy-2t
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 12:59:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNb6-00026E-H4
	for lore@pengutronix.de; Fri, 22 May 2026 12:59:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kwpZIhZ6G393RVCYKJoanKWNCX2CHoCGI0pODZ/c3X4=; b=h7VIGll3HIEKjxNFyWjl1/EReN
	p9wUCkBDCuAINCQnJNpsF9G+/pIgWrRgNowQ3Dzsu89t+FcFHUSGIVTZZBIqJv39uRMdxolY7/DM6
	vW0CCFOY3c9mtrmRF8qMyGkFm2E1Wog982s7U14xYa3pwd93r6Gl0PDqvHfnCur8cdRfMORQPpDLe
	ghT6YpFj9dS4ckjnqxwQ9y9vPzLs/RJPLD9RmAZ4lfPtwV5lI67GMBeVFKiE6RjuGWVNp3beGkNb9
	CGxZZv2NKjY3hDqYVjOXHIgBcGkbaj7TzPC4DL5vVN4gtCeqVhXR0hlpHCltsbChIeKo+FVrLs11l
	Lg31RLdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNam-0000000AZSN-3JOl;
	Fri, 22 May 2026 10:59:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNah-0000000AZOw-2sUi
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 10:58:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0001u2-2G; Fri, 22 May 2026 12:58:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-001Fn4-1S;
	Fri, 22 May 2026 12:58:54 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-0000000BFtq-3sOW;
	Fri, 22 May 2026 12:58:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 12:53:08 +0200
Message-ID: <20260522105852.2681680-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
References: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_035856_032074_CC5BD871 
X-CRM114-Status: UNSURE (   9.72  )
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
Subject: [PATCH master 2/6] ARM: explicitly state CONFIG_MALLOC_SIZE in defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_MALLOC_SIZE is by default 4M, which works out for some older
boards (AT91 mostly), but is not a useful default nowadays, where we
have moved to make the CONFIG_MALLOC_SIZE=0x0 in most configs.

In preparation for switching to a new CONFIG_MALLOC_OFFSET, which makes
the malloc area dynamic by default, add CONFIG_MALLOC_OFFSET to all
configs that miss it, so we can migrate them in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/animeo_ip_defconfig               | 1 +
 arch/arm/configs/at91rm9200ek_defconfig            | 1 +
 arch/arm/configs/at91sam9260ek_defconfig           | 1 +
 arch/arm/configs/at91sam9261ek_bootstrap_defconfig | 1 +
 arch/arm/configs/at91sam9261ek_defconfig           | 1 +
 arch/arm/configs/at91sam9g10ek_defconfig           | 1 +
 arch/arm/configs/at91sam9g20ek_defconfig           | 1 +
 arch/arm/configs/clps711x_defconfig                | 1 +
 arch/arm/configs/dss11_defconfig                   | 1 +
 arch/arm/configs/haba_knx_lite_defconfig           | 1 +
 arch/arm/configs/pm9261_defconfig                  | 1 +
 arch/arm/configs/pm9263_defconfig                  | 1 +
 arch/arm/configs/pm9g45_defconfig                  | 1 +
 arch/arm/configs/qil_a9260_defconfig               | 1 +
 arch/arm/configs/qil_a9g20_defconfig               | 1 +
 arch/arm/configs/telit_evk_pro3_defconfig          | 1 +
 arch/arm/configs/tny_a9260_defconfig               | 1 +
 arch/arm/configs/tny_a9263_bootstrap_defconfig     | 1 +
 arch/arm/configs/tny_a9263_defconfig               | 1 +
 arch/arm/configs/tny_a9g20_defconfig               | 1 +
 arch/arm/configs/usb_a9260_defconfig               | 1 +
 arch/arm/configs/usb_a9263_bootstrap_defconfig     | 1 +
 arch/arm/configs/usb_a9263_defconfig               | 1 +
 23 files changed, 23 insertions(+)

diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index ed3540c20d5b..869e3912500f 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -8,6 +8,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="Animeo-IP:"
 CONFIG_BAUDRATE=38400
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 8d7f38fe9111..03e98458a149 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -6,6 +6,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="9200-EK:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index ad9d73d518fc..1b05225d9713 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -8,6 +8,7 @@ CONFIG_NAME="at91sam9260ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="9260-EK:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
index bf6fe8075c71..118021678a13 100644
--- a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
+++ b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
@@ -8,6 +8,7 @@ CONFIG_NAME="at91sam9261ek_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_MALLOC_DUMMY=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="9261-EK:"
 CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 66542e943003..560e4ae49e17 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -8,6 +8,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="9261-EK:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 6f66545885ca..a347f8704ae5 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -8,6 +8,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="9G10-EK:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 811326459bcd..c333cecfb482 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -8,6 +8,7 @@ CONFIG_NAME="at91sam9g20ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="9G20-EK:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
index 0fa34b5fc5d4..bfebf1cea65e 100644
--- a/arch/arm/configs/clps711x_defconfig
+++ b/arch/arm/configs/clps711x_defconfig
@@ -6,6 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="clps711x_defconfig"
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_BAUDRATE=57600
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index c06a73414a67..6cef088e2422 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_DSS11=y
 CONFIG_NAME="dss11_defconfig"
 CONFIG_BOOT_ATAGS=y
 CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index 5d03c1ee6f33..e3f99d593278 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -10,6 +10,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="HABA-KNX-LITE:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index eb86463f8288..d7c0e84298b2 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_PM9261=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="pm9261_defconfig"
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="PM9261:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index 776ef3d245fa..03365e84959c 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9263=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="pm9263_defconfig"
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index f7cdb8f1f693..30ac5da05f01 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -8,6 +8,7 @@ CONFIG_NAME="pm9g45_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_GLOB_SORT=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index e58b168c4b35..0f2dfe247155 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -8,6 +8,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="qil_a9260_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index de8d21442446..32cbbad26ce4 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -8,6 +8,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="qil_a9g20_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index 07868c47ffa1..f5b7c488370c 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -8,6 +8,7 @@ CONFIG_NAME="telit_evk_pro3_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="EVK-PRO3:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index adf200f256af..6335871c2cda 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -10,6 +10,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="TNY-9260:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/tny_a9263_bootstrap_defconfig b/arch/arm/configs/tny_a9263_bootstrap_defconfig
index 9c5f656ffa41..08d289927fc1 100644
--- a/arch/arm/configs/tny_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/tny_a9263_bootstrap_defconfig
@@ -9,6 +9,7 @@ CONFIG_NAME="tny_a9263_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_MALLOC_DUMMY=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
 CONFIG_CONSOLE_SIMPLE=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index 218f128f67b0..a4ab927ce2a3 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -10,6 +10,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="TNY-9263:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index 0549b54731da..c470cb9ec946 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -10,6 +10,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="TNY-9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index c797b080554b..85f76f44ab48 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -9,6 +9,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
index 007c7261d201..2b204e0ee4ff 100644
--- a/arch/arm/configs/usb_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
@@ -10,6 +10,7 @@ CONFIG_NAME="usb_a9263_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_MALLOC_DUMMY=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 1c228c61932d..287d590d066a 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -9,6 +9,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_PROMPT="USB-9263:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
-- 
2.47.3



