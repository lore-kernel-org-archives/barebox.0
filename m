Delivery-date: Mon, 04 Aug 2025 17:32:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAV-006z5u-3D
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAU-0006Ex-EC
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y2kp3a1QuwzawVC4kp09hWmCsq7BO8C+9WPl6SamWnU=; b=P7AXaOIeK0R/XqitAwRHQoHmn8
	Hdrbypw792A1nbOJG0L5AFcaGECUofp791GgT2EwDC5g/Xn/m5E1FrgTVQXtkCghukxByoYUfN6io
	RlMTPVhQDHO6AmeNvZ/0SCq70bLVoK0CGiWfYKS0O5KBslh3KRJDQPM47dDYKZhDKEXvlgGVa4sV8
	i7FRnQ49wffQdKDowHGxAMbXf6uQdJm3tvQhBRIxUDRp6nE8+RW+IHusUp/kHifKZN1chxZLIr8WU
	gpGt3YFTqLSyowXxaAr7EcDiomiloKbJ+6XrA+HLHbetMMjlNXHjP+jkoRmI5orFOy2/3pV1OWPQe
	NrSira2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9j-0000000Anrx-1KyD;
	Mon, 04 Aug 2025 15:31:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000AgmH-1jiB
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-EQ; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:36:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-8-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_530929_B5730055 
X-CRM114-Status: GOOD (  13.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/15] eeprom: at24: fix device name handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The nvmem_core already handles the ids/numbering, there is no need for
the driver to do it too. Furthermore it's wrong because the final device
would be: eeprom00 instead of eeprom0.

While on it fix the alias name handlng too since the device is never
named as described by the alias, but 'alias<ID>'. Since the
nvmem_core supports NVMEM_DEVID_{NONE,AUTO}, pass this information to
the core so the name would be: 'alias'.

Also while on it, make devname a 'const char *' pointer since the name is
allocated later on by the dev_set_name() during the nvmem_register()
call.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/eeprom/at24.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 3054709ec055665a82b22c1b210a2bfc0910ca94..0a9aa75cf1dd63f6f97e90509b76e25d04ec361d 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -371,7 +371,7 @@ static int at24_probe(struct device *dev)
 	struct at24_data *at24;
 	int err;
 	unsigned i, num_addresses;
-	char *devname;
+	const char *devname;
 	const char *alias;
 
 	if (dev->platform_data) {
@@ -425,16 +425,10 @@ static int at24_probe(struct device *dev)
 	at24->num_addresses = num_addresses;
 
 	alias = of_alias_get(dev->of_node);
-	if (alias) {
-		devname = xstrdup(alias);
-	} else {
-		err = cdev_find_free_index("eeprom");
-		if (err < 0) {
-			dev_err(&client->dev, "no index found to name device\n");
-			goto err_device_name;
-		}
-		devname = xasprintf("eeprom%d", err);
-	}
+	if (alias)
+		devname = alias;
+	else
+		devname = "eeprom";
 
 	writable = !(chip.flags & AT24_FLAG_READONLY);
 
@@ -489,6 +483,7 @@ static int at24_probe(struct device *dev)
 	at24->nvmem_config.stride = 1;
 	at24->nvmem_config.word_size = 1;
 	at24->nvmem_config.size = chip.byte_len;
+	at24->nvmem_config.id = alias ? NVMEM_DEVID_NONE : NVMEM_DEVID_AUTO;
 
 	at24->nvmem = nvmem_register(&at24->nvmem_config);
 	err = PTR_ERR_OR_ZERO(at24->nvmem);
@@ -505,7 +500,6 @@ static int at24_probe(struct device *dev)
 	if (gpio_is_valid(at24->wp_gpio))
 		gpio_free(at24->wp_gpio);
 	kfree(at24->writebuf);
-err_device_name:
 	kfree(at24);
 err_out:
 	dev_dbg(&client->dev, "probe error %d\n", err);

-- 
2.39.5



