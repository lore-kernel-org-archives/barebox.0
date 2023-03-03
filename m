Delivery-date: Fri, 03 Mar 2023 10:31:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1lN-007O67-NG
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:31:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1lM-00050x-Q2
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:31:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=enxw/r1dRXP2DUXtDOmzPoektmDmwE/SsrCqGqnzG6E=; b=JOl03g8tvHar6Xgrd8N5sralDu
	rUbLlv+5ux93KLJmrUQw8UCU1MhXK0r2boUJPa8ManZQFcMQK1NVNusac34D41CfsakNJbfgLMs/E
	VKj+cz56bnvs2stoWRrR5mEyIo+suxY0/a5+NAEj7/wRYnjVU0VfwNfTsYYRXe5Fww+O8gYTqMzM7
	Ymz8FWikXomurKEzk7dyNskzpEFW37vk78O0Jzs6LVEuksPlV+55562qlXLNtHUiXYJ9zt5zttW3X
	OmX/hYs78h/dJwZ716QN7WWQqF9cP0GUYp4rQlHkp1sdzWMSX5C+63PpU6V+HCuK/FDQQcbOtwDdC
	oHcqJK3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1k9-005kcZ-Rt; Fri, 03 Mar 2023 09:30:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cG-005em9-Nz
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=enxw/r1dRXP2DUXtDOmzPoektmDmwE/SsrCqGqnzG6E=; b=Zmgvj+P6q6P19yd6drln7DFg0o
	UOF+Cq22rpcKJ6xw40xVK3Wp1yusQZBKjpuP9Jbbgt9gOF6vkRL92qeNWrPCITDsOJlMxBqKVSCfC
	hwMnfyVuA3pD0fzU4WqDWpZI1ixVPHAZppuEWw9bWgCUDUP1JmPR9x8SxrsEP2xFIDelPiHoU6dX+
	OBd4Cl0yT5cCHHSHx398YruKI/ugaUCC0x0XG6p15OAlCDehhAomaeMfnpzebl1yYRYREGcKm/0qA
	HbpEQB9LJWau6BvHsf52sS41gEBG7eVY6j+lkcksbczm5H/b4aZZHjfOO4SRzaQFyzllEnUeemCHx
	Pn3YG06g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bn-00FdL7-1r
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:22:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-0000FY-Fo; Fri, 03 Mar 2023 10:21:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bh-001Wj4-MD; Fri, 03 Mar 2023 10:21:41 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2gX-Hw; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:02 +0100
Message-Id: <20230303092131.3063587-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092153_704267_98EE4F47 
X-CRM114-Status: GOOD (  13.03  )
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
Subject: [PATCH 21/50] ARM: clps711x: Move mach header files to include/mach/clps711x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all clps711x specific header files to include/mach/clps711x/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/clep7212/lowlevel.c                           | 2 +-
 arch/arm/include/asm/debug_ll.h                               | 2 ++
 arch/arm/mach-clps711x/clock.c                                | 2 +-
 arch/arm/mach-clps711x/common.c                               | 2 +-
 arch/arm/mach-clps711x/devices.c                              | 4 ++--
 arch/arm/mach-clps711x/lowlevel.c                             | 2 +-
 .../include/mach => include/mach/clps711x}/clps711x.h         | 0
 .../include/mach => include/mach/clps711x}/debug_ll.h         | 2 +-
 8 files changed, 9 insertions(+), 7 deletions(-)
 rename {arch/arm/mach-clps711x/include/mach => include/mach/clps711x}/clps711x.h (100%)
 rename {arch/arm/mach-clps711x/include/mach => include/mach/clps711x}/debug_ll.h (90%)

diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index 09f2762fac..ba402cecea 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -4,7 +4,7 @@
 #include <common.h>
 #include <asm/barebox-arm.h>
 #include <linux/sizes.h>
-#include <mach/clps711x.h>
+#include <mach/clps711x/clps711x.h>
 
 extern char __dtb_ep7212_clep7212_start[];
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index f9a5ca7566..96350936f9 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -46,6 +46,8 @@
 #include <mach/ep93xx/debug_ll.h>
 #elif defined CONFIG_ARCH_DIGIC
 #include <mach/digic/debug_ll.h>
+#elif defined CONFIG_ARCH_CLPS711X
+#include <mach/clps711x/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index fda4e9a01d..0ddfce8269 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -9,7 +9,7 @@
 #include <linux/sizes.h>
 #include <dt-bindings/clock/clps711x-clock.h>
 
-#include <mach/clps711x.h>
+#include <mach/clps711x/clps711x.h>
 
 #define CLPS711X_OSC_FREQ	3686400
 #define CLPS711X_EXT_FREQ	13000000
diff --git a/arch/arm/mach-clps711x/common.c b/arch/arm/mach-clps711x/common.c
index d27ed41ef9..ce385fdda3 100644
--- a/arch/arm/mach-clps711x/common.c
+++ b/arch/arm/mach-clps711x/common.c
@@ -6,7 +6,7 @@
 #include <restart.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
-#include <mach/clps711x.h>
+#include <mach/clps711x/clps711x.h>
 
 #define CLPS711X_MAP_ADDR	0x90000000
 
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index 8eacc70018..a1a261412b 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -14,8 +14,8 @@
 #include <asm/io.h>
 #include <asm/memory.h>
 
-#include <mach/clps711x.h>
-#include <mach/devices.h>
+#include <mach/clps711x/clps711x.h>
+#include <mach/clps711x/devices.h>
 
 static int clps711x_mem_init(void)
 {
diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
index 608f0778d7..2ede50538a 100644
--- a/arch/arm/mach-clps711x/lowlevel.c
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <linux/sizes.h>
-#include <mach/clps711x.h>
+#include <mach/clps711x/clps711x.h>
 
 #define DEBUG_LL_BAUDRATE	(57600)
 
diff --git a/arch/arm/mach-clps711x/include/mach/clps711x.h b/include/mach/clps711x/clps711x.h
similarity index 100%
rename from arch/arm/mach-clps711x/include/mach/clps711x.h
rename to include/mach/clps711x/clps711x.h
diff --git a/arch/arm/mach-clps711x/include/mach/debug_ll.h b/include/mach/clps711x/debug_ll.h
similarity index 90%
rename from arch/arm/mach-clps711x/include/mach/debug_ll.h
rename to include/mach/clps711x/debug_ll.h
index 342bb7628a..1af7cb4f65 100644
--- a/arch/arm/mach-clps711x/include/mach/debug_ll.h
+++ b/include/mach/clps711x/debug_ll.h
@@ -5,7 +5,7 @@
 #define __MACH_DEBUG_LL_H__
 
 #include <asm/io.h>
-#include <mach/clps711x.h>
+#include <mach/clps711x/clps711x.h>
 
 static inline void PUTC_LL(char c)
 {
-- 
2.30.2



