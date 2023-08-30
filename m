Delivery-date: Wed, 30 Aug 2023 12:49:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbIlq-00EXJ6-Qd
	for lore@lore.pengutronix.de; Wed, 30 Aug 2023 12:49:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbIlm-0004kh-Q0
	for lore@pengutronix.de; Wed, 30 Aug 2023 12:49:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1na9OuMnzKrSHrY2OePqMj8FBHg1xnlpSQr16vqpxX4=; b=EBJvAxUjufV3tJWY3F4fmGX0+6
	moW5/WFQgEVEQHqs0eLq2HoVvsu/HwBFFOiaQ2axMVhEY6bLENvNEbKvt2/defdHiPepvbLr6YgC0
	rC20W5/lS30BFMZ40HSrtwhOM3Bwfc8bLv3uDApoSYMfn3pcu8DGsE/x/LxzqVgSiR23jBnElViEp
	vWiZx+3U+GJMVlYmr/8SHQQFXav51YEpYFvufyUGwjpPYaT42yllFyrtKjQgPbKuqnxOkYuWHDlvu
	mwTD5TU5UO3FLuiKBeCUFZXAhgj03lzz2wPdY3/+E0GKQVPnlf78xQ7mRuQ/G9bBffgtioEdSkg1T
	828pl89g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbIkM-00DKqv-2l;
	Wed, 30 Aug 2023 10:48:26 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbIkH-00DKoY-1H
	for barebox@lists.infradead.org;
	Wed, 30 Aug 2023 10:48:24 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2bbad32bc79so82046311fa.0
        for <barebox@lists.infradead.org>; Wed, 30 Aug 2023 03:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693392495; x=1693997295; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1na9OuMnzKrSHrY2OePqMj8FBHg1xnlpSQr16vqpxX4=;
        b=dpzdHxE9AnbJyBX+3yUKNMz06bzfG6G79/iOAMs7Qjdi2UBNUBH77nHmSMpVJNYaxe
         tIKVkwg9yMGJ2SlXpoMHU2SHcWqzLp10duRHb3THBTtNCd/Q2Vhsq+h3snK6MsG7Txzg
         2uF8GR03S3JGGveFAlQVqfRsYiWZeZt7zpnQgY/hdoNhayf0QPG4PgWoX1g+WZrKXXQL
         55DqLKU2UO8hWUd09AJzQtaF6BnSuCSmXldMpel3LJr+b5OdJJB1X3yiWxOwv12n8WTz
         8mf6yHYyXd1yE4aBZDFscFweDSWJQvVA/Ssa+WwQZ+9SVy2BtU8cK95k4jbbNpdlsL6Q
         esAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693392495; x=1693997295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1na9OuMnzKrSHrY2OePqMj8FBHg1xnlpSQr16vqpxX4=;
        b=DJYdNXU3dL8odjLTfM6UganWHJTE6tSQjBEoYQ+00WaZL4vXuD/fuO/ey7Bjm1Tk2H
         /ajMDrHgyAQ6c39Dx2TtKHXJG8FP+SEotsrqdfeM3yo1TYbITN+lI7oqnGVcPXyTdyi8
         JgmQkXzEFSptRr5g2qRkjF7o7X1R651lDYwcZhVOGB+8gFwBkRUzEljZz7Ax5alUBpHm
         krqRiSjScWRrplvVHu2+Sc3sAiPdnuDVKboneim+Owc42KPwthBjyOYQjmTcPTFToyoj
         Nh/3Hm6w3+XdeFOZW3Lnk6SGbwLAi1wnSSv4ZjdxDA6xFAm2JDAfNuT6KFzGlVdttpX+
         fvwQ==
X-Gm-Message-State: AOJu0Yxh3YAJnEPC/L1NCWAgGUUMcR6XJU/QbN/qk83OC5ANI+XzCxFC
	VxRn+paB7jHJhmrPhnud0diowsdBvJN4IL0z
X-Google-Smtp-Source: AGHT+IHDPm5L9GRSxgVKG9Hn7Tr3ToKbbMl6sbEDpQrheF/d0RLrrYHjLjb5RXZjn7mE2ASkqmFXdw==
X-Received: by 2002:a2e:8e87:0:b0:2bd:1732:c10b with SMTP id z7-20020a2e8e87000000b002bd1732c10bmr1635921ljk.34.1693392494258;
        Wed, 30 Aug 2023 03:48:14 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id p23-20020a2e8057000000b002b9fddc6d85sm2496140ljg.62.2023.08.30.03.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 03:48:13 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 30 Aug 2023 13:47:47 +0300
Message-Id: <20230830104747.43193-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230830104747.43193-1-eagle.alexander923@gmail.com>
References: <20230830104747.43193-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_034821_444591_8520D478 
X-CRM114-Status: GOOD (  23.52  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ARM: boards: Add MyirTech MYD-YA15XC-T development board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add basic support for the MyirTech MYD-YA15XC-T development board [1].
...
deep-probe: supported due to myir,myc-stm32mp15x
stm32mp-init: detected STM32MP151AAC Rev.Z
STM32 RCC reset reason POR (MP_RSTSR: 0x00000015)
Boot from SD...
psci psci.of: detected version 1.1
stpmic1-i2c stpmic10: PMIC Chip Version: 0x21
stm32-usbphyc 5a006000.usbphyc@5a006000.of: registered rev:1.0
nand_base: device found, Manufacturer ID: 0x2c, Chip ID: 0xda
nand_base: Micron MT29F2G08ABAEAWP
nand_base: 256 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
Bad block table found at page 131008, version 0x01
Bad block table found at page 130944, version 0x01
nand_read_bbt: bad block at 0x000000d60000
nand_read_bbt: bad block at 0x000000fa0000
nand_read_bbt: bad block at 0x00000d460000
stm32_sdmmc 58005000.mmc@58005000.of: registered as mmc0
mmc0: detected SD card version 2.0
mmc0: registered mmc0
stm32_sdmmc 58007000.mmc@58007000.of: registered as mmc1
stm32-iwdg 5a002000.watchdog@5a002000.of: probed
Product name: MYC-YA151C-256N256D-65-I-T
Product serial: TW202103290400145
malloc space: 0xc7ef7a80 -> 0xcfdef4ff (size 127 MiB)
envfs: no envfs (magic mismatch) - envfs never written?
NOTICE: ubi0: scanning is finished
NOTICE: ubi0: registering /dev/nand0.system.ubi
NOTICE: ubi0: registering kernel as /dev/nand0.system.ubi.kernel
NOTICE: ubi0: registering root as /dev/nand0.system.ubi.root
NOTICE: ubi0: registering bbox as /dev/nand0.system.ubi.bbox
NOTICE: ubi0: attached mtd0 (name "nand0.system", size 237 MiB) to ubi0
NOTICE: ubi0: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
NOTICE: ubi0: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
NOTICE: ubi0: VID header offset: 2048 (aligned 2048), data offset: 4096
NOTICE: ubi0: good PEBs: 1895, bad PEBs: 5, corrupted PEBs: 0
NOTICE: ubi0: user volume: 3, internal volumes: 1, max. volumes count: 128
NOTICE: ubi0: max/mean erase counter: 1/0, WL threshold: 65536, image sequence number: 3389077539
NOTICE: ubi0: available PEBs: 529, total reserved PEBs: 1366, PEBs reserved for bad PEB handling: 35

Hit m for menu or any to stop autoboot:    2
barebox@MYC-YA151C-256N256D-65-I-T:/
...

[1] https://www.myirtech.com/list.asp?id=659

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/Makefile                  |   1 +
 arch/arm/boards/myirtech-stm32/Makefile   |   4 +
 arch/arm/boards/myirtech-stm32/board.c    | 143 +++++++
 arch/arm/boards/myirtech-stm32/lowlevel.c |  27 ++
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/stm32mp15x-myirtech-myc.dtsi | 351 +++++++++++++++++
 arch/arm/dts/stm32mp15x-myirtech-myd.dts  | 458 ++++++++++++++++++++++
 arch/arm/mach-stm32mp/Kconfig             |   7 +
 images/Makefile.stm32mp                   |   2 +
 9 files changed, 994 insertions(+)
 create mode 100644 arch/arm/boards/myirtech-stm32/Makefile
 create mode 100644 arch/arm/boards/myirtech-stm32/board.c
 create mode 100644 arch/arm/boards/myirtech-stm32/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp15x-myirtech-myc.dtsi
 create mode 100644 arch/arm/dts/stm32mp15x-myirtech-myd.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 83a3179185..2ff10329b2 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -140,6 +140,7 @@ obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
 obj-$(CONFIG_MACH_STM32MP15XX_DKX)		+= stm32mp15xx-dkx/
 obj-$(CONFIG_MACH_STM32MP13XX_DK)		+= stm32mp13xx-dk/
 obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
+obj-$(CONFIG_MACH_MYIRTECH_STM32MP1)		+= myirtech-stm32/
 obj-$(CONFIG_MACH_STM32MP15X_EV1)		+= stm32mp15x-ev1/
 obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
 obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
diff --git a/arch/arm/boards/myirtech-stm32/Makefile b/arch/arm/boards/myirtech-stm32/Makefile
new file mode 100644
index 0000000000..511d4971fa
--- /dev/null
+++ b/arch/arm/boards/myirtech-stm32/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y					+= lowlevel.o
+obj-y					+= board.o
diff --git a/arch/arm/boards/myirtech-stm32/board.c b/arch/arm/boards/myirtech-stm32/board.c
new file mode 100644
index 0000000000..187a3b8a59
--- /dev/null
+++ b/arch/arm/boards/myirtech-stm32/board.c
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <envfs.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <init.h>
+#include <machine_id.h>
+#include <net.h>
+#include <of.h>
+#include <mach/stm32mp/bbu.h>
+
+struct id_eeprom {
+	u8 hrcw_primary[0x10];
+	u8 pn[64];
+	u8 sn[64];
+	u8 mac0[6];
+	u8 mac1[6];
+} __packed;
+
+static int stm32mp15x_myirtech_serial_fixup(struct device_node *root, void *unused)
+{
+	char *serial;
+
+	serial = basprintf("%s", getenv("global.machine_id"));
+	of_set_property(root, "serial-number", serial, strlen(serial) + 1, 1);
+	free(serial);
+
+	return 0;
+}
+
+static int stm32mp15x_myirtech_eeprom_init(void)
+{
+	struct id_eeprom eeprom;
+	struct cdev *cdev;
+	char str[64];
+	int len;
+
+	if (!of_machine_is_compatible("myir,myc-stm32mp15x"))
+		return 0;
+
+	cdev = cdev_by_name("eeprom0");
+	if (!cdev) {
+		pr_err("Can't find EEPROM\n");
+		return -ENODEV;
+	}
+
+	if (cdev_read(cdev, &eeprom, sizeof(eeprom), 0, 0) < 0) {
+		pr_err("Can't read EEPROM\n");
+		return -EIO;
+	}
+
+	len = (eeprom.pn[0] - '0');
+	if ((len < 8) || (len > 64)) {
+		pr_err("Unable to get product name\n");
+		return -EINVAL;
+	}
+
+	strncpy(str, &eeprom.pn[1], len);
+	str[len] = '\0';
+	pr_info("Product name: %s\n", str);
+	globalvar_add_simple("model", str);
+
+	len = (eeprom.sn[0] - '0');
+	if ((len < 8) || (len > 64)) {
+		pr_err("Unable to get product serial\n");
+		return -EINVAL;
+	}
+
+	strncpy(str, &eeprom.sn[1], len);
+	str[len] = '\0';
+	pr_info("Product serial: %s\n", str);
+	machine_id_set_hashable(str, len);
+	of_register_fixup(stm32mp15x_myirtech_serial_fixup, NULL);
+
+	if (!is_valid_ether_addr(eeprom.mac0)) {
+		int i, j;
+
+		/* Make fixed MAC-address based on serial number */
+		memcpy(eeprom.mac0, str, sizeof(eeprom.mac0));
+		for (i = sizeof(eeprom.mac0); i < len; i++)
+			for (j = 0; j < sizeof(eeprom.mac0); j++)
+				eeprom.mac0[j] ^= str[i];
+	}
+
+	eth_register_ethaddr(0, eeprom.mac0);
+
+	return 0;
+}
+of_populate_initcall(stm32mp15x_myirtech_eeprom_init);
+
+static int stm32mp15x_myirtech_probe(struct device *dev)
+{
+	int instance = bootsource_get_instance(), def = -1;
+	const enum bootsource bs = bootsource_get();
+
+	barebox_set_hostname("myir-stm32");
+
+	switch (bs) {
+	case BOOTSOURCE_MMC:
+		if (instance == 0) {
+			of_device_enable_path("/chosen/environment-sd");
+			pr_info("Boot from SD...\n");
+		} else {
+			of_device_enable_path("/chosen/environment-emmc");
+			pr_info("Boot from eMMC...\n");
+		}
+		def = instance;
+		break;
+	case BOOTSOURCE_NAND:
+		of_device_enable_path("/chosen/environment-nand");
+		pr_info("Boot from NAND...\n");
+		def = 2;
+		break;
+	default:
+		return 0;
+	}
+
+	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
+					 (def == 0) ? BBU_HANDLER_FLAG_DEFAULT : 0);
+
+	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl",
+					 (def == 1) ? BBU_HANDLER_FLAG_DEFAULT : 0);
+
+	//TODO: NAND
+
+	return 0;
+}
+
+static const struct of_device_id stm32mp15x_myirtech_of_match[] = {
+	{ .compatible = "myir,myc-stm32mp15x" },
+	{ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(stm32mp15x_myirtech_of_match);
+
+static struct driver stm32mp15x_myirtech_board_driver = {
+	.name = "board-myirtech-stm32",
+	.probe = stm32mp15x_myirtech_probe,
+	.of_compatible = stm32mp15x_myirtech_of_match,
+};
+device_platform_driver(stm32mp15x_myirtech_board_driver);
diff --git a/arch/arm/boards/myirtech-stm32/lowlevel.c b/arch/arm/boards/myirtech-stm32/lowlevel.c
new file mode 100644
index 0000000000..715a8eeb96
--- /dev/null
+++ b/arch/arm/boards/myirtech-stm32/lowlevel.c
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <mach/stm32mp/entry.h>
+#include <debug_ll.h>
+
+extern char __dtb_z_stm32mp15x_myirtech_myd_start[];
+
+static void setup_uart(void)
+{
+	/* first stage has set up the UART, so nothing to do here */
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION(start_stm32mp15x_myir, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_z_stm32mp15x_myirtech_myd_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 81e11bb6a3..b882c4942b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -143,6 +143,7 @@ lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-odyssey.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15XX_DKX) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.o
 lwl-$(CONFIG_MACH_STM32MP13XX_DK) += stm32mp135f-dk.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
+lwl-$(CONFIG_MACH_MYIRTECH_STM32MP1) += stm32mp15x-myirtech-myd.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
diff --git a/arch/arm/dts/stm32mp15x-myirtech-myc.dtsi b/arch/arm/dts/stm32mp15x-myirtech-myc.dtsi
new file mode 100644
index 0000000000..7f843ad2ab
--- /dev/null
+++ b/arch/arm/dts/stm32mp15x-myirtech-myc.dtsi
@@ -0,0 +1,351 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* SPDX-FileCopyrightText: Alexander Shiyan, <shc_work@mail.ru> */
+
+#include <arm/stm32mp151.dtsi>
+#include <arm/stm32mp15-pinctrl.dtsi>
+#include <arm/stm32mp15xxac-pinctrl.dtsi>
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/mfd/st,stpmic1.h>
+
+/ {
+	model = "MYIR MYC-YA15XC-T";
+	compatible = "myir,myc-stm32mp15x", "st,stm32mp151";
+
+	aliases {
+		i2c0 = &i2c1;
+		i2c1 = &i2c2;
+		i2c2 = &i2c3;
+		i2c3 = &i2c4;
+		i2c4 = &i2c5;
+		i2c5 = &i2c6;
+	};
+
+	memory@c0000000 {
+		device_type = "memory";
+		reg = <0xc0000000 0x10000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		mcuram2: mcuram2@10000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10000000 0x40000>;
+			no-map;
+		};
+
+		vdev0vring0: vdev0vring0@10040000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10040000 0x1000>;
+			no-map;
+		};
+
+		vdev0vring1: vdev0vring1@10041000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10041000 0x1000>;
+			no-map;
+		};
+
+		vdev0buffer: vdev0buffer@10042000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10042000 0x4000>;
+			no-map;
+		};
+
+		mcuram: mcuram@30000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x30000000 0x40000>;
+			no-map;
+		};
+
+		retram: retram@38000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x38000000 0x10000>;
+			no-map;
+		};
+
+		optee: optee@0xde000000 {
+			reg = <0xde000000 0x02000000>;
+			no-map;
+		};
+	};
+
+	vin_som: vin_som {
+		compatible = "regulator-fixed";
+		regulator-name = "vin_som";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+
+		led_cpu: led_cpu {
+			label = "som:cpu";
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_CPU;
+			gpios = <&gpioa 13 (GPIO_ACTIVE_LOW | GPIO_PUSH_PULL)>;
+			linux,default-trigger = LED_FUNCTION_CPU;
+		};
+	};
+};
+
+&bsec {
+	board_id: board_id@ec {
+		reg = <0xec 0x4>;
+		st,non-secure-otp;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vddcore>;
+};
+
+&dts {
+	status = "okay";
+};
+
+&fmc {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&fmc_pins_a>;
+	pinctrl-1 = <&fmc_sleep_pins_a>;
+	status = "okay";
+
+	nand-controller@4,0 {
+		status = "okay";
+
+		nand@0 {
+			reg = <0>;
+			nand-on-flash-bbt;
+			nand-ecc-strength = <4>;
+			nand-ecc-step-size = <512>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			nand_parts: partitions {
+				compatible = "fixed-partitions";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				partition@0 {
+					label = "fsbl1";
+					reg = <0x0 0x80000>;
+				};
+
+				partition@80000 {
+					label = "fsbl2";
+					reg = <0x80000 0x80000>;
+				};
+
+				partition@100000 {
+					label = "matadata1";
+					reg = <0x100000 0x80000>;
+				};
+
+				partition@180000 {
+					label = "matadata2";
+					reg = <0x180000 0x80000>;
+				};
+
+				partition@200000 {
+					label = "fip-a1";
+					reg = <0x200000 0x400000>;
+				};
+
+				partition@600000 {
+					label = "fip-a2";
+					reg = <0x600000 0x400000>;
+				};
+
+				partition@a00000 {
+					label = "fip-b1";
+					reg = <0xa00000 0x400000>;
+				};
+
+				partition@e00000 {
+					label = "fip-b2";
+					reg = <0xe00000 0x400000>;
+				};
+
+				partition@1200000 {
+					label = "system";
+					reg = <0x01200000 0>;
+				};
+			};
+		};
+	};
+};
+
+&i2c4 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c4_pins_a>;
+	pinctrl-1 = <&i2c4_sleep_pins_a>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	pmic: stpmic@33 {
+		compatible = "st,stpmic1";
+		reg = <0x33>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		regulators {
+			compatible = "st,stpmic1-regulators";
+			buck1-supply = <&vin_som>;
+			buck2-supply = <&vin_som>;
+			buck3-supply = <&vin_som>;
+			buck4-supply = <&vin_som>;
+			ldo1-supply = <&v3v3>;
+			ldo4-supply = <&vin_som>;
+			vref_ddr-supply = <&vin_som>;
+			boost-supply = <&vin_som>;
+			pwr_sw1-supply = <&bst_out>;
+			pwr_sw2-supply = <&bst_out>;
+
+			vddcore: buck1 {
+				regulator-name = "vddcore";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd_ddr: buck2 {
+				regulator-name = "vdd_ddr";
+				regulator-min-microvolt = <1350000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd: buck3 {
+				regulator-name = "vdd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				st,mask-reset;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			v3v3: buck4 {
+				regulator-name = "v3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+				regulator-initial-mode = <0>;
+			};
+
+			vdda: ldo1 {
+				regulator-name = "vdda";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vtt_ddr: ldo3 {
+				regulator-name = "vtt_ddr";
+				regulator-always-on;
+			};
+
+			vdd_usb: ldo4 {
+				regulator-name = "vdd_usb";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			vref_ddr: vref_ddr {
+				regulator-name = "vref_ddr";
+				regulator-always-on;
+				regulator-over-current-protection;
+			};
+
+			bst_out: boost {
+				regulator-name = "bst_out";
+			};
+
+			vbus_otg: pwr_sw1 {
+				regulator-name = "vbus_otg";
+				regulator-active-discharge;
+			};
+
+			vbus_sw: pwr_sw2 {
+				regulator-name = "vbus_sw";
+				regulator-active-discharge;
+			};
+		};
+
+		onkey: onkey {
+			compatible = "st,stpmic1-onkey";
+			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 0>;
+			interrupt-names = "onkey-falling", "onkey-rising";
+			power-off-time-sec = <10>;
+		};
+	};
+
+	eeprom: eeprom@50 {
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <32>;
+		num-addresses = <8>;
+		wp-gpios = <&gpioa 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	};
+};
+
+&ipcc {
+	status = "okay";
+};
+
+&iwdg2 {
+	timeout-sec = <32>;
+	status = "okay";
+};
+
+&m4_rproc {
+	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
+			<&vdev0vring1>, <&vdev0buffer>;
+	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>, <&ipcc 3>;
+	mbox-names = "vq0", "vq1", "shutdown", "detach";
+	interrupt-parent = <&exti>;
+	interrupts = <68 IRQ_TYPE_EDGE_RISING>;
+	status = "okay";
+};
+
+&pwr_regulators {
+	vdd-supply = <&vdd>;
+	vdd_3v3_usbfs-supply = <&vdd_usb>;
+};
+
+&rng1 {
+	status = "okay";
+};
+
+&rtc {
+	status = "okay";
+};
+
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	st,neg-edge;
+	bus-width = <8>;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&vdd>;
+	mmc-ddr-3_3v;
+	status = "okay";
+};
diff --git a/arch/arm/dts/stm32mp15x-myirtech-myd.dts b/arch/arm/dts/stm32mp15x-myirtech-myd.dts
new file mode 100644
index 0000000000..b15a4312d4
--- /dev/null
+++ b/arch/arm/dts/stm32mp15x-myirtech-myd.dts
@@ -0,0 +1,458 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* SPDX-FileCopyrightText: Alexander Shiyan, <shc_work@mail.ru> */
+
+/dts-v1/;
+
+#include "stm32mp15x-myirtech-myc.dtsi"
+
+#include <dt-bindings/net/qca-ar803x.h>
+
+/ {
+	model = "MYIR MYD-YA15XC-T";
+	compatible = "myir,myd-stm32mp15x", "myir,myc-stm32mp15x", "st,stm32mp151";
+
+	aliases {
+		ethernet0 = &ethernet0;
+		serial0 = &uart4;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 100000 0>;
+		brightness-levels = <0 255>;
+		num-interpolated-steps = <256>;
+		default-brightness-level = <255>;
+	};
+
+	panel: panel {
+		compatible = "panel-lvds";
+		backlight = <&backlight>;
+		data-mapping = "vesa-24";
+		enable-gpios = <&gpioi 3 (GPIO_ACTIVE_HIGH | GPIO_PUSH_PULL)>;
+		power-supply = <&vdd_3v3>;
+		height-mm = <0>;
+		width-mm = <0>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&ltdc_ep0_out>;
+			};
+		};
+	};
+
+	vin: vin {
+		compatible = "regulator-fixed";
+		regulator-name = "vin";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	vdd_3v3: vdd_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&v3v3>;
+	};
+};
+
+&leds {
+	led_live: led_live {
+		label = "board:live";
+		color = <LED_COLOR_ID_BLUE>;
+		default-state = "off";
+		function = LED_FUNCTION_HEARTBEAT;
+		gpios = <&extgpio 4 GPIO_ACTIVE_LOW>;
+		linux,default-trigger = LED_FUNCTION_HEARTBEAT;
+		panic-indicator;
+	};
+};
+
+&vin_som {
+	vin-supply = <&vin>;
+};
+
+&i2c2 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c2_pins &i2c2_pins_z>;
+	pinctrl-1 = <&i2c2_sleep_pins &i2c2_sleep_pins_z>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	extgpio: pcf8575@20 {
+		compatible = "nxp,pcf8575";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	typec: stusb1600@28 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&stusb1600_pins>;
+		compatible = "st,stusb1600";
+		reg = <0x28>;
+		interrupt-parent = <&gpioa>;
+		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
+		vdd-supply = <&vin>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			power-role = "dual";
+			power-opmode = "default";
+
+			port {
+				con_usbotg_hs_ep: endpoint {
+					remote-endpoint = <&usbotg_hs_ep>;
+				};
+			};
+		};
+	};
+
+	rx8025: rtc@32 {
+		compatible = "epson,rx8025";
+		reg = <0x32>;
+	};
+};
+
+&ethernet0 {
+	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_a>;
+	pinctrl-names = "default", "sleep";
+	max-speed = <1000>;
+	phy-handle = <&phy0>;
+	phy-mode = "rgmii-id";
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		reset-gpios = <&gpiog 3 (GPIO_ACTIVE_LOW | GPIO_PUSH_PULL)>;
+		reset-delay-us = <10000>;
+		reset-post-delay-us = <2000>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy0: ethernet-phy@6 {
+			reg = <6>;
+			qca,clk-out-frequency = <125000000>;
+			qca,clk-out-strength = <AR803X_STRENGTH_FULL>;
+		};
+	};
+};
+
+&ltdc {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&ltdc_pins>;
+	pinctrl-1 = <&ltdc_sleep_pins>;
+	status = "okay";
+
+	port {
+		ltdc_ep0_out: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&panel_in>;
+		};
+	};
+};
+
+&sai1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&sai1_pins>;
+	pinctrl-1 = <&sai1_sleep_pins>;
+	clocks = <&rcc SAI1>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
+	clock-names = "pclk", "x8k", "x11k";
+	status = "okay";
+};
+
+&sdmmc1 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
+	cd-gpios = <&gpioa 3 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+	disable-wp;
+	st,neg-edge;
+	vmmc-supply = <&vdd>;
+	status = "okay";
+};
+
+&spi5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi5_pins>;
+	cs-gpios = <&gpioh 5 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>,
+		   <&gpiof 13 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+	status = "okay";
+};
+
+&timers2 {
+	status = "okay";
+
+	pwm2: pwm {
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&tim2_pwm_pins>;
+		pinctrl-1 = <&tim2_pwm_sleep_pins>;
+		status = "okay";
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart4_pins>;
+	pinctrl-1 = <&uart4_sleep_pins>;
+	pinctrl-2 = <&uart4_idle_pins>;
+	status = "okay";
+};
+
+&usbh_ehci {
+	phys = <&usbphyc_port0>;
+	phy-names = "usb";
+	status = "okay";
+};
+
+&usbotg_hs {
+	phys = <&usbphyc_port1 0>;
+	phy-names = "usb2-phy";
+	usb-role-switch;
+	vbus-supply = <&vbus_otg>;
+	status = "okay";
+
+	port {
+		usbotg_hs_ep: endpoint {
+			remote-endpoint = <&con_usbotg_hs_ep>;
+		};
+	};
+};
+
+&usbphyc {
+	status = "okay";
+};
+
+&usbphyc_port0 {
+	phy-supply = <&vdd_usb>;
+	st,tune-hs-dc-level = <2>;
+	st,enable-fs-rftime-tuning;
+	st,enable-hs-rftime-reduction;
+	st,trim-hs-current = <15>;
+	st,trim-hs-impedance = <1>;
+	st,tune-squelch-level = <3>;
+	st,tune-hs-rx-offset = <2>;
+	st,no-lsfs-sc;
+
+	connector {
+		compatible = "usb-a-connector";
+		vbus-supply = <&vin>;
+	};
+};
+
+&usbphyc_port1 {
+	phy-supply = <&vdd_usb>;
+	st,tune-hs-dc-level = <2>;
+	st,enable-fs-rftime-tuning;
+	st,enable-hs-rftime-reduction;
+	st,trim-hs-current = <15>;
+	st,trim-hs-impedance = <1>;
+	st,tune-squelch-level = <3>;
+	st,tune-hs-rx-offset = <2>;
+	st,no-lsfs-sc;
+};
+
+&pinctrl {
+	i2c2_pins: i2c2-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 4, AF4)>;		/* I2C2_SCL */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c2_sleep_pins: i2c2-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 4, ANALOG)>;	/* I2C2_SCL */
+		};
+	};
+
+	ltdc_pins: ltdc-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G',  7, AF14)>,		/* LCD_CLK */
+				 <STM32_PINMUX('I', 10, AF14)>,		/* LCD_HSYNC */
+				 <STM32_PINMUX('I',  9, AF14)>,		/* LCD_VSYNC */
+				 <STM32_PINMUX('E', 13, AF14)>,		/* LCD_DE */
+				 <STM32_PINMUX('H',  2, AF14)>,		/* LCD_R0 */
+				 <STM32_PINMUX('H',  3, AF14)>,		/* LCD_R1 */
+				 <STM32_PINMUX('H',  8, AF14)>,		/* LCD_R2 */
+				 <STM32_PINMUX('H',  9, AF14)>,		/* LCD_R3 */
+				 <STM32_PINMUX('H', 10, AF14)>,		/* LCD_R4 */
+				 <STM32_PINMUX('H', 11, AF14)>,		/* LCD_R5 */
+				 <STM32_PINMUX('H', 12, AF14)>,		/* LCD_R6 */
+				 <STM32_PINMUX('E', 15, AF14)>,		/* LCD_R7 */
+				 <STM32_PINMUX('E', 14, AF14)>,		/* LCD_G0 */
+				 <STM32_PINMUX('E',  6, AF14)>,		/* LCD_G1 */
+				 <STM32_PINMUX('H', 13, AF14)>,		/* LCD_G2 */
+				 <STM32_PINMUX('H', 14, AF14)>,		/* LCD_G3 */
+				 <STM32_PINMUX('H', 15, AF14)>,		/* LCD_G4 */
+				 <STM32_PINMUX('I',  0, AF14)>,		/* LCD_G5 */
+				 <STM32_PINMUX('I',  1, AF14)>,		/* LCD_G6 */
+				 <STM32_PINMUX('I',  2, AF14)>,		/* LCD_G7 */
+				 <STM32_PINMUX('D',  9, AF14)>,		/* LCD_B0 */
+				 <STM32_PINMUX('G', 12, AF14)>,		/* LCD_B1 */
+				 <STM32_PINMUX('G', 10, AF14)>,		/* LCD_B2 */
+				 <STM32_PINMUX('D', 10, AF14)>,		/* LCD_B3 */
+				 <STM32_PINMUX('I',  4, AF14)>,		/* LCD_B4 */
+				 <STM32_PINMUX('I',  5, AF14)>,		/* LCD_B5 */
+				 <STM32_PINMUX('I',  6, AF14)>,		/* LCD_B6 */
+				 <STM32_PINMUX('I',  7, AF14)>;		/* LCD_B7 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+	};
+
+	ltdc_sleep_pins: ltdc-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G',  7, ANALOG)>,	/* LCD_CLK */
+				 <STM32_PINMUX('I', 10, ANALOG)>,	/* LCD_HSYNC */
+				 <STM32_PINMUX('I',  9, ANALOG)>,	/* LCD_VSYNC */
+				 <STM32_PINMUX('E', 13, ANALOG)>,	/* LCD_DE */
+				 <STM32_PINMUX('H',  2, ANALOG)>,	/* LCD_R0 */
+				 <STM32_PINMUX('H',  3, ANALOG)>,	/* LCD_R1 */
+				 <STM32_PINMUX('H',  8, ANALOG)>,	/* LCD_R2 */
+				 <STM32_PINMUX('H',  9, ANALOG)>,	/* LCD_R3 */
+				 <STM32_PINMUX('H', 10, ANALOG)>,	/* LCD_R4 */
+				 <STM32_PINMUX('H', 11, ANALOG)>,	/* LCD_R5 */
+				 <STM32_PINMUX('H', 12, ANALOG)>,	/* LCD_R6 */
+				 <STM32_PINMUX('E', 15, ANALOG)>,	/* LCD_R7 */
+				 <STM32_PINMUX('E', 14, ANALOG)>,	/* LCD_G0 */
+				 <STM32_PINMUX('E',  6, ANALOG)>,	/* LCD_G1 */
+				 <STM32_PINMUX('H', 13, ANALOG)>,	/* LCD_G2 */
+				 <STM32_PINMUX('H', 14, ANALOG)>,	/* LCD_G3 */
+				 <STM32_PINMUX('H', 15, ANALOG)>,	/* LCD_G4 */
+				 <STM32_PINMUX('I',  0, ANALOG)>,	/* LCD_G5 */
+				 <STM32_PINMUX('I',  1, ANALOG)>,	/* LCD_G6 */
+				 <STM32_PINMUX('I',  2, ANALOG)>,	/* LCD_G7 */
+				 <STM32_PINMUX('D',  9, ANALOG)>,	/* LCD_B0 */
+				 <STM32_PINMUX('G', 12, ANALOG)>,	/* LCD_B1 */
+				 <STM32_PINMUX('G', 10, ANALOG)>,	/* LCD_B2 */
+				 <STM32_PINMUX('D', 10, ANALOG)>,	/* LCD_B3 */
+				 <STM32_PINMUX('I',  4, ANALOG)>,	/* LCD_B4 */
+				 <STM32_PINMUX('I',  5, ANALOG)>,	/* LCD_B5 */
+				 <STM32_PINMUX('I',  6, ANALOG)>,	/* LCD_B6 */
+				 <STM32_PINMUX('I',  7, ANALOG)>;	/* LCD_B7 */
+		};
+	};
+
+	sai1_pins: sai1-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 2, AF6)>,		/* SAI1_SD_A */
+				 <STM32_PINMUX('F', 8, AF6)>,		/* SAI1_SCK_B */
+				 <STM32_PINMUX('F', 9, AF6)>,		/* SAI1_FS_B */
+				 <STM32_PINMUX('F', 7, AF6)>;		/* SAI1_MCLK_B */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('F', 6, AF6)>;		/* SAI1_SD_B */
+			bias-disable;
+		};
+	};
+
+	sai1_sleep_pins: sai1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 2, ANALOG)>,	/* SAI1_SD_A */
+				 <STM32_PINMUX('F', 8, ANALOG)>,	/* SAI1_SCK_B */
+				 <STM32_PINMUX('F', 9, ANALOG)>,	/* SAI1_FS_B */
+				 <STM32_PINMUX('F', 7, ANALOG)>,	/* SAI1_MCLK_B */
+				 <STM32_PINMUX('F', 6, ANALOG)>;	/* SAI1_SD_B */
+		};
+	};
+
+	spi5_pins: spi5-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 6, AF5)>,		/* SPI5_SCK */
+				 <STM32_PINMUX('F', 11, AF5)>;		/* SPI5_MOSI */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('H', 7, AF5)>;		/* SPI5_MISO */
+			bias-disable;
+		};
+	};
+
+	stusb1600_pins: stusb1600-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 10, ANALOG)>;	/* STUSB1600 IRQ */
+			bias-pull-up;
+		};
+	};
+
+	tim2_pwm_pins: tim2-pwm-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 8, AF1)>;		/* TIM2_CH1 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	tim2_pwm_sleep_pins: tim2-pwm-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 8, ANALOG)>;	/* TIM2_CH1 */
+		};
+	};
+
+	uart4_pins: uart4-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 11, AF6)>;		/* UART4_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('A', 11, AF6)>;		/* UART4_RX */
+			bias-disable;
+		};
+	};
+
+	uart4_idle_pins: uart4-idle-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 11, ANALOG)>;	/* UART4_TX */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('A', 11, AF6)>;		/* UART4_RX */
+			bias-disable;
+		};
+	};
+
+	uart4_sleep_pins: uart4-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 11, ANALOG)>,	/* UART4_TX */
+				 <STM32_PINMUX('A', 11, ANALOG)>;	/* UART4_RX */
+		};
+	};
+};
+
+&pinctrl_z {
+	i2c2_pins_z: i2c2-0 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 7, AF3)>;		/* I2C2_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c2_sleep_pins_z: i2c2-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 7, ANALOG)>;	/* I2C2_SDA */
+		};
+	};
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index bc0a48d64c..358aad940c 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -29,6 +29,13 @@ config MACH_LXA_MC1
 	select ARCH_STM32MP157
 	bool "Linux Automation MC-1 board"
 
+config MACH_MYIRTECH_STM32MP1
+	bool "MYIR Tech Limited SOMs"
+	select ARCH_STM32MP157
+	select MACHINE_ID
+	help
+	   Say Y here if you are using a STM32MP15x based MYIR SOM
+
 config MACH_SEEED_ODYSSEY
 	select ARCH_STM32MP157
 	bool "Seeed Studio Odyssey"
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 59d6572207..344dd41eb7 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -36,6 +36,8 @@ $(call build_stm32mp_image, CONFIG_MACH_STM32MP15X_EV1, start_stm32mp15x_ev1, st
 
 $(call build_stm32mp_image, CONFIG_MACH_LXA_MC1, start_stm32mp157c_lxa_mc1, stm32mp157c-lxa-mc1)
 
+$(call build_stm32mp_image, CONFIG_MACH_MYIRTECH_STM32MP1, start_stm32mp15x_myir, stm32mp15x-myir)
+
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1a, prtt1a)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1s, prtt1s)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1c, prtt1c)
-- 
2.39.1



