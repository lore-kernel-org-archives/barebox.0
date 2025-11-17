Delivery-date: Mon, 17 Nov 2025 20:18:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL4jj-0024k3-2q
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 20:18:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL4jh-00028Q-FV
	for lore@pengutronix.de; Mon, 17 Nov 2025 20:18:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NuoO8kLT9sOX/OUBcD6zJae36/H26ZsZ9rdwWmSLZOo=; b=GajJVrVfuR6zmH0fbGWTu1nngM
	PGhi4f5fnYYJqbNmj/Dvs7c3ZVoOgyh0H5gpsr+LcJ37SxNWrkNjCM8SpB221jcSMlt1QwkHtR8Au
	UIG8LJb/TvfjB8cDTGqkwWFLd2fPnrHU2pOEwv6aeTKUD39GBOTUYhO7ox3ALxbgGE9avzskxc7Ma
	WYCqeUMO1hDRQNInmLgoK6/3lqO1uOpEcnrN6YbrA3jJR9aLK/YcfUPP/zwNLqnIYKXP5hy7CieKI
	7ze/lxL9Va2HAoubP0YQMqv4fM0gZ4Qo7IYJ3IQdNPLJ373R8/UL95j8G3BI8QpOsRTsuzRb4RwAG
	5qS0DIbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL4jB-0000000Gji7-3VyR;
	Mon, 17 Nov 2025 19:17:29 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL4j8-0000000GjgM-1Lql
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 19:17:28 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id 5AHJNV9e013570;
	Mon, 17 Nov 2025 19:23:31 GMT
Received: (from akurz@localhost)
	by blala.de (8.15.2/8.15.2/Submit) id 5AHJNVdq013569;
	Mon, 17 Nov 2025 19:23:31 GMT
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Date: Mon, 17 Nov 2025 19:23:29 +0000
Message-Id: <20251117192329.13516-2-akurz@blala.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20251117192329.13516-1-akurz@blala.de>
References: <20251117192329.13516-1-akurz@blala.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_111726_816153_671C9ACB 
X-CRM114-Status: GOOD (  32.81  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/1] ARM i.MX6SL: Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Four Amazon Kindle 6th and 7th generation e-book readers were considered
for this patch, referred by their models
* DP75SDI "PINOT_WFO" (256MB) "Kindle Paperwhite 2" 6th gen
* DP75SDI "Muscat WFO" (512MB) "Kindle Paperwhite 3" 7th gen
* WP63GW "Kindle" 7th gen (512MB)
* NM460GZ "Voyage" 7th gen (512MB)
Kindle e-book readers from generation 6 and 7 use the i.MX6SL and an
are shipped with a factory-adapted u-boot image. Vendor software image
updates for these models stopped around 2021 to 2023.

Add experimental support for the kindle gen 6/7 models and make barebox
an optional drop-in replacement for the original bootloader.
Required PMIC settings are implemented as script.

Notable features tested on all models:
- Support for eMMC, USB, UART, I2C and SPI.
- LPDDR2 setup is done via DCD, the same imximage may be used
  for USB-startup and for installation.
- Support for vendor specific ATAGs that are required by the Kindle-System.
- usbserial barebox console access for 10 seconds after startup.

Known issues:
- Reset on models kindle6-dp75sdi and nm460gz does not work and triggers
  microcode USB download boot.
- No recovery (without soldering) like USB boot known after e.g. a failed
  flashing attempt.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 .../boards/imx/amazon-kindle-6-7.rst          |  94 ++++++++
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/kindle-mx6sl/Makefile         |   5 +
 arch/arm/boards/kindle-mx6sl/board.c          | 208 ++++++++++++++++++
 .../defaultenv-kindle-mx6sl/boot/mmc_kernel   |  11 +
 .../defaultenv-kindle-mx6sl/init/pmic         |  32 +++
 .../defaultenv-kindle-mx6sl/init/usbserial    |   4 +
 .../nv/autoboot_timeout                       |   1 +
 .../defaultenv-kindle-mx6sl/nv/boot.default   |   1 +
 .../nv/linux.bootargs.base                    |   1 +
 .../nv/linux.bootargs.console                 |   1 +
 .../nv/linux.bootargs.video                   |   1 +
 .../flash-header-kindle-mx6sl-256m.imxcfg     | 126 +++++++++++
 .../flash-header-kindle-mx6sl-512m.imxcfg     | 126 +++++++++++
 arch/arm/boards/kindle-mx6sl/lowlevel.c       |  84 +++++++
 arch/arm/configs/kindle-gen-6-7_defconfig     |  89 ++++++++
 arch/arm/dts/Makefile                         |   3 +
 arch/arm/dts/imx6sl-kindle-common.dtsi        | 167 ++++++++++++++
 arch/arm/dts/imx6sl-kindle-dp75sdi.dts        |  51 +++++
 arch/arm/dts/imx6sl-kindle-nm460gz.dts        |  65 ++++++
 arch/arm/dts/imx6sl-kindle-wp63gw.dts         |  40 ++++
 arch/arm/mach-imx/Kconfig                     |  17 ++
 images/Makefile.imx                           |  21 ++
 23 files changed, 1149 insertions(+)
 create mode 100644 Documentation/boards/imx/amazon-kindle-6-7.rst
 create mode 100644 arch/arm/boards/kindle-mx6sl/Makefile
 create mode 100644 arch/arm/boards/kindle-mx6sl/board.c
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/pmic
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/usbserial
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/boot.default
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.base
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.video
 create mode 100644 arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-256m.imxcfg
 create mode 100644 arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-512m.imxcfg
 create mode 100644 arch/arm/boards/kindle-mx6sl/lowlevel.c
 create mode 100644 arch/arm/configs/kindle-gen-6-7_defconfig
 create mode 100644 arch/arm/dts/imx6sl-kindle-common.dtsi
 create mode 100644 arch/arm/dts/imx6sl-kindle-dp75sdi.dts
 create mode 100644 arch/arm/dts/imx6sl-kindle-nm460gz.dts
 create mode 100644 arch/arm/dts/imx6sl-kindle-wp63gw.dts

diff --git a/Documentation/boards/imx/amazon-kindle-6-7.rst b/Documentation/boards/imx/amazon-kindle-6-7.rst
new file mode 100644
index 0000000000..c57d27afe4
--- /dev/null
+++ b/Documentation/boards/imx/amazon-kindle-6-7.rst
@@ -0,0 +1,94 @@
+Amazon Kindle 6/7 (Paperwhite 2/3, Kindle 7th gen and Voyage)
+=============================================================
+
+Four models of the Amazon Kindle e-Book readers are considered as members
+of the 6th and 7th generation:
+
+* DP75SDI "PINOT_WFO" (256MB) "Kindle Paperwhite 2" 6th gen
+* DP75SDI "Muscat WFO" (512MB) "Kindle Paperwhite 3" 7th gen
+* WP63GW (512MB) "Kindle" 7th gen
+* NM460GZ (512MB) "Voyage" 7th gen
+
+Those e-book readers share a common set of hardware:
+
+* Freescale i.MX6SL SOC
+* 256MB or 512MB of LPDDR2
+* eMMC storage
+* MAX77696A PMIC
+
+The devices boot up in internal boot mode from eMMC boot partition 1
+and are shipped with a vendor modified u-boot imximage based on u-boot
+v2009.08.
+
+According to the availability of source code tarballs on the amazon website
+"Source Code Notice for Kindle E-Readers and Fire Tablets", factory image
+updates seem to have been terminated between 2021 and 2023.
+
+This device is battery-powered and there is no way to switch the device off.
+When the device is inactive, the Kindle software will first reduce the
+power consumption to a few milliamps of battery power, after some minutes
+the power consumption is further reduced to sub-milliamp level. Keeping
+iomux pullups switched on at standby may significantly drain your battery.
+
+Building barebox
+----------------
+
+``make kindle-gen-6-7_defconfig`` should get you a working config.
+
+Uploading barebox
+-----------------
+
+Similar to the 4/5 gen devices, console access to gen 6/7 kindles is
+available via the Micro-USB connector when a 30k Ohm resistor to GND
+is used on the sense pin: USB D- will become TXD, D+ RXD.
+
+From the uboot shell, the barebox image may be chainloaded e.g. like
+
+   .. code-block:: console
+
+        $ bist
+        $ loady 0x80000000
+        $ go 0x80001000
+
+Booting the devices from USB is more demanding and will likely require
+opening of the device and desoldering of a metal shield.
+All devices feature just a single power button which may be used to reset
+the device. Unlike the models of the 4th generation where a separate
+button is available to boot from USB, such buttons do not exist here.
+Button pads on the PCB are not populated and USB boot mode by
+pin-strapping seems to be disabled by fuse settings. To put the device
+into USB boot mode, the eMMC may be disabled temporarily.
+
+1. Connect the Kindle to your host computer with a USB cable.
+2. Disable the eMMC
+   * for the DP75SDI pull the left resistor left of TP806/TP807 (below
+     TP914) facing the eMMC to zero.
+2. Power down the device by holding the power button until the power LED goes
+   dark (about 12-15 seconds).
+3. Release the power button.
+4. Free the eMMC pin.
+5. After 10-20 seconds, a new USB device named ``SE Blank MEGREZ`` should
+   appear on your host computer.
+6. Use imx-usb-loader to boot from USB.
+
+   .. code-block:: console
+
+        $ scripts/imx/imx-usb-loader images/barebox-kindle6-dp75sdi.img
+
+A USB serial ACM console will be launched by a barebox init script
+for 10 seconds after boot.
+
+Installing barebox
+------------------
+
+Barebox may be used as drop-in replacement for the shipped bootloader, when
+the imximg fits into 384000 bytes, compression like IMAGE_COMPRESSION_XZKERN
+might be required for this. When installing the barebox imximg on
+the eMMC, take care not to overwrite the vendor supplied serial numbers and
+other data stored on the eMMC. All 6th and 7th gen devices seem to share the
+same disk layout. E.g. just write the imx-header and the application section:
+
+.. code-block:: console
+
+        $ loady -t usbserial
+        $ memcpy -s barebox-kindle6-dp75sdi.img -d /dev/mmc1.boot0 0x400 0x400 0x5dc00
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f73285ede9..cc32dff2a5 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -141,6 +141,7 @@ obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
 obj-$(CONFIG_MACH_KINDLE_MX50)			+= kindle-mx50/
+obj-$(CONFIG_MACH_KINDLE_6_7)			+= kindle-mx6sl/
 obj-$(CONFIG_MACH_TORADEX_COLIBRI_T20)		+= toradex-colibri-t20/
 obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
diff --git a/arch/arm/boards/kindle-mx6sl/Makefile b/arch/arm/boards/kindle-mx6sl/Makefile
new file mode 100644
index 0000000000..bb9aca5b96
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
+bbenv-y += defaultenv-kindle-mx6sl
diff --git a/arch/arm/boards/kindle-mx6sl/board.c b/arch/arm/boards/kindle-mx6sl/board.c
new file mode 100644
index 0000000000..04a16fcef0
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/board.c
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2025 Alexander Kurz <akurz@blala.de>
+
+#include <common.h>
+#include <envfs.h>
+#include <environment.h>
+#include <init.h>
+#include <io.h>
+#include <param.h>
+#include <magicvar.h>
+#include <libfile.h>
+#include <globalvar.h>
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <linux/sizes.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6.h>
+#include <asm/mach-types.h>
+
+/* 16 byte id for serial number */
+#define ATAG_SERIAL16   0x5441000a
+/* 16 byte id for a board revision */
+#define ATAG_REVISION16 0x5441000b
+/* mac address / secret */
+#define ATAG_MACADDR    0x5441000d
+/* 2x 16 byte /proc/bootmode */
+#define ATAG_BOOTMODE   0x5441000f
+
+struct tag_char16 {
+	char data[16];
+};
+
+struct tag_macaddr {
+	char address[12];
+	char secret[20];
+};
+
+struct tag_bootmode {
+	char boot[16];
+	char post[16];
+};
+
+static struct tag *setup_16char_tag(struct tag *params, uint32_t tag,
+					const char *value)
+{
+	struct tag_char16 *target;
+
+	target = ((void *) params) + sizeof(struct tag_header);
+	params->hdr.tag = tag;
+	params->hdr.size = tag_size(tag_char16);
+	memset(target->data, 0, sizeof(target->data));
+	/* don't care for missing null terminators */
+	strncpy(target->data, value, sizeof(target->data));
+	return tag_next(params);
+}
+
+static struct tag *setup_macaddr_tag(struct tag *params, uint32_t tag,
+				    const char *addr, const char *secret)
+{
+	struct tag_macaddr *target;
+
+	target = ((void *) params) + sizeof(struct tag_header);
+	params->hdr.tag = tag;
+	params->hdr.size = tag_size(tag_macaddr);
+	memset(target->address, 0, sizeof(target->address));
+	memset(target->secret, 0, sizeof(target->secret));
+	strncpy(target->address, addr, sizeof(target->address));
+	strncpy(target->secret, secret, sizeof(target->secret));
+	return tag_next(params);
+}
+
+static struct tag *setup_bootmode_tag(struct tag *params, uint32_t tag,
+				    const char *bootmode, const char *postmode)
+{
+	struct tag_bootmode *target;
+
+	target = ((void *) params) + sizeof(struct tag_header);
+	params->hdr.tag = tag;
+	params->hdr.size = tag_size(tag_macaddr);
+	memset(target->boot, 0, sizeof(target->boot));
+	memset(target->post, 0, sizeof(target->post));
+	strncpy(target->boot, bootmode, sizeof(target->boot));
+	strncpy(target->post, postmode, sizeof(target->post));
+	return tag_next(params);
+}
+
+
+static const char *get_env_char_tag(const char *tag, const char *defaultval)
+{
+	const char *value;
+
+	value = getenv(tag);
+	if (!value) {
+		printf("env var %s not found, using default\n", tag);
+		return defaultval;
+	}
+	return value;
+}
+
+BAREBOX_MAGICVAR(global.board.serial16,
+	"The device serial in ATAG_SERIAL16, visible in /proc/cpuinfo");
+BAREBOX_MAGICVAR(global.board.revision16,
+	"The boardid in ATAG_REVISION16 to fill /proc/boardid");
+BAREBOX_MAGICVAR(global.board.mac,
+	"The wifi MAC in ATAG_MACADDR visible as /proc/mac_addr");
+BAREBOX_MAGICVAR(global.board.sec,
+	"The sec code in ATAG_MACADDR visible as /proc/mac_sec");
+BAREBOX_MAGICVAR(global.board.bootmode,
+	"The bootmode in ATAG_BOOTMODE to fill /proc/bootmode");
+BAREBOX_MAGICVAR(global.board.postmode,
+	"The postmode in ATAG_BOOTMODE to fill /proc/postmode");
+
+static struct envdata {
+	size_t offset;
+	size_t size;
+	const char *env_name;
+	char *data;
+} kindle_mx6sl_boardinfo[] = {
+	{ 0x0,  16, "board.serial16" },
+	{ 0x60, 16, "board.revision16" },
+	{ 0x30, 16, "board.mac" },
+	{ 0x40, 20, "board.sec" },
+	{ 0x1000, 16, "board.bootmode" },
+	{ 0x1010, 16, "board.postmode" },
+};
+
+/* The Kernels several custom ATAGs */
+static struct tag *kindle_mx6sl_append_atags(struct tag *params)
+{
+	params = setup_16char_tag(params, ATAG_SERIAL16,
+			get_env_char_tag("global.board.serial16",
+				"0000000000000000"));
+	params = setup_16char_tag(params, ATAG_REVISION16,
+			get_env_char_tag("global.board.revision16",
+				"0000000000000000"));
+	params = setup_macaddr_tag(params, ATAG_MACADDR,
+			get_env_char_tag("global.board.mac",
+				"000000000000"),
+			get_env_char_tag("global.board.sec",
+				"00000000000000000000"));
+	params = setup_bootmode_tag(params, ATAG_BOOTMODE,
+			get_env_char_tag("global.board.bootmode", ""),
+			get_env_char_tag("global.board.postmode", ""));
+	return params;
+}
+
+
+static void kindle_rev_init(const char *part, struct envdata *env, size_t num)
+{
+	void *buf;
+	int ret;
+
+	ret = read_file_2(part, NULL, &buf, 0x1060);
+	if (ret && ret != -EFBIG) {
+		pr_err("Could not read board info from %s\n", part);
+		return;
+	}
+	for (int i = 0; i < num; i++) {
+		size_t offset = env[i].offset;
+		size_t size = env[i].size;
+		const char *name = env[i].env_name;
+
+		env[i].data = xzalloc(size + 1);
+		env[i].data[size] = 0;
+		memcpy(env[i].data, buf + offset, size);
+		globalvar_add_simple_string(name, &env[i].data);
+	}
+
+	free(buf);
+}
+
+static int is_mx6sl_kindle(void)
+{
+	return of_machine_is_compatible("amazon,imx6sl-kindle-dp75sdi") ||
+		of_machine_is_compatible("amazon,imx6sl-kindle-wp63gw") ||
+		of_machine_is_compatible("amazon,imx6sl-kindle-nm460gz");
+}
+
+static int kindle_mx6sl_late_init(void)
+{
+	if (!is_mx6sl_kindle())
+		return 0;
+
+	/* Compatibility ATAGs for original kernel */
+	armlinux_set_atag_appender(kindle_mx6sl_append_atags);
+
+	kindle_rev_init("/dev/mmc1.boot0.userdata", kindle_mx6sl_boardinfo,
+		ARRAY_SIZE(kindle_mx6sl_boardinfo));
+
+	return 0;
+}
+late_initcall(kindle_mx6sl_late_init);
+
+static int kindle6_device_init(void)
+{
+	if (!is_mx6sl_kindle())
+		return 0;
+
+	of_device_ensure_probed_by_alias("mmc1");
+	device_detect_by_name("mmc1");
+
+	defaultenv_append_directory(defaultenv_kindle_mx6sl);
+
+	return 0;
+}
+
+device_initcall(kindle6_device_init);
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
new file mode 100644
index 0000000000..518110b8fd
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
@@ -0,0 +1,11 @@
+#!/bin/sh
+# Boot the Amazon factory-shipped kernel uimage stored on
+# the eMMC at CONFIG_MMC_BOOTFLASH_ADDR 0x41000
+
+# Force ATAG boot
+global.bootm.boot_atag=true
+
+global linux.bootargs.dyn.log="log_pos_goal=0x8fff0000"
+global linux.bootargs.dyn.root="rootwait root=/dev/mmcblk0p1 ro"
+
+bootm -c /dev/mmc1.kernel
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/pmic b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/pmic
new file mode 100644
index 0000000000..efa02843e6
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/pmic
@@ -0,0 +1,32 @@
+#!/bin/sh
+
+# MAX77696 PMIC setup.
+#
+# Common settings for gen 6/7 kindles
+# LDO_L07_CNFG1_REG
+i2c_write -b 0 -a 0x3c -r 0x4f 0x70
+# LDO_L10_CNFG1_REG
+i2c_write -b 0 -a 0x3c -r 0x55 0xf4
+
+i2c_write -b 0 -a 0x3c -r 0x2 0x36
+# BUCK_VOUT1_REG
+i2c_write -b 0 -a 0x3c -r 0x31 0x34
+# BUCK_VOUTCNFG1_REG
+i2c_write -b 0 -a 0x3c -r 0x39 0xd0
+# BUCK_VOUTCNFG2_REG
+i2c_write -b 0 -a 0x3c -r 0x3a 0xd0
+# BUCK_VOUTCNFG3_REG
+i2c_write -b 0 -a 0x3c -r 0x3b 0x40
+# BUCK_VOUTCNFG6_REG
+i2c_write -b 0 -a 0x3c -r 0x3e 0x70
+i2c_write -b 0 -a 0x3c -r 0x5e 0x04
+# VREG_EPDCNFG_REG
+i2c_write -b 0 -a 0x3c -r 0x60 0x00
+# VREG_EPDSEQ_REG / VDDQ_SET_REG
+i2c_write -b 0 -a 0x3c -r 0x69 0x18
+
+if [ "$global.model" = "kindle6-dp75sdi" -o "$global.model" = "kindle7-dp75sdi" ]; then
+	# Backlight not available on WP63GW.
+	i2c_write -b 0 -a 0x3c -r 0x6c 0x80
+	i2c_write -b 0 -a 0x3c -r 0x6d 0x20
+fi
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/usbserial b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/usbserial
new file mode 100644
index 0000000000..c181c06da9
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/usbserial
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+usbserial
+global.autoboot_timeout=10
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/autoboot_timeout b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/autoboot_timeout
new file mode 100644
index 0000000000..64bb6b746d
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/autoboot_timeout
@@ -0,0 +1 @@
+30
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/boot.default b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/boot.default
new file mode 100644
index 0000000000..3118b7af45
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/boot.default
@@ -0,0 +1 @@
+mmc_kernel
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.base b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.base
new file mode 100644
index 0000000000..64d790aa7f
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.base
@@ -0,0 +1 @@
+ip=off
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.console b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.console
new file mode 100644
index 0000000000..d775310b40
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttymxc0,115200
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.video b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.video
new file mode 100644
index 0000000000..9b4e01473b
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.video
@@ -0,0 +1 @@
+video=mxcepdcfb:E60,bpp=8,x_mem=3M
diff --git a/arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-256m.imxcfg b/arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-256m.imxcfg
new file mode 100644
index 0000000000..6b1b53cf16
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-256m.imxcfg
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-FileCopyrightText: 2025 Alexander Kurz <akurz@blala.de>
+# SPDX-FileCopyrightText: 2012 Freescale Semiconductor, Inc.
+
+# DCD i.MX6sl SoC setup using 256MiB LPDDR2
+#
+# Initial DCD setup according to
+# Kindle_src_5.10.2_3374520058.tar.gz / uboot_2009.08.tar.gz
+# board/imx60_wario/flash_header.S
+
+loadaddr 0x80000000
+soc imx6
+ivtofs 0x400
+# CCM
+wm 32 0x020c4018 0x00260324
+
+# CCM CGR
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+wm 32 0x020c4084 0xffffffff
+
+# IOMUX
+wm 32 0x020e0344 0x00003038
+wm 32 0x020e0348 0x00003038
+wm 32 0x020e034c 0x00003038
+wm 32 0x020e0350 0x00003038
+
+wm 32 0x020e030c 0x00000020
+wm 32 0x020e0310 0x00000020
+wm 32 0x020e0314 0x00000020
+wm 32 0x020e0318 0x00000020
+
+wm 32 0x020e0300 0x00000020
+wm 32 0x020e031c 0x00000020
+wm 32 0x020e0338 0x00000020
+wm 32 0x020e0320 0x00080020
+wm 32 0x020e032c 0x00080000
+
+wm 32 0x020e0330 0x00000020
+wm 32 0x020e0334 0x00000020
+wm 32 0x020e033c 0x00000008
+wm 32 0x020e0340 0x00000008
+wm 32 0x020e0344 0x00003020
+wm 32 0x020e0348 0x00003020
+wm 32 0x020e034c 0x00003020
+wm 32 0x020e0350 0x00003020
+
+wm 32 0x020e032c 0x00000000
+wm 32 0x020e05c4 0x00000020
+wm 32 0x020e05cc 0x00000020
+wm 32 0x020e05d0 0x00080000
+wm 32 0x020e05d4 0x00000020
+wm 32 0x020e05d8 0x00000020
+wm 32 0x020e05ac 0x00000020
+wm 32 0x020e05c8 0x00000020
+wm 32 0x020e05b0 0x00020000
+wm 32 0x020e05b4 0x00000000
+wm 32 0x020e05c0 0x00020000
+wm 32 0x020e05bc 0x00001000
+
+# MMDC
+# MMDC0_MDSCR, set the Configuration request bit during MMDC set up
+wm 32 0x021b001c 0x00008000
+# LPDDR2 ZQ params
+wm 32 0x021b085c 0x1b4700c7
+# DDR_PHY_P0_MPZQHWCTRL
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b0890 0x00400000
+# frc_msr
+wm 32 0x021b08b8 0x00000800
+# DDR_PHY_P0_MPREDQBY0DL3 - DDR_PHY_P0_MPREDQBY3DL3
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b082c 0xf3333333
+wm 32 0x021b0830 0xf3333333
+wm 32 0x021b0834 0xf3333333
+wm 32 0x021b0838 0xf3333333
+# read calibration
+wm 32 0x021b0848 0x4241444a
+# write calibration
+wm 32 0x021b0850 0x3030312b
+# dqs gating dis
+wm 32 0x021b083c 0x20000000
+wm 32 0x021b0840 0x0
+# fine tune duty cyc to low
+wm 32 0x021b08c0 0x24911492
+# frc_msr
+wm 32 0x021b08b8 0x00000800
+# MMDC0_MDCFG0, MDPDC, MDCFG1, MDCFG2
+wm 32 0x021b000c 0x33374133
+wm 32 0x021b0004 0x00020024
+wm 32 0x021b0010 0x00100A82
+wm 32 0x021b0014 0x00000093
+# MMDC0_MDMISC, MDRWD, MDOR
+wm 32 0x021b0018 0x00001688
+wm 32 0x021b002c 0x0f9f26d2
+wm 32 0x021b0030 0x009F0E10
+wm 32 0x021b0030 0x00000010
+# MMDC0_MDCFG3LP, MDOTC
+wm 32 0x021b0038 0x00190778
+wm 32 0x021b0008 0x00000000
+# CS0_END = 0x8fffffff, 256MB
+wm 32 0x021b0040 0x00000047
+# MMDC0_MDCTL 256MB, SDE0 only
+wm 32 0x021b0000 0x83010000
+# MRW
+wm 32 0x021b001c 0x003f8030
+wm 32 0x021b001c 0xff0a8030
+wm 32 0x021b001c 0x82018030
+wm 32 0x021b001c 0x04028030
+wm 32 0x021b001c 0x03038030
+# final DDR setup
+wm 32 0x021b0800 0xa1310003
+wm 32 0x021b0020 0x00001800
+wm 32 0x021b0818 0x00000000
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b0004 0x00025564
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-512m.imxcfg b/arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-512m.imxcfg
new file mode 100644
index 0000000000..6af6341daa
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-512m.imxcfg
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-FileCopyrightText: 2025 Alexander Kurz <akurz@blala.de>
+# SPDX-FileCopyrightText: 2012 Freescale Semiconductor, Inc.
+
+# DCD i.MX6sl SoC setup using 512MiB LPDDR2
+#
+# Initial DCD setup according to
+# Kindle_src_5.10.2_3374520058.tar.gz / uboot_2009.08.tar.gz
+# board/imx60_wario/flash_header.S
+
+loadaddr 0x80000000
+soc imx6
+ivtofs 0x400
+# CCM
+wm 32 0x020c4018 0x00260324
+
+# CCM CGR
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+wm 32 0x020c4084 0xffffffff
+
+# IOMUX
+wm 32 0x020e0344 0x00003038
+wm 32 0x020e0348 0x00003038
+wm 32 0x020e034c 0x00003038
+wm 32 0x020e0350 0x00003038
+
+wm 32 0x020e030c 0x00000020
+wm 32 0x020e0310 0x00000020
+wm 32 0x020e0314 0x00000020
+wm 32 0x020e0318 0x00000020
+
+wm 32 0x020e0300 0x00000020
+wm 32 0x020e031c 0x00000020
+wm 32 0x020e0338 0x00000020
+wm 32 0x020e0320 0x00080020
+wm 32 0x020e032c 0x00080000
+
+wm 32 0x020e0330 0x00000020
+wm 32 0x020e0334 0x00000020
+wm 32 0x020e033c 0x00000008
+wm 32 0x020e0340 0x00000008
+wm 32 0x020e0344 0x00003020
+wm 32 0x020e0348 0x00003020
+wm 32 0x020e034c 0x00003020
+wm 32 0x020e0350 0x00003020
+
+wm 32 0x020e032c 0x00000000
+wm 32 0x020e05c4 0x00000020
+wm 32 0x020e05cc 0x00000020
+wm 32 0x020e05d0 0x00080000
+wm 32 0x020e05d4 0x00000020
+wm 32 0x020e05d8 0x00000020
+wm 32 0x020e05ac 0x00000020
+wm 32 0x020e05c8 0x00000020
+wm 32 0x020e05b0 0x00020000
+wm 32 0x020e05b4 0x00000000
+wm 32 0x020e05c0 0x00020000
+wm 32 0x020e05bc 0x00001000
+
+# MMDC
+# MMDC0_MDSCR, set the Configuration request bit during MMDC set up
+wm 32 0x021b001c 0x00008000
+# LPDDR2 ZQ params
+wm 32 0x021b085c 0x1b4700c7
+# DDR_PHY_P0_MPZQHWCTRL
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b0890 0x00400000
+# frc_msr
+wm 32 0x021b08b8 0x00000800
+# DDR_PHY_P0_MPREDQBY0DL3 - DDR_PHY_P0_MPREDQBY3DL3
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b082c 0xf3333333
+wm 32 0x021b0830 0xf3333333
+wm 32 0x021b0834 0xf3333333
+wm 32 0x021b0838 0xf3333333
+# read calibration
+wm 32 0x021b0848 0x4241444a
+# write calibration
+wm 32 0x021b0850 0x3030312b
+# dqs gating dis
+wm 32 0x021b083c 0x20000000
+wm 32 0x021b0840 0x0
+# fine tune duty cyc to low
+wm 32 0x021b08c0 0x24911492
+# frc_msr
+wm 32 0x021b08b8 0x00000800
+# MMDC0_MDCFG0, MDPDC, MDCFG1, MDCFG2
+wm 32 0x021b000c 0x33374133
+wm 32 0x021b0004 0x00020024
+wm 32 0x021b0010 0x00100A82
+wm 32 0x021b0014 0x00000093
+# MMDC0_MDMISC, MDRWD, MDOR
+wm 32 0x021b0018 0x00001688
+wm 32 0x021b002c 0x0f9f26d2
+wm 32 0x021b0030 0x009F0E10
+wm 32 0x021b0030 0x00000010
+# MMDC0_MDCFG3LP, MDOTC
+wm 32 0x021b0038 0x00190778
+wm 32 0x021b0008 0x00000000
+# CS0_END = 0x9fffffff, 512MB
+wm 32 0x021b0040 0x0000004f
+# MMDC0_MDCTL, SDE_1 disabled
+wm 32 0x021b0000 0x83110000
+# MRW
+wm 32 0x021b001c 0x003f8030
+wm 32 0x021b001c 0xff0a8030
+wm 32 0x021b001c 0x82018030
+wm 32 0x021b001c 0x04028030
+wm 32 0x021b001c 0x03038030
+# final DDR setup
+wm 32 0x021b0800 0xa1310003
+wm 32 0x021b0020 0x00001800
+wm 32 0x021b0818 0x00000000
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b0004 0x00025564
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/kindle-mx6sl/lowlevel.c b/arch/arm/boards/kindle-mx6sl/lowlevel.c
new file mode 100644
index 0000000000..0c2ad8c914
--- /dev/null
+++ b/arch/arm/boards/kindle-mx6sl/lowlevel.c
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <mach/imx/debug_ll.h>
+#include <common.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/imx6.h>
+
+extern char __dtb_imx6sl_kindle_wp63gw_start[];
+extern char __dtb_imx6sl_kindle_dp75sdi_start[];
+extern char __dtb_imx6sl_kindle_nm460gz_start[];
+
+ENTRY_FUNCTION(start_imx6sl_kindle_wp63gw, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		writel(0x4, 0x020e016c);
+		imx6_uart_setup_ll();
+	}
+
+	fdt = __dtb_imx6sl_kindle_wp63gw_start + get_runtime_offset();
+	imx6ul_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6sl_kindle6_dp75sdi, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		writel(0x4, 0x020e016c);
+		imx6_uart_setup_ll();
+	}
+
+	fdt = __dtb_imx6sl_kindle_dp75sdi_start + get_runtime_offset();
+	imx6ul_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6sl_kindle7_dp75sdi, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		writel(0x4, 0x020e016c);
+		imx6_uart_setup_ll();
+	}
+
+	fdt = __dtb_imx6sl_kindle_dp75sdi_start + get_runtime_offset();
+	imx6ul_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6sl_kindle_nm460gz, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		writel(0x4, 0x020e016c);
+		imx6_uart_setup_ll();
+	}
+
+	fdt = __dtb_imx6sl_kindle_nm460gz_start + get_runtime_offset();
+	imx6ul_barebox_entry(fdt);
+}
diff --git a/arch/arm/configs/kindle-gen-6-7_defconfig b/arch/arm/configs/kindle-gen-6-7_defconfig
new file mode 100644
index 0000000000..9155fb45a3
--- /dev/null
+++ b/arch/arm/configs/kindle-gen-6-7_defconfig
@@ -0,0 +1,89 @@
+CONFIG_ARCH_IMX=y
+CONFIG_MACH_KINDLE_6_7=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_BOOT_ATAGS=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x5dc00
+CONFIG_STACK_SIZE=0x10000
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_KALLSYMS=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_REGULATOR=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_MTD=y
+CONFIG_MTD_M25P80=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_EEPROM_AT25=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_MXS_APBH_DMA=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_GENERIC_PHY=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e78722a9a7..1f17859c57 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -17,6 +17,9 @@ lwl-$(CONFIG_MACH_EXYNOS) += exynos8895-dreamlte.dtb.o \
 			exynos990-x1s.dtb.o
 lwl-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
 lwl-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
+lwl-$(CONFIG_MACH_KINDLE_6_7) += imx6sl-kindle-wp63gw.dtb.o \
+		imx6sl-kindle-dp75sdi.dtb.o \
+		imx6sl-kindle-nm460gz.dtb.o
 lwl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 lwl-$(CONFIG_MACH_ELTEC_HIPERCAM) += imx6dl-eltec-hipercam.dtb.o
 lwl-$(CONFIG_MACH_EMBEST_MARSBOARD) += imx6q-marsboard.dtb.o
diff --git a/arch/arm/dts/imx6sl-kindle-common.dtsi b/arch/arm/dts/imx6sl-kindle-common.dtsi
new file mode 100644
index 0000000000..8a98fd2bbc
--- /dev/null
+++ b/arch/arm/dts/imx6sl-kindle-common.dtsi
@@ -0,0 +1,167 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Alexander Kurz <akurz@blala.de>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <arm/nxp/imx/imx6sl.dtsi>
+
+/ {
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6sl-kindle {
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6SL_PAD_UART1_RXD__UART1_RX_DATA	0x1b0b1
+				MX6SL_PAD_UART1_TXD__UART1_TX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6SL_PAD_SD2_CMD__SD2_CMD		0x17059
+				MX6SL_PAD_SD2_CLK__SD2_CLK		0x10059
+				MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x17059
+				MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x17059
+				MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x17059
+				MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x17059
+			>;
+		};
+
+		pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+			fsl,pins = <
+				MX6SL_PAD_SD2_CMD__SD2_CMD		0x170b9
+				MX6SL_PAD_SD2_CLK__SD2_CLK		0x100b9
+				MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
+				MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
+				MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
+				MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
+			>;
+		};
+
+		pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+			fsl,pins = <
+				MX6SL_PAD_SD2_CMD__SD2_CMD		0x170f9
+				MX6SL_PAD_SD2_CLK__SD2_CLK		0x100f9
+				MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x170f9
+				MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x170f9
+				MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x170f9
+				MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x170f9
+			>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <
+				MX6SL_PAD_ECSPI1_MISO__ECSPI1_MISO	0x400100b1
+				MX6SL_PAD_ECSPI1_MOSI__ECSPI1_MOSI	0x400100b1
+				MX6SL_PAD_ECSPI1_SCLK__ECSPI1_SCLK	0x400100b1
+				MX6SL_PAD_ECSPI1_SS0__GPIO4_IO11	0x80000000
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX6SL_PAD_I2C1_SCL__I2C1_SCL		0x4001b8b1
+				MX6SL_PAD_I2C1_SDA__I2C1_SDA		0x4001b8b1
+			>;
+		};
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	non-removable;
+	keep-power-in-suspend;
+	enable-sdio-wakeup;
+	bus-width = <4>;
+	fsl,delay-line;
+	status = "okay";
+
+	partitions {
+		compatible = "barebox,fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		kernel: kernel@41000 {
+			label = "kernel";
+			reg = <0x41000 0xe00000>;
+		};
+	};
+
+	partitions-boot1 {
+		compatible = "barebox,fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		imx_header: imx_header@400 {
+			label = "imx_header";
+			reg = <0x400 0x800>;
+		};
+
+		self: self@1000 {
+			label = "self";
+			reg = <0x1000 0x4d000>;
+		};
+
+		userdata: userdata@5e000 {
+			label = "userdata";
+			reg = <0x5e000 0x1400>;
+		};
+	};
+};
+
+&ecspi1 {
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 11 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "st,m25p32", "jedec,spi-nor";
+		spi-max-frequency = <2000000>;
+		reg = <0>;
+	};
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&usbotg1 {
+	phy_type = "utmi";
+	dr_mode = "peripheral";
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6sl-kindle-dp75sdi.dts b/arch/arm/dts/imx6sl-kindle-dp75sdi.dts
new file mode 100644
index 0000000000..05fdd77a47
--- /dev/null
+++ b/arch/arm/dts/imx6sl-kindle-dp75sdi.dts
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Alexander Kurz <akurz@blala.de>
+ */
+
+/dts-v1/;
+#include "imx6sl-kindle-common.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "kindle-dp75sdi";
+	compatible = "amazon,imx6sl-kindle-dp75sdi",  "fsl,imx6sl";
+	barebox,deep-probe;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6sl-kindle-dp75sdi {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* Hall sensor */
+				MX6SL_PAD_KEY_ROW7__GPIO4_IO07	0x17059
+				/* Touch reset */
+				MX6SL_PAD_KEY_ROW6__GPIO4_IO05	0x17059
+				/* EMMC_3v2_EN, EMMC_1v8_EN */
+				MX6SL_PAD_FEC_RXD0__GPIO4_IO17	0x17059
+				MX6SL_PAD_FEC_MDC__GPIO4_IO23	0x17059
+				/* WLAN pwd */
+				MX6SL_PAD_KEY_ROW2__GPIO3_IO29	0x17059
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX6SL_PAD_I2C2_SCL__I2C2_SCL	0x4001b8b1
+				MX6SL_PAD_I2C2_SDA__I2C2_SDA	0x4001b8b1
+			>;
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6sl-kindle-nm460gz.dts b/arch/arm/dts/imx6sl-kindle-nm460gz.dts
new file mode 100644
index 0000000000..1fdcd96742
--- /dev/null
+++ b/arch/arm/dts/imx6sl-kindle-nm460gz.dts
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Alexander Kurz <akurz@blala.de>
+ */
+
+/dts-v1/;
+#include "imx6sl-kindle-common.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "kindle-nm460gz";
+	compatible = "amazon,imx6sl-kindle-nm460gz", "fsl,imx6sl";
+	barebox,deep-probe;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6sl-kindle-nm460gz {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* Hall sensor */
+				MX6SL_PAD_KEY_ROW7__GPIO4_IO07	0x17059
+				/* Touch reset */
+				MX6SL_PAD_KEY_ROW6__GPIO4_IO05	0x17059
+				/* EMMC_3v2_EN, EMMC_1v8_EN */
+				MX6SL_PAD_FEC_RXD0__GPIO4_IO17	0x17059
+				MX6SL_PAD_FEC_MDC__GPIO4_IO23	0x17059
+				/* WLAN pwd */
+				MX6SL_PAD_KEY_ROW2__GPIO3_IO29	0x17059
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX6SL_PAD_I2C2_SCL__I2C2_SCL	0x4001b8b1
+				MX6SL_PAD_I2C2_SDA__I2C2_SDA	0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX6SL_PAD_EPDC_SDCE2__I2C3_SCL	0x4001b8b1
+				MX6SL_PAD_EPDC_SDCE3__I2C3_SDA	0x4001b8b1
+			>;
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6sl-kindle-wp63gw.dts b/arch/arm/dts/imx6sl-kindle-wp63gw.dts
new file mode 100644
index 0000000000..eb2ba8a071
--- /dev/null
+++ b/arch/arm/dts/imx6sl-kindle-wp63gw.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Alexander Kurz <akurz@blala.de>
+ */
+
+/dts-v1/;
+#include "imx6sl-kindle-common.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "kindle-wp63gw";
+	compatible = "amazon,imx6sl-kindle-wp63gw",  "fsl,imx6sl";
+	barebox,deep-probe;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6sl-kindle-wp63gw {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* Hall sensor */
+				MX6SL_PAD_KEY_ROW7__GPIO4_IO07	0x17059
+				/* zForce touch */
+				MX6SL_PAD_I2C2_SCL__GPIO3_IO14	0x17059
+				MX6SL_PAD_I2C2_SDA__GPIO3_IO15	0x17059
+				MX6SL_PAD_KEY_ROW5__GPIO4_IO03	0x17059
+				MX6SL_PAD_KEY_ROW6__GPIO4_IO05	0x17059
+				/* EMMC_3v2_EN, EMMC_1v8_EN */
+				MX6SL_PAD_FEC_RXD0__GPIO4_IO17	0x17059
+				MX6SL_PAD_FEC_MDC__GPIO4_IO23	0x17059
+				/* WLAN pwd */
+				MX6SL_PAD_KEY_ROW2__GPIO3_IO29	0x17059
+			>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5f50d1a823..eb947e67fb 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -353,6 +353,23 @@ config MACH_ADVANTECH_ROM_742X
 	bool "Advantech ROM 742X"
 	select ARCH_IMX6
 
+config MACH_KINDLE_6_7
+	bool "i.MX6SL based Amazon Kindle generation 6 and 7"
+	select ARCH_IMX6SL
+	select SPI
+	select DRIVER_SPI_IMX
+	select I2C
+	select I2C_IMX
+	select GPIO_IMX
+	select ARM_BOARD_APPEND_ATAG
+	select ARM_LINUX
+	select OFTREE
+	select PINCTRL
+	help
+	  Say Y here if you are using the sixth or seventh generation Amazon
+	  Kindle Model No. DP75SDI (Paperwhite 2 or 3), WP63GW (Kindle 7) or
+	  NM460GZ (Kindle Voyage) based on the i.MX6SL SoC and MAX77696 PMIC.
+
 config MACH_NITROGEN6
 	bool "BoundaryDevices Nitrogen6 boards"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5ae14a5988..f66c0af6a4 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -374,6 +374,27 @@ $(call build_imx_habv4img, CONFIG_MACH_ADVANTECH_ROM_742X, start_advantech_imx6d
 
 $(call build_imx_habv4img, CONFIG_MACH_ZII_RDU2, start_imx6_zii_rdu2, zii-imx6q-rdu2/flash-header-rdu2, zii-imx6-rdu2)
 
+# ----------------------- i.MX6sl based boards --------------
+pblb-$(CONFIG_MACH_KINDLE_6_7) += start_imx6sl_kindle_wp63gw
+CFG_start_imx6sl_kindle_wp63gw.pblb.imximg = $(board)/kindle-mx6sl/flash-header-kindle-mx6sl-256m.imxcfg
+FILE_barebox-kindle-wp63gw.img = start_imx6sl_kindle_wp63gw.pblb.imximg
+image-$(CONFIG_MACH_KINDLE_6_7) += barebox-kindle-wp63gw.img
+
+pblb-$(CONFIG_MACH_KINDLE_6_7) += start_imx6sl_kindle6_dp75sdi
+CFG_start_imx6sl_kindle6_dp75sdi.pblb.imximg = $(board)/kindle-mx6sl/flash-header-kindle-mx6sl-256m.imxcfg
+FILE_barebox-kindle6-dp75sdi.img = start_imx6sl_kindle6_dp75sdi.pblb.imximg
+image-$(CONFIG_MACH_KINDLE_6_7) += barebox-kindle6-dp75sdi.img
+
+pblb-$(CONFIG_MACH_KINDLE_6_7) += start_imx6sl_kindle7_dp75sdi
+CFG_start_imx6sl_kindle7_dp75sdi.pblb.imximg = $(board)/kindle-mx6sl/flash-header-kindle-mx6sl-512m.imxcfg
+FILE_barebox-kindle7-dp75sdi.img = start_imx6sl_kindle7_dp75sdi.pblb.imximg
+image-$(CONFIG_MACH_KINDLE_6_7) += barebox-kindle7-dp75sdi.img
+
+pblb-$(CONFIG_MACH_KINDLE_6_7) += start_imx6sl_kindle_nm460gz
+CFG_start_imx6sl_kindle_nm460gz.pblb.imximg = $(board)/kindle-mx6sl/flash-header-kindle-mx6sl-512m.imxcfg
+FILE_barebox-kindle-nm460gz.img = start_imx6sl_kindle_nm460gz.pblb.imximg
+image-$(CONFIG_MACH_KINDLE_6_7) += barebox-kindle-nm460gz.img
+
 # ----------------------- i.MX6ul / i.MX6ull based boards --------------
 $(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_256mb, grinn-liteboard/flash-header-liteboard-256mb, grinn-liteboard-256mb)
 
-- 
2.39.5



