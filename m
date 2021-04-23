Delivery-date: Fri, 23 Apr 2021 16:29:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwob-0005wL-11
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 16:29:53 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwoa-0000Mo-5c
	for lore@pengutronix.de; Fri, 23 Apr 2021 16:29:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m9Wh8I9nXEjLoOoRqPiCrhE4DOpjnc8smIFxBFStvWk=; b=DLhy8+C1jXqw6UggcjRh4rW00
	pM4feWAXWA1qE0RXWjaolF6TwV/iwvJPOGaHliwAvGRAtTrC90yFJd2mPbvrnT3SBa8HiD4JMGP0I
	3mp7XlywPJ0qzqF5uiJbcdYT5jdN3+80oiHHbNjl4zEVRwivute583BcIzD4rZc7W+Ba2F/zc9zMj
	HNmFA/tpU4SqgAqfYbhKF6XDKvtSOOr4QC/cyneoYSkBoN8oWM/r9XZ+htz8eW/zarSsZnXOUpJKT
	yCGaGnWKwO4jgkRMXkMkv4b4VJ50fpQempfDcNSsZ/9+Tif2nc1juc568TJyYkxjiZQK8H0ctz1aI
	GvcWpNKaQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZwng-001gqr-TR; Fri, 23 Apr 2021 14:28:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwnV-001gpu-Jq
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 14:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=vLIjfdMJewkDnTWS+mS4D99dDy33/aZz1hZBeqnozqA=; b=BTYT03T9ZEBwZe+Dzb0fDdeNwi
 htabi3k6biiXVQT6pgGrHJ6GhwKI8GoFxpnT/MeUw1ef9yU04u7ui9HOGNzuN2BR6FmOghsrlKwM7
 sUbjjEUhHMpN1NmTItW2moKQnE0+GOGNEKNsSfTv1/f4EtLpKuny4SO9zmVo3ZJlA/7JK4HUq5HLJ
 6mDtFxqwIBEQOZ8JH9nVSf8vrMQDyF9oLs7uUpnPl0oQQYhdbVP4QtZrPFdSPCRTX1ZnEmUJpqBHi
 FYKRALUgW61F1HIJBo6TH++TTbpDYYNWv7vjKHQwYWe0Ny4FgosJK+9F31ZHuOgtQ2Y/xbXwnIkv/
 OaLSyxiA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwnO-00ETBc-U5
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 14:28:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwnN-0008WP-Ff; Fri, 23 Apr 2021 16:28:37 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwnN-0007gM-2H; Fri, 23 Apr 2021 16:28:37 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 23 Apr 2021 16:28:25 +0200
Message-Id: <20210423142829.29468-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210423142829.29468-1-o.rempel@pengutronix.de>
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_072839_047481_B980EB9C 
X-CRM114-Status: GOOD (  13.58  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/6] ARM: at91: xload-mmc: add sama5d3_atmci_start_image()
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This helper should be called from the xloader

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig              |  2 +
 arch/arm/mach-at91/include/mach/xload.h |  2 +
 arch/arm/mach-at91/xload-mmc.c          | 51 +++++++++++++++++++++++++
 3 files changed, 55 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 52eefc7361..0fc8d25111 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -45,6 +45,7 @@ config HAVE_AT91_DDRAMC
 
 config AT91_MCI_PBL
 	bool
+	depends on MCI_ATMEL_PBL
 	depends on MCI_ATMEL_SDHCI_PBL
 	default y
 
@@ -599,6 +600,7 @@ config MACH_MICROCHIP_KSZ9477_EVB
 	bool "Microchip EVB-KSZ9477 Evaluation Kit"
 	select SOC_SAMA5D3
 	select OFDEVICE
+	select MCI_ATMEL_PBL
 	select COMMON_CLK_OF_PROVIDER
 	help
 	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
index 9201e7d0b7..bbc70af210 100644
--- a/arch/arm/mach-at91/include/mach/xload.h
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -5,6 +5,8 @@
 #include <pbl.h>
 
 void __noreturn sama5d2_sdhci_start_image(u32 r4);
+void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
+					  unsigned int slot);
 
 int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
index e9edeccb7f..e865f237ef 100644
--- a/arch/arm/mach-at91/xload-mmc.c
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -3,6 +3,7 @@
 #include <mach/sama5_bootsource.h>
 #include <mach/hardware.h>
 #include <mach/sama5d2_ll.h>
+#include <mach/sama5d3_ll.h>
 #include <mach/gpio.h>
 #include <linux/sizes.h>
 #include <asm/cache.h>
@@ -44,6 +45,23 @@ static const struct sdhci_instance {
 	},
 };
 
+static const struct atmci_instance {
+	void __iomem *base;
+	unsigned id;
+	u8 periph;
+	s8 pins[15];
+} atmci_instances[] = {
+	[0] = {
+		.base = IOMEM(SAMA5D3_BASE_HSMCI0),
+		.id = SAMA5D3_ID_HSMCI0,
+		.periph = AT91_MUX_PERIPH_A,
+		.pins = {
+			AT91_PIN_PD0, AT91_PIN_PD1, AT91_PIN_PD2, AT91_PIN_PD3,
+			AT91_PIN_PD4, AT91_PIN_PD5, AT91_PIN_PD6, AT91_PIN_PD7,
+			AT91_PIN_PD8, AT91_PIN_PD9, -1 }
+	},
+};
+
 /**
  * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
  * @r4: value of r4 passed by BootROM
@@ -82,3 +100,36 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
 out_panic:
 	panic("FAT chainloading failed\n");
 }
+
+void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
+					  unsigned int slot)
+{
+	void *buf = (void *)SAMA5_DDRCS;
+	const struct atmci_instance *instance;
+	struct pbl_bio bio;
+	const s8 *pin;
+	int ret;
+
+	ret = sama5_bootsource_instance(boot_src);
+	if (ret > ARRAY_SIZE(atmci_instances) - 1)
+		panic("Couldn't determine boot MCI instance\n");
+
+	instance = &atmci_instances[boot_src];
+
+	sama5d3_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
+	for (pin = instance->pins; *pin >= 0; pin++) {
+		at91_mux_pio3_pin(IOMEM(SAMA5D3_BASE_PIOD),
+					 pin_to_mask(*pin), instance->periph, 0);
+	}
+
+	sama5d3_pmc_enable_periph_clock(instance->id);
+
+	ret = at91_mci_bio_init(&bio, instance->base, clock, slot);
+	if (ret)
+		goto out_panic;
+
+	at91_fat_start_image(&bio, buf, SZ_16M, boot_src);
+
+out_panic:
+	panic("FAT chainloading failed\n");
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

