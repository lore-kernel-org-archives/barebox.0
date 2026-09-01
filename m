Delivery-date: Tue, 01 Sep 2026 17:15:35 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1QD0-009gVG-1j
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 17:15:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BF274201922
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 17:15:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hNTe0XQY;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=oYSJrgG4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BYzSL27mA+43+0Zn8J/PbAGpYaDKoiUQDkgfFQxrI0Y=; b=hNTe0XQY9Jk/KWhfTVqUSOEBdw
	F1//eHU4igxd3lWr1rfcRt2e7+5hPtCI4fmdBo3RXi2btFXYLP4xCJdW3P3eNTcd60sxYxlVCEdfe
	JxkC9jawEPz/o8wTmCO3mC1Qg3E15hmhbubNW06b6EDDOMVC4W5oo4I6MfeOpe3R8t8NuHnnWz4kN
	P+q81KTX2K0fhiJ4ex/cnYpuSSb1WMW6n7at4qbAs5e5GN8OQOlonykF1P/2XoOTuYqDmJoEdCSNQ
	VQufWqwec6avFhQEH7OJM3l7Ifph1lYCi0uIM4r9Ngr66n1hVctazcsQVsVwMpjppPaHeiGwWq08v
	YhpKTgUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBQ-0000000CRb4-2pxg;
	Tue, 01 Sep 2026 15:13:56 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBM-0000000CRXP-0paL
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 15:13:55 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-49b8ce9b733so34270015e9.1
        for <barebox@lists.infradead.org>; Tue, 01 Sep 2026 08:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275630; x=1788880430; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BYzSL27mA+43+0Zn8J/PbAGpYaDKoiUQDkgfFQxrI0Y=;
        b=oYSJrgG4bPI2JRdO2g1sFv6fsC7Z30Wnb+NHmr9MYhk0fxMRpmUCCyGphtpVYlDuaV
         28bf00fsgoYTKV1Aj/Q83dm3fA6ESV43j++aCEM0RaL9TXSaFHYIChMS3ylM00XqbM2Y
         ioH4lzewnbHKj0AkjjU0B5xOopaufSHbuAwtZ6yy9GhSBY8WpmEoeMau9N8LGoP8ocX4
         9BcP5AswmIguEJP0pGYY4ap6pY5fGB5JcLhfEkoq1lZ21FMehshNLNzzsDvCeFDlLpYk
         sN4q794t8/rnPay+UY2IyarenANxea2eJxJpT79JxkGKrNPXgckRbnDG3oGGMaLYg7/i
         sXbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275630; x=1788880430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BYzSL27mA+43+0Zn8J/PbAGpYaDKoiUQDkgfFQxrI0Y=;
        b=J6NZcbxXZGiQKYeKH9L4NMefXbOOLqpbhRzCDFM145hY/Ec1b6PZS7I5GIYKMeeQhR
         4kRV1nZP73BjD+DxfGTkQrbEwg2tbtyHjDI3bds6DzVMuSUpp8QU15Po4aU9zJys2GHs
         Bo0kmoTpa//81QqExVYq3aJPdG8nbYMuO8q0c95RI6f/uUpjIOZh6nx+bOio/aAAvbsb
         KHfwKU0CfWUYTdU0RodFqFuE6+DN6vcGx2r02kTkO8OZGGRmVO9aqnPX+zuZH3wYwlhw
         j/HFXufbv3TFlyzGwEl9A+tFmHoIIHisRKjqNs2ooBYewcfx8jUCTSsIFnvqEvg7igXq
         Crjw==
X-Gm-Message-State: AFuF++mapFCtGzm4yevoxEhJzVUnEhoHylt0RZUNpIFVY02pvIPhdicz
	0aZKmUlYkfU0lM0x2MrhVdwD0ulTWCvWyzI1mayqiXd36u3kEWKRlnWg9nL8rg==
X-Gm-Gg: AR+sD11MLlYa63HQyx2nSh9D9SsqsBjo29O1Fds9VXEckuhgFbLJhcToEOtrqeECTzG
	j787mXoSEgoVLzgSnkZg6KKVbOBjqeO0vMupV5VT1q5QCDSH3NJhr4VjA93JYvIXtETJ9qos5Mr
	imuMWgaJUbocoxRpJFS49WNQ+OqsJN+IXCfAKlmeYjoaIPQEPicdrBLabblQK962V5DWonNgkeW
	cTw+kR8Vj0tKswmFrcp9dsa4w7PmrKIpe39bVtSkz3nidBjwdiOhY6XMSbiG3tdZ/BDfBFvt7dj
	n6qqRkuhlZsp0Ey2o8/s0nH7IrWxQ/Z8oAsTix9Fl1if8Rm5yIO0F13U/8fVQw/qvUKYBW3F3cw
	Fshx/HzCf0gamdDfkUU+8sw/RUnQgHMhtB3xPR2eX1B5K4h1xXskJrPCPjd6Ycbu6FY6GuEU8YX
	+KJnAuBdyzxhec9glEj9XIipi+DeoeIhz/fG5ye54EAC7fs4IZSdGxJzV+fcQ4mqq3W5iIWGwt0
	GTu9/GmSgZCeyRhvKk/+k73frUwqLYFsfx43gT+ovJrd27LSshO2Rk1ORxYVSDnjM8WnxjGF4LM
	oegfyob7jzEiZVLB
X-Received: by 2002:a05:600c:19c8:b0:49b:c8e:a211 with SMTP id 5b1f17b1804b1-49b91c20bfamr541832595e9.5.1788275629394;
        Tue, 01 Sep 2026 08:13:49 -0700 (PDT)
Received: from [192.168.0.233] (2a02-8388-e6ca-5780-e161-768d-5c97-84d0.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:e161:768d:5c97:84d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b955e7906sm303549035e9.1.2026.09.01.08.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:13:49 -0700 (PDT)
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Date: Tue, 01 Sep 2026 17:12:56 +0200
Subject: [PATCH RFC 1/6] mci: add driver for Broadcom SDHCI
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260901-add-rpi5-support-v1-1-129784fe06fa@gmail.com>
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
In-Reply-To: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
To: barebox@lists.infradead.org
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788275628; l=6785;
 i=andrey.lalaev@gmail.com; s=20260901; h=from:subject:message-id;
 bh=lvQZd3zEslRD5P2+5yTqKBAFfCgrsOAP5eiW06vFIiU=;
 b=UrB0cA6l9LnVjUZ/ssa7vma7wfem3U3cdcMSRQARH66j21oKCynlDRwjtp8bI0DEdFwVPaM2M
 A7Y8b5yjStPBd35hXO8NanpHwjVuTrpnXOMlMlVnackai/F+LtsYYnV
X-Developer-Key: i=andrey.lalaev@gmail.com; a=ed25519;
 pk=YHk+K3q98GV/1CigmrEAQ+Vc0o+GlFWt3j94jvrEh6o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081352_279689_B34C6A9A 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This adds support for Broadcom SDHCI controller found on BCM2712
    SoCs. The driver was ported from U-Boot. Signed-off-by: Andrei Lalaev ---
    arch/arm/configs/rpi_v8a_defconfig | 1 + drivers/mci/Kconfig | 5 ++ drivers/mci/Makefile
    | 1 + drivers/mci/bcmstb-sdhci.c | 165 +++++++++++++++++++++++++++++++++++++
    [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32a listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [andrey.lalaev(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Stat-Signature: b8et66nprabn6yhqzbhaqea5oy7icag1
X-Rspamd-Queue-Id: BF274201922
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32a:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+]
X-Rspamd-Action: no action

This adds support for Broadcom SDHCI controller found on BCM2712
SoCs. The driver was ported from U-Boot.

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
 arch/arm/configs/rpi_v8a_defconfig |   1 +
 drivers/mci/Kconfig                |   5 ++
 drivers/mci/Makefile               |   1 +
 drivers/mci/bcmstb-sdhci.c         | 165 +++++++++++++++++++++++++++++++++++++
 4 files changed, 172 insertions(+)

diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index c29fe30701e8..90899218b192 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -92,6 +92,7 @@ CONFIG_USB_GADGET=y
 CONFIG_MCI=y
 CONFIG_MCI_BCM283X=y
 CONFIG_MCI_BCM283X_SDHOST=y
+CONFIG_MCI_BCMSTB=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 2c3365e723a4..eebf85db9f5f 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -154,6 +154,11 @@ config MCI_BCM283X_SDHOST
 	depends on ARCH_BCM283X || COMPILE_TEST
 	select MCI_SDHCI
 
+config MCI_BCMSTB
+	bool "MCI support for BCMSTB"
+	depends on ARCH_BCM283X || COMPILE_TEST
+	select MCI_SDHCI
+
 config MCI_DOVE
 	bool "Marvell Dove SDHCI"
 	depends on ARCH_DOVE || COMPILE_TEST
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 761f4187c079..eca997dccbd3 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_MCI_ATMEL_SDHCI)	+= atmel-sdhci.o atmel-sdhci-common.o
 obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
 obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
 obj-$(CONFIG_MCI_CADENCE_SDHCI) += cadence-sdhci.o cadence-sdhci6.o
+obj-$(CONFIG_MCI_BCMSTB)	+= bcmstb-sdhci.o
 obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
 pbl-$(CONFIG_MCI_ATMEL_PBL)	+= atmel_mci_pbl.o atmel_mci_common.o
 pbl-$(CONFIG_MCI_ATMEL_SDHCI_PBL)	+= atmel-sdhci-pbl.o atmel-sdhci-common.o
diff --git a/drivers/mci/bcmstb-sdhci.c b/drivers/mci/bcmstb-sdhci.c
new file mode 100644
index 000000000000..f1275a8936ea
--- /dev/null
+++ b/drivers/mci/bcmstb-sdhci.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * This code is ported from U-Boot by Andrei Lalaev <andrey.lalaev@gmail.com>
+ *
+ * The original code has the following copyright:
+ * (C) Copyright 2018  Cisco Systems, Inc.
+ * (C) Copyright 2019  Synamedia
+ *
+ * Author: Thomas Fitzsimmons <fitzsim@fitzsim.org>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mci.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "sdhci.h"
+
+#define BCMSTB_SDHCI_MAXIMUM_CLOCK_FREQUENCY	52000000
+#define BCMSTB_SDHCI_MINIMUM_CLOCK_FREQUENCY	400000
+
+#define SDIO_CFG_CTRL				0x0
+#define  SDIO_CFG_CTRL_SDCD_N_TEST_EN		BIT(31)
+#define  SDIO_CFG_CTRL_SDCD_N_TEST_LEV		BIT(30)
+
+#define SDIO_CFG_SD_PIN_SEL			0x44
+#define  SDIO_CFG_SD_PIN_SEL_MASK		0x3
+#define  SDIO_CFG_SD_PIN_SEL_CARD		BIT(1)
+
+struct sdhci_bcmstb_mci_host {
+	struct mci_host mci;
+	void __iomem *cfg_regs;
+	struct sdhci sdhci;
+};
+
+static inline struct sdhci_bcmstb_mci_host *to_sdhci_bcmstb_host(struct mci_host *mci)
+{
+	return container_of(mci, struct sdhci_bcmstb_mci_host, mci);
+}
+
+static int sdhci_brcmstb_init_2712(struct mci_host *mci, struct device *dev)
+{
+	struct sdhci_bcmstb_mci_host *host = to_sdhci_bcmstb_host(mci);
+	u32 reg;
+	int ret;
+
+	ret = sdhci_reset(&host->sdhci, SDHCI_RESET_ALL);
+	if (ret)
+		return ret;
+
+	sdhci_write8(&host->sdhci, SDHCI_POWER_CONTROL,
+		     SDHCI_BUS_VOLTAGE_330 | SDHCI_BUS_POWER_EN);
+	udelay(400);
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE, SDHCI_INT_DATA_MASK | SDHCI_INT_CMD_MASK);
+	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, 0x00);
+
+	if (host->mci.host_caps & MMC_CAP_NONREMOVABLE) {
+		/* Force presence */
+		reg = readl(host->cfg_regs + SDIO_CFG_CTRL);
+		reg &= ~SDIO_CFG_CTRL_SDCD_N_TEST_LEV;
+		reg |= SDIO_CFG_CTRL_SDCD_N_TEST_EN;
+		writel(reg, host->cfg_regs + SDIO_CFG_CTRL);
+	} else {
+		/* Enable card detection line */
+		reg = readl(host->cfg_regs + SDIO_CFG_SD_PIN_SEL);
+		reg &= ~SDIO_CFG_SD_PIN_SEL_MASK;
+		reg |= SDIO_CFG_SD_PIN_SEL_CARD;
+		writel(reg, host->cfg_regs + SDIO_CFG_SD_PIN_SEL);
+	}
+
+	return 0;
+}
+
+static void sdhci_brcmstb_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct sdhci_bcmstb_mci_host *host = to_sdhci_bcmstb_host(mci);
+
+	if (ios->clock)
+		sdhci_set_clock(&host->sdhci, ios->clock, host->sdhci.max_clk);
+	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
+}
+
+static int sdhci_brcmstb_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
+{
+	struct sdhci_bcmstb_mci_host *host = to_sdhci_bcmstb_host(mci);
+
+	return sdhci_send_command(&host->sdhci, cmd);
+}
+
+static int sdhci_brcmstb_execute_tuning(struct mci_host *mci, u32 opcode)
+{
+	struct sdhci_bcmstb_mci_host *host = to_sdhci_bcmstb_host(mci);
+
+	return sdhci_execute_tuning(&host->sdhci, opcode);
+}
+
+static const struct mci_ops bcmstb_sdhci_ops = {
+	.init = sdhci_brcmstb_init_2712,
+	.set_ios = sdhci_brcmstb_set_ios,
+	.send_cmd = sdhci_brcmstb_send_cmd,
+	.execute_tuning = sdhci_brcmstb_execute_tuning,
+};
+
+static int sdhci_bcmstb_probe(struct device *dev)
+{
+	struct sdhci_bcmstb_mci_host *host;
+	struct resource *iores_cfg;
+	struct resource *iores;
+	struct clk *clk;
+	int ret;
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	ret = clk_enable(clk);
+	if (ret)
+		return ret;
+
+	iores = dev_request_mem_resource_by_name(dev, "host");
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	iores_cfg = dev_request_mem_resource_by_name(dev, "cfg");
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	host = xzalloc(sizeof(*host));
+	host->mci.ops = bcmstb_sdhci_ops;
+	host->mci.hw_dev = dev;
+	host->mci.f_min = BCMSTB_SDHCI_MINIMUM_CLOCK_FREQUENCY;
+	host->mci.f_max = BCMSTB_SDHCI_MAXIMUM_CLOCK_FREQUENCY;
+
+	host->cfg_regs = IOMEM(iores_cfg->start);
+
+	host->sdhci.base = IOMEM(iores->start);
+	host->sdhci.mci = &host->mci;
+
+	mci_of_parse(&host->mci);
+
+	ret = sdhci_setup_host(&host->sdhci);
+	if (ret) {
+		dev_err(dev, "Failed to setup SDHCI host");
+		return ret;
+	}
+
+	return mci_register(&host->mci);
+}
+
+static const struct of_device_id sdhci_bcmstb_compatible[] = {
+	{ .compatible = "brcm,bcm2712-sdhci" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, sdhci_bcmstb_match);
+
+static struct driver sdhci_bcmstb_driver = {
+	.name = "sdhci-bcmstb",
+	.probe = sdhci_bcmstb_probe,
+	.of_compatible = DRV_OF_COMPAT(sdhci_bcmstb_compatible),
+};
+
+device_platform_driver(sdhci_bcmstb_driver);

-- 
2.55.0



