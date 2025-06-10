Delivery-date: Wed, 11 Jun 2025 00:50:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7nx-005x3y-1i
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 00:50:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7nw-0007Ke-Tv
	for lore@pengutronix.de; Wed, 11 Jun 2025 00:50:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c5dnsqaVa/vpHCJdYqRIwNVdjWzj3e4zJdtkoJnl+aA=; b=A89DWDOAeBoTfJBfEFQRnIyy8U
	tyiQg3LOUKVT1VgEbaNRfeDSE4e9j+YQ/Y5CdZONrdNegxvH8YjLadBbr/SY5RXHu+UoNnGXFql4/
	exHjw12064SXYVLPjbJeMo0cvFi0I2eaZ4ngjE2bF8ixfy0AtJczJLkj1esdSHzSDmlD8tlq5j5Ig
	RbMxLXwmfFy20hhAMg/UEapuovNgbOvlZwO+mAY/VniHEIPDlsDpv8vawgNmFIaGJHdS4V0xsbejK
	GuUmxF35N5jQlWOai+AA+cX+8t+/QhAYJR3bWdqPjNBXwFUiN5lg7MAVjIR5Ihcr7fT11aHegoGE1
	1wOMesSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7nR-00000008IZC-2SWD;
	Tue, 10 Jun 2025 22:50:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP5Lm-000000080uA-3AzN
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 20:13:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Ld-0001P3-DU; Tue, 10 Jun 2025 22:13:29 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Ld-002pea-0T;
	Tue, 10 Jun 2025 22:13:29 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Ld-00BICi-0B;
	Tue, 10 Jun 2025 22:13:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>,
	lst@pengutronix.de,
	fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jun 2025 22:13:20 +0200
Message-Id: <20250610201320.2691564-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250610201320.2691564-1-a.fatoum@pengutronix.de>
References: <20250610201320.2691564-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_131338_791508_5E90A2CF 
X-CRM114-Status: UNSURE (   8.82  )
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
Subject: [PATCH v2 3/3] ARM: i.MX6Q: drop duplicate arm_early_mmu_cache_invalidate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we call arm_early_mmu_cache_invalidate() in
imx6_cpu_lowlevel_init(), it's fine to drop it from the entry points
that already call the latter function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c | 5 -----
 arch/arm/boards/guf-santaro/lowlevel.c             | 3 ---
 arch/arm/boards/tqma6x/lowlevel.c                  | 5 -----
 3 files changed, 13 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index f1ed31ccad6e..856f050c0888 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -9,7 +9,6 @@
 #include <io.h>
 #include <mach/imx/debug_ll.h>
 #include <mach/imx/esdctl.h>
-#include <asm/cache.h>
 
 extern char __dtb_imx6q_sabrelite_start[];
 
@@ -33,8 +32,6 @@ ENTRY_FUNCTION(start_imx6q_sabrelite, r0, r1, r2)
 {
 	imx6_cpu_lowlevel_init();
 
-	arm_early_mmu_cache_invalidate();
-
 	relocate_to_current_adr();
 	setup_c();
 	barrier();
@@ -64,8 +61,6 @@ ENTRY_FUNCTION(start_imx6dl_sabrelite, r0, r1, r2)
 {
 	imx6_cpu_lowlevel_init();
 
-	arm_early_mmu_cache_invalidate();
-
 	relocate_to_current_adr();
 	setup_c();
 	barrier();
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index 72401eb32c69..870af0643401 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -5,7 +5,6 @@
 #include <io.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <asm/cache.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/imx6-regs.h>
 #include <debug_ll.h>
@@ -40,8 +39,6 @@ ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
 
 	arm_setup_stack(0x00920000);
 
-	arm_early_mmu_cache_invalidate();
-
 	setup_uart();
 
 	relocate_to_current_adr();
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 6e9c9bed0bf8..38d3f3fec0df 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -9,7 +9,6 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <asm/sections.h>
-#include <asm/cache.h>
 #include <asm/mmu.h>
 #include <mach/imx/imx6.h>
 
@@ -28,8 +27,6 @@ ENTRY_FUNCTION_WITHSTACK(start_imx6q_mba6x, 0x00920000, r0, r1, r2)
 		putc_ll('a');
 	}
 
-	arm_early_mmu_cache_invalidate();
-
 	fdt = __dtb_imx6q_mba6x_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
@@ -47,8 +44,6 @@ ENTRY_FUNCTION_WITHSTACK(start_imx6dl_mba6x, 0x00920000, r0, r1, r2)
 		putc_ll('a');
 	}
 
-	arm_early_mmu_cache_invalidate();
-
 	fdt = __dtb_imx6dl_mba6x_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
-- 
2.39.5



