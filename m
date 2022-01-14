Delivery-date: Fri, 14 Jan 2022 08:01:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8GaW-001o1B-Q2
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 08:01:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8GaV-000700-J1
	for lore@pengutronix.de; Fri, 14 Jan 2022 08:01:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6mzUCP3+uh93jdsC2kPaah/27uwnGEHN0MbPTJvEcFk=; b=hAOLB8hR2zD4Kf
	d/DNm7wxM85uAzINgpjAIws5ESq1SNw1QhQyECp0VUrOTQtmDSaDGPKiM3V0W60iAppqiXsxLCS80
	Uzbx7kY9fN9VYz4EbMQW02yHqbL8p3bcptoQCQED9PDc1xOYfnrkS+E5jz/1DSb3DOfG5nAQ4tGrj
	byxDN9XkP4AXHFVq7C4KB2n9CpWn/KA9DVCesycIkUnygJ7HeDb2TEQ+Tc9qspDnOQP/f6WbQJdnA
	VpWfZgvRiYFMdFeVRfSuRXraThKYGxuR69uo3idT7jJYp/DYiGErAJ+BPCXmg7bNDtZbPbowehjgg
	UDDP3kRZ04SsV1C91MZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8GZ4-0080Wn-Kl; Fri, 14 Jan 2022 06:59:58 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8GYz-0080Vc-Pl
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 06:59:55 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id E8EAE1BF207;
 Fri, 14 Jan 2022 06:59:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 14 Jan 2022 07:59:43 +0100
Message-Id: <20220114065943.698337-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_225954_016225_AF1D044C 
X-CRM114-Status: UNSURE (   8.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pinctrl: stm32: replace magic values with defines for
 STM32_PINMODE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Makes the code easier to follow and allows using the new macros in PBL
code for early pinmuxing of e.g. the debug UART.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/pinctrl/pinctrl-stm32.c | 6 +++---
 include/soc/stm32/gpio.h        | 4 ++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 9b5b04b6d6a8..ceaa4254c4d0 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -63,11 +63,11 @@ static inline u32 stm32_gpio_get_mode(u32 function)
 {
 	switch (function) {
 	case STM32_PIN_GPIO:
-		return 0;
+		return STM32_PINMODE_GPIO;
 	case STM32_PIN_AF(0) ... STM32_PIN_AF(15):
-		return 2;
+		return STM32_PINMODE_AF;
 	case STM32_PIN_ANALOG:
-		return 3;
+		return STM32_PINMODE_ANALOG;
 	}
 
 	return 0;
diff --git a/include/soc/stm32/gpio.h b/include/soc/stm32/gpio.h
index 13b492a6937c..448fb19e2ef8 100644
--- a/include/soc/stm32/gpio.h
+++ b/include/soc/stm32/gpio.h
@@ -25,6 +25,10 @@
 #define STM32_PIN_AF(x)		((x) + 1)
 #define STM32_PIN_ANALOG	(STM32_PIN_AF(15) + 1)
 
+#define STM32_PINMODE_GPIO	0
+#define STM32_PINMODE_AF	2
+#define STM32_PINMODE_ANALOG	3
+
 #define STM32_GPIO_PINS_PER_BANK	16
 
 enum stm32_pin_bias { STM32_PIN_NO_BIAS, STM32_PIN_PULL_UP, STM32_PIN_PULL_DOWN };
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

