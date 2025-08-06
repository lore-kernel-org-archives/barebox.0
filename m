Delivery-date: Wed, 06 Aug 2025 12:17:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujbD6-007bdx-23
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 12:17:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujbD6-00031c-3P
	for lore@pengutronix.de; Wed, 06 Aug 2025 12:17:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZWc3mltGtONtfyrxHFLQh+1ApAUdBP3ZUnDUtcGhLjU=; b=oITU8f8h3REDUJldbMsmU8FlKg
	Xg2u38Adwlu27x/qnqW2qgXhN/YNp3Xj/rCUybYR/JQdJkmH1lJcUkrqlwqoRxb6LPLmmRAUTr1L+
	7r2PyZCg3vIRIH27AeDmjhEhS3FObQTbTnErmOIHYgbewh2uLI+s4GvWVWWCw5Cszl+bJP5pb//+s
	UaAkv6vctCiLF8r7PImTcGLoJ5M4hJca4Zra3B1OAvNc+wiMZS5yC/9lG91mQmjr6o+ew0NSbYxsI
	UG3UYekHXMn350xb7gtXh5oyaoPDDzyHLR1OuVXFw3Fai/d6pRS1Bq8F/JRqgWhF1M+CO5uRmcwxG
	wTJibFcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbCU-0000000Es2p-3k27;
	Wed, 06 Aug 2025 10:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbBi-0000000ErzX-2tAy
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 10:16:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujbBh-0002oG-5U; Wed, 06 Aug 2025 12:16:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujbBg-00CBzb-39;
	Wed, 06 Aug 2025 12:16:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujbBg-00GEkW-2q;
	Wed, 06 Aug 2025 12:16:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Picard <david.picard@clermont.in2p3.fr>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 12:15:58 +0200
Message-Id: <20250806101559.3869005-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_031602_723359_0427F7CA 
X-CRM114-Status: GOOD (  13.52  )
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
Subject: [PATCH RFT v2 1/2] gpio: dw: support numbering via aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This device driver is OF-only, so reflect that in the Kconfig and have
it parse aliases if available to derive its id.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add missing prerequisite patch
---
 drivers/gpio/Kconfig   | 1 +
 drivers/gpio/gpio-dw.c | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 7caa1aa96eb3..17d5587ea8cf 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -201,6 +201,7 @@ config GPIO_TEGRA
 
 config GPIO_DESIGNWARE
 	tristate "Synopsys DesignWare GPIO driver"
+	depends on OF_GPIO
 	help
 	  Say Y or M here to build support for the Synopsys DesignWare APB
 	  GPIO block.
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index e6eba6b423f5..98668c0a2d54 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -114,6 +114,8 @@ static int dw_gpio_add_port(struct device *dev, struct device_node *node,
 	chip = xzalloc(sizeof(*chip));
 
 	chip->chip.ops = &dw_gpio_ops;
+
+	dev->id = of_alias_get_id(dev->device_node, "gpio");
 	if (dev->id < 0)
 		chip->chip.base = DEVICE_ID_DYNAMIC;
 	else
@@ -181,7 +183,7 @@ MODULE_DEVICE_TABLE(of, dwgpio_match);
 static struct driver dwgpio_driver = {
 	.name = "dw-apb-gpio",
 	.probe = dw_gpio_probe,
-	.of_compatible = DRV_OF_COMPAT(dwgpio_match),
+	.of_compatible = dwgpio_match,
 };
 
 postcore_platform_driver(dwgpio_driver);
-- 
2.39.5



