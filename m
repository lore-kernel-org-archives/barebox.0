Delivery-date: Sun, 15 May 2022 21:40:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6P-00EWSm-C7
	for lore@lore.pengutronix.de; Sun, 15 May 2022 21:40:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6L-0005v8-OX
	for lore@pengutronix.de; Sun, 15 May 2022 21:40:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyXTt+2MjMZE20tPEAckVqvusOzqmp6APeQDfWtpUKc=; b=pTEVikOz/hwTLD
	9ZSPQcPo+Wpy8tkQ6yOLKM4cUglA9C+IGjbl8JrMSW8HuJ0uT9+vwm/F/b69nyFgXDgKLX6fT8oUw
	rCi7YvVMdB5DDyVyrYCHiCGxrBk3ayI1jaEyEN8gwLW0lUAzaLaa4F4CPWWeOuqJAjZcpjts82gds
	MTN5exUA9nXnuPfCfODa+MrCO3cQKc3MMgTDKc8XCi4zc/05/aAmVqxm8gUFXcO9cotopsxRmGvbO
	PwL8sDfcygQF49a8tT/eWTVcFq4wroyPbJ7HTYJj3dptd2SUyBJ50Fr7pZDVauSgWag24ecbpzQ/8
	5rPZkp92ilat6keebb8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqK4q-004ndl-FT; Sun, 15 May 2022 19:38:52 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqK4U-004nVw-0W
 for barebox@lists.infradead.org; Sun, 15 May 2022 19:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=Yx4vvaPY5s+yhaMSkdiddyu9ZYylh9PVxp0IiZf1LJ0=;
 b=StqbYrEV0g9amq1X3mZGfbLlKCuGhk+4lh6/3BgHnb7V0gGOCKYBYLdNzW+HTDMiUvji3bv95sPcw
 pFqceUIlcBG7w6IKleOfLGOiiSYHzMknUn01TX82gDotiwFsORg1Ue+PzPJTrAEec3mi4j25SN7xjR
 JUNSMoCsXqFrwfT2lqn8KC+Tyq6/roaoUqzw+wpEPotGGQtp36RB5TLqMCiQrpxopmQD9NHzmcMGVF
 AF8gOH0FKYFsUizPKCmXVnXaBSxXFm75kwwolvNpnEqohJKG2sc4ufJ5JpSEhnuWbgYrFjD2qBMzI0
 tcfho9EnhHOkDLVBj8JQduvXp8r27wg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=Yx4vvaPY5s+yhaMSkdiddyu9ZYylh9PVxp0IiZf1LJ0=;
 b=m5QWrjZZUJuEX6RS65oJBgzp4QamSglSXofNXc84WDd0082ZIUpy6kAkx1uzAxFsbH1HEyLRVnjG3
 iaUQGLgDA==
X-HalOne-Cookie: 447d5a928ca8173f24f440ed3f1cf730a85794df
X-HalOne-ID: 97f1bebf-d486-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod4-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 97f1bebf-d486-11ec-a908-d0431ea8a290;
 Sun, 15 May 2022 19:38:28 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 15 May 2022 21:38:06 +0200
Message-Id: <20220515193807.354903-8-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123830_303429_AA89EBB4 
X-CRM114-Status: GOOD (  19.89  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 7/8] ARM: at91: Add initialize function to sdramc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Port the sdramc initialize function from at91bootstrap.
It is needed from lowlevel code and is a replacement for the
sdramc init code in at91sam926x_board_init.h

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Makefile                   |  2 +-
 arch/arm/mach-at91/at91sam9_sdramc_ll.c       | 67 +++++++++++++++++++
 .../mach-at91/include/mach/at91sam9_sdramc.h  | 12 ++++
 3 files changed, 80 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-at91/at91sam9_sdramc_ll.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 56c2a3170..390d49d03 100644
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
index 000000000..b43654364
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9_sdramc_ll.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2006, Atmel Corporation
+ */
+#include <mach/at91sam9_sdramc.h>
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
+	for (i = 0; i < 1000; i++) ;
+
+	/* Step#5 A NOP command is issued to the SDRAM devices */
+	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NOP);
+	writel(0x00000000, sdram_address);
+
+	/* Step#6 An All Banks Precharge command is issued to the SDRAM devices  */
+	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
+	writel(0x00000000, sdram_address);
+
+	for (i = 0; i < 10000; i++) ;
+
+	/* Step#7 Eight auto-refresh cycles are provided */
+	for (i = 0; i < 8; i++) {
+		sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
+		writel(0x00000001 + i, sdram_address + 4 + 4 * i);
+	}
+
+	/*  Pause cycles */
+	for (i = 0; i < 1000; i++) ;
+
+	/* Step#8 A Mode Register set (MRS) cyscle is issued to program the SDRAM parameters(TCSR, PASR, DS) */
+	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
+	writel(0xcafedede, sdram_address + 0x24);
+
+	/*  Pause cycles */
+	for (i = 0; i < 1000; i++) ;
+
+	/* Step#9 For mobile SDRAM initialization, an Extended Mode Register set cycle is issued to ... */
+
+	/* Step#10 The application must go into Normal Mode, setting Mode to 0 in the Mode Register
+	   and perform a write access at any location in the SDRAM. */
+	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);	// Set Normal mode
+	writel(0x00000000, sdram_address);	// Perform Normal mode
+
+	/* Step#11 Write the refresh rate into the count field in the SDRAMC Refresh Timer Rgister. */
+	sdramc_wr(config, AT91_SDRAMC_TR, config->tr);
+
+	return 0;
+}
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
index fe76f60b0..0e05387aa 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
@@ -181,6 +181,18 @@
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


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

