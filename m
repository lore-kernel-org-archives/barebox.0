Delivery-date: Mon, 08 Dec 2025 13:01:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvw-009Cjw-04
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:01:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvv-0002kJ-EQ
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:01:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7YTEj+sWQtQwI4espfgOa091zzwDVHD6GLREyIHoAyk=; b=AKunbPQVkuQBhHaiqLlF1wjKDl
	VKI/pM6K1z1LYW6JjlgZ0ZiOhvHaYJCiiuul/fNCL1PoK1PCX4HVbpxlXecX/i6UCPnpbv6pbR7nE
	5d0aze5Sf27yrwl4L5k//qnDO0ur/N0sMFgn3G4AzSRI5F2lnuH2KggCm4wytlkmg0foYkK97XxlS
	UE9UpQqx6DtOiCGvSU8SKaJGzaUKodVGWGFTxYY7h1HM2cqR+XiAYSIBEkEqERjzSwS7uTzfcQkOV
	rw7S2Rz7dkYlGGzdUWADnSL8k0hLVUEsFpdyFcvy/i8qw64nvbX4x4+HXAiG6nTzYxQOhoDnIGpzb
	d3z9GBpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvN-0000000D2JI-1IAs;
	Mon, 08 Dec 2025 12:01:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvG-0000000D2Gv-1Fr3
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:01:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-0002VU-Aq; Mon, 08 Dec 2025 13:00:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-004bie-0J;
	Mon, 08 Dec 2025 13:00:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-000000027w4-054s;
	Mon, 08 Dec 2025 13:00:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Dec 2025 13:00:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251208-nvmem-eeprom-v1-4-41ba588e2f3a@pengutronix.de>
References: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
In-Reply-To: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765195255; l=1694;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RgpmJ9NIOl2udhhYU9hsg1wApo7FeQvRuM8qFvOmypU=;
 b=taeNm6eej2nbgYwdWKGqOkC23eldjGZcFK8Lhqv9/6pIxquGvB6GPtUrPOCSeOHnQ54GoLpuD
 MvpChCXNg3dDvt6FhxPNr4N4eT58HZTHzv/nnlBVbMAEhGS2Sypd4IA
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_040058_371252_7C73A3DF 
X-CRM114-Status: GOOD (  11.65  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] eeprom: at24: reserve EEPROM names which have an alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An EEPROM which doesn't have an alias will be registered as "eeprom0".
When another EEPROM is probed which has "eeprom0" as alias it will fail
to probe due to -EEXIST. Use of_alias_get_highest_id() to reserve
namespace for EEPROMs with aliases.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at24.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 667d111b349d6941c757da3c6eb46ad7f2bb422e..5dc19800970093fa8c95f36d58d47d8c1db6dcdc 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -369,7 +369,7 @@ static int at24_probe(struct device *dev)
 	struct at24_platform_data chip;
 	bool writable;
 	struct at24_data *at24;
-	int err;
+	int devid, err;
 	unsigned i, num_addresses;
 	const char *devname;
 	const char *alias;
@@ -423,10 +423,14 @@ static int at24_probe(struct device *dev)
 	at24->num_addresses = num_addresses;
 
 	alias = of_alias_get(dev->of_node);
-	if (alias)
+	if (alias) {
 		devname = alias;
-	else
+		devid = NVMEM_DEVID_NONE;
+	} else {
 		devname = "eeprom";
+		devid = get_free_deviceid_from(devname,
+					       of_alias_get_highest_id(devname) + 1);
+	}
 
 	writable = !(chip.flags & AT24_FLAG_READONLY);
 
@@ -481,7 +485,7 @@ static int at24_probe(struct device *dev)
 	at24->nvmem_config.stride = 1;
 	at24->nvmem_config.word_size = 1;
 	at24->nvmem_config.size = chip.byte_len;
-	at24->nvmem_config.id = alias ? NVMEM_DEVID_NONE : NVMEM_DEVID_AUTO;
+	at24->nvmem_config.id = devid;
 
 	at24->nvmem = nvmem_register(&at24->nvmem_config);
 	err = PTR_ERR_OR_ZERO(at24->nvmem);

-- 
2.47.3



