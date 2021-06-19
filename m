Delivery-date: Sat, 19 Jun 2021 06:55:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT0p-0004ba-OY
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:55:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT0o-0001dR-1I
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:55:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kc1d/pOgqWEVBG79jRFQiT3QV9TG1xb5dzDaOeJBdiM=; b=gDr1I1t7ArVtJ/
	jNAJyNn9sfhvGCY5GXCok+XCRguteOu41v36up7lb1dbcE2m+9swG1d78bwVHw0yaCX9q3srxmP6X
	vYAb9LSj3zTGfy8/AboHbEhaUcr585EX9kl1RNPcjqFF8v6iEOdoBzVRHPt2/1OzbbYTLEz7lBsHU
	ePDgeNk3fW5hA2h8NgYR/I8kCRO6crkqTijaCUH/5ogvvFwMniIcrR5QrdhWcXNhmwHtiz6IYYGMs
	WW7UO+p7iB+MIAKVSXbzKUHfCpsYUp653AiuMoA37Zupq4taIKJQ2TJIsRrSykCAmaol4HrQNBbdy
	5i61vrZpS7lLt7ChrEqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSzN-00GJ8f-8U; Sat, 19 Jun 2021 04:53:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwu-00GHm1-6c
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwc-0008M4-Sb; Sat, 19 Jun 2021 06:50:58 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001Km-OE; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:33 +0200
Message-Id: <20210619045055.779-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215116_277739_352E5D9E 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 07/29] RISC-V: socs: add Kconfig entry for StarFive JH7100
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The JH7100 is the StarFive SoC with SiFive CPUs in the pre-production
BeagleV. Th JH7110 in later boards will be cache-coherent, but the
JH7100 will need some workarounds.

Add Kconfig symbols, so newly introduced symbols can depend on them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index f1b431555fcd..8f955cd4d220 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -21,8 +21,12 @@ config SOC_VIRT
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
 
+config CPU_SIFIVE
+	bool
+
 config SOC_SIFIVE
 	bool "SiFive SoCs"
+	select CPU_SIFIVE
 	select RISCV_S_MODE
 	select CLK_SIFIVE
 	select CLK_SIFIVE_PRCI
@@ -41,4 +45,22 @@ config BOARD_HIFIVE
 
 endif
 
+config SOC_STARFIVE
+	bool "StarFive SoCs"
+	help
+	  This enables support for SiFive SoC platform hardware.
+
+if SOC_STARFIVE
+
+config SOC_STARFIVE_JH71XX
+	bool
+	select CPU_SIFIVE
+
+config SOC_STARFIVE_JH7100
+	bool
+	select SOC_STARFIVE_JH71XX
+
+endif
+
+
 endmenu
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

