Delivery-date: Thu, 25 Nov 2021 17:13:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMx-0001kp-HJ
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:13:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMw-0001iO-1H
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:13:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsuxgUJ0QA8/rTIviJJH1XI9gdDpUkCo1SKXAzlvR3k=; b=v6ORXo+3+B8yyW
	VunqF0FsUlhuU8nMJpA0pfQ3b8+OR+7Pq5bID95SIdbkVEMSa+6VUT328DeEFypzzpaIPlYifCZv6
	2AVKbTeodUFfMIEbfxHLtxBgZNJ9CdhVVb+fl+0+sqgXxBNs5B7HMlU4fOsjW3My8P3Cug+gK3rNg
	dufDufAzv72wA6LYw5jygCMp1ND1IcInEnaUCLdMPut3Yovd7/Xz/cLZ+oQI/POfyarvToI59OuLK
	oDloupGBSrcE+88tvDiv9GBQkRW1Ttlen6PEeWu8BdjfrbAs/Xr0MZAtDbb2/7We09Evd1Mh1Fjtd
	nnyLZQB7Z7I70iAJ0Qew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHL7-008Ddd-Gk; Thu, 25 Nov 2021 16:11:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHKi-008DPm-3K
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:10:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKe-0000bk-Ux; Thu, 25 Nov 2021 17:10:44 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKd-00G4X8-UX; Thu, 25 Nov 2021 17:10:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:10:40 +0100
Message-Id: <20211125161042.3829996-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_081048_164883_F098AB54 
X-CRM114-Status: GOOD (  15.24  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] ARM: qemu: move board code to central location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The state/environment overlay applied on top of QEMU is applicable to
other virt platforms as well, like RISC-V. In preparation for sharing
code across architectures, add a new common/boards and move the board
code there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                                           | 1 +
 arch/arm/boards/Makefile                                   | 1 -
 arch/arm/boards/qemu-virt/Makefile                         | 1 -
 common/Kconfig                                             | 2 ++
 common/Makefile                                            | 1 +
 common/boards/Kconfig                                      | 4 ++++
 common/boards/Makefile                                     | 3 +++
 common/boards/qemu-virt/Makefile                           | 4 ++++
 {arch/arm => common}/boards/qemu-virt/board.c              | 0
 {arch/arm => common}/boards/qemu-virt/overlay-of-flash.dts | 0
 10 files changed, 15 insertions(+), 2 deletions(-)
 create mode 100644 common/boards/Kconfig
 create mode 100644 common/boards/Makefile
 create mode 100644 common/boards/qemu-virt/Makefile
 rename {arch/arm => common}/boards/qemu-virt/board.c (100%)
 rename {arch/arm => common}/boards/qemu-virt/overlay-of-flash.dts (100%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 14aa7e26af29..b532d3fe2fc2 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -308,6 +308,7 @@ source "arch/arm/mach-zynqmp/Kconfig"
 config BOARD_ARM_VIRT
 	bool
 	select BOARD_ARM_GENERIC_DT
+	select BOARD_QEMU_VIRT
 	select OF_OVERLAY
 
 config BOARD_ARM_GENERIC_DT
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 08815d79ec43..50b07462bb78 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -167,7 +167,6 @@ obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
 obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
-obj-$(CONFIG_BOARD_ARM_VIRT)			+= qemu-virt/
 obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_WEBASTO_CCBV2)		+= webasto-ccbv2/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
diff --git a/arch/arm/boards/qemu-virt/Makefile b/arch/arm/boards/qemu-virt/Makefile
index 8451c7832d03..dcfc2937d325 100644
--- a/arch/arm/boards/qemu-virt/Makefile
+++ b/arch/arm/boards/qemu-virt/Makefile
@@ -1,2 +1 @@
 obj-y += board.o
-obj-y += overlay-of-flash.dtb.o
diff --git a/common/Kconfig b/common/Kconfig
index ab6258d90f40..9ddccc85ba26 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1,3 +1,5 @@
+source "common/boards/Kconfig"
+
 config GREGORIAN_CALENDER
 	bool
 
diff --git a/common/Makefile b/common/Makefile
index 4b45f678c7de..96808ecd35e5 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -1,3 +1,4 @@
+obj-y				+= boards/
 obj-y				+= memory.o
 obj-y				+= memory_display.o
 pbl-$(CONFIG_PBL_CONSOLE)	+= memory_display.o
diff --git a/common/boards/Kconfig b/common/boards/Kconfig
new file mode 100644
index 000000000000..e27273b7671d
--- /dev/null
+++ b/common/boards/Kconfig
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config BOARD_QEMU_VIRT
+	bool
diff --git a/common/boards/Makefile b/common/boards/Makefile
new file mode 100644
index 000000000000..5b4e429c13e9
--- /dev/null
+++ b/common/boards/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
new file mode 100644
index 000000000000..f10d39138578
--- /dev/null
+++ b/common/boards/qemu-virt/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+obj-y += overlay-of-flash.dtb.o
diff --git a/arch/arm/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
similarity index 100%
rename from arch/arm/boards/qemu-virt/board.c
rename to common/boards/qemu-virt/board.c
diff --git a/arch/arm/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
similarity index 100%
rename from arch/arm/boards/qemu-virt/overlay-of-flash.dts
rename to common/boards/qemu-virt/overlay-of-flash.dts
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

