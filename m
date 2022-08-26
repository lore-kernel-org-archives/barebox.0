Delivery-date: Fri, 26 Aug 2022 08:52:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oRTCP-00Akdm-12
	for lore@lore.pengutronix.de; Fri, 26 Aug 2022 08:52:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oRTCM-0002FV-SM
	for lore@pengutronix.de; Fri, 26 Aug 2022 08:52:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YRBu//VtO082TE4VidFlmvmp1GE5lbe6B6FI7AhHGvE=; b=DTsAFPUsU5dvIzv0qbUGj62cgc
	+5n8M0t8gIaHyjBjS3aoxjZI7txwTrkRd0BwShQooPTMRkSPBF8TO174y6uoL+sGSNwXMwARRq0o9
	9Djn2/K7r27w2PNnJRJRFzcqfHjE42f0aaM3TprH5Vr6LGA4EkWd7YxKOxAbdPrPlbgcs6ETwCVBD
	UHqEDuP/Nb9tfvfxM8yA6CJ2vyiMCIXX/bIx4AVsXhwW/3ppRxHK9LWp/EeMi0lvx3z3d+N2/xZP9
	ZF0zoN+alF4ujrMQ+iBu2vlgOgkF7ZnBUKm2ME54nrgVRRDtQ+HCqrrLNF2g72H9SfwCHHmbaqC5r
	vrW0fUBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAm-00Eux6-C7; Fri, 26 Aug 2022 06:50:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAa-00Eurh-MU
	for barebox@lists.infradead.org; Fri, 26 Aug 2022 06:50:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0] helo=pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1oRTAV-0001i3-4n
	for barebox@lists.infradead.org; Fri, 26 Aug 2022 08:50:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 26 Aug 2022 08:49:56 +0200
Message-Id: <20220826064956.507125-4-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220826064956.507125-1-s.trumtrar@pengutronix.de>
References: <20220826064956.507125-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_235020_787451_BBA00C2C 
X-CRM114-Status: UNSURE (   8.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] ARM: Socfpga: Achilles: Enable ARM errata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index f5efb961a1..511b41fd01 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -16,6 +16,7 @@
 #include <mach/arria10-clock-manager.h>
 #include <mach/arria10-pinmux.h>
 #include <mach/arria10-fpga.h>
+#include <mach/init.h>
 #include "pll-config-arria10.c"
 #include "pinmux-config-arria10.c"
 #include <mach/generic.h>
@@ -41,6 +42,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_xload, ARRIA10_STACKTOP, r0, r1,
 	int bitstream = 0;
 
 	arm_cpu_lowlevel_init();
+	arria10_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 	setup_c();
@@ -93,6 +95,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_bringup, ARRIA10_STACKTOP, r0, r
 	void *fdt;
 
 	arm_cpu_lowlevel_init();
+	arria10_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 	setup_c();
-- 
2.33.0



