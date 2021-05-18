Delivery-date: Tue, 18 May 2021 12:59:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lixRW-000450-7I
	for lore@lore.pengutronix.de; Tue, 18 May 2021 12:59:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lixRV-0003Ew-0Y
	for lore@pengutronix.de; Tue, 18 May 2021 12:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Owp6EYoUm42cYFF7pDFyhFso0s9mlJ9gf/qMyHVBGaQ=; b=Ot6mTFkCkz4W9j0sAOKfeLZTek
	nmRrcDsDxc9l62W+dT1gug5A6+qWpwVv+2w5+REsxAWv9MN/1qtjgmcQivaNaq4s/HnXN6ZekCMAc
	05RY8kNUDnSAaPxdfKme1ZPtXHjIOaX+d2pH14oMcOY3X1CjO6x2163PzfFMfDiowjCQTgJVzhpOy
	HFMrnui8zVZdWULNrMmDYyjA+wd6OBDB9thTjeRKVuIzOkM5q14tYo8qthkHS3ccZj4q07F+RcHwR
	0zKfgXJygOHH4H/FIewIF45BKxbzeNp92kTmeER9kC2rPrLpXiOi9w/JygXCGjX4QG/9KUlIc2gYL
	7ercpTiw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lixQP-000TDQ-PR; Tue, 18 May 2021 10:58:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lixQL-000TD8-Rc
 for barebox@desiato.infradead.org; Tue, 18 May 2021 10:58:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=HS41jVQU3me8/i67RvrU8TPqAJblWtJ5gGTMDNcmzuQ=; b=IJQxnGuA0ZoJss+yfvgVRjdF43
 J3ksJW1cVGeOF7HH1dbRRY9LcbG1MQ/QlsYsrSdd2A+zI6wrMn2CVxeakt8Qj90HbMH9HxF5qlLDT
 Dv4N8hReyHLY+Bxv9/8Hrb77pXwSzPphtpDGI53yj5rL8oHU2L0000/RfJ/smF5qSM/ICaE5loQ1K
 iuUtFMqoaIXscHYljU4hzxIzz4nlQsZh/iiAXDriyBVErVEJN3CY7YaJkUhTEeN+30ZXscZhzbUEK
 vLB2Xq4d1V76FLvAf1jNxX8c7UYPpaBFUQN2rryIzD729miOUsTnLb230qEOoaNqXPk+6Et26gJrQ
 oMaAt3FA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lixQJ-00EaIu-3f
 for barebox@lists.infradead.org; Tue, 18 May 2021 10:58:04 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1lixQH-0003BS-HM; Tue, 18 May 2021 12:58:01 +0200
Received: from has by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1lixQH-0001fg-8v; Tue, 18 May 2021 12:58:01 +0200
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 18 May 2021 12:57:59 +0200
Message-Id: <20210518105759.4604-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_035803_170085_4CDC65A1 
X-CRM114-Status: GOOD (  14.75  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add variant for 512MB RAM board.

Two firmware files will be generated - one for 256MB and 512MB
respectively; the choice for shipment has to be done and depends on the
underlying hardware.

Consequently, the query for memsize in lowlevel.c

   ( r0 < MX6_MMDC_P0_BASE_ADDR + X )

could be dropped since we are now running with a hard-coded X == SZ_512.
However, we keep this part in order to allow for contextual code
comprehension.

Reported-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
---
v2 -> v3:

 - keep omitting RAM-size-dependent handling in lowlevel.c
 - rectify flash header handling in Makefile.imx

v1 -> v2:

 by Rouven Czerwinski <r.czerwinski@pengutronix.de>:
  - just ship one single firmware version, depending on the underlying
    board variant

 by Ahmad Fatoum <a.fatoum@pengutronix.de>:
  - account for the 512MB variant by hard-coding memsize == SZ_512

 ...sh-header-imx6ul-webasto-ccbv2-256.imxcfg} |  0
 ...ash-header-imx6ul-webasto-ccbv2-512.imxcfg | 88 +++++++++++++++++++
 arch/arm/boards/webasto-ccbv2/lowlevel.c      |  2 +-
 images/Makefile.imx                           |  4 +-
 4 files changed, 92 insertions(+), 2 deletions(-)
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
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 382493488b..b5e4b3841d 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -366,7 +366,9 @@ $(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico
 
 $(call build_imx_habv4img, CONFIG_MACH_DIGI_CCIMX6ULSBCPRO, start_imx6ul_ccimx6ulsbcpro, digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro, imx6ul-ccimx6ulsbcpro)
 
-$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2, imx6ul-webasto-ccbv2)
+$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256, imx6ul-webasto-ccbv2-256m)
+
+$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512, imx6ul-webasto-ccbv2-512m)
 
 # ----------------------- vf6xx based boards ---------------------------
 pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

