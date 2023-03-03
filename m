Delivery-date: Fri, 03 Mar 2023 10:27:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1h1-007NmV-Aw
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:27:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1h0-00036K-Pb
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:27:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oPMH55pj5x7V5OlL9VW+E6qKmHh/DW3cfgstSPmTPJ4=; b=ORWS6Y4H1sCLDJMctwwIJAilC9
	zPOyewQ+dZBOVp2MlNZDFSE/BRDpnPpkA6wu4ZS3+G4npPoHSswyQy0QWXR9xAbub9c52igP43Oo3
	QuP5QQ7eAxKoKmRSBSMvSGgwBYtBiFTiVv/fVW5hXREJtELGe1enoRIy/vaM4cI4ZHiA7ZWU7CbJ3
	xJK7qj1icvMJeN3F3gvyVDPeB398VltNFyYI6KcWsM1JwpLeOenyQuhNXAb1UdyGzbOfijwHSv4kT
	04Bve9xizJ2Doe+9fneBCEuof6vSD0qhm5+iOhWe8lEzKj4zESLOZS/lV1QijbjA8IJhGscw6F9g1
	RLgXK3FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1fh-005hJ7-By; Fri, 03 Mar 2023 09:25:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bt-005eWE-St
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=oPMH55pj5x7V5OlL9VW+E6qKmHh/DW3cfgstSPmTPJ4=; b=SY2FqLRE5l5Kzd7+qmqqhiskIc
	UGO6uXuU5/hxBVRywMTE+wBGq62mqVpQn5ZCdub7E4ZFQj2DLgI6eyW9sgx/0vD+fSL7hIYJVtXNP
	UUj7BmaFjgTG8GJPbpA9vcsMWsNVmTSaAbbZnJIRyESlzVLgO/9o0kuxiWJZ0OiwL1B7NIczIE+DH
	ViUfWDAbb9+ErdGPiYbaNy48F027pME4QgyEhOYgQKBT5avOZRO7vCL92XzEjJDfQDWS+AoclGmAG
	moZoG8kZr5zZZgb164mXe9bOjdEY74O6oTzTSEyiBgNo+dwCjLRDruJYX8EZNhGjxzBf9psjhlwnY
	R1w6/Ulg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bm-00FdL1-38
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:21:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bh-0000EE-8a; Fri, 03 Mar 2023 10:21:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-001Wie-DY; Fri, 03 Mar 2023 10:21:40 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2iS-RA; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:10 +0100
Message-Id: <20230303092131.3063587-30-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092148_655308_E8FB6A3F 
X-CRM114-Status: GOOD (  12.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 29/50] ARM: Rockchip: Only provide PUTC_LL() when activated
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With multi-arch support we must make sure we provide exactly one
PUTC_LL() function as indicated by the "Kernel low-level debugging port"
Kconfig choice. Make sure that the Rockchip specific debug_ll.h only
provides PUTC_LL() when specified.
The Rockchip specific debug_ll.h also provides other functions needed
by board code regardless if the Rockchip debug_ll port is enabled or
not, so include it explicitly where needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-rk3288/lowlevel.c | 1 +
 arch/arm/include/asm/debug_ll.h              | 6 ++++--
 common/Kconfig                               | 7 +++++++
 include/mach/rockchip/debug_ll.h             | 2 +-
 4 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/phytec-som-rk3288/lowlevel.c b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
index 8fc8f700f9..12044b6039 100644
--- a/arch/arm/boards/phytec-som-rk3288/lowlevel.c
+++ b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
@@ -11,6 +11,7 @@
 #include <mach/rockchip/grf_rk3288.h>
 #include <mach/rockchip/hardware.h>
 #include <debug_ll.h>
+#include <mach/rockchip/debug_ll.h>
 
 extern char __dtb_rk3288_phycore_som_start[];
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 52723d7204..52e0b9223f 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -7,11 +7,13 @@
 #include <mach/imx/debug_ll.h>
 #endif
 
+#ifdef CONFIG_DEBUG_ROCKCHIP_UART
+#include <mach/rockchip/debug_ll.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
-#elif defined CONFIG_ARCH_ROCKCHIP
-#include <mach/rockchip/debug_ll.h>
 #elif defined CONFIG_ARCH_ZYNQMP
 #include <mach/zynqmp/debug_ll.h>
 #elif defined CONFIG_ARCH_MVEBU
diff --git a/common/Kconfig b/common/Kconfig
index dce83cfafc..25f78cca46 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1252,6 +1252,9 @@ config FRAME_POINTER
 config DEBUG_IMX_UART
 	bool
 
+config DEBUG_ROCKCHIP_UART
+	bool
+
 choice
 	prompt "Kernel low-level debugging port"
 	depends on DEBUG_LL
@@ -1383,6 +1386,7 @@ config DEBUG_AM33XX_UART
 config DEBUG_ROCKCHIP_RK3188_UART
 	bool "RK3188 Debug UART"
 	depends on ARCH_RK3188
+	select DEBUG_ROCKCHIP_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3188.
@@ -1390,6 +1394,7 @@ config DEBUG_ROCKCHIP_RK3188_UART
 config DEBUG_ROCKCHIP_RK3288_UART
 	bool "RK3288 Debug UART"
 	depends on ARCH_RK3288
+	select DEBUG_ROCKCHIP_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3288.
@@ -1397,6 +1402,7 @@ config DEBUG_ROCKCHIP_RK3288_UART
 config DEBUG_ROCKCHIP_RK3568_UART
 	bool "RK3568 Debug UART"
 	depends on ARCH_RK3568
+	select DEBUG_ROCKCHIP_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3568.
@@ -1404,6 +1410,7 @@ config DEBUG_ROCKCHIP_RK3568_UART
 config DEBUG_ROCKCHIP_RK3399_UART
 	bool "RK3399 Debug UART"
 	depends on ARCH_RK3399
+	select DEBUG_ROCKCHIP_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3399.
diff --git a/include/mach/rockchip/debug_ll.h b/include/mach/rockchip/debug_ll.h
index a4b203794f..b1cf16a2dc 100644
--- a/include/mach/rockchip/debug_ll.h
+++ b/include/mach/rockchip/debug_ll.h
@@ -10,7 +10,7 @@
 #include <mach/rockchip/rk3568-regs.h>
 #include <mach/rockchip/rk3399-regs.h>
 
-#ifdef CONFIG_DEBUG_LL
+#ifdef CONFIG_DEBUG_ROCKCHIP_UART
 
 #ifdef CONFIG_DEBUG_ROCKCHIP_RK3188_UART
 
-- 
2.30.2



