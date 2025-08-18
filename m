Delivery-date: Mon, 18 Aug 2025 20:31:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dP-001ySJ-1r
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dL-0003ra-HX
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BAp4sAuabadwDSn0qAQb8vBm+akvNi6FOKHzj6i+c+0=; b=f9D1FfQOt/0fqIlpVIgiGSmyZW
	hhhbw6ioFotnm6UtvGnIHjoeu3Ee0oM/bNvLOwDgEXiz19iTPP5KZTXR2OcYn4ZBpwY3eRFvgKzvC
	j8WLi18Nx1CkC7uX19rb/jcx8hizFJAz05HixmS1w2vMx7y4LIfjgaJX9DP74f45knPKv2oVCU9eM
	J6dmlxg6MQPz0olXUu1wpBjK1AISSKBHLVTuypp3qvJyKz9a+aB5g2/3GX4OCVMpM0YfbDplYx+8c
	R4tYnRffoV0MVOlZNcJu/TOPmB4vsvH3EB4MHVy4z0nHZw3br+R/8Ar+liZh2Y8Oc2nVWE+P5hVVf
	GVYbWxpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4cm-00000008LNI-1N8M;
	Mon, 18 Aug 2025 18:30:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uX-00000008F5Q-1rRp
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=BAp4sAuabadwDSn0qAQb8vBm+akvNi6FOKHzj6i+c+0=; b=pTQCLMNJbbF+DPdN7rixOavXeR
	QpGzv0wAfel27CRZqOlxja5PegQvtNZ5XwtTLudnWmiF7Zo7rYq6iR6Nf2YjgoOB86HPu6bSj3Uqn
	UPRINFuCeXoxKWpqwFOOe/i4ed93+VdHb6H4T3IHslU7sf5xZHppC6LI4x0nGqmZmDjGyYrO1jvpV
	b4iWLmTffwRf2dBaglJNq7mZP3GQmBNvaNFnhz/Vnww0wp6lV6jIyAJ2W4AabmqD1FLYlHLrac1KJ
	jR+6h8IvVttRuT/pY97cbogyyksyS2/TUKZXNPQuSK3dAkhAKkgZ/KKAHESspk3TwQ8IcgD3PZd+v
	F9KTGZYA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uT-0000000HStC-18AN
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:44 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-RG; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-8-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184441_547348_8A3FCD99 
X-CRM114-Status: GOOD (  13.88  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/15] eeprom: at24: fix device name handling
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
index ffd3376a156694a53c49ddd4f9a6669cccfac215..667d111b349d6941c757da3c6eb46ad7f2bb422e 100644
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
@@ -423,16 +423,10 @@ static int at24_probe(struct device *dev)
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
 
@@ -487,6 +481,7 @@ static int at24_probe(struct device *dev)
 	at24->nvmem_config.stride = 1;
 	at24->nvmem_config.word_size = 1;
 	at24->nvmem_config.size = chip.byte_len;
+	at24->nvmem_config.id = alias ? NVMEM_DEVID_NONE : NVMEM_DEVID_AUTO;
 
 	at24->nvmem = nvmem_register(&at24->nvmem_config);
 	err = PTR_ERR_OR_ZERO(at24->nvmem);
@@ -503,7 +498,6 @@ static int at24_probe(struct device *dev)
 	if (gpio_is_valid(at24->wp_gpio))
 		gpio_free(at24->wp_gpio);
 	kfree(at24->writebuf);
-err_device_name:
 	kfree(at24);
 err_out:
 	dev_dbg(&client->dev, "probe error %d\n", err);

-- 
2.39.5



