Delivery-date: Fri, 26 Aug 2022 08:52:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oRTCP-00Ake9-SE
	for lore@lore.pengutronix.de; Fri, 26 Aug 2022 08:52:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oRTCN-0002Fx-Qd
	for lore@pengutronix.de; Fri, 26 Aug 2022 08:52:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+f81XlVFaRiorXFSsWVkJl7LE/yFZ+MS8kT5ohMDKx0=; b=EFm0dsoCG02H5ImIyn+Lx5TiHQ
	xrzRx7klXfQo+BS1mWm003jJ2I4nvrE+sSNQ8jJ4opy6WyGvU0lxkyHX2gGjSHz1bmtzKBRSotFul
	JNhJeupr65qvzmgNHIDpUgPeEznQwmWwVU8o2mPJsHUWwQ9aZOt2/9NsJTC861mXG02SPkyY2vWb1
	zIhySuj9/rEGEnyBLrPdbO9pC+Z97YkH0ogmABujkQW0Fb4LqEanmZJ+iXV/2fvj5BJSyiVNm0cI1
	Ip08WFKFwZEcbu7c0rISRlWEdYpsKyVdvqjaetLpz0DuLSUvXbr07VZQAC+cmjRmHeUSWp1vCPVcF
	RB/tZNaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAp-00EuzX-PY; Fri, 26 Aug 2022 06:50:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAa-00Eurf-NC
	for barebox@lists.infradead.org; Fri, 26 Aug 2022 06:50:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0] helo=pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1oRTAU-0001i3-QK
	for barebox@lists.infradead.org; Fri, 26 Aug 2022 08:50:14 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 26 Aug 2022 08:49:54 +0200
Message-Id: <20220826064956.507125-2-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220826064956.507125-1-s.trumtrar@pengutronix.de>
References: <20220826064956.507125-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_235020_813970_D18791D0 
X-CRM114-Status: GOOD (  12.81  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] ARM: socfpga: add Arria10-specific errata init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Cortex A9 on the Arria10 has multiple known errata.
Enable at least the currently supported ones in barebox.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/enclustra-aa1/lowlevel.c  |  1 +
 arch/arm/mach-socfpga/Makefile            |  1 +
 arch/arm/mach-socfpga/cpu_init.c          | 12 ++++++++++++
 arch/arm/mach-socfpga/include/mach/init.h |  8 ++++++++
 4 files changed, 22 insertions(+)
 create mode 100644 arch/arm/mach-socfpga/cpu_init.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/init.h

diff --git a/arch/arm/boards/enclustra-aa1/lowlevel.c b/arch/arm/boards/enclustra-aa1/lowlevel.c
index 9f2d66a6bc..d819d9feae 100644
--- a/arch/arm/boards/enclustra-aa1/lowlevel.c
+++ b/arch/arm/boards/enclustra-aa1/lowlevel.c
@@ -40,6 +40,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_xload, ARRIA10_STACKTOP, r0, r1, r2)
 	int bitstream = 0;
 
 	arm_cpu_lowlevel_init();
+	arria10_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index 935270bfad..008dbc3887 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -3,6 +3,7 @@
 pbl-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-init.o cyclone5-freeze-controller.o cyclone5-scan-manager.o cyclone5-system-manager.o
 pbl-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-clock-manager.o
 obj-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-generic.o nic301.o cyclone5-bootsource.o cyclone5-reset-manager.o
+lwl-y += cpu_init.o
 
 pbl-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += arria10-xload.o \
 				      arria10-xload-emmc.o
diff --git a/arch/arm/mach-socfpga/cpu_init.c b/arch/arm/mach-socfpga/cpu_init.c
new file mode 100644
index 0000000000..1e0df1f6a5
--- /dev/null
+++ b/arch/arm/mach-socfpga/cpu_init.c
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/errata.h>
+#include <mach/init.h>
+
+void arria10_cpu_lowlevel_init(void)
+{
+	enable_arm_errata_794072_war();
+	enable_arm_errata_845369_war();
+}
diff --git a/arch/arm/mach-socfpga/include/mach/init.h b/arch/arm/mach-socfpga/include/mach/init.h
new file mode 100644
index 0000000000..c0e073ee13
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/init.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __MACH_INIT_H
+#define __MACH_INIT_H
+
+void arria10_cpu_lowlevel_init(void);
+
+#endif
-- 
2.33.0



