Delivery-date: Fri, 03 Mar 2023 10:28:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1iB-007NrU-Dy
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:28:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1i9-0003VL-VB
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:28:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PeqVvwZh9c9M2gWQPbhi1dPtHoavgKiGPl9grmQCk54=; b=kGtidHWOBv/SVXOF16CQ7JSOSn
	/USbM8MKbNgJTgFQVAVRfZFIHv3FH3x3bBgYybr57s5zS7TdpsQoNPV4ICnTKW0tVdN0LEXF7F85F
	o/7fISXSMX80xAV1C6oCuG1ag3G6YZr9dLTofsJrEUadxiIiBwsfSpWzRKE+9XwVPz4iOPVZ5wR70
	xTR1W6TTNcH19NtKyxjS7HExfAt7TSnLHu9zOZ/cOuR74UPFnrIgQTLFZ6AWSxjHD+KMJYWV32qzb
	kdlFDtsrmIHUmgVX6NBxaneZ8hAECnwpv34OHD02zuxm7sNg9qasYkDQY8yzJYD/ejizn2iAHdzry
	10eADRuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1gn-005iA1-T3; Fri, 03 Mar 2023 09:26:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bu-005eWZ-E4
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PeqVvwZh9c9M2gWQPbhi1dPtHoavgKiGPl9grmQCk54=; b=Pgk2DPquXJ+TFDSBXVRk/cqixy
	22S11MZMm/J7kaPBVpD5IPoH7HCrXtoEXwuwOAcuv+uCTjSz29YbE5glqI/sdqSXxQB7CRfQy1DsP
	FKQwBD8m+EAFw79jGbYHVy/TL6TQTkFBnxt3RewhpHUokO88GsEJUa/R0bwIMd/uVx0zdjrmvOAgU
	caJU19yh8sHxDONlPUoejN5RL2zCJXxAp9S25aQYpQgJcLtZZFkgZB5tHElu0tLZA9DlHWfpF2oc2
	yb4q9GZC+1tM44O9shyHTP46yhGbVPyvd+ECZmt0aeN4lkyJo+0EOx4KEeGzCZrWTDyQSx+SkJViM
	4p2DFhuA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bn-0031NE-EX
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bk-0000J7-A1; Fri, 03 Mar 2023 10:21:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-001Wk5-MR; Fri, 03 Mar 2023 10:21:43 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2ha-O7; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:06 +0100
Message-Id: <20230303092131.3063587-26-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092148_072840_3A00733A 
X-CRM114-Status: GOOD (  11.22  )
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
Subject: [PATCH 25/50] ARM: i.MX: Only provide PUTC_LL() when activated
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With multi-arch support we must make sure we provide exactly one
PUTC_LL() function as indicated by the "Kernel low-level debugging port"
Kconfig choice. Make sure that the i.MX specific debug_ll.h only
provides PUTC_LL() when specified.
The i.MX specific debug_ll.h also provides other functions needed
by board code regardless if the i.MX debug_ll port is enabled or
not, so include it explicitly where needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ac-sxb/lowlevel.c                 |  1 +
 arch/arm/boards/advantech-mx6/lowlevel.c          |  1 +
 arch/arm/boards/ccxmx51/lowlevel.c                |  1 +
 arch/arm/boards/cm-fx6/lowlevel.c                 |  1 +
 arch/arm/boards/element14-warp7/lowlevel.c        |  1 +
 arch/arm/boards/eltec-hipercam/lowlevel.c         |  1 +
 arch/arm/boards/embest-marsboard/lowlevel.c       |  1 +
 arch/arm/boards/embest-riotboard/lowlevel.c       |  1 +
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c |  1 +
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c  |  1 +
 .../boards/freescale-mx6sx-sabresdb/lowlevel.c    |  1 +
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c  |  1 +
 arch/arm/boards/freescale-vf610-twr/lowlevel.c    |  1 +
 arch/arm/boards/grinn-liteboard/lowlevel.c        |  1 +
 arch/arm/boards/guf-santaro/lowlevel.c            |  1 +
 arch/arm/boards/guf-vincell/lowlevel.c            |  1 +
 arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c   |  1 +
 .../boards/kamstrup-mx7-concentrator/lowlevel.c   |  1 +
 arch/arm/boards/karo-tx53/lowlevel.c              |  1 +
 arch/arm/boards/karo-tx6x/lowlevel.c              |  1 +
 arch/arm/boards/kontron-samx6i/lowlevel.c         |  1 +
 arch/arm/boards/mnt-reform/lowlevel.c             |  1 +
 arch/arm/boards/novena/lowlevel.c                 |  1 +
 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c        |  1 +
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c         |  1 +
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c         |  1 +
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c         |  1 +
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c         |  1 +
 arch/arm/boards/phytec-som-imx6/lowlevel.c        |  1 +
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c      |  1 +
 arch/arm/boards/polyhex-debix/lowlevel.c          |  1 +
 arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c  |  1 +
 arch/arm/boards/skov-imx6/lowlevel.c              |  1 +
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c |  1 +
 arch/arm/boards/technexion-wandboard/lowlevel.c   |  1 +
 arch/arm/boards/tqma6ulx/lowlevel.c               |  1 +
 arch/arm/boards/tqma6x/lowlevel.c                 |  1 +
 arch/arm/boards/tqma8mpxl/lowlevel.c              |  1 +
 arch/arm/boards/udoo-neo/lowlevel.c               |  1 +
 .../variscite-dt8mcustomboard-imx8mp/lowlevel.c   |  1 +
 arch/arm/boards/variscite-mx6/lowlevel.c          |  1 +
 arch/arm/boards/webasto-ccbv2/lowlevel.c          |  1 +
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c         |  1 +
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c         |  1 +
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c         |  1 +
 arch/arm/boards/zii-vf610-dev/lowlevel.c          |  1 +
 arch/arm/include/asm/debug_ll.h                   |  6 ++++--
 common/Kconfig                                    | 15 +++++++++++++++
 include/mach/imx/debug_ll.h                       |  2 +-
 49 files changed, 66 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/ac-sxb/lowlevel.c b/arch/arm/boards/ac-sxb/lowlevel.c
index b7d24399b4..713d8ce5f8 100644
--- a/arch/arm/boards/ac-sxb/lowlevel.c
+++ b/arch/arm/boards/ac-sxb/lowlevel.c
@@ -5,6 +5,7 @@
  */
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/advantech-mx6/lowlevel.c b/arch/arm/boards/advantech-mx6/lowlevel.c
index ea77af8a31..edd5971c35 100644
--- a/arch/arm/boards/advantech-mx6/lowlevel.c
+++ b/arch/arm/boards/advantech-mx6/lowlevel.c
@@ -2,6 +2,7 @@
 // SPDX-FileCopyrightText: 2018 Christoph Fritz <chf.fritz@googlemail.com>
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index 1fa55346eb..b0881f9c5b 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -3,6 +3,7 @@
 
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <mach/imx/clock-imx51_53.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/cm-fx6/lowlevel.c b/arch/arm/boards/cm-fx6/lowlevel.c
index 137ae3e107..90e5045e1e 100644
--- a/arch/arm/boards/cm-fx6/lowlevel.c
+++ b/arch/arm/boards/cm-fx6/lowlevel.c
@@ -8,6 +8,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <io.h>
 #include <mach/imx/imx6-mmdc.h>
 #include <mach/imx/imx6-ddr-regs.h>
diff --git a/arch/arm/boards/element14-warp7/lowlevel.c b/arch/arm/boards/element14-warp7/lowlevel.c
index 5581b958c7..c6ddfea5a4 100644
--- a/arch/arm/boards/element14-warp7/lowlevel.c
+++ b/arch/arm/boards/element14-warp7/lowlevel.c
@@ -9,6 +9,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
+#include <mach/imx/debug_ll.h>
 
 extern char __dtb_imx7s_warp_start[];
 
diff --git a/arch/arm/boards/eltec-hipercam/lowlevel.c b/arch/arm/boards/eltec-hipercam/lowlevel.c
index 8e1eb1c4d3..154c0e58f5 100644
--- a/arch/arm/boards/eltec-hipercam/lowlevel.c
+++ b/arch/arm/boards/eltec-hipercam/lowlevel.c
@@ -5,6 +5,7 @@
 #include <linux/sizes.h>
 #include <io.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/embest-marsboard/lowlevel.c b/arch/arm/boards/embest-marsboard/lowlevel.c
index d1af90ba44..84378c00f2 100644
--- a/arch/arm/boards/embest-marsboard/lowlevel.c
+++ b/arch/arm/boards/embest-marsboard/lowlevel.c
@@ -10,6 +10,7 @@
 #include <mach/imx/esdctl.h>
 #include <mach/imx/iomux-mx6.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index b8a7983aa8..9ea92f5091 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 5d41f34fd8..7d219bad78 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <mach/imx/clock-imx51_53.h>
 #include <mach/imx/iomux-mx51.h>
 #include <common.h>
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index a6e5e92896..5490dc2d44 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
index 3d4e6917af..721743dadb 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
@@ -2,6 +2,7 @@
 // SPDX-FileCopyrightText: 2014 Sascha Hauer, Pengutronix
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index ebaea9daf3..5a7508143e 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
index b2968b8d95..c7714f29a2 100644
--- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -10,6 +10,7 @@
 #include <mach/imx/clock-vf610.h>
 #include <mach/imx/iomux-vf610.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/grinn-liteboard/lowlevel.c b/arch/arm/boards/grinn-liteboard/lowlevel.c
index 0fa7ae93f8..6851a678bc 100644
--- a/arch/arm/boards/grinn-liteboard/lowlevel.c
+++ b/arch/arm/boards/grinn-liteboard/lowlevel.c
@@ -4,6 +4,7 @@
 /* Author: Marcin Niestroj <m.niestroj@grinn-global.com> */
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index 8badce5da9..72401eb32c 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -9,6 +9,7 @@
 #include <mach/imx/generic.h>
 #include <mach/imx/imx6-regs.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <console.h>
 #include <mach/imx/esdctl.h>
 
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 2479d17799..e691aeca3e 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <io.h>
 #include <init.h>
 #include <mach/imx/imx53-regs.h>
diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
index b180de5715..31b64ddb0e 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/barebox-arm.h>
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
index 89b8c89864..e1ba327251 100644
--- a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
+++ b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index b51846b543..914ef69de9 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx/imx5.h>
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index 84ba40b86b..082307626b 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -2,6 +2,7 @@
 // SPDX-FileCopyrightText: 2014 Steffen Trumtrar, Pengutronix
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/kontron-samx6i/lowlevel.c
index beab190334..59694e72f9 100644
--- a/arch/arm/boards/kontron-samx6i/lowlevel.c
+++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
@@ -10,6 +10,7 @@
  */
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <io.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
index c76037c36d..074beba099 100644
--- a/arch/arm/boards/mnt-reform/lowlevel.c
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -6,6 +6,7 @@
 #include <asm/barebox-arm.h>
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <firmware.h>
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
index 5b358ef0a3..70aa92d5b4 100644
--- a/arch/arm/boards/novena/lowlevel.c
+++ b/arch/arm/boards/novena/lowlevel.c
@@ -6,6 +6,7 @@
 #include <ddr_dimms.h>
 #include <ddr_spd.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/imx6.h>
diff --git a/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c b/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
index ff72763f54..0a12eb9b68 100644
--- a/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
@@ -8,6 +8,7 @@
 #include <mach/imx/imx6-regs.h>
 #include <io.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <mach/imx/esdctl.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 038dd9d659..9983f78bab 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/mmu.h>
 #include <asm/cache.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index a1fb577224..8e7383c9d2 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <firmware.h>
 #include <asm/mmu.h>
 #include <asm/cache.h>
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 9d17e6d1ab..a60730bcb2 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <firmware.h>
 #include <image-metadata.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 61aaab0287..ecd91d7165 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -13,6 +13,7 @@
 #include <mach/imx/xload.h>
 #include <io.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index a783bcb477..bbd77dd734 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -6,6 +6,7 @@
  * Author: Stefan Christ <s.christ@phytec.de>
  */
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 559afa4e15..ba5f987d22 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -15,6 +15,7 @@
 #include <mach/imx/xload.h>
 #include <io.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/polyhex-debix/lowlevel.c b/arch/arm/boards/polyhex-debix/lowlevel.c
index bef0bace98..1c8be39559 100644
--- a/arch/arm/boards/polyhex-debix/lowlevel.c
+++ b/arch/arm/boards/polyhex-debix/lowlevel.c
@@ -4,6 +4,7 @@
 #include <asm/barebox-arm-head.h>
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <mach/imx/atf.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index 40fab934aa..603f8add07 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -4,6 +4,7 @@
 #include <common.h>
 #include <image-metadata.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <firmware.h>
 #include <mach/imx/atf.h>
 #include <mach/imx/esdctl.h>
diff --git a/arch/arm/boards/skov-imx6/lowlevel.c b/arch/arm/boards/skov-imx6/lowlevel.c
index c12a7123f0..434be0384f 100644
--- a/arch/arm/boards/skov-imx6/lowlevel.c
+++ b/arch/arm/boards/skov-imx6/lowlevel.c
@@ -7,6 +7,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <io.h>
 #include <mach/imx/imx6-mmdc.h>
 #include <mach/imx/imx6-ddr-regs.h>
diff --git a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
index 2e81862993..7cc7c12d84 100644
--- a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
+++ b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
@@ -8,6 +8,7 @@
 #include <mach/imx/imx6-regs.h>
 #include <io.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <mach/imx/esdctl.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
diff --git a/arch/arm/boards/technexion-wandboard/lowlevel.c b/arch/arm/boards/technexion-wandboard/lowlevel.c
index 448e81a61c..d29e2c9b24 100644
--- a/arch/arm/boards/technexion-wandboard/lowlevel.c
+++ b/arch/arm/boards/technexion-wandboard/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index 104a998566..29978821b8 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -5,6 +5,7 @@
 
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <firmware.h>
 #include <mach/imx/generic.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 8af644d2a1..9283e3f009 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -2,6 +2,7 @@
 // SPDX-FileCopyrightText: 2013 Sascha Hauer <s.hauer@pengutronix.de>
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/tqma8mpxl/lowlevel.c b/arch/arm/boards/tqma8mpxl/lowlevel.c
index 9a17cd2514..793bcba3ca 100644
--- a/arch/arm/boards/tqma8mpxl/lowlevel.c
+++ b/arch/arm/boards/tqma8mpxl/lowlevel.c
@@ -16,6 +16,7 @@
 #include <mach/imx/imx8mp-regs.h>
 #include <mach/imx/iomux-mx8mp.h>
 #include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/debug_ll.h>
 #include <mfd/pca9450.h>
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
diff --git a/arch/arm/boards/udoo-neo/lowlevel.c b/arch/arm/boards/udoo-neo/lowlevel.c
index 269fda04dc..e8712b0c72 100644
--- a/arch/arm/boards/udoo-neo/lowlevel.c
+++ b/arch/arm/boards/udoo-neo/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
index e8c3dd0c49..cf040069b4 100644
--- a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <firmware.h>
 #include <image-metadata.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index d2dabd091b..d0842b1579 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -6,6 +6,7 @@
  */
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index 7e0bfe1ee0..7a198bd801 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -5,6 +5,7 @@
 
 #include <common.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <firmware.h>
 #include <mach/imx/generic.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
index 38588d43f9..2418fe69ae 100644
--- a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
+++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <mach/imx/clock-imx51_53.h>
 #include <mach/imx/iomux-mx51.h>
 #include <common.h>
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index 3ab2da17f0..5c94b120d3 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -4,6 +4,7 @@
 /* Author: Andrey Smirnov <andrew.smirnov@gmail.com> */
 
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <common.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 8e755955d5..1655a1e55b 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -17,6 +17,7 @@
 #include <mach/imx/xload.h>
 #include <io.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index 8fe779c9e5..e45e31f7d8 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -13,6 +13,7 @@
 #include <mach/imx/clock-vf610.h>
 #include <mach/imx/iomux-vf610.h>
 #include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 1844b85c2e..52723d7204 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -3,11 +3,13 @@
 #ifndef __ASM_DEBUG_LL_H__
 #define __ASM_DEBUG_LL_H__
 
+#ifdef CONFIG_DEBUG_IMX_UART
+#include <mach/imx/debug_ll.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
-#elif defined CONFIG_ARCH_IMX
-#include <mach/imx/debug_ll.h>
 #elif defined CONFIG_ARCH_ROCKCHIP
 #include <mach/rockchip/debug_ll.h>
 #elif defined CONFIG_ARCH_ZYNQMP
diff --git a/common/Kconfig b/common/Kconfig
index 96ab687af2..dce83cfafc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1249,6 +1249,9 @@ config FRAME_POINTER
 	  will be slightly larger and slower, but it can give precise
 	  debugging information when print stack traces.
 
+config DEBUG_IMX_UART
+	bool
+
 choice
 	prompt "Kernel low-level debugging port"
 	depends on DEBUG_LL
@@ -1256,6 +1259,7 @@ choice
 config DEBUG_IMX1_UART
 	bool "i.MX1 Debug UART"
 	depends on ARCH_IMX1
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX1.
@@ -1263,6 +1267,7 @@ config DEBUG_IMX1_UART
 config DEBUG_IMX21_UART
 	bool "i.MX21 Debug UART"
 	depends on ARCH_IMX21
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX21.
@@ -1270,6 +1275,7 @@ config DEBUG_IMX21_UART
 config DEBUG_IMX25_UART
 	bool "i.MX25 Debug UART"
 	depends on ARCH_IMX25
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX25.
@@ -1277,6 +1283,7 @@ config DEBUG_IMX25_UART
 config DEBUG_IMX27_UART
 	bool "i.MX27 Debug UART"
 	depends on ARCH_IMX27
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX27.
@@ -1284,6 +1291,7 @@ config DEBUG_IMX27_UART
 config DEBUG_IMX31_UART
 	bool "i.MX31 Debug UART"
 	depends on ARCH_IMX31
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX31.
@@ -1291,6 +1299,7 @@ config DEBUG_IMX31_UART
 config DEBUG_IMX35_UART
 	bool "i.MX35 Debug UART"
 	depends on ARCH_IMX35
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX35.
@@ -1298,6 +1307,7 @@ config DEBUG_IMX35_UART
 config DEBUG_IMX50_UART
 	bool "i.MX50 Debug UART"
 	depends on ARCH_IMX50
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX50.
@@ -1305,6 +1315,7 @@ config DEBUG_IMX50_UART
 config DEBUG_IMX51_UART
 	bool "i.MX51 Debug UART"
 	depends on ARCH_IMX51
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX51.
@@ -1312,6 +1323,7 @@ config DEBUG_IMX51_UART
 config DEBUG_IMX53_UART
 	bool "i.MX53 Debug UART"
 	depends on ARCH_IMX53
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX53.
@@ -1326,6 +1338,7 @@ config DEBUG_IMX6Q_UART
 config DEBUG_IMX7D_UART
 	bool "i.MX7D Debug UART"
 	depends on ARCH_IMX7
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want barebox low-level debugging support
 	  on i.MX7D.
@@ -1333,6 +1346,7 @@ config DEBUG_IMX7D_UART
 config DEBUG_IMX8M_UART
 	bool "i.MX8M Debug UART"
 	depends on ARCH_IMX8M
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want barebox low-level debugging support
 	  on i.MX8M*.
@@ -1340,6 +1354,7 @@ config DEBUG_IMX8M_UART
 config DEBUG_VF610_UART
 	bool "VF610 Debug UART"
 	depends on ARCH_VF610
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on VF610.
diff --git a/include/mach/imx/debug_ll.h b/include/mach/imx/debug_ll.h
index 33e3e3afe3..d25631d116 100644
--- a/include/mach/imx/debug_ll.h
+++ b/include/mach/imx/debug_ll.h
@@ -23,7 +23,7 @@
 #include <serial/imx-uart.h>
 #include <serial/lpuart.h>
 
-#ifdef CONFIG_DEBUG_LL
+#ifdef CONFIG_DEBUG_IMX_UART
 
 #define __IMX_UART_BASE(soc, num) soc##_UART##num##_BASE_ADDR
 #define IMX_UART_BASE(soc, num) __IMX_UART_BASE(soc, num)
-- 
2.30.2



