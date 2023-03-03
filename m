Delivery-date: Fri, 03 Mar 2023 10:24:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1eS-007Nb2-DV
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:24:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1eQ-0001RH-92
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:24:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aQy9QekCv0BTaYZh/3GUZ2r4ps7FW50kgKVpw2gdpOk=; b=CgUOcLMRtu6loL3N0NzAGiS8q3
	jvdWIC6xlQTc3HPff0hayBipfnhXKCQzUBjUtRUqX8otiEwN5ri33OJWVAmo+L5epOd5OgyZT01MA
	v4bo6PO4Y6OFm6l7bjl0TG+JFPIckI41HnP9qP7RCb70yIxmkEMMfY5KHjf8wD9GNZnPSjfZ4ozLB
	oxknpQRuvfrXWYtYOuMR+FS/2h/YpNPhJDQwtHQtBd4oIdr9OHZVgQMXp7Ijcwms8QWGeU4bjyQgs
	Y6l9FYVXDL/mtC5NZDS17vIlo3WsmJs7dIjwRnwL4ZMoK8IM/Y8g36EQmRGKZFDL8BBvEv8Rykepb
	Mkzp0GgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cp-005fBJ-Pm; Fri, 03 Mar 2023 09:22:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bf-005eLJ-Tx
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-0000B1-KY; Fri, 03 Mar 2023 10:21:38 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-001Whl-QR; Fri, 03 Mar 2023 10:21:37 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2gA-AD; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:56 +0100
Message-Id: <20230303092131.3063587-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012140_384462_24881CDD 
X-CRM114-Status: GOOD (  13.85  )
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
Subject: [PATCH 15/50] ARM: pxa: Move mach header files to include/mach/pxa
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all pxa specific header files to include/mach/pxa/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/lubbock/board.c                        | 10 +++++-----
 arch/arm/boards/lubbock/lowlevel.c                     |  4 ++--
 arch/arm/boards/mainstone/board.c                      | 10 +++++-----
 arch/arm/boards/mainstone/lowlevel.c                   |  4 ++--
 arch/arm/boards/mioa701/board.c                        | 10 +++++-----
 arch/arm/boards/phytec-phycore-pxa270/board.c          |  8 ++++----
 arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S  |  6 +++---
 arch/arm/boards/zylonite/board.c                       |  6 +++---
 arch/arm/include/asm/debug_ll.h                        |  2 ++
 arch/arm/mach-pxa/common.c                             |  2 +-
 arch/arm/mach-pxa/devices.c                            |  4 ++--
 arch/arm/mach-pxa/gpio.c                               |  2 +-
 arch/arm/mach-pxa/mfp-pxa2xx.c                         |  8 ++++----
 arch/arm/mach-pxa/mfp-pxa3xx.c                         |  6 +++---
 arch/arm/mach-pxa/pxa2xx.c                             |  4 ++--
 arch/arm/mach-pxa/pxa3xx.c                             |  4 ++--
 arch/arm/mach-pxa/sleep.S                              |  4 ++--
 arch/arm/mach-pxa/speed-pxa25x.c                       |  4 ++--
 arch/arm/mach-pxa/speed-pxa27x.c                       |  4 ++--
 arch/arm/mach-pxa/speed-pxa3xx.c                       |  4 ++--
 drivers/mci/pxamci.c                                   |  6 +++---
 drivers/pwm/pxa_pwm.c                                  |  8 ++++----
 drivers/serial/serial_pxa.c                            |  2 +-
 drivers/usb/gadget/pxa27x_udc.c                        |  4 ++--
 drivers/video/pxa.c                                    |  8 ++++----
 .../mach-pxa/include/mach => include/mach/pxa}/clock.h |  0
 .../include/mach => include/mach/pxa}/devices.h        |  2 +-
 .../mach-pxa/include/mach => include/mach/pxa}/gpio.h  |  2 +-
 .../include/mach => include/mach/pxa}/hardware.h       |  0
 .../include/mach => include/mach/pxa}/mci_pxa2xx.h     |  0
 .../include/mach => include/mach/pxa}/mfp-pxa27x.h     |  2 +-
 .../include/mach => include/mach/pxa}/mfp-pxa2xx.h     |  2 +-
 .../include/mach => include/mach/pxa}/mfp-pxa3xx.h     |  2 +-
 .../mach-pxa/include/mach => include/mach/pxa}/mfp.h   |  0
 .../include/mach => include/mach/pxa}/pxa-regs.h       | 10 +++++-----
 .../include/mach => include/mach/pxa}/pxa25x-regs.h    |  0
 .../include/mach => include/mach/pxa}/pxa27x-regs.h    |  0
 .../include/mach => include/mach/pxa}/pxa2xx-regs.h    |  2 +-
 .../include/mach => include/mach/pxa}/pxa3xx-regs.h    |  2 +-
 .../mach-pxa/include/mach => include/mach/pxa}/pxafb.h |  0
 .../include/mach => include/mach/pxa}/regs-intc.h      |  2 +-
 .../include/mach => include/mach/pxa}/regs-lcd.h       |  0
 .../include/mach => include/mach/pxa}/regs-ost.h       |  2 +-
 .../include/mach => include/mach/pxa}/regs-pwm.h       |  2 +-
 .../include/mach => include/mach/pxa}/udc_pxa2xx.h     |  0
 45 files changed, 83 insertions(+), 81 deletions(-)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/clock.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/devices.h (97%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/gpio.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/hardware.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mci_pxa2xx.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mfp-pxa27x.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mfp-pxa2xx.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mfp-pxa3xx.h (95%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mfp.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa-regs.h (80%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa25x-regs.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa27x-regs.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa2xx-regs.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa3xx-regs.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxafb.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/regs-intc.h (98%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/regs-lcd.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/regs-ost.h (97%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/regs-pwm.h (93%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/udc_pxa2xx.h (100%)

diff --git a/arch/arm/boards/lubbock/board.c b/arch/arm/boards/lubbock/board.c
index 9383a0c7af..dfbee7ab8b 100644
--- a/arch/arm/boards/lubbock/board.c
+++ b/arch/arm/boards/lubbock/board.c
@@ -11,11 +11,11 @@
 #include <pwm.h>
 #include <linux/sizes.h>
 
-#include <mach/devices.h>
-#include <mach/mfp-pxa27x.h>
-#include <mach/pxa-regs.h>
-#include <mach/udc_pxa2xx.h>
-#include <mach/mci_pxa2xx.h>
+#include <mach/pxa/devices.h>
+#include <mach/pxa/mfp-pxa27x.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/udc_pxa2xx.h>
+#include <mach/pxa/mci_pxa2xx.h>
 
 #include <platform_data/eth-smc91111.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/lubbock/lowlevel.c b/arch/arm/boards/lubbock/lowlevel.c
index f93a2ff47b..ef6b544a26 100644
--- a/arch/arm/boards/lubbock/lowlevel.c
+++ b/arch/arm/boards/lubbock/lowlevel.c
@@ -7,8 +7,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <linux/sizes.h>
-#include <mach/pxa-regs.h>
-#include <mach/regs-ost.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/regs-ost.h>
 
 /*
  * Memory settings
diff --git a/arch/arm/boards/mainstone/board.c b/arch/arm/boards/mainstone/board.c
index 2e4b634e35..fb39965c4e 100644
--- a/arch/arm/boards/mainstone/board.c
+++ b/arch/arm/boards/mainstone/board.c
@@ -11,11 +11,11 @@
 #include <pwm.h>
 #include <linux/sizes.h>
 
-#include <mach/devices.h>
-#include <mach/mfp-pxa27x.h>
-#include <mach/pxa-regs.h>
-#include <mach/udc_pxa2xx.h>
-#include <mach/mci_pxa2xx.h>
+#include <mach/pxa/devices.h>
+#include <mach/pxa/mfp-pxa27x.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/udc_pxa2xx.h>
+#include <mach/pxa/mci_pxa2xx.h>
 
 #include <platform_data/eth-smc91111.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/mainstone/lowlevel.c b/arch/arm/boards/mainstone/lowlevel.c
index 1ec1d1e028..29d12f7424 100644
--- a/arch/arm/boards/mainstone/lowlevel.c
+++ b/arch/arm/boards/mainstone/lowlevel.c
@@ -7,8 +7,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <linux/sizes.h>
-#include <mach/pxa-regs.h>
-#include <mach/regs-ost.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/regs-ost.h>
 
 /*
  * Memory settings
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
index 5147750a3d..9f28f7b94b 100644
--- a/arch/arm/boards/mioa701/board.c
+++ b/arch/arm/boards/mioa701/board.c
@@ -10,11 +10,11 @@
 #include <gpio.h>
 #include <pwm.h>
 
-#include <mach/devices.h>
-#include <mach/mfp-pxa27x.h>
-#include <mach/pxa-regs.h>
-#include <mach/udc_pxa2xx.h>
-#include <mach/mci_pxa2xx.h>
+#include <mach/pxa/devices.h>
+#include <mach/pxa/mfp-pxa27x.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/udc_pxa2xx.h>
+#include <mach/pxa/mci_pxa2xx.h>
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
diff --git a/arch/arm/boards/phytec-phycore-pxa270/board.c b/arch/arm/boards/phytec-phycore-pxa270/board.c
index 5d31617c82..0862ef3a40 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/board.c
+++ b/arch/arm/boards/phytec-phycore-pxa270/board.c
@@ -10,10 +10,10 @@
 #include <linux/sizes.h>
 
 #include <gpio.h>
-#include <mach/mfp-pxa27x.h>
-#include <mach/pxa-regs.h>
-#include <mach/pxafb.h>
-#include <mach/devices.h>
+#include <mach/pxa/mfp-pxa27x.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/pxafb.h>
+#include <mach/pxa/devices.h>
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
diff --git a/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S b/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
index 8790bdfc09..f8f1a037e0 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
+++ b/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
@@ -13,9 +13,9 @@
 
 #include <config.h>
 #include <linux/sizes.h>
-#include <mach/pxa-regs.h>
-#include <mach/regs-ost.h>
-#include <mach/regs-intc.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/regs-ost.h>
+#include <mach/pxa/regs-intc.h>
 #include <asm/barebox-arm-head.h>
 #include "config.h"
 
diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
index d5b717474a..99719b738c 100644
--- a/arch/arm/boards/zylonite/board.c
+++ b/arch/arm/boards/zylonite/board.c
@@ -16,9 +16,9 @@
 #include <linux/clkdev.h>
 #include <linux/sizes.h>
 
-#include <mach/devices.h>
-#include <mach/mfp-pxa3xx.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/devices.h>
+#include <mach/pxa/mfp-pxa3xx.h>
+#include <mach/pxa/pxa-regs.h>
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 0c1f22e819..acc6be7e8f 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -34,6 +34,8 @@
 #include <mach/uemd/debug_ll.h>
 #elif defined CONFIG_ARCH_SOCFPGA
 #include <mach/socfpga/debug_ll.h>
+#elif defined CONFIG_ARCH_PXA
+#include <mach/pxa/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 5b980cb81b..e0bf1de461 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -15,7 +15,7 @@
 #include <common.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/pxa-regs.h>
 #include <asm/io.h>
 
 #define OSMR3	0x40A0000C
diff --git a/arch/arm/mach-pxa/devices.c b/arch/arm/mach-pxa/devices.c
index 4c43f6374e..b5d098bd91 100644
--- a/arch/arm/mach-pxa/devices.c
+++ b/arch/arm/mach-pxa/devices.c
@@ -14,8 +14,8 @@
  */
 #include <common.h>
 #include <driver.h>
-#include <mach/devices.h>
-#include <mach/pxafb.h>
+#include <mach/pxa/devices.h>
+#include <mach/pxa/pxafb.h>
 
 static inline struct device *pxa_add_device(char *name, int id, void *base,
 					      int size, void *pdata)
diff --git a/arch/arm/mach-pxa/gpio.c b/arch/arm/mach-pxa/gpio.c
index ebda6bbe2a..130faa404b 100644
--- a/arch/arm/mach-pxa/gpio.c
+++ b/arch/arm/mach-pxa/gpio.c
@@ -14,7 +14,7 @@
 #include <errno.h>
 #include <gpio.h>
 
-#include <mach/gpio.h>
+#include <mach/pxa/gpio.h>
 #include <asm/io.h>
 
 int pxa_last_gpio;
diff --git a/arch/arm/mach-pxa/mfp-pxa2xx.c b/arch/arm/mach-pxa/mfp-pxa2xx.c
index 2456cef936..aca46c45b3 100644
--- a/arch/arm/mach-pxa/mfp-pxa2xx.c
+++ b/arch/arm/mach-pxa/mfp-pxa2xx.c
@@ -17,10 +17,10 @@
 #include <errno.h>
 #include <init.h>
 
-#include <mach/gpio.h>
-#include <mach/hardware.h>
-#include <mach/mfp-pxa2xx.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/gpio.h>
+#include <mach/pxa/hardware.h>
+#include <mach/pxa/mfp-pxa2xx.h>
+#include <mach/pxa/pxa-regs.h>
 
 #define PGSR(x)		__REG2(0x40F00020, (x) << 2)
 #define __GAFR(u, x)	__REG2((u) ? 0x40E00058 : 0x40E00054, (x) << 3)
diff --git a/arch/arm/mach-pxa/mfp-pxa3xx.c b/arch/arm/mach-pxa/mfp-pxa3xx.c
index af80ab24ad..7f9e5113b8 100644
--- a/arch/arm/mach-pxa/mfp-pxa3xx.c
+++ b/arch/arm/mach-pxa/mfp-pxa3xx.c
@@ -16,9 +16,9 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/hardware.h>
-#include <mach/mfp-pxa3xx.h>
-#include <mach/mfp.h>
+#include <mach/pxa/hardware.h>
+#include <mach/pxa/mfp-pxa3xx.h>
+#include <mach/pxa/mfp.h>
 
 #define MFPR_SIZE	(PAGE_SIZE)
 
diff --git a/arch/arm/mach-pxa/pxa2xx.c b/arch/arm/mach-pxa/pxa2xx.c
index e28378e6db..496ceb39d5 100644
--- a/arch/arm/mach-pxa/pxa2xx.c
+++ b/arch/arm/mach-pxa/pxa2xx.c
@@ -16,8 +16,8 @@
 #include <init.h>
 #include <poweroff.h>
 #include <reset_source.h>
-#include <mach/hardware.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/hardware.h>
+#include <mach/pxa/pxa-regs.h>
 
 extern void pxa_suspend(int mode);
 
diff --git a/arch/arm/mach-pxa/pxa3xx.c b/arch/arm/mach-pxa/pxa3xx.c
index ccfd952b5e..ec49983962 100644
--- a/arch/arm/mach-pxa/pxa3xx.c
+++ b/arch/arm/mach-pxa/pxa3xx.c
@@ -16,8 +16,8 @@
 #include <init.h>
 #include <poweroff.h>
 #include <reset_source.h>
-#include <mach/hardware.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/hardware.h>
+#include <mach/pxa/pxa-regs.h>
 
 extern void pxa3xx_suspend(int mode);
 
diff --git a/arch/arm/mach-pxa/sleep.S b/arch/arm/mach-pxa/sleep.S
index 1c678158c9..3d12dc54de 100644
--- a/arch/arm/mach-pxa/sleep.S
+++ b/arch/arm/mach-pxa/sleep.S
@@ -13,8 +13,8 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
-#include <mach/hardware.h>
-#include <mach/pxa2xx-regs.h>
+#include <mach/pxa/hardware.h>
+#include <mach/pxa/pxa2xx-regs.h>
 
 #define MDREFR_KDIV	0x200a4000	// all banks
 #define CCCR_SLEEP	0x00000107	// L=7 2N=2 A=0 PPDIS=0 CPDIS=0
diff --git a/arch/arm/mach-pxa/speed-pxa25x.c b/arch/arm/mach-pxa/speed-pxa25x.c
index 69143431e4..de3d5c251c 100644
--- a/arch/arm/mach-pxa/speed-pxa25x.c
+++ b/arch/arm/mach-pxa/speed-pxa25x.c
@@ -8,8 +8,8 @@
  */
 
 #include <common.h>
-#include <mach/clock.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/clock.h>
+#include <mach/pxa/pxa-regs.h>
 
 /* Crystal clock: 13MHz */
 #define BASE_CLK	13000000
diff --git a/arch/arm/mach-pxa/speed-pxa27x.c b/arch/arm/mach-pxa/speed-pxa27x.c
index 1de034c677..5441dc3d70 100644
--- a/arch/arm/mach-pxa/speed-pxa27x.c
+++ b/arch/arm/mach-pxa/speed-pxa27x.c
@@ -8,8 +8,8 @@
  */
 
 #include <common.h>
-#include <mach/clock.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/clock.h>
+#include <mach/pxa/pxa-regs.h>
 
 /* Crystal clock: 13MHz */
 #define BASE_CLK	13000000
diff --git a/arch/arm/mach-pxa/speed-pxa3xx.c b/arch/arm/mach-pxa/speed-pxa3xx.c
index b24b7a8fc3..2579966f41 100644
--- a/arch/arm/mach-pxa/speed-pxa3xx.c
+++ b/arch/arm/mach-pxa/speed-pxa3xx.c
@@ -11,8 +11,8 @@
 #include <init.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
-#include <mach/clock.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/clock.h>
+#include <mach/pxa/pxa-regs.h>
 
 /* Crystal clock: 13MHz */
 #define BASE_CLK	13000000
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index d5807c0fc9..8d8e9e88bb 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -15,9 +15,9 @@
 #include <mci.h>
 #include <linux/err.h>
 
-#include <mach/clock.h>
-#include <mach/mci_pxa2xx.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/clock.h>
+#include <mach/pxa/mci_pxa2xx.h>
+#include <mach/pxa/pxa-regs.h>
 #include "pxamci.h"
 
 #define DRIVER_NAME	"pxa-mmc"
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 305dc06bdd..0ed69d999f 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -13,10 +13,10 @@
 #include <io.h>
 #include <pwm.h>
 
-#include <mach/hardware.h>
-#include <mach/clock.h>
-#include <mach/pxa-regs.h>
-#include <mach/regs-pwm.h>
+#include <mach/pxa/hardware.h>
+#include <mach/pxa/clock.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/regs-pwm.h>
 #include <linux/math64.h>
 #include <linux/compiler.h>
 
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 9a591a0be8..97342f923e 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -9,7 +9,7 @@
 #include <init.h>
 #include <malloc.h>
 
-#include <mach/clock.h>
+#include <mach/pxa/clock.h>
 #include <asm/io.h>
 
 #define RBR		0x00	/* Receive Buffer Register (read only) */
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index bae0a40642..e5e2ca2b7c 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -18,8 +18,8 @@
 #include <usb/gadget.h>
 
 #include "pxa27x_udc.h"
-#include <mach/udc_pxa2xx.h>
-#include <mach/pxa-regs.h>
+#include <mach/pxa/udc_pxa2xx.h>
+#include <mach/pxa/pxa-regs.h>
 
 #define	DRIVER_VERSION	"2008-04-18"
 #define	DRIVER_DESC	"PXA 27x USB Device Controller driver"
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index 99aa435bbe..561a73fb32 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -23,10 +23,10 @@
 #include <malloc.h>
 #include <linux/err.h>
 
-#include <mach/clock.h>
-#include <mach/pxa-regs.h>
-#include <mach/regs-lcd.h>
-#include <mach/pxafb.h>
+#include <mach/pxa/clock.h>
+#include <mach/pxa/pxa-regs.h>
+#include <mach/pxa/regs-lcd.h>
+#include <mach/pxa/pxafb.h>
 
 #include <asm/io.h>
 #include <linux/math64.h>
diff --git a/arch/arm/mach-pxa/include/mach/clock.h b/include/mach/pxa/clock.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/clock.h
rename to include/mach/pxa/clock.h
diff --git a/arch/arm/mach-pxa/include/mach/devices.h b/include/mach/pxa/devices.h
similarity index 97%
rename from arch/arm/mach-pxa/include/mach/devices.h
rename to include/mach/pxa/devices.h
index a50a1862d0..e4d1d07091 100644
--- a/arch/arm/mach-pxa/include/mach/devices.h
+++ b/include/mach/pxa/devices.h
@@ -13,7 +13,7 @@
  *
  */
 #include <i2c/i2c.h>
-#include <mach/pxafb.h>
+#include <mach/pxa/pxafb.h>
 
 struct device *pxa_add_i2c(void *base, int id,
 			     struct i2c_platform_data *pdata);
diff --git a/arch/arm/mach-pxa/include/mach/gpio.h b/include/mach/pxa/gpio.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/gpio.h
rename to include/mach/pxa/gpio.h
index d8eac99fbc..06e6f3e42b 100644
--- a/arch/arm/mach-pxa/include/mach/gpio.h
+++ b/include/mach/pxa/gpio.h
@@ -20,7 +20,7 @@
 #ifndef __ASM_ARCH_PXA_GPIO_H
 #define __ASM_ARCH_PXA_GPIO_H
 
-#include <mach/hardware.h>
+#include <mach/pxa/hardware.h>
 
 #define GPIO_REGS_VIRT	(0x40E00000)
 
diff --git a/arch/arm/mach-pxa/include/mach/hardware.h b/include/mach/pxa/hardware.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/hardware.h
rename to include/mach/pxa/hardware.h
diff --git a/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h b/include/mach/pxa/mci_pxa2xx.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
rename to include/mach/pxa/mci_pxa2xx.h
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h b/include/mach/pxa/mfp-pxa27x.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
rename to include/mach/pxa/mfp-pxa27x.h
index 5db786a85a..6193a440cb 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
+++ b/include/mach/pxa/mfp-pxa27x.h
@@ -10,7 +10,7 @@
  * specific controller, and this should work in most cases.
  */
 
-#include <mach/mfp-pxa2xx.h>
+#include <mach/pxa/mfp-pxa2xx.h>
 
 /* Note: GPIO3/GPIO4 will be driven by Power I2C when PCFR/PI2C_EN
  * bit is set, regardless of the GPIO configuration
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h b/include/mach/pxa/mfp-pxa2xx.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
rename to include/mach/pxa/mfp-pxa2xx.h
index 2713d4cc9f..00bae5e063 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
+++ b/include/mach/pxa/mfp-pxa2xx.h
@@ -3,7 +3,7 @@
 #ifndef __ASM_ARCH_MFP_PXA2XX_H
 #define __ASM_ARCH_MFP_PXA2XX_H
 
-#include <mach/mfp.h>
+#include <mach/pxa/mfp.h>
 
 /*
  * the following MFP_xxx bit definitions in mfp.h are re-used for pxa2xx:
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h b/include/mach/pxa/mfp-pxa3xx.h
similarity index 95%
rename from arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
rename to include/mach/pxa/mfp-pxa3xx.h
index 8e4af7cde8..9d5c4b6215 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
+++ b/include/mach/pxa/mfp-pxa3xx.h
@@ -3,7 +3,7 @@
 #ifndef __ASM_ARCH_MFP_PXA3XX_H
 #define __ASM_ARCH_MFP_PXA3XX_H
 
-#include <mach/mfp.h>
+#include <mach/pxa/mfp.h>
 
 #define MFPR_BASE	(0x40e10000)
 
diff --git a/arch/arm/mach-pxa/include/mach/mfp.h b/include/mach/pxa/mfp.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/mfp.h
rename to include/mach/pxa/mfp.h
diff --git a/arch/arm/mach-pxa/include/mach/pxa-regs.h b/include/mach/pxa/pxa-regs.h
similarity index 80%
rename from arch/arm/mach-pxa/include/mach/pxa-regs.h
rename to include/mach/pxa/pxa-regs.h
index 9bcb5efb7f..55bfae67be 100644
--- a/arch/arm/mach-pxa/include/mach/pxa-regs.h
+++ b/include/mach/pxa/pxa-regs.h
@@ -21,17 +21,17 @@
 #endif
 
 #ifdef CONFIG_ARCH_PXA2XX
-# include <mach/pxa2xx-regs.h>
+#include <mach/pxa/pxa2xx-regs.h>
 #endif
 
 #if defined(CONFIG_ARCH_PXA27X)
-# include <mach/pxa27x-regs.h>
+#include <mach/pxa/pxa27x-regs.h>
 #elif defined(CONFIG_ARCH_PXA3XX)
-# include <mach/pxa3xx-regs.h>
+#include <mach/pxa/pxa3xx-regs.h>
 #elif defined(CONFIG_ARCH_PXA25X)
-# include <mach/pxa25x-regs.h>
+#include <mach/pxa/pxa25x-regs.h>
 #else
-# error "unknown PXA soc type"
+#error "unknown PXA soc type"
 #endif
 
 #endif	/* !__MACH_PXA_REGS_H */
diff --git a/arch/arm/mach-pxa/include/mach/pxa25x-regs.h b/include/mach/pxa/pxa25x-regs.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/pxa25x-regs.h
rename to include/mach/pxa/pxa25x-regs.h
diff --git a/arch/arm/mach-pxa/include/mach/pxa27x-regs.h b/include/mach/pxa/pxa27x-regs.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/pxa27x-regs.h
rename to include/mach/pxa/pxa27x-regs.h
diff --git a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h b/include/mach/pxa/pxa2xx-regs.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
rename to include/mach/pxa/pxa2xx-regs.h
index dc7704eda2..9e5aeb467d 100644
--- a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
+++ b/include/mach/pxa/pxa2xx-regs.h
@@ -14,7 +14,7 @@
 #ifndef __PXA2XX_REGS_H
 #define __PXA2XX_REGS_H
 
-#include <mach/hardware.h>
+#include <mach/pxa/hardware.h>
 
 /*
  * PXA Chip selects
diff --git a/arch/arm/mach-pxa/include/mach/pxa3xx-regs.h b/include/mach/pxa/pxa3xx-regs.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/pxa3xx-regs.h
rename to include/mach/pxa/pxa3xx-regs.h
index 373711d92f..0ecdb6ae87 100644
--- a/arch/arm/mach-pxa/include/mach/pxa3xx-regs.h
+++ b/include/mach/pxa/pxa3xx-regs.h
@@ -13,7 +13,7 @@
 #ifndef __MACH_PXA3XX_REGS
 #define __MACH_PXA3XX_REGS
 
-#include <mach/hardware.h>
+#include <mach/pxa/hardware.h>
 
 /*
  * Oscillator Configuration Register (OSCC)
diff --git a/arch/arm/mach-pxa/include/mach/pxafb.h b/include/mach/pxa/pxafb.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/pxafb.h
rename to include/mach/pxa/pxafb.h
diff --git a/arch/arm/mach-pxa/include/mach/regs-intc.h b/include/mach/pxa/regs-intc.h
similarity index 98%
rename from arch/arm/mach-pxa/include/mach/regs-intc.h
rename to include/mach/pxa/regs-intc.h
index 91760b2678..b247feada4 100644
--- a/arch/arm/mach-pxa/include/mach/regs-intc.h
+++ b/include/mach/pxa/regs-intc.h
@@ -3,7 +3,7 @@
 #ifndef __ASM_MACH_REGS_INTC_H
 #define __ASM_MACH_REGS_INTC_H
 
-#include <mach/hardware.h>
+#include <mach/pxa/hardware.h>
 
 /*
  * Interrupt Controller
diff --git a/arch/arm/mach-pxa/include/mach/regs-lcd.h b/include/mach/pxa/regs-lcd.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/regs-lcd.h
rename to include/mach/pxa/regs-lcd.h
diff --git a/arch/arm/mach-pxa/include/mach/regs-ost.h b/include/mach/pxa/regs-ost.h
similarity index 97%
rename from arch/arm/mach-pxa/include/mach/regs-ost.h
rename to include/mach/pxa/regs-ost.h
index aefdee44f8..6a81c92548 100644
--- a/arch/arm/mach-pxa/include/mach/regs-ost.h
+++ b/include/mach/pxa/regs-ost.h
@@ -3,7 +3,7 @@
 #ifndef __ASM_MACH_REGS_OST_H
 #define __ASM_MACH_REGS_OST_H
 
-#include <mach/hardware.h>
+#include <mach/pxa/hardware.h>
 
 /*
  * OS Timer & Match Registers
diff --git a/arch/arm/mach-pxa/include/mach/regs-pwm.h b/include/mach/pxa/regs-pwm.h
similarity index 93%
rename from arch/arm/mach-pxa/include/mach/regs-pwm.h
rename to include/mach/pxa/regs-pwm.h
index 9fdcbb64ae..773a4e257c 100644
--- a/arch/arm/mach-pxa/include/mach/regs-pwm.h
+++ b/include/mach/pxa/regs-pwm.h
@@ -7,7 +7,7 @@
 #ifndef __ASM_MACH_REGS_PWM_H
 #define __ASM_MACH_REGS_PWM_H
 
-#include <mach/hardware.h>
+#include <mach/pxa/hardware.h>
 
 /*
  * Pulse modulator registers
diff --git a/arch/arm/mach-pxa/include/mach/udc_pxa2xx.h b/include/mach/pxa/udc_pxa2xx.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/udc_pxa2xx.h
rename to include/mach/pxa/udc_pxa2xx.h
-- 
2.30.2



