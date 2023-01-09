Delivery-date: Mon, 09 Jan 2023 14:10:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErut-006gGe-2I
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:10:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEruq-0001Wn-N0
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:10:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bwHDV9gNlnrVW23xEjpt+oEwMGkrNoTGtUvwfjU7J0E=; b=4dCifRVbL+J9JsDB6poi6M2O9V
	GF0d+5RMNjxtUkOtkgDUm3XBfEsDxjQPPOpbdoC+XDlql3IDacStzp+Gu0bjHknPqkU3x9OSHwQ+H
	RrldHD/0LEtRLy63VoXPSDU2DJNV4gM/8Ev31K18qx/7qdrZsJUP+G40/7pmvSrROx992zBO5rI/C
	O/VYBwD+M5wns4woXfPOp8RjA+663ThNAYG4vC9oaUs/6dtcRxO7XQ3OXLfJM8gpAI+tiTckbeLWw
	quw/Uad0SPxrs4KxWcktAHGG/WtT7kiXCqBgRdkK5BmvTGaXhFtTSD6tUvKngXBVlc/Xe/UnbgPcl
	mSrmdgKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErtS-001RV4-S5; Mon, 09 Jan 2023 13:08:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErt9-001RLg-FV
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000qo-JZ; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt4-004qvz-VN; Mon, 09 Jan 2023 14:08:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGr-GT; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 14:08:20 +0100
Message-Id: <20230109130822.1657470-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050831_636922_AF71812E 
X-CRM114-Status: GOOD (  15.66  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/11] pinctrl: at91: make deep-probe compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GPIO banks are probed independently from pinctrl parent device as it's
simple-bus compatible. The pinctrl driver needs access to the GPIO
banks though for applying a pin configuration. This has two problems:

  - When we have a pinctrl hog, we can't apply it if GPIOs weren't
    probed before

  - In a deep probe system, pinctrl may be used before GPIO was probed

Fix this for deep probe systems by probing relevant GPIO banks on
demand. We wrap this in a deep_probe_is_supported() check to avoid
increasing code size for the configurations that use non-DT enabled
barebox proper as first stage bootloader.

Tested on SAMA5D4.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 1f0a8fe038f3..b80fa85f829a 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -16,6 +16,7 @@
 #include <init.h>
 #include <driver.h>
 #include <getopt.h>
+#include <deep-probe.h>
 
 #include <mach/at91_pio.h>
 #include <mach/gpio.h>
@@ -47,17 +48,25 @@ struct at91_gpio_chip {
 #define DEBOUNCE_VAL_SHIFT      17
 #define DEBOUNCE_VAL    (0x3fff << DEBOUNCE_VAL_SHIFT)
 
-static int gpio_banks;
-
 static struct at91_gpio_chip gpio_chip[MAX_GPIO_BANKS];
 
 static inline struct at91_gpio_chip *pin_to_controller(unsigned pin)
 {
+	struct at91_gpio_chip *chip;
+
 	pin /= MAX_NB_GPIO_PER_BANK;
-	if (likely(pin < gpio_banks))
-		return &gpio_chip[pin];
+	if (unlikely(pin >= MAX_GPIO_BANKS))
+		return NULL;
+
+	chip = &gpio_chip[pin];
+
+	if (!chip->regbase && deep_probe_is_supported()) {
+		char alias[] = "gpioX";
+		scnprintf(alias, sizeof(alias), "gpio%u", pin);
+		of_device_ensure_probed_by_alias(alias);
+	}
 
-	return NULL;
+	return chip;
 }
 
 /**
@@ -652,7 +661,6 @@ static int at91_gpio_probe(struct device *dev)
 		return ret;
 	}
 
-	gpio_banks = max(gpio_banks, alias_idx + 1);
 	at91_gpio->regbase = dev_request_mem_region_err_null(dev, 0);
 	if (!at91_gpio->regbase)
 		return -ENOENT;
-- 
2.30.2



