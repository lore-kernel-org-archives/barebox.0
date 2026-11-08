Delivery-date: Sun, 08 Nov 2026 11:12:27 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzsw-008e5J-23
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 11:12:27 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5D1F2200A41
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 11:12:26 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LoBlm1k3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794132746;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=cMXqdFxdg5vZAHaBO3i93QDpOonrMXQpJMThpAzQsk8=;
	b=BK5hZD3wiz9RHwHYzkrL4HxnYXlHgh7RJOFEjGvJKm7uRJUTuxeUXgSfGzMv4pJ1r4/fd8
	MLnvzGlvTm4LIx1vNoBjUiebYNTsqC4Xqapr0wse+p0RXzchGPWPIXEA7l/rJxgs8P3TFn
	sNDm9nDaIS40W+AA2EPOhC9h7Yk/9UavpKgAnDrV95luDOCGsZnRB/0l4gwxPX6/hFbUpy
	7baxbSwjeHnXaHcxSdRqAaVo7MHr46PmWpUisrRvx9/0ALYdKRtrnqtm1UUZwv2W6lkAI1
	MQzstAeSx/Vf2Gop0qJayQC1kPpMTLJTDjcnwYxAb4yD6oFC/DQtjUsq3CuHDA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LoBlm1k3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794132746; a=rsa-sha256;
	cv=none;
	b=J2ltpF4ie2FWpY0yPV6OCu93b2PCOz+hnTI6HI+wg3VrswkQg/CCvagSMciA+lyFAYpwPF
	vQxMbP8ZQZVKSrm+jdGzSnuAvIS2HpuulhmGtKKYke0QdZ0o8k8iUtC75S9ze6YZCjhkAt
	wXdE22xGJrsOa+GzQ+Or9D/NoAHJUqQPGKtwxuGgMVVzUdqxGkjZ7a46rkAHFqVm6DA4r4
	pGrH54PUqZu9QA3DbsPGXLRvzd/ASUywqt10ki3+qgsXyUt2huD/pOFL/hPNDX7zmeKph5
	yh35Ck1t5ZGWHcThc4mXG16k+xakbOWrtbi3WLTR1mfK+b3HlCisjUW1VMKcUg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=cMXqdFxdg5vZAHaBO3i93QDpOonrMXQpJMThpAzQsk8=; b=LoBlm1k3DGkWVm
	JLySfkxxtfXreZwxYERmlqGRKDR44pRIb7k/pOdNxG8Itqz9yBNq8GV4LC3+XnsWAoAnPdnIqfvIZ
	izCQyM5ECyITPmJ64+G1h9C41MlrAgYQk9/95LG7qpLqJF+3zwiN7t3qMrqNoI9YqeeyTH1sgSKVp
	rAFv+QI0h8uxXZdWGj53cOfCp54T8T+1XaDQ4i72IKe6KqWZ5+bpoxickDWK+Oot4kXd84C6PAU1f
	lcXWoyNVnSDTT+/HXPRiaXn7qXT2IisaZ2G6b9GXrsiuKENVBdjG4YUUGKXX60CFVojTGP9+waNgo
	MQqAvGpZnOpB1ovOJJ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzro-0000000FwvY-2XJT;
	Sun, 08 Nov 2026 10:11:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzrl-0000000Fwtd-1s9R
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 10:11:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzrj-0006Qx-OE; Sun, 08 Nov 2026 11:11:11 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 4/4] commands: mipi_dsi: add command for easier DCS experimentation
Date: Sun,  8 Nov 2026 11:10:54 +0100
Message-ID: <20261108101110.1270196-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108101110.1270196-1-a.fatoum@barebox.org>
References: <20261108101110.1270196-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_021113_790456_F042D8B6 
X-CRM114-Status: GOOD (  29.27  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  To simplify MIPI DSI panel bring up, add a mipi_dsi command
    along the same lines as the mipi_dbi, which lists DSI devices, sends DCS
   writes and reads back registers, so this can be done from the shell [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5D1F2200A41
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received]
X-Rspamd-Action: no action
X-Stat-Signature: b738o9rm3bc89zs14rmw1jsboy4qj6hf

To simplify MIPI DSI panel bring up, add a mipi_dsi command along the
same lines as the mipi_dbi, which lists DSI devices, sends DCS writes
and reads back registers, so this can be done from the shell.

Like the mipi_dbi command, the register dump only reads known read
commands. The panel executes the command byte of a DCS read request:
dumping 0x00-0xff unconditionally soft-reset the OTM8009A on the
STM32MP157C-DK2 and put it into sleep mode.

Tested on the STM32MP157C-DK2 (OTM8009A) and the Powkiddy RGB30 (ST7703).

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/stm32mp_defconfig |   1 +
 commands/Kconfig                   |  27 +++
 commands/Makefile                  |   1 +
 commands/mipi_dsi.c                | 355 +++++++++++++++++++++++++++++
 test/py/test_mipi_dsi.py           |  78 +++++++
 5 files changed, 462 insertions(+)
 create mode 100644 commands/mipi_dsi.c
 create mode 100644 test/py/test_mipi_dsi.py

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index e1aef7c86fc0..13aed489ccea 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -95,6 +95,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_SPI=y
+CONFIG_CMD_MIPI_DSI=y
 CONFIG_CMD_USBGADGET=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
diff --git a/commands/Kconfig b/commands/Kconfig
index a43f0fbd4d40..eb4067d8108c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2263,6 +2263,33 @@ config CMD_MIPI_DBI
 		  -d DEVICE	select specific device (default is first registered)
 		  -w		issue write command
 
+config CMD_MIPI_DSI
+	bool
+	depends on DRIVER_VIDEO_MIPI_DSI
+	select PRINTF_HEXSTR
+	prompt "mipi_dsi command"
+	help
+	  read/write DCS registers of MIPI DSI devices
+
+	  Usage: mipi_dsi [-lvdinwgLH] [-c CH] [-p on|off] [CMD] [DATA...]
+
+	  Without CMD, dump the standard DCS registers.
+	  CMD and DATA bytes are given in hex.
+
+	  Options:
+		  -l		list all MIPI DSI devices
+		  -v		list with host, channel, lanes, format and mode flags
+		  -d DEVICE	select specific device (default is first registered)
+		  -i		read the panel identification registers
+		  -n LEN	number of bytes to read (default: known length, else 1)
+		  -w		issue write command
+		  -g		send generic packets: CMD and DATA are the payload,
+				reads take up to two bytes
+		  -p on|off	send Turn On or Shutdown Peripheral
+		  -c CH		use virtual channel CH (0-3)
+		  -L		send in low power mode
+		  -H		send in high speed mode
+
 config CMD_LED_TRIGGER
 	bool
 	depends on LED_TRIGGERS
diff --git a/commands/Makefile b/commands/Makefile
index 7dae582225f5..f91f6335ff8e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -82,6 +82,7 @@ obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_SPI)		+= spi.o
 obj-$(CONFIG_CMD_PWM)		+= pwm.o
 obj-$(CONFIG_CMD_MIPI_DBI)	+= mipi_dbi.o
+obj-$(CONFIG_CMD_MIPI_DSI)	+= mipi_dsi.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
 obj-$(CONFIG_CMD_UBIFORMAT)	+= ubiformat.o
 obj-$(CONFIG_CMD_MENU)		+= menu.o
diff --git a/commands/mipi_dsi.c b/commands/mipi_dsi.c
new file mode 100644
index 000000000000..ccef279b9830
--- /dev/null
+++ b/commands/mipi_dsi.c
@@ -0,0 +1,355 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Ahmad Fatoum
+
+#include <command.h>
+#include <getopt.h>
+#include <video/mipi_dsi.h>
+#include <video/mipi_display.h>
+
+#define MIPI_DSI_CMD_MAX_LEN	64
+
+struct dcs_read {
+	u8 cmd;
+	u8 len;
+};
+
+/*
+ * Panels execute the command byte of a DCS read request like that of
+ * a write, so only ever send commands known to be reads.
+ */
+static const struct dcs_read dcs_reads[] = {
+	{ MIPI_DCS_GET_DISPLAY_ID, 3 },
+	{ MIPI_DCS_GET_RED_CHANNEL, 1 },
+	{ MIPI_DCS_GET_GREEN_CHANNEL, 1 },
+	{ MIPI_DCS_GET_BLUE_CHANNEL, 1 },
+	{ MIPI_DCS_GET_DISPLAY_STATUS, 4 },
+	{ MIPI_DCS_GET_POWER_MODE, 1 },
+	{ MIPI_DCS_GET_ADDRESS_MODE, 1 },
+	{ MIPI_DCS_GET_DISPLAY_MODE, 1 },
+	{ MIPI_DCS_GET_SIGNAL_MODE, 1 },
+	{ MIPI_DCS_GET_DIAGNOSTIC_RESULT, 1 },
+	{ MIPI_DCS_GET_SCANLINE, 2 },
+	{ MIPI_DCS_GET_DISPLAY_BRIGHTNESS, 1 },
+	{ MIPI_DCS_GET_CONTROL_DISPLAY, 1 },
+	{ MIPI_DCS_GET_CABC_MIN_BRIGHTNESS, 1 },
+};
+
+/* display ID, DDB and the nonstandard, but widespread ID1-ID3 */
+static const struct dcs_read dcs_ids[] = {
+	{ MIPI_DCS_GET_DISPLAY_ID, 3 },
+	{ MIPI_DCS_READ_DDB_START, 5 },
+	{ 0xda, 1 },
+	{ 0xdb, 1 },
+	{ 0xdc, 1 },
+};
+
+static const struct dcs_read *dcs_read_find(const struct dcs_read *reads,
+					    size_t nreads, u8 cmd)
+{
+	for (int i = 0; i < nreads; i++) {
+		if (reads[i].cmd == cmd)
+			return &reads[i];
+	}
+
+	return NULL;
+}
+
+static unsigned int dcs_read_len(u8 cmd)
+{
+	const struct dcs_read *reg;
+
+	reg = dcs_read_find(dcs_reads, ARRAY_SIZE(dcs_reads), cmd) ?:
+	      dcs_read_find(dcs_ids, ARRAY_SIZE(dcs_ids), cmd);
+
+	return reg ? reg->len : 1;
+}
+
+/*
+ * DCS reads send CMD, generic reads send CMD and up to one more
+ * parameter byte in @tx.
+ */
+static int mipi_dsi_command_show(struct mipi_dsi_device *dsi, bool generic,
+				 const u8 *tx, size_t tx_len, size_t len,
+				 bool prefix)
+{
+	u8 buf[MIPI_DSI_CMD_MAX_LEN];
+	ssize_t ret;
+
+	ret = mipi_dsi_set_maximum_return_packet_size(dsi, len);
+	if (!ret && generic)
+		ret = mipi_dsi_generic_read(dsi, tx, tx_len, buf, len);
+	else if (!ret)
+		ret = mipi_dsi_dcs_read(dsi, tx[0], buf, len);
+
+	if (prefix)
+		printf("%02x: ", tx[0]);
+
+	if (ret < 0) {
+		printf("read failed: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	printf("%*phN\n", (int)ret, buf);
+
+	return 0;
+}
+
+static int mipi_dsi_command_show_list(struct mipi_dsi_device *dsi,
+				      const struct dcs_read *reads,
+				      size_t nreads)
+{
+	int ret, err = 0;
+
+	for (int i = 0; i < nreads; i++) {
+		ret = mipi_dsi_command_show(dsi, false, &reads[i].cmd, 1,
+					    reads[i].len, true);
+		if (ret == -ENETDOWN)
+			return ret;
+		if (ret)
+			err = ret;
+		if (ctrlc())
+			return -EINTR;
+	}
+
+	return err;
+}
+
+static const char * const mipi_dsi_formats[] = {
+	[MIPI_DSI_FMT_RGB888] = "RGB888",
+	[MIPI_DSI_FMT_RGB666] = "RGB666",
+	[MIPI_DSI_FMT_RGB666_PACKED] = "RGB666_PACKED",
+	[MIPI_DSI_FMT_RGB565] = "RGB565",
+};
+
+static const char * const mipi_dsi_mode_flags[] = {
+	"video", "video-burst", "video-sync-pulse", "video-auto-vert",
+	"video-hse", "video-no-hfp", "video-no-hbp", "video-no-hsa",
+	"vsync-flush", "no-eot-packet", "clock-non-continuous", "lpm",
+};
+
+static void mipi_dsi_list(bool verbose)
+{
+	struct mipi_dsi_device *dsi;
+	struct device *dev;
+
+	bus_for_each_device(&mipi_dsi_bus_type, dev) {
+		const char *format = "unknown";
+
+		dsi = to_mipi_dsi_device(dev);
+		printf("%s%s", dev_name(dev),
+		       dsi->attached ? "" : " (not attached)");
+
+		if (dsi->format < ARRAY_SIZE(mipi_dsi_formats))
+			format = mipi_dsi_formats[dsi->format];
+
+		if (verbose) {
+			printf(": host %s, channel %u, %u lanes, %s, flags",
+			       dev_name(dsi->host->dev), dsi->channel,
+			       dsi->lanes, format);
+
+			for (int i = 0; i < ARRAY_SIZE(mipi_dsi_mode_flags); i++) {
+				if (dsi->mode_flags & BIT(i))
+					printf(" %s", mipi_dsi_mode_flags[i]);
+			}
+		}
+
+		printf("\n");
+	}
+}
+
+struct mipi_dsi_opts {
+	bool write, info, generic;
+	int peripheral;	/* 1: turn on, 0: shut down, -1: none */
+	unsigned int len;	/* 0: the known length of the register or 1 */
+};
+
+static int mipi_dsi_execute(struct mipi_dsi_device *dsi,
+			    const struct mipi_dsi_opts *opts,
+			    int argc, char *argv[])
+{
+	u8 buf[MIPI_DSI_CMD_MAX_LEN];
+	unsigned int len;
+	int ret, i;
+
+	if (opts->peripheral >= 0) {
+		if (opts->write || opts->info || opts->generic || argc)
+			return COMMAND_ERROR_USAGE;
+		if (opts->peripheral)
+			return mipi_dsi_turn_on_peripheral(dsi);
+		return mipi_dsi_shutdown_peripheral(dsi);
+	}
+
+	if (opts->info) {
+		if (opts->write || opts->generic || argc)
+			return COMMAND_ERROR_USAGE;
+		return mipi_dsi_command_show_list(dsi, dcs_ids,
+						  ARRAY_SIZE(dcs_ids));
+	}
+
+	if (!argc) {
+		if (opts->write || opts->generic)
+			return COMMAND_ERROR_USAGE;
+		return mipi_dsi_command_show_list(dsi, dcs_reads,
+						  ARRAY_SIZE(dcs_reads));
+	}
+
+	if (argc > sizeof(buf)) {
+		printf("can only send up to %zu bytes at once\n", sizeof(buf));
+		return -EOVERFLOW;
+	}
+
+	for (i = 0; i < argc; i++) {
+		ret = kstrtou8(argv[i], 16, &buf[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	if (opts->write) {
+		if (opts->generic)
+			ret = mipi_dsi_generic_write(dsi, buf, argc);
+		else
+			ret = mipi_dsi_dcs_write_buffer(dsi, buf, argc);
+		return ret < 0 ? ret : 0;
+	}
+
+	if (argc > (opts->generic ? 2 : 1))
+		return COMMAND_ERROR_USAGE;
+
+	len = opts->len;
+	if (!len)
+		len = opts->generic ? 1 : dcs_read_len(buf[0]);
+
+	return mipi_dsi_command_show(dsi, opts->generic, buf, argc, len,
+				     false);
+}
+
+static int do_mipi_dsi(int argc, char *argv[])
+{
+	struct mipi_dsi_opts opts = { .peripheral = -1 };
+	struct mipi_dsi_device *dsi;
+	struct device *dev;
+	bool list = false, verbose = false, lpm = false, hs = false;
+	unsigned long mode_flags;
+	unsigned int channel, vc = UINT_MAX;
+	int opt, ret;
+
+	dev = list_first_entry_or_null(&mipi_dsi_bus_type.device_list,
+				       struct device, bus_list);
+
+	while ((opt = getopt(argc, argv, "c:d:gHilLn:p:vw")) > 0) {
+		switch (opt) {
+		case 'c':
+			ret = kstrtouint(optarg, 0, &vc);
+			if (ret)
+				return ret;
+			if (vc > 3)
+				return -EINVAL;
+			break;
+		case 'd':
+			dev = bus_find_device(&mipi_dsi_bus_type, NULL,
+					      optarg, device_match_name);
+			break;
+		case 'g':
+			opts.generic = true;
+			break;
+		case 'H':
+			hs = true;
+			break;
+		case 'i':
+			opts.info = true;
+			break;
+		case 'l':
+			list = true;
+			break;
+		case 'L':
+			lpm = true;
+			break;
+		case 'n':
+			ret = kstrtouint(optarg, 0, &opts.len);
+			if (ret)
+				return ret;
+			if (!opts.len || opts.len > MIPI_DSI_CMD_MAX_LEN)
+				return -EINVAL;
+			break;
+		case 'p':
+			if (!strcmp(optarg, "on"))
+				opts.peripheral = 1;
+			else if (!strcmp(optarg, "off"))
+				opts.peripheral = 0;
+			else
+				return COMMAND_ERROR_USAGE;
+			break;
+		case 'v':
+			verbose = true;
+			break;
+		case 'w':
+			opts.write = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (list || verbose) {
+		mipi_dsi_list(verbose);
+		return 0;
+	}
+
+	if (lpm && hs)
+		return COMMAND_ERROR_USAGE;
+
+	if (!dev)
+		return -ENODEV;
+
+	dsi = to_mipi_dsi_device(dev);
+	if (!dsi->attached) {
+		printf("%s: not attached to its DSI host\n", dev_name(dev));
+		return -ENODEV;
+	}
+
+	mode_flags = dsi->mode_flags;
+	channel = dsi->channel;
+	if (lpm)
+		dsi->mode_flags |= MIPI_DSI_MODE_LPM;
+	if (hs)
+		dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+	if (vc != UINT_MAX)
+		dsi->channel = vc;
+
+	ret = mipi_dsi_execute(dsi, &opts, argc - optind, argv + optind);
+
+	dsi->mode_flags = mode_flags;
+	dsi->channel = channel;
+
+	if (ret == -ENETDOWN)
+		printf("DSI host is powered down, enable the display first\n");
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(mipi_dsi)
+BAREBOX_CMD_HELP_TEXT("Without CMD, dump the standard DCS registers.")
+BAREBOX_CMD_HELP_TEXT("CMD and DATA bytes are given in hex.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l\t",  "list all MIPI DSI devices")
+BAREBOX_CMD_HELP_OPT ("-v\t",  "list with host, channel, lanes, format and mode flags")
+BAREBOX_CMD_HELP_OPT ("-d DEVICE",  "select specific device (default is first registered)")
+BAREBOX_CMD_HELP_OPT ("-i\t",  "read the panel identification registers")
+BAREBOX_CMD_HELP_OPT ("-n LEN\t",  "number of bytes to read (default: known length, else 1)")
+BAREBOX_CMD_HELP_OPT ("-w\t",  "issue write command")
+BAREBOX_CMD_HELP_OPT ("-g\t",  "send generic packets: CMD and DATA are the payload,")
+BAREBOX_CMD_HELP_OPT ("\t",  "reads take up to two bytes")
+BAREBOX_CMD_HELP_OPT ("-p on|off",  "send Turn On or Shutdown Peripheral")
+BAREBOX_CMD_HELP_OPT ("-c CH\t",  "use virtual channel CH (0-3)")
+BAREBOX_CMD_HELP_OPT ("-L\t",  "send in low power mode")
+BAREBOX_CMD_HELP_OPT ("-H\t",  "send in high speed mode")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(mipi_dsi)
+	.cmd		= do_mipi_dsi,
+	BAREBOX_CMD_DESC("interact with MIPI DSI device")
+	BAREBOX_CMD_OPTS("[-lvdinwgLH] [-c CH] [-p on|off] [CMD] [DATA...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_mipi_dsi_help)
+BAREBOX_CMD_END
diff --git a/test/py/test_mipi_dsi.py b/test/py/test_mipi_dsi.py
new file mode 100644
index 000000000000..b66cf256de3a
--- /dev/null
+++ b/test/py/test_mipi_dsi.py
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+import pytest
+from .helper import skip_disabled
+
+DISPLAY_ON = 1 << 2
+
+
+@pytest.fixture(autouse=True)
+def mipi_dsi(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_MIPI_DSI")
+
+    devices = barebox.run_check("mipi_dsi -l")
+    if not any(d and "not attached" not in d for d in devices):
+        pytest.skip("no attached MIPI DSI device")
+
+    _, _, ret = barebox.run("test -e /dev/fb0")
+    if ret != 0:
+        pytest.skip("no framebuffer to enable the DSI link")
+
+    barebox.run_check("fb0.enable=1")
+    yield
+    barebox.run_check("fb0.enable=1")
+
+
+def power_mode(barebox):
+    out = barebox.run_check("mipi_dsi 0a")
+    return int(out[-1], 16)
+
+
+def test_mipi_dsi_identify(barebox):
+    out = barebox.run_check("mipi_dsi -i")
+    assert any(line.startswith("04: ") and len(line) == 10 for line in out)
+
+
+def test_mipi_dsi_read_len(barebox):
+    assert len(barebox.run_check("mipi_dsi 04")[-1]) == 6
+    assert len(barebox.run_check("mipi_dsi -n 1 04")[-1]) == 2
+
+
+def test_mipi_dsi_dump(barebox):
+    out = barebox.run_check("mipi_dsi")
+    assert any(line.startswith("0a: ") for line in out)
+
+
+def test_mipi_dsi_list_verbose(barebox):
+    out = barebox.run_check("mipi_dsi -l -v")
+    assert any(" lanes, " in line for line in out)
+
+
+@pytest.mark.parametrize("opts", ["", "-g", "-L", "-H"])
+def test_mipi_dsi_display_off_on(barebox, opts):
+    assert power_mode(barebox) & DISPLAY_ON
+
+    barebox.run_check(f"mipi_dsi {opts} -w 28")
+    assert not power_mode(barebox) & DISPLAY_ON
+
+    barebox.run_check(f"mipi_dsi {opts} -w 29")
+    assert power_mode(barebox) & DISPLAY_ON
+
+
+def test_mipi_dsi_channel(barebox):
+    barebox.run_check("mipi_dsi -c 0 0a")
+
+    _, _, ret = barebox.run("mipi_dsi -c 1 0a")
+    assert ret != 0
+
+
+def test_mipi_dsi_peripheral(barebox):
+    barebox.run_check("mipi_dsi -p on")
+
+
+def test_mipi_dsi_powered_down(barebox):
+    barebox.run_check("fb0.enable=0")
+
+    out, _, ret = barebox.run("mipi_dsi -w 29")
+    assert ret != 0
+    assert "DSI host is powered down" in "\n".join(out)
-- 
2.47.3



