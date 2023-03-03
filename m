Delivery-date: Fri, 03 Mar 2023 10:23:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dc-007NWq-K3
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:23:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1db-0000y7-U7
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:23:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NhsWDeahdKurLF4xDzeJc2MFfMdkxu2NRYzonvXXOD0=; b=UsLJO/r+l4ZPCu5al1xjdNl4tk
	e1FWz7AIDW49SVTDjAx2Vz9/RuFh2ZNErDqjhZh0qUGCu1SrPSJe3MgEoTDFXwDcOy2NSzHuX6m0i
	IIT12vN9/+LqXqX1Axjty5bE3hLGIhjWG9ogNeH7ye3tPzyjciRocbAWaGpUaKVcNXVIFG2FXEGk8
	DoN1dITvpNT4mJTQ2EgEtZV+APMXVQCAzfF5IHU3YYM2Pivq8nHqZcmFEtNI/L550Vt/4LilOghMg
	rvaxO6xHGwK0bf+sdKPmTZjRjIeB8fBlj2I187efWURflJlXQ+kScGcQR0MKTgBjUnEeuOhJPFhbg
	gb6Te+xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cG-005eir-M5; Fri, 03 Mar 2023 09:22:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bf-005eLG-QN
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-0000Az-I2; Fri, 03 Mar 2023 10:21:38 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-001Whk-Nf; Fri, 03 Mar 2023 10:21:37 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2fx-7D; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:54 +0100
Message-Id: <20230303092131.3063587-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012139_886707_3483D154 
X-CRM114-Status: GOOD (  11.90  )
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
Subject: [PATCH 13/50] ARM: uemd: Move mach header files to include/mach/uemd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all uemd specific header files to include/mach/uemd/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/module-mb7707/board.c                           | 2 +-
 arch/arm/include/asm/debug_ll.h                                 | 2 ++
 .../arm/mach-uemd/include/mach => include/mach/uemd}/debug_ll.h | 2 +-
 .../arm/mach-uemd/include/mach => include/mach/uemd}/hardware.h | 0
 4 files changed, 4 insertions(+), 2 deletions(-)
 rename {arch/arm/mach-uemd/include/mach => include/mach/uemd}/debug_ll.h (97%)
 rename {arch/arm/mach-uemd/include/mach => include/mach/uemd}/hardware.h (100%)

diff --git a/arch/arm/boards/module-mb7707/board.c b/arch/arm/boards/module-mb7707/board.c
index c4f78a8135..122348210d 100644
--- a/arch/arm/boards/module-mb7707/board.c
+++ b/arch/arm/boards/module-mb7707/board.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <driver.h>
 #include <usb/ehci.h>
-#include <mach/hardware.h>
+#include <mach/uemd/hardware.h>
 
 static int hostname_init(void)
 {
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index b3bd8530de..63bd8c022a 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -30,6 +30,8 @@
 #include <mach/layerscape/debug_ll.h>
 #elif defined CONFIG_ARCH_TEGRA
 #include <mach/tegra/debug_ll.h>
+#elif defined CONFIG_ARCH_UEMD
+#include <mach/uemd/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-uemd/include/mach/debug_ll.h b/include/mach/uemd/debug_ll.h
similarity index 97%
rename from arch/arm/mach-uemd/include/mach/debug_ll.h
rename to include/mach/uemd/debug_ll.h
index a565b67275..df24e1d938 100644
--- a/arch/arm/mach-uemd/include/mach/debug_ll.h
+++ b/include/mach/uemd/debug_ll.h
@@ -21,7 +21,7 @@
 #define __INCLUDE_ARCH_DEBUG_LL_H__
 
 #include <asm/io.h>
-#include <mach/hardware.h>
+#include <mach/uemd/hardware.h>
 
 #define DEBUG_LL_UART_ADDR	UEMD_UART0_BASE
 #define DEBUG_LL_UART_RSHFT	2
diff --git a/arch/arm/mach-uemd/include/mach/hardware.h b/include/mach/uemd/hardware.h
similarity index 100%
rename from arch/arm/mach-uemd/include/mach/hardware.h
rename to include/mach/uemd/hardware.h
-- 
2.30.2



