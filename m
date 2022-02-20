Delivery-date: Sun, 20 Feb 2022 13:50:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlfE-004wxW-NG
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:50:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlf9-0001al-Vn
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:50:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoONbJEONXrZnhgLlwDGM2FyjcCk8WwEzhHIf9pPQIo=; b=IJd8NlvSUlgNp+
	tnnfbybzCzpEX//UeG/YjW/p18d7hSov1fSKZ4+WBKzDaIYc29YEbEh9wUAKOmZPuA+sxTMGzdQtB
	wFpkHUJjuQ8oj9L3njGfO2EqhwzxxGWzFMm6o0CYW0d4npGcH8lSM/LPe2h9BlZEfKtLj6wyVGJqu
	uZIjZp4jDkRgjGpoBDiGiineHbMUe3f2yMwev8yeurE4R7hmDGpze7Fcw/bPmJmfLSn11I75C75KT
	wwGpidfydaW8NDUL5rJCh1WF27mdkEokC6l1D+kM5v2DBf1pnvdOO9yeOq1SQqR7+8h1Uciueysdo
	mZSjw0PMyEN6TNd+yeCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldl-001ITT-QD; Sun, 20 Feb 2022 12:48:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld1-001I47-N4
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000a3-82; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoPl-3f; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:22 +0100
Message-Id: <20220220124736.3052502-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044751_783397_12EC6456 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/24] reset: move stm32 reset code to drivers/power/reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We will gut the STM32 reset controller parts in a follow-up commit,
because that will be handled together with clocking in a single RCC
driver. This will leave only restart and reset reason support in the
driver, so move it to drivers/power/reset, so it's not out-of-place.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/Kconfig                                 | 6 ++++++
 drivers/power/reset/Makefile                                | 1 +
 drivers/{reset/reset-stm32.c => power/reset/stm32-reboot.c} | 0
 drivers/reset/Kconfig                                       | 6 ------
 drivers/reset/Makefile                                      | 1 -
 5 files changed, 7 insertions(+), 7 deletions(-)
 rename drivers/{reset/reset-stm32.c => power/reset/stm32-reboot.c} (100%)

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 564b77ecba90..40cbc4a3dffd 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -62,3 +62,9 @@ config POWER_RESET_HTIF_POWEROFF
 	help
 	  Adds poweroff support via the syscall device on systems
 	  supporting the UC Berkely Host/Target Interface (HTIF).
+
+config RESET_STM32
+	bool "STM32 Reset Driver"
+	depends on ARCH_STM32MP || COMPILE_TEST
+	help
+	  This enables the reset controller driver for STM32MP1.
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index c581382be86d..347da50d767c 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
 obj-$(CONFIG_POWER_RESET_HTIF_POWEROFF) += htif-poweroff.o
+obj-$(CONFIG_RESET_STM32) += stm32-reboot.o
diff --git a/drivers/reset/reset-stm32.c b/drivers/power/reset/stm32-reboot.c
similarity index 100%
rename from drivers/reset/reset-stm32.c
rename to drivers/power/reset/stm32-reboot.c
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index b12159094d88..21a6e1a50d8f 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -39,12 +39,6 @@ config RESET_IMX7
 	help
 	  This enables the reset controller driver for i.MX7 SoCs.
 
-config RESET_STM32
-	bool "STM32 Reset Driver"
-	depends on ARCH_STM32MP || COMPILE_TEST
-	help
-	  This enables the reset controller driver for STM32MP1.
-
 config RESET_STARFIVE
 	bool "StarFive Controller Driver" if COMPILE_TEST
 	default SOC_STARFIVE
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index b4270411fdaf..6d0cd51f86ce 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -3,5 +3,4 @@ obj-$(CONFIG_RESET_CONTROLLER) += core.o
 obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
 obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
-obj-$(CONFIG_RESET_STM32) += reset-stm32.o
 obj-$(CONFIG_RESET_STARFIVE) += reset-starfive-vic.o
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

