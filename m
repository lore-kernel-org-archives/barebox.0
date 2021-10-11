Delivery-date: Mon, 11 Oct 2021 16:57:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwjt-0007hg-K8
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 16:57:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwjs-0003Bn-AZ
	for lore@pengutronix.de; Mon, 11 Oct 2021 16:57:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtrx+pV/JzyL5MbQf2M9ybYz2pOZjgWcbh4BuoKVMAw=; b=AUtVBmhopnRobJ
	pl/89rr61uT+XmHDn81k1PJoEl/J5OZNQEgVSks0AptW5yqckVJehkzfkGZQxJMsE4YFPJPclOTJe
	QsTVU4J/fzvmorcY3giWRb1TYKgh+GvxIW8ybp6zFTMH9Ud1WSArjA8+20+mfTp43Y22K9Xz6jpQ+
	5yTUkBa5VGXp4qGFU31o3vOB6sxhjHMCpdtnX9upxiuVz/jMo8DkEp6fZnai5RMMhbRpS6rM/PWW2
	Xpb+A1s47/tjyL7c7E6Oq0UIxriBNjOfa/psSqJw1ZJsKWL+Bb53+PJyQuAJtL2+6EBzo8j4ie984
	dHXe9fn44iM6cUQKt7zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZwid-009qNu-6a; Mon, 11 Oct 2021 14:55:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZwho-009q5Y-Cg
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 14:55:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mZwhn-0002hr-6K; Mon, 11 Oct 2021 16:55:07 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mZwhm-0002e8-Rp; Mon, 11 Oct 2021 16:55:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Oct 2021 16:55:06 +0200
Message-Id: <20211011145506.23860-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011145506.23860-1-a.fatoum@pengutronix.de>
References: <20211011145506.23860-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_075508_463781_F04B29A5 
X-CRM114-Status: GOOD (  14.35  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] scripts: add target tool for rk-usb-loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Having rk-usb-loader as a target tool as well makes it easy to
cross-compile it. Add the boilerplate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Could be squashed into previous commit as well.
---
 arch/sandbox/configs/targettools_defconfig | 1 +
 scripts/.gitignore                         | 1 +
 scripts/Kconfig                            | 7 +++++++
 scripts/Makefile                           | 3 +++
 scripts/rk-usb-loader-target.c             | 1 +
 5 files changed, 13 insertions(+)
 create mode 100644 scripts/rk-usb-loader-target.c

diff --git a/arch/sandbox/configs/targettools_defconfig b/arch/sandbox/configs/targettools_defconfig
index d06074790c02..22845def617c 100644
--- a/arch/sandbox/configs/targettools_defconfig
+++ b/arch/sandbox/configs/targettools_defconfig
@@ -7,3 +7,4 @@ CONFIG_MVEBU_KWBOOT_TARGET=y
 CONFIG_ARCH_IMX_USBLOADER_TARGET=y
 CONFIG_OMAP3_USB_LOADER_TARGET=y
 CONFIG_OMAP4_USBBOOT_TARGET=y
+CONFIG_RK_USB_LOADER_TARGET=y
diff --git a/scripts/.gitignore b/scripts/.gitignore
index bc6e5dbc43df..ae70c92af8a3 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -32,6 +32,7 @@ omap4_usbboot-target
 omap3-usb-loader
 omap3-usb-loader-target
 rk-usb-loader
+rk-usb-loader-target
 mips-relocs
 rsatoc
 stm32image
diff --git a/scripts/Kconfig b/scripts/Kconfig
index b633e3011f55..9b744deba9aa 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -175,4 +175,11 @@ config OMAP4_USBBOOT_TARGET
 	  Say Y here to build the omap4 usb loader tool for the target.
 	  The cross toolchain needs libusb-1.0 to compile this tool.
 
+config RK_USB_LOADER_TARGET
+	bool "Rockchip USB loader for target"
+	depends on HAS_TARGET_LIBUSB_1_0
+	help
+	  Say Y here to build the rockchip usb loader tool for the target.
+	  The cross toolchain needs libusb-1.0 to compile this tool.
+
 endmenu
diff --git a/scripts/Makefile b/scripts/Makefile
index 433a30143105..dc5fa75f908b 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -47,11 +47,14 @@ userprogs-always-$(CONFIG_IMD_TARGET)			+= bareboximd-target
 userprogs-always-$(CONFIG_OMAP3_USB_LOADER_TARGET)	+= omap3-usb-loader-target
 userprogs-always-$(CONFIG_OMAP4_USBBOOT_TARGET)		+= omap4_usbboot-target
 userprogs-always-$(CONFIG_MVEBU_KWBOOT_TARGET)		+= kwboot-target
+userprogs-always-$(CONFIG_RK_USB_LOADER_TARGET)		+= rk-usb-loader-target
 
 omap3-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
 omap3-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
 omap4_usbboot-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
 omap4_usbboot-target-userldlibs += -lpthread `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
+rk-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
+rk-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
 
 userccflags += -I $(srctree)/$(src)/include -isystem $(srctree)/scripts/include
 
diff --git a/scripts/rk-usb-loader-target.c b/scripts/rk-usb-loader-target.c
new file mode 100644
index 000000000000..fe1540d752a0
--- /dev/null
+++ b/scripts/rk-usb-loader-target.c
@@ -0,0 +1 @@
+#include "rk-usb-loader.c"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

