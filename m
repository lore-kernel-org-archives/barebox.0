Delivery-date: Wed, 13 May 2026 14:20:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8Zr-001Fe3-16
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:20:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8Zn-0003vi-Aj
	for lore@pengutronix.de; Wed, 13 May 2026 14:20:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MYHjD6WrdxweCFZyDKGokQLcFg/Q4hhmau0lTEuAm/U=; b=a6fG2SR10UdnHlXg2SZoKv0irx
	dTbTO9dzJi4FBWa+Nv4IfAOs09Gh2yUYIIvriUZAysLwldod7MENd8w4GuuzRDaXHL59epBb/OIfy
	f8p4DkO7H8DTNJgjID5J2wgrXORadFeq+ICmKQjpWrIOV8EVhfAp+M3uLOJvySAITaEQ7BUjr46LS
	7pg16JYxji/ZLFBXQX3u4Xp3VN/3lxS+OvYe59BwSSF249X9ErHHNPwugFCXYpqLL+gNHEKH+5fLA
	zFiDyesPzksMrGvbovwoWNjiGW/myiYGTUmEEOuSviWlrcYCZg6eqOXlx72Qm6xj/fvzBHQnf3UTs
	rqp0vmTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8YA-00000002SG0-30Bu;
	Wed, 13 May 2026 12:18:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Y7-00000002SEo-2xba
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:18:53 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8Y4-0003Ls-PV; Wed, 13 May 2026 14:18:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:18:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-socfpga-cyclone5-lowlevel-v1-1-8b5ca45d997d@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIACVsBGoC/x3MQQqDMBBG4avIrDtgphiqV5EuZPy1AyGRBLRFv
 HuDy2/x3kkF2VBoaE7K2K1YihXu0ZB+priCba4macW3nXtySbps68T605AiOg7pCNgRWF9evBO
 BQ0+13zIW+97v8X1dfydzAz5rAAAA
X-Change-ID: 20260513-socfpga-cyclone5-lowlevel-c8626122e1e9
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_051851_753283_1996F34D 
X-CRM114-Status: UNSURE (   8.29  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: socfpga: cyclone5: rename lowlevel.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The lowlevel.h is very specific for the cyclone5 and doesn't even build
for other platforms or boards. Rename the header to make this more
obvious.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/altera-socdk/lowlevel.c                 | 2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c                 | 2 +-
 arch/arm/boards/enclustra-sa2/lowlevel.c                | 2 +-
 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c         | 2 +-
 arch/arm/boards/terasic-de10-nano/lowlevel.c            | 2 +-
 arch/arm/boards/terasic-sockit/lowlevel.c               | 2 +-
 include/mach/socfpga/{lowlevel.h => cylone5-lowlevel.h} | 0
 7 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/altera-socdk/lowlevel.c b/arch/arm/boards/altera-socdk/lowlevel.c
index 1e62ab70e7ea..0045cb2d5efc 100644
--- a/arch/arm/boards/altera-socdk/lowlevel.c
+++ b/arch/arm/boards/altera-socdk/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/socfpga/lowlevel.h>
+#include <mach/socfpga/cyclone5-lowlevel.h>
 
 SOCFPGA_C5_ENTRY(start_socfpga_socdk, socfpga_cyclone5_socdk, SZ_1G);
 SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_socdk_xload, SZ_1G);
diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index 56b0f43a3354..ce095a4584ba 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/socfpga/lowlevel.h>
+#include <mach/socfpga/cyclone5-lowlevel.h>
 
 static inline void ledon(void)
 {
diff --git a/arch/arm/boards/enclustra-sa2/lowlevel.c b/arch/arm/boards/enclustra-sa2/lowlevel.c
index 08744756949f..27658be61f46 100644
--- a/arch/arm/boards/enclustra-sa2/lowlevel.c
+++ b/arch/arm/boards/enclustra-sa2/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/socfpga/lowlevel.h>
+#include <mach/socfpga/cyclone5-lowlevel.h>
 
 SOCFPGA_C5_ENTRY(start_socfpga_sa2, socfpga_cyclone5_mercury_sa2, SZ_1G);
 SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_sa2_xload, SZ_1G);
diff --git a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
index 71121b6d4cea..1bc521ce9b43 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/socfpga/lowlevel.h>
+#include <mach/socfpga/cyclone5-lowlevel.h>
 
 SOCFPGA_C5_ENTRY(start_socfpga_de0_nano_soc, socfpga_cyclone5_de0_nano_soc, SZ_1G);
 SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_de0_nano_soc_xload, SZ_1G);
diff --git a/arch/arm/boards/terasic-de10-nano/lowlevel.c b/arch/arm/boards/terasic-de10-nano/lowlevel.c
index 74c8aec99da0..ddff6bdee264 100644
--- a/arch/arm/boards/terasic-de10-nano/lowlevel.c
+++ b/arch/arm/boards/terasic-de10-nano/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/socfpga/lowlevel.h>
+#include <mach/socfpga/cyclone5-lowlevel.h>
 
 SOCFPGA_C5_ENTRY(start_socfpga_de10_nano, socfpga_cyclone5_de10_nano, SZ_1G);
 SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_de10_nano_xload, SZ_1G);
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index 9ce0fd442331..dd951c3016eb 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/socfpga/lowlevel.h>
+#include <mach/socfpga/cyclone5-lowlevel.h>
 
 static inline void ledon(int led)
 {
diff --git a/include/mach/socfpga/lowlevel.h b/include/mach/socfpga/cylone5-lowlevel.h
similarity index 100%
rename from include/mach/socfpga/lowlevel.h
rename to include/mach/socfpga/cylone5-lowlevel.h

---
base-commit: 2cb5e0014a37160731ad6eb6d7f7d846394db362
change-id: 20260513-socfpga-cyclone5-lowlevel-c8626122e1e9

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



