Delivery-date: Fri, 03 Mar 2023 10:23:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dj-007NXt-7Y
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:23:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1di-00011x-1h
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:23:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A22J9d7uahq4PKqSqN3A64T5qLI86D/Rdt41lR++qlI=; b=SyzojEae2FoS52cyMXdhuCMF/t
	1jh7IXp0rraIXN9JFbuuRA0yJsrcTrRtBY/fzYamePBPTlj2DvqJL/Mm9LO2yBEtLNYZu31OyeaNN
	pBx4J9NaB1pfW3/YK8rAX1kWss9hoevQA9xjjz2ONcD0AZRfhDyzTWYZshhwWgKyPeLOIihWTwhuV
	u1HhgsNGQKGARTYrJjSYxNJy14bUOFofoirWBY3e+/UAi1QzCeHhWSP2AdQeG1FQBWmH6kbd2jgXr
	hJlJ32FLZMYkzFaXwlt19ZMIJTqqIN01rESuDXr3tpB7rHJaLwiEQ2LMtzQbRKKaO906ivQOWyrIP
	vo7gENaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cU-005etg-0E; Fri, 03 Mar 2023 09:22:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bg-005eMG-Gi
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-0000Bv-9a; Fri, 03 Mar 2023 10:21:39 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-001Wi2-EJ; Fri, 03 Mar 2023 10:21:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2lW-6P; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:28 +0100
Message-Id: <20230303092131.3063587-48-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012140_627087_370611E1 
X-CRM114-Status: GOOD (  11.17  )
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
Subject: [PATCH 47/50] ARM: bcm283x: Only provide PUTC_LL() when activated
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c | 1 +
 arch/arm/include/asm/debug_ll.h         | 6 ++++--
 common/Kconfig                          | 7 +++++++
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 449dfa4575..742f177dec 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -7,6 +7,7 @@
 #include <asm/unaligned.h>
 #include <mach/bcm283x/platform.h>
 #include <debug_ll.h>
+#include <mach/bcm283x/debug_ll.h>
 #include <mach/bcm283x/mbox.h>
 #include <of.h>
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 81602d93d3..a1d5161ccf 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -27,6 +27,10 @@
 #include <mach/vexpress/debug_ll.h>
 #endif
 
+#ifdef CONFIG_DEBUG_BCM283X_UART
+#include <mach/bcm283x/debug_ll.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
@@ -34,8 +38,6 @@
 #include <mach/mvebu/debug_ll.h>
 #elif defined CONFIG_ARCH_DAVINCI
 #include <mach/davinci/debug_ll.h>
-#elif defined CONFIG_ARCH_BCM283X
-#include <mach/bcm283x/debug_ll.h>
 #elif defined CONFIG_ARCH_ZYNQ
 #include <mach/zynq/debug_ll.h>
 #elif defined CONFIG_ARCH_VERSATILE
diff --git a/common/Kconfig b/common/Kconfig
index 9234f1239e..57fe5f7886 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1258,6 +1258,9 @@ config DEBUG_ROCKCHIP_UART
 config DEBUG_OMAP_UART
 	bool
 
+config DEBUG_BCM283X_UART
+	bool
+
 choice
 	prompt "Kernel low-level debugging port"
 	depends on DEBUG_LL
@@ -1452,6 +1455,7 @@ config DEBUG_STM32MP_UART
 config DEBUG_RPI1_UART
 	bool "RaspberryPi 1 PL011 UART"
 	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
 	help
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 1 boards.
@@ -1466,6 +1470,7 @@ config DEBUG_AT91_UART
 config DEBUG_RPI2_3_UART
 	bool "RaspberryPi 2/3 PL011 UART"
 	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
 	help
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 2 and 3 boards.
@@ -1473,6 +1478,7 @@ config DEBUG_RPI2_3_UART
 config DEBUG_RPI3_MINI_UART
 	bool "RaspberryPi 3 mini UART"
 	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
 	help
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 3 board mini UART.
@@ -1480,6 +1486,7 @@ config DEBUG_RPI3_MINI_UART
 config DEBUG_RPI4_MINI_UART
 	bool "RaspberryPi 4 mini UART"
 	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
 	help
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 4 board mini UART.
-- 
2.30.2



