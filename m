Delivery-date: Tue, 28 Jun 2022 22:40:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0w-000bKX-P3
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0y-0004Ey-FC
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:40:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cf6RT810yioOfm8P86hyWcW8lou9hF8LxHosNFGps+c=; b=AYiDZwAz8MibKFuA9GlPwPQZjz
	S4nqUDxrnZ8r4ioTH5RwM+ppp6zSeiEQOD4LFLEH5OlP+GaD7e1XL1DhSRyAeARWshrRgt8FMCqrj
	fAu2jWSpgR0h5eNY8l/NIF/wn7EWIr7vv60V9Xm6rc+O0yDdMTqYCn4jN6o+SbUq1PeaCzFKkmDdt
	/6O2anWqCzyx4xviuReeQgSb0IT/xvTREvLBghUdkBhlV1nrYpFT/vPszWGuqTVRU3qcLuDFyj7G4
	UaKYpWWnr7qJ3B0LM/tlYFdVunkYr1v5ifsw6F976he0wye2YwXTgrniKfYla8I1q2MdFYzbmhTrQ
	tZznywOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzV-0084li-A1; Tue, 28 Jun 2022 20:39:21 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzF-0084gq-QR
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=cf6RT810yioOfm8P86hyWcW8lou9hF8LxHosNFGps+c=;
	b=fZnlggM8cDGnbCMNU8wOTYLDLAJgMqdYPb7qsFatju4ft6Fazxz0dcnViZYaZHyh7W4onAz79wvuJ
	 7gRS1Vu5AEtag61Anx/nOwpdCPK6ijetG96oXzAEtHc7Q+axCgHPUr8K5oxGsYgbS6/2lv6C+ikqpP
	 VkquUMvV3JvpWGtyiMZMtvi03KKjNnJyoqRi+lfjPwxvZvWVuUZ6F4MhZYZjZvobxFmdspNTGxlgF9
	 nyokG/NTS7KOE8m0wCduLUUYVih3ZBbaWCa2qvPZs2xQHxTAfEBXLsw7Kj8UofGFBpsty01N4Nenc4
	 2pHeXs8wsd81s7pdx/X8U8isNm2UJqg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=cf6RT810yioOfm8P86hyWcW8lou9hF8LxHosNFGps+c=;
	b=7xFC6nLJa7D3Qz2nxmD4ykQZsuQmxzK2jTaSf8fyCh0b3+q6eHiKMcDlJ53p2EeAhOJ4/hFr4oBMd
	 xaEg+wuAQ==
X-HalOne-Cookie: f03391b9e3309a9db564b9a430af26cdba01c8d3
X-HalOne-ID: 5926272a-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 5926272a-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:03 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:41 +0200
Message-Id: <20220628203849.2785611-4-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133906_052897_DC05155E 
X-CRM114-Status: GOOD (  20.48  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 03/11] ARM: at91: Add initialize function to sdramc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Port the sdramc initialize function from at91bootstrap.
It is needed from lowlevel code and is a replacement for the
sdramc init code in at91sam926x_board_init.h

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Makefile                   |  2 +-
 arch/arm/mach-at91/at91sam9_sdramc_ll.c       | 71 +++++++++++++++++++
 .../mach-at91/include/mach/at91sam9_sdramc.h  | 12 ++++
 3 files changed, 84 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-at91/at91sam9_sdramc_ll.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index bfdc89f68..12e64291b 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += setup.o aic.o
-lwl-y += at91_pmc_ll.o ddramc_ll.o matrix.o
+lwl-y += at91_pmc_ll.o ddramc_ll.o at91sam9_sdramc_ll.o matrix.o
 lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
 ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
diff --git a/arch/arm/mach-at91/at91sam9_sdramc_ll.c b/arch/arm/mach-at91/at91sam9_sdramc_ll.c
new file mode 100644
index 000000000..805cfbbe4
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9_sdramc_ll.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2006, Atmel Corporation
+ */
+
+#include <mach/at91sam9_sdramc.h>
+#include <mach/early_udelay.h>
+
+static inline void sdramc_wr(const struct at91sam9_sdramc_config *config,
+			     unsigned int offset,
+			     const unsigned int value)
+{
+	writel(value, config->sdramc + offset);
+}
+
+int at91sam9_sdramc_initialize(const struct at91sam9_sdramc_config *config,
+			       unsigned int sdram_address)
+{
+	unsigned int i;
+
+	/* Step#1 SDRAM feature must be in the configuration register */
+	sdramc_wr(config, AT91_SDRAMC_CR, config->cr);
+
+	/* Step#2 For mobile SDRAM, temperature-compensated self refresh(TCSR),... */
+
+	/* Step#3 The SDRAM memory type must be set in the Memory Device Register */
+	sdramc_wr(config, AT91_SDRAMC_MDR, config->mdr);
+
+	/* Step#4 The minimum pause of 200 us is provided to precede any single toggle */
+	early_udelay(200);
+
+	/* Step#5 A NOP command is issued to the SDRAM devices */
+	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NOP);
+	writel(0x00000000, sdram_address);
+
+	/* Step#6 An All Banks Precharge command is issued to the SDRAM devices  */
+	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
+	writel(0x00000000, sdram_address);
+
+	/* Pause cycles */
+	early_udelay(2000);
+
+	/* Step#7 Eight auto-refresh cycles are provided */
+	for (i = 0; i < 8; i++) {
+		sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
+		writel(0x00000001 + i, sdram_address + 4 + 4 * i);
+	}
+
+	/* Pause cycles */
+	early_udelay(200);
+
+	/* Step#8 A Mode Register set (MRS) cycle is issued to program (TCSR, PASR, DS) */
+	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
+	writel(0xcafedede, sdram_address + 0x24);
+
+	/*  Pause cycles */
+	early_udelay(200);
+
+	/* Step#9 For mobile SDRAM initialization, an Extended Mode Register set ... */
+
+	/* Step#10 The application must go into Normal Mode, setting Mode to 0
+	 * and perform a write access at any location in the SDRAM.
+	 */
+	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);	// Set mode
+	writel(0x00000000, sdram_address);				// Perform mode
+
+	/* Step#11 Write the refresh rate into the count field in the Refresh Register. */
+	sdramc_wr(config, AT91_SDRAMC_TR, config->tr);
+
+	return 0;
+}
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
index 3cda10165..c5271af82 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
@@ -85,6 +85,18 @@
 #include <mach/at91sam9261.h>
 #include <mach/at91sam9263.h>
 
+struct at91sam9_sdramc_config {
+	void __iomem *sdramc;
+	unsigned int mr;
+	unsigned int tr;
+	unsigned int cr;
+	unsigned int lpr;
+	unsigned int mdr;
+};
+
+int at91sam9_sdramc_initialize(const struct at91sam9_sdramc_config *config,
+			       unsigned int sdram_address);
+
 static inline u32 at91_get_sdram_size(void *base)
 {
 	u32 val;
-- 
2.34.1



