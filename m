Delivery-date: Fri, 06 Jun 2025 07:58:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6R-004HHV-1b
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:58:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6N-0004q9-1N
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:58:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UxUTQWoIkvSiCGH4i+ldp67uTelzZCHVV/RWG+4jb2g=; b=KcH7Up2JVxyeB/vNSYVigRJMZ9
	ijdkJuF8zKfe3+tqVzeBIIyvt+9iBbCyo+TGLnwMDHjOTX5IKGWcwV3fk1nKVyOvpNFzSR/Elv5tP
	Ebqbbam+aveMSfTNlV0L00dAUUJRY4jrDREsxVvrBhNT7m5zeCQVTIJ3KjFW3TwKTmBvaIZFJh/Ff
	r8kcxfMv4T0wLuCn7NRmNssW8GrEzkhxjIqWhAzB55YAKxMjM07j39iSGbEc8/ihms5mipZEQtzc7
	W9+hVgnqbD1Bn+xQooi4UQ5A/mvw/sRlJdeteto7GVDLqMf47w/uu0WZXTuMS3k7UUfQ08BPEeTnW
	RoS8me9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5e-0000000H9Pq-0FE9;
	Fri, 06 Jun 2025 05:58:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5T-0000000H9GU-1NMa
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5S-0003r4-2N; Fri, 06 Jun 2025 07:57:54 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 07:57:48 +0200
Message-Id: <20250606055748.1990383-17-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225755_376179_205BF0D7 
X-CRM114-Status: GOOD (  15.42  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 16/16] ARM: stm32mp: dk2: enable MIPI-DSI display by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that all drivers are in place, let's enable them in the defconfig
and have barebox show a barebox prompt by default when run on the DK2.

If logo support is enabled, the logo is shown instead, but this is not
enabled here as not to require an imagemagick dependency for the
defconfig.

One way around that would be to have S_shipped logos checked into the
source tree, but that's a task for another day.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/stm32mp15xx-dkx/Makefile       |  1 +
 arch/arm/boards/stm32mp15xx-dkx/board.c        |  3 +++
 .../defaultenv-stm32mp15xx-dkx/init/splash     | 18 ++++++++++++++++++
 arch/arm/configs/stm32mp_defconfig             | 18 ++++++++++++------
 4 files changed, 34 insertions(+), 6 deletions(-)
 create mode 100755 arch/arm/boards/stm32mp15xx-dkx/defaultenv-stm32mp15xx-dkx/init/splash

diff --git a/arch/arm/boards/stm32mp15xx-dkx/Makefile b/arch/arm/boards/stm32mp15xx-dkx/Makefile
index 5678718188b9..88b1faf193bc 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/Makefile
+++ b/arch/arm/boards/stm32mp15xx-dkx/Makefile
@@ -2,3 +2,4 @@
 
 lwl-y += lowlevel.o
 obj-y += board.o
+bbenv-y += defaultenv-stm32mp15xx-dkx
diff --git a/arch/arm/boards/stm32mp15xx-dkx/board.c b/arch/arm/boards/stm32mp15xx-dkx/board.c
index d693bf2aaf68..3ef5a6f38d46 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/board.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/board.c
@@ -3,6 +3,7 @@
 #include <init.h>
 #include <mach/stm32mp/bbu.h>
 #include <deep-probe.h>
+#include <envfs.h>
 
 static int dkx_probe(struct device *dev)
 {
@@ -17,6 +18,8 @@ static int dkx_probe(struct device *dev)
 
 	barebox_set_hostname("stm32mp15xx-dkx");
 
+	defaultenv_append_directory(defaultenv_stm32mp15xx_dkx);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/stm32mp15xx-dkx/defaultenv-stm32mp15xx-dkx/init/splash b/arch/arm/boards/stm32mp15xx-dkx/defaultenv-stm32mp15xx-dkx/init/splash
new file mode 100755
index 000000000000..922431eb916e
--- /dev/null
+++ b/arch/arm/boards/stm32mp15xx-dkx/defaultenv-stm32mp15xx-dkx/init/splash
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+if [ -e /dev/fb0 ]; then
+        fb0.enable=1
+fi
+
+if [ -d /logo ]; then
+        for logo in /logo/*; do
+                splash $logo
+                exit
+        done
+fi
+
+# No logo, so let's show console instead
+if [ -e /dev/fbconsole0-1 ]; then
+        fbconsole0.font=7x14
+        fbconsole0.active=ioe
+fi
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 366c9430d551..20955b3f6b80 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -9,16 +9,13 @@ CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
 CONFIG_MACH_PROTONIC_STM32MP13=y
 CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1=y
-CONFIG_BOARD_GENERIC_DT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
@@ -77,6 +74,8 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -114,7 +113,6 @@ CONFIG_I2C=y
 CONFIG_I2C_STM32=y
 CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
-CONFIG_MTD_SST25L=y
 CONFIG_USB_HOST=y
 CONFIG_USB_DWC2_HOST=y
 CONFIG_USB_DWC2_GADGET=y
@@ -126,10 +124,13 @@ CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
 CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_FB_SSD1307=y
 CONFIG_DRIVER_VIDEO_STM32_LTDC=y
+CONFIG_DRIVER_VIDEO_STM32_DSI=y
 CONFIG_DRIVER_VIDEO_BACKLIGHT=y
 CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
+CONFIG_DRIVER_VIDEO_PANEL_ORISETECH_OTM8009A=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
@@ -173,11 +174,16 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_PSTORE=y
 CONFIG_FS_PSTORE_CONSOLE=y
 CONFIG_FS_PSTORE_RAMOOPS=y
 CONFIG_FS_SQUASHFS=y
 CONFIG_FS_RATP=y
-CONFIG_ZLIB=y
 CONFIG_CRC8=y
+CONFIG_BMP=y
+CONFIG_PNG=y
+CONFIG_QOI=y
+CONFIG_FONT_8x8=y
+CONFIG_FONT_7x14=y
+CONFIG_FONT_MINI_4x6=y
+CONFIG_FONT_TER16x32=y
-- 
2.39.5



