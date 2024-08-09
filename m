Delivery-date: Fri, 09 Aug 2024 16:24:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXq-007rVL-10
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXo-0008Fg-Ii
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ClEQpdIbBn2VxW7Xg3pugLfZZHny5w7oV+9ZJxEcieg=; b=4wdLpdTw95C0jcVXRcAn0zXJ2G
	1/BYxfLW5EADVEb+CqfbrU3U+LX5kcrUT11DlYws4AD8AYYPARhiy5b7nYN7dddfHl7VKxw0uYZ7u
	4rFSG0SGRqypgUW/xFtlyOF+7UKFzF6S8sZqlciTdeAS+AghlDW/2XOsPrAsd7wmnQHcggkEaGS0/
	0mkwuWeXQEHe2oC6DIBjOZbOv5HUOeWD61mrRDyQ0G1TlhdoQ7tdNws49wEv9tZnUu5NEbbg9jYfc
	50i3VVQ7beEfFBhCNxTr0DwlzysBrVVbZbQZIzAnABo+WHbNHdFEgEEksyCfnv/0zpfDhayjP5tM+
	WbcyxxZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXM-0000000BWHO-163M;
	Fri, 09 Aug 2024 14:24:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXI-0000000BWEQ-21KP
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007oi-6p
	for barebox@lists.infradead.org; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-005geE-QK
	for barebox@lists.infradead.org; Fri, 09 Aug 2024 16:24:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-001K4s-2K
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 16:24:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  9 Aug 2024 16:23:54 +0200
Message-Id: <20240809142405.315244-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072408_543692_5C0ACBFA 
X-CRM114-Status: GOOD (  11.24  )
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
Subject: [PATCH 00/11] gpiolib: add support for OF GPIO configuration binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, GPIO bias configuration was done exclusively by pinctrl drivers.
All barebox pinctrl drivers work by consuming a device tree node with
a binding that differs from driver to driver and then applying the
configuration described within.

Neither GPIO or pinctrl node have any insight on what in particular is
being configured.

This is problematic when wanting to support following device tree
binding, which is so far being ignored:

  gpios = <&gpioe 7 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>;

This series enables support for this binding for gpio-keys on STM32
platforms. More support will follow in future when providers are
extended to support the gpio_ops::set_config operation and consumers are
switched to use the GPIO descriptor API.

Ahmad Fatoum (11):
  gpio: make gpio.h header self-contained
  gpiolib: permit GPIO drivers to implement struct gpio_ops::set_config
  pinctrl: stm32: implement generic struct gpio_ops::set_config
  gpiolib: turn request/active_low into bit flags
  gpiolib: don't use GPIO number API in of_hog_gpio
  gpiolib: store all OF flags into GPIO descriptor
  gpiolib: add support for OF GPIO configuration binding
  gpiolib: use dev_gpiod_get_index device node argument throughout
  gpiolib: export function to get struct gpio_desc from index
  input: gpio_keys: switch to GPIO descriptor API
  input: gpio-keys: request with label in DT if available

 drivers/gpio/Kconfig            |  14 ++
 drivers/gpio/gpiolib.c          | 254 +++++++++++++++++++++++++-------
 drivers/input/Kconfig           |   2 +-
 drivers/input/gpio_keys.c       |  69 +++++----
 drivers/of/Kconfig              |  15 ++
 drivers/pinctrl/Kconfig         |   1 +
 drivers/pinctrl/pinctrl-stm32.c |  41 ++++++
 include/gpio.h                  |   4 +
 include/linux/gpio/consumer.h   |  19 +++
 include/of_gpio.h               |   6 +
 10 files changed, 337 insertions(+), 88 deletions(-)

-- 
2.39.2



