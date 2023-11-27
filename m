Delivery-date: Mon, 27 Nov 2023 08:12:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VnK-00AgQp-02
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 08:12:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VnJ-0004f8-Vb
	for lore@pengutronix.de; Mon, 27 Nov 2023 08:12:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hL2cCnMvY8mdOP44pr1IBVOzlfi04xrw1gGoy4yLnnQ=; b=3zwjmJPxzwd5VQRMauuJxS8Ykf
	d0HiVn6bC+o3kT7U7FVhHHExs2wr+a+KYAeLpavcuHNA8qu2kr3UWZ4LHzpL0g1gRJfqjmE25Fvh/
	82WiE5cN6CS/YJtwx041lPagM4tMvDxbdxsZExvbwwP9prJ4M0qLyZ6csQQtsRtkaeUHeeXJgF4cK
	wYiQWuXE2HF1b+fRmtBwDlKSEdKW4jFAMuzDX2fHbsidsGOlHouD3M1qLGdpv43uNRmEATSR9Zz5B
	eKE7T6qL3ImM+TMGnaCzQFJvgrfWUa3OCKAk1FDt+aqUtyM/koJ7apff04QPQwRK1xf9oPxoJEva4
	O9GMpfmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VmB-001ggp-1M;
	Mon, 27 Nov 2023 07:11:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Vm4-001ge5-18
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 07:11:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7Vm2-0004PR-UB; Mon, 27 Nov 2023 08:11:18 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7Vm2-00BtCV-Ho; Mon, 27 Nov 2023 08:11:18 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-009GPh-0w;
	Mon, 27 Nov 2023 07:49:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:47 +0100
Message-Id: <20231127064947.2207726-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_231120_422971_1C4922E3 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/13] ARM: stm32mp: remove STM32MP13 .stm32 image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Legacy STM32 images were deprecated for STM32MP15 in TF-A and are no
longer supported in recent versions. For STM32MP13, FIP was the only
format supported since the beginning, so drop the unused entry point.

barebox chainloading for development can be done by booting the
barebox-stm32mp-generic-bl33.img with the barebox device tree passed
in externally.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp13xx-dk/Makefile   |  1 -
 arch/arm/boards/stm32mp13xx-dk/lowlevel.c | 19 -------------------
 images/Makefile.stm32mp                   |  1 -
 3 files changed, 21 deletions(-)
 delete mode 100644 arch/arm/boards/stm32mp13xx-dk/lowlevel.c

diff --git a/arch/arm/boards/stm32mp13xx-dk/Makefile b/arch/arm/boards/stm32mp13xx-dk/Makefile
index 1d052d28c9fc..a031ae91bd28 100644
--- a/arch/arm/boards/stm32mp13xx-dk/Makefile
+++ b/arch/arm/boards/stm32mp13xx-dk/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/stm32mp13xx-dk/lowlevel.c b/arch/arm/boards/stm32mp13xx-dk/lowlevel.c
deleted file mode 100644
index 4253dde9d6ae..000000000000
--- a/arch/arm/boards/stm32mp13xx-dk/lowlevel.c
+++ /dev/null
@@ -1,19 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-
-#include <mach/stm32mp/entry.h>
-#include <debug_ll.h>
-
-extern char __dtb_z_stm32mp135f_dk_start[];
-
-ENTRY_FUNCTION(start_stm32mp13xx_dk, r0, r1, r2)
-{
-	void *fdt;
-
-	stm32mp_cpu_lowlevel_init();
-
-	putc_ll('>');
-
-	fdt = __dtb_z_stm32mp135f_dk_start  + get_runtime_offset();
-
-	stm32mp1_barebox_entry(fdt);
-}
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 86ff870051c2..cc70aee92388 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -30,7 +30,6 @@ pblb-$(CONFIG_ARCH_STM32MP) += start_stm32mp_bl33
 FILE_barebox-stm32mp-generic-bl33.img  = start_stm32mp_bl33.pblb
 image-$(CONFIG_ARCH_STM32MP) += barebox-stm32mp-generic-bl33.img
 
-$(call build_stm32mp_image, CONFIG_MACH_STM32MP13XX_DK, start_stm32mp13xx_dk, stm32mp13xx-dk)
 $(call build_stm32mp_image, CONFIG_MACH_STM32MP15XX_DKX, start_stm32mp15xx_dkx, stm32mp15xx-dkx)
 $(call build_stm32mp_image, CONFIG_MACH_STM32MP15X_EV1, start_stm32mp15x_ev1, stm32mp15x-ev1)
 
-- 
2.39.2



