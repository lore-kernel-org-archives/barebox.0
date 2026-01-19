Delivery-date: Mon, 19 Jan 2026 16:15:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhqy6-0034MW-0D
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 16:15:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhqy4-0000sW-KE
	for lore@pengutronix.de; Mon, 19 Jan 2026 16:15:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ds2vkjlxQFGA8DpDChBS8NiuUfp2+D3FdBa/JHl2+xw=; b=k37Un0/D2qTREszghpJg1KGKcO
	NfCey0uUggYW/TVKjbhQmk+569GmxWReCrQTUCiIXSrfZ++20kRcMK1OSogneApgdcUccj9DIloCB
	FZJRr7/c/njvIIlIunsEeFiU1nCWYNgTKUJYJ5yx1q1Tz+YtTVdD2gbgyVA9yq0fhjr8xs3q0+T3w
	wICvCm06t2/jbX2AL00diu9b5QbJQTQ/arLoIQL61FKhyK98laqDFRK//2vG2RHGDvi8+nqhH1Hja
	K0DqJB8T30acvMoQV2DO2cy8FYeVB2/MNtjtSynjMCLUZqo1vUtKcn1SNAFliCRdtYAGMksqx8gb4
	fX1HsSkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqxY-00000002KCV-1ejB;
	Mon, 19 Jan 2026 15:14:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqxV-00000002KCN-2fsW
	for barebox@bombadil.infradead.org;
	Mon, 19 Jan 2026 15:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Ds2vkjlxQFGA8DpDChBS8NiuUfp2+D3FdBa/JHl2+xw=; b=YEcCqriIWxzjFZppaBdmD0ZqnQ
	1L4FwMT5aYiTTLaN7sgHMnAdb9wKXZWAdnriIzAfiKSvhyNiSRxusZJ9HLvDZK/ySE6hLMqLLk/KY
	awv+BK8RbTn1xOAbx7US+/sGDd2McOMPXnrpBlxN1kb8d+NF56naObMNORhIKb5A5aoM/VfT5zZu8
	2GwHo6tLg8GDFNvM54kw0N9MDt0fFeEV2ClCTc2B3pMjyMNlq8AT/98dLbZ+1afUFp26peNKyQbEU
	HuMNgK4PkFIbGIO86tVSglg2tzWa6Gs+9UohENf/xXp3PiFyVuk1V8ENPjSbw+L6/cGZe3un39x9W
	WPP5GhzA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqxS-0000000CO7t-24Q3
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 15:14:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vhqxR-0000i7-1w; Mon, 19 Jan 2026 16:14:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vhqxR-001R9Z-1j;
	Mon, 19 Jan 2026 16:14:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vhqxR-00000009LBp-1uDd;
	Mon, 19 Jan 2026 16:14:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rsc@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jan 2026 16:12:20 +0100
Message-ID: <20260119151415.2225679-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_151422_671123_9B3DA513 
X-CRM114-Status: GOOD (  24.22  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] arm64: rockchip: qnap-tsx33: support USB installer with EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not do USB enumeration by default, but we should if we want to be
able to boot off an UEFI installer image inserted via USB.

This has been tested on QNAP TS-433eU with
debian-13.1.0-arm64-netinst.iso.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This is the same as v1, but I asked for this to be applied yet, because
EFI loader support was still pending. This is not the case now, so I ask
this be applied to master.
---
 Documentation/boards/rk35xx/qnap-tsx33.rst    | 53 +++++++++++++++++--
 arch/arm/boards/qnap-tsx33/Makefile           |  1 +
 arch/arm/boards/qnap-tsx33/board.c            |  6 ++-
 .../defaultenv-tsx33/init/usbdetect           |  6 +++
 arch/arm/configs/rockchip_v8_defconfig        |  5 ++
 5 files changed, 67 insertions(+), 4 deletions(-)
 create mode 100755 arch/arm/boards/qnap-tsx33/defaultenv-tsx33/init/usbdetect

diff --git a/Documentation/boards/rk35xx/qnap-tsx33.rst b/Documentation/boards/rk35xx/qnap-tsx33.rst
index b205e31e561b..3086bd2b5bac 100644
--- a/Documentation/boards/rk35xx/qnap-tsx33.rst
+++ b/Documentation/boards/rk35xx/qnap-tsx33.rst
@@ -24,6 +24,14 @@ With these barebox can be compiled as:
 
 If cross-compiling, ``CROSS_COMPILE`` needs to be additionally set.
 
+Alternatively, if you enable barebox to boot an OS image with
+UEFI, use:
+
+.. code-block:: sh
+
+  make ARCH=arm rockchip_v8_efiloader_defconfig
+  make ARCH=arm
+
 Flashing via USB
 ----------------
 
@@ -42,11 +50,50 @@ load barebox into RAM and flash it to the eMMC using ``fastboot``:
 
 .. code-block:: sh
 
-  scripts/rk-usb-loader images/barebox-qnap-ts433.img # or *ts433eu.img
+  scripts/rk-usb-loader images/barebox-qnap-ts433.img # or *-eu.img
   fastboot flash bbu-emmc barebox-qnap-ts433.img
 
+Repartitioning and environment partition
+----------------------------------------
+
+If you are wiping the disk anyway to repartition it to fit the distro
+that's going to be installed, it's recommended to add a barebox environment
+partition for holding persistent bootloader configuration:
+
+.. warning:: This will delete the vendor system on the eMMC!
+
+.. code-block:: sh
+
+   fastboot erase emmc     # wipes full eMMC including barebox!
+   fastboot oem exec "createnv -f /dev/mmc0"
+   fastboot flash bbu-emmc barebox-qnap-ts433.img # or *-eu.img
+
+Known issues
+------------
+
+- eMMC can't be operated at HS200 under Linux, when it should be possible.
+- eMMC accesses times out occasionally under barebox. If an error message
+  is reported during flashing, retry the operation.
+- second USB port doesn't work in barebox
+- Having multiple images per variant could be avoided by having barebox
+  read the EEPROM early enough to determine correct device tree
+
 Booting Debian
 --------------
 
-Refer to https://wiki.debian.org/InstallingDebianOn/Qnap/TS-433
-for information on how to install Debian.
+Flash the Debian netinstall image to a USB stick and insert it into
+the (first) front USB and power on the device after having flashed
+barebox to the eMMC as per the previous section.
+
+It should then boot into a GRUB menu and from there into the
+Debian installer.
+
+When the installer asks you at the end about whether to also install
+GRUB to the removable media path, say **yes**.
+
+After installation is done, remove the USB drive and the system
+will automatically boot from the Debian system installed to the
+eMMC.
+
+Refer also to https://wiki.debian.org/InstallingDebianOn/Qnap/TS-433
+for more information on how to install Debian.
diff --git a/arch/arm/boards/qnap-tsx33/Makefile b/arch/arm/boards/qnap-tsx33/Makefile
index 1d052d28c9fc..ec1b7fb7486b 100644
--- a/arch/arm/boards/qnap-tsx33/Makefile
+++ b/arch/arm/boards/qnap-tsx33/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 lwl-y += lowlevel.o
 obj-y += board.o
+bbenv-y += defaultenv-tsx33
diff --git a/arch/arm/boards/qnap-tsx33/board.c b/arch/arm/boards/qnap-tsx33/board.c
index a4e86b0337f8..a52a048d2462 100644
--- a/arch/arm/boards/qnap-tsx33/board.c
+++ b/arch/arm/boards/qnap-tsx33/board.c
@@ -7,6 +7,7 @@
 #include <globalvar.h>
 #include <envfs.h>
 #include <deep-probe.h>
+#include <environment.h>
 #include <linux/usb/gadget-multi.h>
 
 struct ts433_match_data {
@@ -30,7 +31,8 @@ static int ts433_probe(struct device *dev)
 		 * usbgadget -b -A "kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)" -a
 		 */
 		globalvar_add_simple("fastboot.bbu", "1");
-		globalvar_add_simple("fastboot.partitions", "kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)c");
+		globalvar_add_simple("fastboot.partitions",
+		     "/dev/mmc0(emmc),kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)c");
 		globalvar_add_simple("usbgadget.acm", "1");
 		usbgadget_autostart(true);
 
@@ -49,6 +51,8 @@ static int ts433_probe(struct device *dev)
 
 	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
 
+	defaultenv_append_directory(defaultenv_tsx33);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/qnap-tsx33/defaultenv-tsx33/init/usbdetect b/arch/arm/boards/qnap-tsx33/defaultenv-tsx33/init/usbdetect
new file mode 100755
index 000000000000..f2d30f01ac32
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/defaultenv-tsx33/init/usbdetect
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+if [ -n "${efi.loader}" ] && [ "${bootsource}" = mmc ]; then
+	otg.mode=host
+	usb
+fi
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index f8f8ceb80516..a44b898f5584 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -37,6 +37,8 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_SPARSE=y
+CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -48,6 +50,8 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_PARTED=y
+CONFIG_CMD_CREATENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
@@ -77,6 +81,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
-- 
2.47.3



