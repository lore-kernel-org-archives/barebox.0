Delivery-date: Mon, 17 May 2021 18:04:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lifjW-0004IL-Hl
	for lore@lore.pengutronix.de; Mon, 17 May 2021 18:04:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lifjV-0000Tg-G1
	for lore@pengutronix.de; Mon, 17 May 2021 18:04:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qlcLWGu+IEuQ6l9DexEuxBs6NYt5bvo06oyuztx3NkY=; b=boArqC/QpHxl4zvldyBQIqiklE
	v6zXAtCUTfMwobbUupkx591er0r8IeWYpaqKLfbsq6MyQrf4A9NeZ7CQ3NtKnPN7z8+hOBoYQQNOW
	Pd1JhVUzAUTmdG6huB++nak2ZEI3H387JGPxHTGW7Z/6h3/5xWNRPNYNu/HKoPVWT87yFynMQuuOd
	2e5085cZopmmiuUBcGJ+hRa2yyKGHICidV928MC1YI0eg/5Ip2lvdU9Fs/scU0yOivxdBFSjjvICH
	LZjSMuNlC7WPpFu+rXOFB/PKo682Q2vPiHG0/Tt6GfefzyTkANa3FKR3F8gtDM6tl2nfd1W9X6/lt
	eNBQou+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lifiG-00FVcd-P6; Mon, 17 May 2021 16:03:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifiB-00FVcP-5D
 for barebox@desiato.infradead.org; Mon, 17 May 2021 16:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=1Q/78mjb/sdFYoY0qh+tDki3S5IYFn8ohNeWVmRti+o=; b=0TVChYYn+NHWiaDOI8dOhMPFn+
 MUr4EZ9AMOjbmUjpf79zoIx0q0swHUCQpe64N2p6eBmnwDt53aJ7CbwSj+T7kzxGxrI9mSGjzRkf3
 Qy9tDCw3tDXq3GAK8vvc440GcGEwnkb+QmXPCK2T9350pNPFaICEm/Xf2koUIWoCrQepza2D52Ljm
 rUKQUSenTVKvhT3/rYdRrfZa34vMydEP3diopozrelxY77IvjM/GXqagh8vy2gx5WZODCUCf+DSo9
 X61NGXjk8pe666refqfFFSreLAXFXnYdd4UeXOtbJ7QB9Si2TSopFWZ3gDvSdXvKOmUvhVLgn25d4
 BaywSkCg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifi8-00DxVU-8z
 for barebox@lists.infradead.org; Mon, 17 May 2021 16:03:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1lifi3-0000OW-EI; Mon, 17 May 2021 18:03:11 +0200
Received: from has by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1lifi2-0006P0-7T; Mon, 17 May 2021 18:03:10 +0200
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>
Date: Mon, 17 May 2021 18:03:08 +0200
Message-Id: <20210517160308.24069-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_090316_339637_00B1B287 
X-CRM114-Status: GOOD (  12.87  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add variant for 512MB RAM board.

v1 -> v2:

 by Rouven Czerwinski <r.czerwinski@pengutronix.de>:
  - just ship one single firmware version, depending on the underlying
    board variant

 by Ahmad Fatoum <a.fatoum@pengutronix.de>:
  - account for the 512MB variant by hard-coding memsize == SZ_512

Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
---
 ...sh-header-imx6ul-webasto-ccbv2-256.imxcfg} |  0
 ...ash-header-imx6ul-webasto-ccbv2-512.imxcfg | 88 +++++++++++++++++++
 arch/arm/boards/webasto-ccbv2/lowlevel.c      |  2 +-
 3 files changed, 89 insertions(+), 1 deletion(-)
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
index 8529ea3735..5b6115bed5 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -48,7 +48,7 @@ static void noinline start_ccbv2(u32 r0)
 	 */
 	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
 	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
-	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
+	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_512M)) {
 		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
 
 		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

