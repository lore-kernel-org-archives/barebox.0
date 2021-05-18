Delivery-date: Tue, 18 May 2021 13:45:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyAF-0004A5-1l
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:45:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyAE-0000ko-1j
	for lore@pengutronix.de; Tue, 18 May 2021 13:45:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9NpVV1CdifnnKclBSrSyN63+AaoSTGPFiC2lmxRP6LQ=; b=npq+7KHJ0g0dIsPogmZ8ymE2t
	p6P/8pGLwaDdvBVAvhwLh/eliJLOpCmN0WByLDdC0rjXX858unzr/Z2fmKzLoLN5eTFeMP9XjkZvD
	zJ/leCSiiDby/UMRy04FKbPEgbYXrBa3yzvqegdc4CXWeXLJhSbRVMqrIGYI/lSMDSUYBKtz2bIZY
	J19/rO/8OP0Imk8WOP8A1GFTHBgMq0/CjLqQFKVGhDoPTOOLKcJh/i+x+eBlDbB51NsbjFCPt97+l
	pYYIiFOH3UfbjhEJnrq+ief0t58v50zRvh7lU+d6qiXai+McF+bbUEbpqPx11FXNBQRBb524dUS7G
	g37D6k9gA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liy9L-000cPw-L0; Tue, 18 May 2021 11:44:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy93-000cJz-Vi
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:44:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=yAei7fzqSOmLndc5YtbXo5pPwntJhtFLMM/ejrMlKac=; b=yZ8zwslEHoMJ/UJRaKiudMkuFL
 Qmwj4QqkxiOv9H5w5rOuKdcq01ksgOe0b00CeOq2CW7u6cgYt5FdCFK35y+qpqBu9hjuet7Xoz8E+
 oHDkpa2d7psVrxkzxFiwj6G4L8dc3arudWiZRyk25a8JD9HRVmZ2AAhhmiMlDP5yNfZ0sTjYRZSOH
 CCtxeu8XlZGvF6y/qAW3bZfnyx5ZA4LAxXdeaH2BC8Hv+BbQGaiUbjAgd3hImDZdR4ZbetwY5z9Fz
 XVEZayToU42QMu69BHdcJ1yIzrrxVViAhdwNa8XOuzdyH//sg9+GIgRjZWCEOs9F5Ei74fE7W2xWP
 XncVtszQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy91-00Ec2f-57
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:44:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy8r-0000VA-VH; Tue, 18 May 2021 13:44:05 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy8r-0001NZ-MK; Tue, 18 May 2021 13:44:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:44:02 +0200
Message-Id: <20210518114404.5553-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114404.5553-1-s.hauer@pengutronix.de>
References: <20210518114404.5553-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044415_219108_5D1F7BA4 
X-CRM114-Status: GOOD (  19.86  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: rockchip: Allow to build for multiple SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig                | 12 +++------
 arch/arm/mach-rockchip/Makefile               |  1 +
 .../arm/mach-rockchip/include/mach/debug_ll.h | 12 +++++++--
 .../arm/mach-rockchip/include/mach/rockchip.h | 22 ++++++++++++++++
 arch/arm/mach-rockchip/rk3188.c               |  4 +--
 arch/arm/mach-rockchip/rk3288.c               | 25 ++++++++++---------
 arch/arm/mach-rockchip/rockchip.c             | 17 +++++++++++++
 common/Kconfig                                | 18 +++++++++----
 8 files changed, 82 insertions(+), 29 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/include/mach/rockchip.h
 create mode 100644 arch/arm/mach-rockchip/rockchip.c

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index f2fa3c6345..65bcbcac96 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -11,27 +11,23 @@ config RK_TIMER
 	hex
 	default 1
 
-choice
-	prompt "Select Rockchip SoC"
-
 config ARCH_RK3188
-	bool "Rockchip RK3188 SoCs"
+	bool
 
 config ARCH_RK3288
-	bool "Rockchip RK3288 SoCs"
+	bool
 	select CLOCKSOURCE_ROCKCHIP
-endchoice
 
 comment "select Rockchip boards:"
 
 config MACH_RADXA_ROCK
-	depends on ARCH_RK3188
+	select ARCH_RK3188
 	select I2C
 	select MFD_ACT8846
 	bool "Radxa rock board"
 
 config MACH_PHYTEC_SOM_RK3288
-	depends on ARCH_RK3288
+	select ARCH_RK3288
 	select I2C
 	bool "RK3288 phyCORE SOM"
 	help
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 4ca7f17d8c..0188d0252f 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1,2 +1,3 @@
+obj-y += rockchip.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
diff --git a/arch/arm/mach-rockchip/include/mach/debug_ll.h b/arch/arm/mach-rockchip/include/mach/debug_ll.h
index 9fde2976f1..7806aab8bb 100644
--- a/arch/arm/mach-rockchip/include/mach/debug_ll.h
+++ b/arch/arm/mach-rockchip/include/mach/debug_ll.h
@@ -6,14 +6,16 @@
 #include <mach/rk3188-regs.h>
 #include <mach/rk3288-regs.h>
 
-#ifdef CONFIG_ARCH_RK3188
+#ifdef CONFIG_DEBUG_LL
+
+#ifdef CONFIG_DEBUG_ROCKCHIP_RK3188_UART
 
 #define UART_CLOCK		100000000
 #define RK_DEBUG_SOC		RK3188
 #define serial_out(a, v)	writeb(v, a)
 #define serial_in(a)		readb(a)
 
-#elif defined CONFIG_ARCH_RK3288
+#elif defined CONFIG_DEBUG_ROCKCHIP_RK3288_UART
 
 #define UART_CLOCK		24000000
 #define RK_DEBUG_SOC		RK3288
@@ -70,4 +72,10 @@ static inline void PUTC_LL(char c)
 	while ((serial_in(base + LSR) & LSR_THRE) == 0)
 		;
 }
+#else
+static inline void INIT_LL(void)
+{
+}
+#endif
+
 #endif
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
new file mode 100644
index 0000000000..8d37c67d4f
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
@@ -0,0 +1,22 @@
+#ifndef __MACH_ROCKCHIP_H
+#define __MACH_ROCKCHIP_H
+
+#ifdef CONFIG_ARCH_RK3188
+int rk3188_init(void);
+#else
+static inline int rk3188_init(void)
+{
+	return -ENOTSUPP;
+}
+#endif
+
+#ifdef CONFIG_ARCH_RK3288
+int rk3288_init(void);
+#else
+static inline int rk3288_init(void)
+{
+	return -ENOTSUPP;
+}
+#endif
+
+#endif /* __MACH_ROCKCHIP_H */
diff --git a/arch/arm/mach-rockchip/rk3188.c b/arch/arm/mach-rockchip/rk3188.c
index 572e9dc58f..178bf2be1d 100644
--- a/arch/arm/mach-rockchip/rk3188.c
+++ b/arch/arm/mach-rockchip/rk3188.c
@@ -16,6 +16,7 @@
 #include <init.h>
 #include <restart.h>
 #include <mach/rk3188-regs.h>
+#include <mach/rockchip.h>
 
 static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
 {
@@ -27,10 +28,9 @@ static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
 	hang();
 }
 
-static int restart_register_feature(void)
+int rk3188_init(void)
 {
 	restart_handler_register_fn("soc", rockchip_restart_soc);
 
 	return 0;
 }
-coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-rockchip/rk3288.c b/arch/arm/mach-rockchip/rk3288.c
index 9076fd9227..2a1d4ab7a2 100644
--- a/arch/arm/mach-rockchip/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288.c
@@ -21,6 +21,7 @@
 #include <mach/rk3288-regs.h>
 #include <mach/cru_rk3288.h>
 #include <mach/hardware.h>
+#include <mach/rockchip.h>
 
 static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
 {
@@ -58,17 +59,6 @@ static void rk3288_detect_reset_reason(void)
 	}
 }
 
-static int rk3288_init(void)
-{
-	restart_handler_register_fn("soc", rockchip_restart_soc);
-
-	if (IS_ENABLED(CONFIG_RESET_SOURCE))
-		rk3288_detect_reset_reason();
-
-	return 0;
-}
-postcore_initcall(rk3288_init);
-
 /*
  * ATM we are not able to determine the boot source.
  * So let's handle the environment on eMMC, regardless which device
@@ -89,4 +79,15 @@ static int rk3288_env_init(void)
 
 	return 0;
 }
-device_initcall(rk3288_env_init);
+
+int rk3288_init(void)
+{
+	restart_handler_register_fn("soc", rockchip_restart_soc);
+
+	if (IS_ENABLED(CONFIG_RESET_SOURCE))
+		rk3288_detect_reset_reason();
+
+	rk3288_env_init();
+
+	return 0;
+}
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
new file mode 100644
index 0000000000..b0fbb49457
--- /dev/null
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <init.h>
+#include <mach/rockchip.h>
+
+static int rockchip_init(void)
+{
+	if (of_machine_is_compatible("rockchip,rk3188"))
+		rk3188_init();
+	else if (of_machine_is_compatible("rockchip,rk3288"))
+		rk3288_init();
+	else
+		pr_err("Unknown rockchip SoC\n");
+
+	return 0;
+}
+postcore_initcall(rockchip_init);
diff --git a/common/Kconfig b/common/Kconfig
index bddf802d3b..18e6615770 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1294,12 +1294,19 @@ config DEBUG_AM33XX_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on AM33XX.
 
-config DEBUG_ROCKCHIP_UART
-	bool "RK3xxx Debug UART"
-	depends on ARCH_ROCKCHIP
+config DEBUG_ROCKCHIP_RK3188_UART
+	bool "RK3188 Debug UART"
+	depends on ARCH_RK3188
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3188.
+
+config DEBUG_ROCKCHIP_RK3288_UART
+	bool "RK3288 Debug UART"
+	depends on ARCH_RK3288
 	help
 	  Say Y here if you want kernel low-level debugging support
-	  on RK3XXX.
+	  on RK3288.
 
 config DEBUG_SOCFPGA_UART0
 	bool "Use SOCFPGA UART0 for low-level debug"
@@ -1377,7 +1384,8 @@ config DEBUG_OMAP_UART_PORT
 	  AM33XX: 0 - 2
 
 config DEBUG_ROCKCHIP_UART_PORT
-	int "RK3xxx UART debug port" if DEBUG_ROCKCHIP_UART
+	int "RK3xxx UART debug port" if DEBUG_ROCKCHIP_RK3188_UART || \
+				DEBUG_ROCKCHIP_RK3288_UART
 	default 2
 	depends on ARCH_ROCKCHIP
 	help
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

