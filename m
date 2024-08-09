Delivery-date: Fri, 09 Aug 2024 16:24:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXp-007rV7-30
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXo-0008FS-EI
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VYhtjjzvhZGkSgH9E1YMTqbC17hcztlnkmWjvya2j0M=; b=j75Azf896x+FUR7UUlkoTJC0+Y
	XUWErqR5sESFF8h8U2cNAPpw5RLtPJWj2vterfLite4zja2FlksiSBJW32WD1HAeyzzZaB9ChO/qA
	UfkjjdYtG0EQNCvssIlRrd/u1xneTesiK11AS/ruxFYsi2G6txMTPnUoEH2284H5b4Rz0qZzFioun
	pvWQUhwH+i145OyrQrr07ijUwMz4e0MB3J5X25qf5E+0pRB4HZ7w4stdaoeQvaN4bhKXEv8YsuYtV
	xOj8FG31Eo6fbp0srvYjdGZQL1A0YL/XK3afptZS4gwWAWeo7YxmhLu8TifFW8mGz93bxtpSvsInc
	Uj1oracg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXP-0000000BWJL-1IBs;
	Fri, 09 Aug 2024 14:24:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXI-0000000BWEV-3ILp
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007ol-CJ; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-005geK-Uh; Fri, 09 Aug 2024 16:24:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-001K4s-2l;
	Fri, 09 Aug 2024 16:24:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:23:57 +0200
Message-Id: <20240809142405.315244-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072408_852445_35454ACD 
X-CRM114-Status: GOOD (  11.41  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/11] pinctrl: stm32: implement generic struct gpio_ops::set_config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To enable use with the newly added gpiod_set_config API,
implement the operation for the STM32.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/Kconfig         |  1 +
 drivers/pinctrl/pinctrl-stm32.c | 41 +++++++++++++++++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 2ff99a39c877..ee15acdcdb35 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -103,6 +103,7 @@ config PINCTRL_VF610
 config PINCTRL_STM32
 	bool "STM32 pinctrl support" if  COMPILE_TEST
 	default y if ARCH_STM32
+	select HAVE_GPIO_PINCONF
 	help
 	  Pinmux and GPIO controller found on STM32 family
 endif
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 4a4b03ac0ea7..e2fd12117095 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -15,6 +15,7 @@
 #include <hwspinlock.h>
 #include <malloc.h>
 #include <linux/clk.h>
+#include <linux/pinctrl/pinconf-generic.h>
 #include <soc/stm32/gpio.h>
 
 #define STM32_PIN_NO(x) ((x) << 8)
@@ -258,12 +259,52 @@ static int stm32_gpio_direction_output(struct gpio_chip *chip,
 	return 0;
 }
 
+static int stm32_gpio_set_config(struct gpio_chip *chip,
+				 unsigned int gpio, unsigned long config)
+{
+	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
+	enum pin_config_param param;
+	u32 arg;
+
+	param = pinconf_to_config_param(config);
+	arg = pinconf_to_config_argument(config);
+
+	switch (param) {
+	case PIN_CONFIG_DRIVE_PUSH_PULL:
+		__stm32_pmx_set_output_type(bank->base, gpio, STM32_PIN_OUT_PUSHPULL);
+		break;
+	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
+		__stm32_pmx_set_output_type(bank->base, gpio, STM32_PIN_OUT_OPENDRAIN);
+		break;
+	case PIN_CONFIG_SLEW_RATE:
+		__stm32_pmx_set_speed(bank->base, gpio, arg);
+		break;
+	case PIN_CONFIG_BIAS_DISABLE:
+		__stm32_pmx_set_bias(bank->base, gpio, STM32_PIN_NO_BIAS);
+		break;
+	case PIN_CONFIG_BIAS_PULL_UP:
+		__stm32_pmx_set_bias(bank->base, gpio, STM32_PIN_PULL_UP);
+		break;
+	case PIN_CONFIG_BIAS_PULL_DOWN:
+		__stm32_pmx_set_bias(bank->base, gpio, STM32_PIN_PULL_DOWN);
+		break;
+	case PIN_CONFIG_OUTPUT:
+		__stm32_pmx_gpio_output(bank->base, gpio, arg);
+		break;
+	default:
+		return -ENOTSUPP;
+	}
+
+	return 0;
+}
+
 static struct gpio_ops stm32_gpio_ops = {
 	.direction_input = stm32_gpio_direction_input,
 	.direction_output = stm32_gpio_direction_output,
 	.get_direction = stm32_gpio_get_direction,
 	.get = stm32_gpio_get,
 	.set = stm32_gpio_set,
+	.set_config = IS_ENABLED(CONFIG_GPIO_PINCONF) ? stm32_gpio_set_config : NULL,
 };
 
 static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
-- 
2.39.2



