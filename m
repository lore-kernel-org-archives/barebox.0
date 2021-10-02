Delivery-date: Sat, 02 Oct 2021 10:51:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWajd-00023d-O9
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 10:51:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWajc-0007FZ-Jm
	for lore@pengutronix.de; Sat, 02 Oct 2021 10:51:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thCUD/yyYvwlBO2gNiVrLQd8Pm4nUtTloC1qh9VP4sU=; b=M62AZzk+WpPrTj
	HoAVvr0DXkqQZ0Lm4ho1w4+V9/oFlTgkd4LsLtIOxuZbRVXvHIJ0OyNLBKWyrEM6w+xIz5b9KrlDe
	IYQXsUp1ijbmD+JaodysjTPhJGHwqqWAhIN3oJbBOzrt+CoN5zEN64sJeKBes2ht0/Y6J2RZc1Xko
	5x7XvhEj+hAxIchAubut+xzwm1aftX17ftPX9M4ko6xNp8fZ3B9qC6OWcU+oD8femBGXN8ifuOszD
	MK9KCmOWZYLGHykPsLudGQcxgktZmP4AW2yEXYjW0iDt1aVkDsE6U2/7MlMpM1DPgpNtLhbo9aGfu
	ulSnIDTOd1t38K4PBQtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWahY-001x2D-5l; Sat, 02 Oct 2021 08:49:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWahT-001x1k-1S
 for barebox@lists.infradead.org; Sat, 02 Oct 2021 08:48:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWahP-00071l-8J; Sat, 02 Oct 2021 10:48:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWahO-0007GJ-Pj; Sat, 02 Oct 2021 10:48:50 +0200
Date: Sat, 2 Oct 2021 10:48:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20211002084850.GA24834@pengutronix.de>
References: <20211001142453.4a3c0ba9bd7bb909125e2a5f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211001142453.4a3c0ba9bd7bb909125e2a5f@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:33:31 up 226 days, 11:57, 93 users,  load average: 0.02, 0.11,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_014855_128832_BEDB8E7F 
X-CRM114-Status: GOOD (  28.09  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: 'of_compatible' and 'model' imd records are unusable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Antony,

+Cc list

On Fri, Oct 01, 2021 at 02:24:53PM +0300, Antony Pavlov wrote:
> Hi all!
> 
> I have cloned barebox c67ada0024da (v2021.08.0) and found that
> 'of_compatible' and 'model' imd records are unusable.
> 
> E.g.
> 
> barebox$ make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- imx_v8_defconfig
> barebox$ make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu-
> ...
> images built:
> barebox-nxp-imx8mm-evk.img
> barebox-prt-prt8mm.img
> barebox-nxp-imx8mp-evk.img
> barebox-nxp-imx8mq-evk.img
> barebox-zii-imx8mq-dev.img
> barebox-phytec-phycore-imx8mq.img
> 
> barebox$ ./scripts/bareboximd images/barebox-nxp-imx8mm-evk.img
> build: #1 Fri Oct 1 10:16:30 UTC 2021
> buildsystem version: 
> crc32: 0x00000000
> release: 2021.08.0
> barebox$ 
> 
> There is no 'of_compatible' and 'model' imd records in bareboximd output.
> 
> So there is no chance to imd_find_type(..., IMD_TYPE_OF_COMPATIBLE)
> (see common/bbu.c) in a barebox image file.
> 
> scripts/gen-dtb-s puts IMD_TYPE_OF_COMPATIBLE and IMD_TYPE_MODEL
> records into barebox_imd_0 section.
> 
> BAREBOX_IMD macro (include/asm-generic/barebox.lds.h)
> does not KEEP barebox_imd_0 section":

This is done on purpose because otherwise...

> 
> #define BAREBOX_IMD                             \
>         STRUCT_ALIGN();                         \
>         KEEP(*(.barebox_imd_start))             \
>         KEEP(*(.barebox_imd_1*))                \
>         *(.barebox_imd_0*)                      \
>         KEEP(*(.barebox_imd_end))
> 
> KEEPing barebox_imd_0 leads to several 'of_compatible' and 'model' records
> in one barebox image file, e.g.:

...exactly this would happen.

To get the of_compatible and model imd tags in an image you have to put
IMD_USED_OF() explicitly into the entry function of the image handling
this compatible, there's no way for the build process to know which
image handles which device tree. See below for an example which adds the
tags for the boards you are currently compiling.

Sascha

--------------------------------8<-------------------------

>From 456d90992fe0b9f4258b693a946f8d13ba5b0b4c Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 2 Oct 2021 10:45:04 +0200
Subject: [PATCH] ARM: i.MX8m: Add of_compatible imd tags for i.MX8 boards

The build process has to be manually told which image is compatible to
which device tree. Add the IMD_USED_OF() calls to the i.MX8m based
boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c        | 3 +++
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c        | 3 +++
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c        | 3 +++
 arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c | 3 +++
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c        | 4 ++++
 5 files changed, 16 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 4bd29c2269..c2f6206cfd 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -21,6 +21,7 @@
 #include <mfd/bd71837.h>
 #include <soc/imx8m/ddr.h>
 #include <soc/fsl/fsl_udc.h>
+#include <image-metadata.h>
 
 extern char __dtb_imx8mm_evk_start[];
 
@@ -177,5 +178,7 @@ ENTRY_FUNCTION(start_nxp_imx8mm_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
+	IMD_USED_OF(imx8mm_evk);
+
 	nxp_imx8mm_evk_start();
 }
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 3298ded586..5732ccc645 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -4,6 +4,7 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <firmware.h>
+#include <image-metadata.h>
 #include <asm/mmu.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
@@ -189,5 +190,7 @@ ENTRY_FUNCTION(start_nxp_imx8mp_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
+	IMD_USED_OF(imx8mp_evk);
+
 	nxp_imx8mp_evk_start();
 }
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 564621abef..92cc22e022 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <firmware.h>
+#include <image-metadata.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
@@ -106,5 +107,7 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
+	IMD_USED_OF(imx8mq_evk);
+
 	nxp_imx8mq_evk_start();
 }
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index 3b8b53b36e..24d98fe6c9 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -2,6 +2,7 @@
 
 #include <asm/barebox-arm.h>
 #include <common.h>
+#include <image-metadata.h>
 #include <debug_ll.h>
 #include <firmware.h>
 #include <mach/atf.h>
@@ -118,5 +119,7 @@ ENTRY_FUNCTION(start_prt_prt8mm, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
+	IMD_USED_OF(imx8mm_prt8mm);
+
 	prt_prt8mm_start();
 }
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 311e61fb1d..cf53fb2def 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -6,6 +6,7 @@
 
 #include <common.h>
 #include <firmware.h>
+#include <image-metadata.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
@@ -200,5 +201,8 @@ ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
+	IMD_USED_OF(imx8mq_zii_ultra_rmb3);
+	IMD_USED_OF(imx8mq_zii_ultra_zest);
+
 	zii_imx8mq_dev_start();
 }
-- 
2.30.2



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

