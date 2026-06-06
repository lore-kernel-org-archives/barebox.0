Delivery-date: Sat, 06 Jun 2026 20:23:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVvg6-00336r-2m
	for lore@lore.pengutronix.de;
	Sat, 06 Jun 2026 20:23:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVvg6-0006Y0-0y
	for lore@pengutronix.de; Sat, 06 Jun 2026 20:23:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XQ4Jyu1UOxnxx7WgNC+1peWdkiyXEz3Uj2QRbP3+k8g=; b=Hi8AdlBVPCIslCzr1Gq5YqvbLx
	eaaGJSMDev9rxh1mmrjDjbKqCCEHSW5tadu+R32BRdcUGRVBQyed0QDyOadT2DlAA7Cedn9bXIc7D
	xc0zYkK+IM8nq6hAZWaJiOOOANF6ime7LNsio8dAjkIqXzVedmaJoMiNUF1dmdIB31wn+Q9a1cUPd
	gi8rZ8erN6fSCqvktx3Av7zUPbGHEkkQNSHR3sIgTwFQ6ZwlRhqJNYBSWcypVcISVEcq0XeH/ifvh
	RnrO+jdQ+j2IlfUUiNdzzzNZpUfIO7DkriM2q4eKX3DyBFIP4hj6qG3dfRg5fpZFIB7NW369AUacD
	4PrgkETA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVvee-00000001kaQ-3KNq;
	Sat, 06 Jun 2026 18:21:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVveb-00000001kZq-1zbV
	for barebox@lists.infradead.org;
	Sat, 06 Jun 2026 18:21:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wVveX-0006J5-GO; Sat, 06 Jun 2026 20:21:49 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat,  6 Jun 2026 20:20:24 +0200
Message-ID: <20260606182148.337137-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260606_112153_532110_7EFBB301 
X-CRM114-Status: GOOD (  21.78  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pinctrl: generic: rename PIN_CONFIG_OUTPUT to LEVEL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make porting drivers from newer Linux versions a bit easier,
port Linux commit 203a83112e097a501fbe12722b6342787497efe0:

|   pinctrl: generic: rename PIN_CONFIG_OUTPUT to LEVEL
|
|   This generic pin config property is confusingly named so let's
|   rename it to make things clearer.
|
|   There are already drivers in the tree that use PIN_CONFIG_OUTPUT
|   to *read* the value of an output driven pin, which is a big
|   semantic confusion for the head: are we then reading the
|   setting of the output or the actual value/level that is put
|   out on the pin?
|
|   We already have PIN_CONFIG_OUTPUT_ENABLE that turns on driver
|   buffers for output, so this can by logical conclusion only
|   drive the voltage level if it should be any different.
|
|   But if we read the pin, are we then reading the *setting* of
|   the output value or the *actual* value we can see on the
|   line?
|
|   If the pin has not first been set into output mode with
|   PIN_CONFIG_OUTPUT_ENABLE, but is instead in some input mode
|   or tristate, what will reading this property actually
|   return?
|
|   Reading the current users reading this property it is clear
|   that what we read is the logical level of the pin as 0 or 1
|   depending on if it is low or high.
|
|   Rename it to PIN_CONFIG_LEVEL so it is crystal clear that
|   we set or read the voltage level of the pin and nothing else.
|
|   Acked-by: Sudeep Holla <sudeep.holla@arm.com>
|   Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/pinctrl/pinctrl-rockchip.c      |  8 ++++----
 drivers/pinctrl/pinctrl-stm32.c         |  2 +-
 include/linux/pinctrl/pinconf-generic.h | 12 ++++++++----
 3 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index f2a6c0266b69..482c6d213d2b 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -323,10 +323,10 @@ static unsigned long parse_gpio_direction(struct device_node *np)
 	if (of_property_read_bool(np, "input-enable")) {
 		param = PIN_CONFIG_INPUT_ENABLE;
 	} else if (of_property_read_bool(np, "output-low")) {
-		param = PIN_CONFIG_OUTPUT;
+		param = PIN_CONFIG_LEVEL;
 		argument = 0;
 	} else if (of_property_read_bool(np, "output-high")) {
-		param = PIN_CONFIG_OUTPUT;
+		param = PIN_CONFIG_LEVEL;
 		argument = 1;
 	}
 
@@ -3188,7 +3188,7 @@ static void rockchip_set_gpio(struct rockchip_pin_bank *bank,
 	enum pin_config_param param = pinconf_to_config_param(config);
 	struct gpio_chip *gpio;
 
-	if (param != PIN_CONFIG_OUTPUT && param != PIN_CONFIG_INPUT_ENABLE)
+	if (param != PIN_CONFIG_LEVEL && param != PIN_CONFIG_INPUT_ENABLE)
 		return;
 
 	gpio = of_gpio_get_chip_by_alias(bank->name);
@@ -3202,7 +3202,7 @@ static void rockchip_set_gpio(struct rockchip_pin_bank *bank,
 	}
 
 	switch (param) {
-	case PIN_CONFIG_OUTPUT:
+	case PIN_CONFIG_LEVEL:
 		gpio->ops->direction_output(gpio, pin_num,
 					    pinconf_to_config_argument(config));
 		break;
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index dd5a70c6d295..f0cfcc11d80f 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -289,7 +289,7 @@ static int stm32_gpio_set_config(struct gpio_chip *chip,
 	case PIN_CONFIG_BIAS_PULL_DOWN:
 		__stm32_pmx_set_bias(bank->base, gpio, STM32_PIN_PULL_DOWN);
 		break;
-	case PIN_CONFIG_OUTPUT:
+	case PIN_CONFIG_LEVEL:
 		__stm32_pmx_gpio_output(bank->base, gpio, arg);
 		break;
 	default:
diff --git a/include/linux/pinctrl/pinconf-generic.h b/include/linux/pinctrl/pinconf-generic.h
index 9214258ffac4..3c79f2ed61db 100644
--- a/include/linux/pinctrl/pinconf-generic.h
+++ b/include/linux/pinctrl/pinconf-generic.h
@@ -79,9 +79,13 @@
  *	passed in the argument on a custom form, else just use argument 1
  *	to indicate low power mode, argument 0 turns low power mode off.
  * @PIN_CONFIG_MODE_PWM: this will configure the pin for PWM
- * @PIN_CONFIG_OUTPUT: this will configure the pin as an output and drive a
- * 	value on the line. Use argument 1 to indicate high level, argument 0 to
- *	indicate low level. (Please see Documentation/driver-api/pin-control.rst,
+ * @PIN_CONFIG_LEVEL: setting this will configure the pin as an output and
+ *	drive a value on the line. Use argument 1 to indicate high level,
+ *	argument 0 to indicate low level. Conversely the value of the line
+ *	can be read using this parameter, if and only if that value can be
+ *	represented as a binary 0 or 1 where 0 indicate a low voltage level
+ *	and 1 indicate a high voltage level.
+ *	(Please see Documentation/driver-api/pin-control.rst,
  *	section "GPIO mode pitfalls" for a discussion around this parameter.)
  * @PIN_CONFIG_OUTPUT_ENABLE: this will enable the pin's output mode
  * 	without driving a value there. For most platforms this reduces to
@@ -127,7 +131,7 @@ enum pin_config_param {
 	PIN_CONFIG_INPUT_SCHMITT_ENABLE,
 	PIN_CONFIG_MODE_LOW_POWER,
 	PIN_CONFIG_MODE_PWM,
-	PIN_CONFIG_OUTPUT,
+	PIN_CONFIG_LEVEL,
 	PIN_CONFIG_OUTPUT_ENABLE,
 	PIN_CONFIG_OUTPUT_IMPEDANCE_OHMS,
 	PIN_CONFIG_PERSIST_STATE,
-- 
2.47.3



