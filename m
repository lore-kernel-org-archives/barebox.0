Delivery-date: Tue, 01 Nov 2022 19:08:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgX-00BB0G-Hp
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 19:08:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgV-0007Gs-Ns
	for lore@pengutronix.de; Tue, 01 Nov 2022 19:08:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o7iStNLrMJu8npa4lDb9tCgTXF7U5FoZcZ8YMCmUUkE=; b=roe2J7TP1fsrqza26Mf1Ob/4XE
	zXKMIyeegll3Ev6alMh2lPviDUvIHPRjBpHXUPqFZfPXSsUEs4qSVuEy8g3s9lbqYxbI2gwxd+PY0
	az4d3miuRTwBK+wyMBU4bYe78EWAxgkPMWkCxoGlDoKbvq9SszouzR6tCKP2tV2yhZgxbNLD4TQyD
	HhRWFufW8z2Z8gdJdMSIUj5yWfJmtjisjX13/V0j54yX3DxEA39p68EQtLk7HwWnWINHPIb7r8oMa
	kO5zzq5aMC0y733N1GlhLlF/3gfdUAGKuFgzsKr52OZ+HRTsqWc8I6YOU6AokMFD/gw5oJD1I9ndI
	Il4jMDYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvfE-006PiF-Ou; Tue, 01 Nov 2022 18:07:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvex-006PaK-OU
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 18:06:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-0006xt-3L; Tue, 01 Nov 2022 19:06:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-001j4E-Bm; Tue, 01 Nov 2022 19:06:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opveu-0011aZ-FW; Tue, 01 Nov 2022 19:06:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 19:06:43 +0100
Message-Id: <20221101180643.244270-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101180643.244270-1-a.fatoum@pengutronix.de>
References: <20221101180643.244270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_110648_009767_1EF77AF1 
X-CRM114-Status: GOOD (  22.22  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] ARM: i.MX8M: implement bootrom log viewing command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ROM event log[1] of the i.MX8M* can help with debugging boot
failures as it lists various information about boot mode, image,
fallback and recovery as well as timestamps when some actions along
the boot process occurred.

Add a new bootrom -l command that supports reading this out. A generic
name is intentionally chosen, as other SoCs also provide similar
functionality and it would be nice if they can just reuse the name and
command line arguments in future.

[1]: NXP AN12853 "i.MX ROMs Log Events" Rev. 0 -  May 2020

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig       |   1 +
 arch/arm/mach-imx/Makefile      |   1 +
 arch/arm/mach-imx/bootrom-cmd.c | 220 ++++++++++++++++++++++++++++++++
 commands/Kconfig                |   8 ++
 4 files changed, 230 insertions(+)
 create mode 100644 arch/arm/mach-imx/bootrom-cmd.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e99cadb1f53a..4895238dd280 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -934,6 +934,7 @@ config IMX_IIM_FUSE_BLOW
 
 config IMX_SAVE_BOOTROM_LOG
 	bool
+	default CMD_BOOTROM
 
 config HAB
 	bool
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 390cdaf50218..cc834fed7be7 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -24,6 +24,7 @@ obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-y += devices.o imx.o
+obj-$(CONFIG_CMD_BOOTROM) += bootrom-cmd.o
 obj-pbl-y += esdctl.o boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
new file mode 100644
index 000000000000..6269f86cbc0d
--- /dev/null
+++ b/arch/arm/mach-imx/bootrom-cmd.c
@@ -0,0 +1,220 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <command.h>
+#include <errno.h>
+#include <getopt.h>
+#include <printk.h>
+#include <linux/bitops.h>
+#include <linux/bitfield.h>
+#include <mach/imx8m-regs.h>
+#include <mach/xload.h>
+#include <asm/barebox-arm.h>
+
+/* i.MX7 and later ID field is swapped compared to i.MX6 */
+#define ROM_EVENT_FORMAT_V0_RES	GENMASK(31, 24)
+#define ROM_EVENT_FORMAT_V0_ID	GENMASK(23, 0)
+#define ROM_EVENT_FORMAT_V1_ID	GENMASK(31, 24)
+#define		ROM_EVENT_FORMAT_V1_ID_TYPE	GENMASK(31, 28)
+#define		ROM_EVENT_FORMAT_V1_ID_IDX	GENMASK(27, 24)
+#define ROM_EVENT_FORMAT_V1_RES	GENMASK(23, 0)
+
+static const char *lookup(const char *table[], size_t table_size, size_t idx)
+{
+	const char *str = NULL;
+
+	if (idx < table_size)
+		str = table[idx];
+
+	return str ?: "unknown";
+}
+
+#define LOOKUP(table, idx) lookup(table, ARRAY_SIZE(table), idx)
+
+static const char *boot_mode_0x1y[] = {
+	"Fuse", "Serial Download", "Internal Download", "Test Mode"
+};
+
+static const char *secure_config_0x2y[] = {
+	"FAB", "Field Return", "Open", "Closed"
+};
+
+static const char *boot_image_0x5y[] = {
+	"primary", "secondary"
+};
+
+static const char *boot_device_0x6y[] = {
+	"RAW NAND", "SD or EMMC", NULL, NULL, "ECSPI NOR", NULL, NULL, "QSPI NOR"
+};
+
+/* Parse the ROM event ID defintion version 1 log, see AN12853 */
+static int imx8m_bootrom_decode_log(const u32 *rom_log)
+{
+	int i;
+
+	for (i = 0; i < 128; i++) {
+		u8 event_id = FIELD_GET(ROM_EVENT_FORMAT_V1_ID, rom_log[i]);
+		u8 event_id_idx = FIELD_GET(ROM_EVENT_FORMAT_V1_ID_IDX, rom_log[i]);
+		const char *arg = NULL;
+
+		printf("[%02x] ", event_id);
+		switch (event_id) {
+		case 0x0:
+			printf("End of list\n");
+			return 0;
+		case 0x01:
+			printf("ROM event version 0x%02x\n", rom_log[i] & 0xFF);
+			continue;
+
+		case 0x10 ... 0x13:
+			printf("Boot mode is Boot from %s\n",
+			       LOOKUP(boot_mode_0x1y, event_id_idx));
+			continue;
+
+		case 0x20 ... 0x23:
+			printf("Secure config is %s\n",
+			       LOOKUP(secure_config_0x2y, event_id_idx));
+			continue;
+
+		case 0x30 ... 0x31:
+		case 0xe0:
+			printf("Internal use\n");
+			continue;
+
+		case 0x40 ... 0x41:
+			printf("FUSE_SEL_VALUE Fuse is %sblown\n",
+			       event_id_idx ? "" : "not ");
+			continue;
+
+		case 0x50 ... 0x51:
+			printf("Boot from the %s boot image\n",
+			       LOOKUP(boot_image_0x5y, event_id_idx));
+			continue;
+
+		case 0x74:
+			arg = "SPI NAND";
+			fallthrough;
+		case 0x60 ... 0x67:
+			printf("Primary boot from %s device\n",
+			       arg ?: LOOKUP(boot_device_0x6y, event_id_idx));
+			continue;
+
+		case 0x71:
+			printf("Recovery boot from ECSPI NOR device\n");
+			continue;
+		case 0x72:
+			printf("No Recovery boot device\n");
+			continue;
+		case 0x73:
+			printf("Manufacture boot from SD or EMMC\n");
+			continue;
+
+		case 0x80:
+			printf("Start to perform the device initialization: @%u ticks\n",
+			       rom_log[++i]);
+			continue;
+		case 0x81:
+			printf("The boot device initialization completes: @%u ticks\n",
+			       rom_log[++i]);
+			continue;
+		case 0x82:
+			printf("Start to execute boot device driver pre-config\n");
+			continue;
+		case 0x83:
+			printf("Boot device driver pre-config completes\n");
+			continue;
+		case 0x8E:
+			printf("Boot device driver pre-config fails\n");
+			continue;
+		case 0x8f:
+			printf("boot device initialization fails: @%u ticks\n",
+			       rom_log[++i]);
+			continue;
+
+		case 0x90:
+			printf("Start to read data from boot device: @ offset %08x\n",
+			       rom_log[++i]);
+			continue;
+		case 0x91:
+			printf("Reading data from boot device completes: @%u ticks\n",
+			       rom_log[++i]);
+			continue;
+		case 0x9f:
+			printf("Reading data from boot device fails: @%u ticks\n",
+			       rom_log[++i]);
+			continue;
+
+		case 0xa0:
+			printf("Image authentication result: %s (0x%08x) @%u ticks\n",
+			       (rom_log[i+1] & 0xFF) == 0xF0 ? "PASS" : "FAIL",
+			       rom_log[i+1], rom_log[i+2]);
+			i += 2;
+			continue;
+		case 0xa1:
+			printf("IVT header is not valid\n");
+			continue;
+
+		case 0xc0:
+			printf("Jump to the boot image soon: @ offset 0x%08x @ %u ticks\n",
+			       rom_log[i+1], rom_log[i+2]);
+			i += 2;
+			continue;
+
+		case 0xd0:
+			printf("Enters serial download processing\n");
+			continue;
+
+		case 0xf0:
+			printf("Enters ROM exception handler\n");
+			continue;
+		default:
+			printf("Unknown\n");
+			continue;
+		}
+	}
+
+	return -EILSEQ;
+}
+
+static int do_bootrom(int argc, char *argv[])
+{
+	const struct imx_scratch_space *scratch = arm_mem_scratch_get();
+	const u32 *rom_log_addr = scratch->bootrom_log;
+	bool log = false;
+	int ret, opt;
+
+	while((opt = getopt(argc, argv, "la:")) > 0) {
+		switch(opt) {
+		case 'a':
+			ret = kstrtoul(optarg, 0, (ulong *)&rom_log_addr);
+			if (ret)
+				return ret;
+			rom_log_addr = (const u32 *)rom_log_addr;
+		case 'l':
+			log = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (log)
+		return imx8m_bootrom_decode_log(rom_log_addr);
+
+	return COMMAND_ERROR_USAGE;
+}
+
+BAREBOX_CMD_HELP_START(bootrom)
+BAREBOX_CMD_HELP_TEXT("List information about the specified files or directories.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l",  "list event log")
+BAREBOX_CMD_HELP_OPT ("-a ADDR",  "event log address (default PBL scratch space)")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(bootrom)
+	.cmd            = do_bootrom,
+	BAREBOX_CMD_DESC("Interact with BootROM on i.MX8M")
+	BAREBOX_CMD_OPTS("[-la]")
+	BAREBOX_CMD_HELP(cmd_bootrom_help)
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+BAREBOX_CMD_END
diff --git a/commands/Kconfig b/commands/Kconfig
index a59616ad1474..555ae401a02d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -60,6 +60,14 @@ config CMD_RISCV_CPUINFO
 	help
 	  Show info about RISC-V CPU
 
+config CMD_BOOTROM
+	bool "bootrom command"
+	depends on ARCH_IMX8M
+	help
+	  Interact with bootrom on i.MX8M
+
+	  bootrom [-la]
+
 config CMD_DEVINFO
 	tristate
 	default y
-- 
2.30.2



