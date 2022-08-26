Delivery-date: Fri, 26 Aug 2022 08:52:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oRTCR-00AkeW-9H
	for lore@lore.pengutronix.de; Fri, 26 Aug 2022 08:52:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oRTCO-0002GO-UN
	for lore@pengutronix.de; Fri, 26 Aug 2022 08:52:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x7m16WqZccy6lFjUH10VBE6KtY9b0VHZax6tbKnJKKI=; b=tJYAj60h9YQOv0eHyyK4zwLO7H
	QHDq8pikK4zL9EwPnYxD9fd+N9PIpti3xw1sa9foEuaRzMcbvn8+FU7C7KYOB5rn+6OL9wlHXTTat
	s8Sn0OF89RHfPZASQ9MIW7Ks8vlAEkmKv99UWm+MNOaerul4tAROkV26/VHrEvNFPh4dR8KHBf0be
	CP93DYaspp00aDRoAGRlhZRFhlZxL9VWi+etwzJjSBAKBlE/mOj8ZYCbV0WMB5wSXL18qed/glg6T
	V8N/XG+IeKSj9LOwOihg3dAYSQY+umxF+Cpm4d94+RdgyDULjUtbwuYYYuQjCWeV4im90QzVWA7BN
	Kv/MQSzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAi-00EuvK-0o; Fri, 26 Aug 2022 06:50:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAa-00Eurg-Jf
	for barebox@lists.infradead.org; Fri, 26 Aug 2022 06:50:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0] helo=pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1oRTAU-0001i3-Vy
	for barebox@lists.infradead.org; Fri, 26 Aug 2022 08:50:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 26 Aug 2022 08:49:55 +0200
Message-Id: <20220826064956.507125-3-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220826064956.507125-1-s.trumtrar@pengutronix.de>
References: <20220826064956.507125-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_235020_670179_F8E1E589 
X-CRM114-Status: UNSURE (   8.10  )
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
Subject: [PATCH 3/4] ARM: socfpga: Enclustra AA1: enable ARM errata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/enclustra-aa1/lowlevel.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/enclustra-aa1/lowlevel.c b/arch/arm/boards/enclustra-aa1/lowlevel.c
index d819d9feae..b1a0f4876f 100644
--- a/arch/arm/boards/enclustra-aa1/lowlevel.c
+++ b/arch/arm/boards/enclustra-aa1/lowlevel.c
@@ -16,6 +16,7 @@
 #include <mach/arria10-clock-manager.h>
 #include <mach/arria10-pinmux.h>
 #include <mach/arria10-fpga.h>
+#include <mach/init.h>
 #include "pll-config-arria10.c"
 #include "pinmux-config-arria10.c"
 #include <mach/generic.h>
@@ -102,6 +103,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_bringup, ARRIA10_STACKTOP, r0, r1, r2
 	void *fdt;
 
 	arm_cpu_lowlevel_init();
+	arria10_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 	setup_c();
-- 
2.33.0



