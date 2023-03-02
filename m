Delivery-date: Thu, 02 Mar 2023 12:17:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwW-006Un2-Lb
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:17:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwW-0001c3-8Z
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:17:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2EeVlOHij/w+eM/pr39LnghnTLR+aYGIEiWWy8pyYcQ=; b=VAtqodurIEsVIFVSaq9kXrfHef
	/WUDt6YFimyf++xEJ4SM7k82NxqFFeCI8cELMcneG3CMLrQtbLGvCC/MYhiQkhoAY8TjUJroAwuaJ
	AhsbwAW+CSZsMY2YYoOYE/rSUuh5VENf47jsjhZySas57SZJ9VaTqvUsSmVcCLyd2TXFTND+YDWdE
	KTGSm/mO6xmXiqes95TNQoPvrgvt5aXmsurq+9C6aeBGOVQAHBffdNylV0wZSyOaJ2kcOouGBDSw5
	pZKe5oUQl9B0N/9eCI2PCmKICTNdtM23bkq9kRW7MtASx0UE9qX+CYLjAsPToWEdX/gnh9YcDIq40
	TYpUJ/Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgvD-001sN0-5F; Thu, 02 Mar 2023 11:16:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgux-001sG0-I4
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-00017b-Al; Thu, 02 Mar 2023 12:16:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguv-001Jd2-Jo; Thu, 02 Mar 2023 12:16:09 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguu-004QVg-0F; Thu, 02 Mar 2023 12:16:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:16:03 +0100
Message-Id: <20230302111606.1054037-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031611_644378_73F56FDF 
X-CRM114-Status: GOOD (  11.99  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/13] ARM: Makefile: Drop board-y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

board-y has the only purpose to include a global config.h file directly
with #include <config.h>. This is no longer needed, let the remaining
users include their config.h directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                             | 21 +------------------
 arch/arm/boards/Makefile                      |  2 ++
 arch/arm/boards/at91rm9200ek/lowlevel.c       |  2 ++
 .../phytec-phycore-pxa270/lowlevel_init.S     |  1 +
 4 files changed, 6 insertions(+), 20 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 0a81e6c254..6d4bfa8c45 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -109,19 +109,6 @@ machine-$(CONFIG_ARCH_UEMD)		:= uemd
 machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 machine-$(CONFIG_ARCH_ZYNQMP)		:= zynqmp
 
-
-# Board directory name.  This list is sorted alphanumerically
-# by CONFIG_* macro name.
-#
-# DO NOT ADD NEW ENTRIES TO THIS LIST!
-# Add to arch/arm/boards/Makefile instead.
-#
-# These are here only because they have a board specific config.h.
-# TODO: Get rid of board specific config.h and move these to
-# arch/arm/boards/Makefile aswell.
-board-$(CONFIG_MACH_AT91RM9200EK)		+= at91rm9200ek
-board-$(CONFIG_MACH_PCM027)			+= phytec-phycore-pxa270
-
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
@@ -200,19 +187,13 @@ maketools:
 
 PHONY += maketools
 
-ifneq ($(board-y),)
-BOARD := arch/arm/boards/$(board-y)/
-else
-BOARD :=
-endif
-
 ifneq ($(machine-y),)
 MACH := arch/arm/mach-$(machine-y)/
 else
 MACH :=
 endif
 
-common-y += $(BOARD) arch/arm/boards/ $(MACH)
+common-y += arch/arm/boards/ $(MACH)
 common-y += arch/arm/cpu/
 
 ifeq ($(CONFIG_CPU_V8), y)
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 828852c596..1c1b14bca8 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_MACH_ADVANTECH_ROM_742X)		+= advantech-mx6/
 obj-$(CONFIG_MACH_AFI_GF)			+= afi-gf/
 obj-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip/
 obj-$(CONFIG_MACH_ARCHOSG9)			+= archosg9/
+obj-$(CONFIG_MACH_AT91RM9200EK)			+= at91rm9200ek/
 obj-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek/
 obj-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek/
 obj-$(CONFIG_MACH_AT91SAM9263EK)		+= at91sam9263ek/
@@ -87,6 +88,7 @@ obj-$(CONFIG_MACH_PANDA)			+= panda/
 obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
 obj-$(CONFIG_MACH_PCAAL1)			+= phytec-phycard-omap3/
 obj-$(CONFIG_MACH_PCAAXL2)			+= phytec-phycard-omap4/
+obj-$(CONFIG_MACH_PCM027)			+= phytec-phycore-pxa270/
 obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
 obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index 9180a484aa..0c26d719fd 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -16,6 +16,8 @@
 #include <mach/at91_pmc.h>
 #include <mach/hardware.h>
 
+#include "config.h"
+
 void static inline access_sdram(void)
 {
 	writel(0x00000000, AT91_CHIPSELECT_1);
diff --git a/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S b/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
index 9c6366cc2a..8790bdfc09 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
+++ b/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
@@ -17,6 +17,7 @@
 #include <mach/regs-ost.h>
 #include <mach/regs-intc.h>
 #include <asm/barebox-arm-head.h>
+#include "config.h"
 
 #define GPSR0		0x40E00018	/* GPIO Pin Output Set Register GPIO <31:00> */
 #define GPSR1		0x40E0001C	/* GPIO Pin Output Set Register GPIO <63:32> */
-- 
2.30.2



