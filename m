Delivery-date: Fri, 03 Mar 2023 10:23:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dJ-007NV8-8g
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:23:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dI-0000qL-ID
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:23:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QScG6E9BPpcHpCNTKgYF6nDuUdS7ZmYbVwA8MYy2r9M=; b=KfrQ6tDy+ZTb1jY+zdQEv9vlIV
	kzZOXFHFwmqtIWrGS5RotaTw6zbVPTOYuUkqXNYPiuhWWvAyMy8jWr0BpJXNWzOD0DwAOZtVH8FBw
	bWZaTwIhUDnr7DFCeUBnya/ur/NmRL8oceuxxT+hVFP5CbbnitizYeNN/9yyd8eJmVGgKghSCLIpw
	veigI7LUhjrB9XZr5k8x7Nc9pHhoR5/uuz3o1ovAwmLDSK85HOgVAaO5Rm3ux1QfqkvKNkF/z0Wc+
	x6OPP5lVR/9he0uA1UuyO+R+e98dXnoicQE9IBGpHg2+xaieCHS3nHWvvcX7M+8QiOp7D/18tG7PW
	j9anO3sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c3-005eae-O1; Fri, 03 Mar 2023 09:22:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bf-005eKK-55
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-00009t-Bk; Fri, 03 Mar 2023 10:21:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bc-001WhQ-H9; Fri, 03 Mar 2023 10:21:36 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2eo-4e; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:51 +0100
Message-Id: <20230303092131.3063587-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012139_249158_64F6DC98 
X-CRM114-Status: GOOD (  11.39  )
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
Subject: [PATCH 10/50] ARM: versatile: Move mach header files to include/mach/versatile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all versatile specific header files to include/mach/versatile/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/versatile/versatilepb.c                       | 4 ++--
 arch/arm/include/asm/debug_ll.h                               | 2 ++
 arch/arm/mach-versatile/core.c                                | 4 ++--
 .../include/mach => include/mach/versatile}/debug_ll.h        | 0
 .../include/mach => include/mach/versatile}/init.h            | 0
 .../include/mach => include/mach/versatile}/platform.h        | 0
 6 files changed, 6 insertions(+), 4 deletions(-)
 rename {arch/arm/mach-versatile/include/mach => include/mach/versatile}/debug_ll.h (100%)
 rename {arch/arm/mach-versatile/include/mach => include/mach/versatile}/init.h (100%)
 rename {arch/arm/mach-versatile/include/mach => include/mach/versatile}/platform.h (100%)

diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 9a9ef0e095..923dbd2564 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -14,8 +14,8 @@
 #include <asm/armlinux.h>
 #include <asm/system_info.h>
 #include <generated/mach-types.h>
-#include <mach/init.h>
-#include <mach/platform.h>
+#include <mach/versatile/init.h>
+#include <mach/versatile/platform.h>
 #include <environment.h>
 #include <linux/sizes.h>
 #include <platform_data/eth-smc91111.h>
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 1a31083cbe..ca075ae411 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -24,6 +24,8 @@
 #include <mach/zynq/debug_ll.h>
 #elif defined CONFIG_ARCH_VEXPRESS
 #include <mach/vexpress/debug_ll.h>
+#elif defined CONFIG_ARCH_VERSATILE
+#include <mach/versatile/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 9a81b5b6f3..1e1ee92c2d 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -38,8 +38,8 @@
 #include <asm/hardware/arm_timer.h>
 #include <asm/armlinux.h>
 
-#include <mach/platform.h>
-#include <mach/init.h>
+#include <mach/versatile/platform.h>
+#include <mach/versatile/init.h>
 
 struct clk {
 	unsigned long rate;
diff --git a/arch/arm/mach-versatile/include/mach/debug_ll.h b/include/mach/versatile/debug_ll.h
similarity index 100%
rename from arch/arm/mach-versatile/include/mach/debug_ll.h
rename to include/mach/versatile/debug_ll.h
diff --git a/arch/arm/mach-versatile/include/mach/init.h b/include/mach/versatile/init.h
similarity index 100%
rename from arch/arm/mach-versatile/include/mach/init.h
rename to include/mach/versatile/init.h
diff --git a/arch/arm/mach-versatile/include/mach/platform.h b/include/mach/versatile/platform.h
similarity index 100%
rename from arch/arm/mach-versatile/include/mach/platform.h
rename to include/mach/versatile/platform.h
-- 
2.30.2



