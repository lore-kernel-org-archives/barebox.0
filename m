Delivery-date: Wed, 18 Feb 2026 13:43:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsgu4-00338q-0r
	for lore@lore.pengutronix.de;
	Wed, 18 Feb 2026 13:43:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsgu4-0004lM-KF
	for lore@pengutronix.de; Wed, 18 Feb 2026 13:43:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=txOEjyEfzH4/aAUuLtayMixTS35lmDPnjenFoKjBAps=; b=L5WOQnrRKzgZyq4XkxWXHzX6FZ
	85DAONSswdxQWruzwajDxtAIf/wlmwFsm465k1k3v92CxFG9jLC9dT+eLx6Z3my2v/Pi5Irq4koZD
	okWdLddfftWmjbUcffLpOGFzpJ3auD/slV/5XUMvinoPyTcNy8z3r9WD1d5sctYO/e1OYqtN0k5Lz
	xPaKuueVRWbA2r00IFonGTTknyIF8LSmagFAnDniCA0nVakCriXaZvYUF/DEjZ+TfKEtd74CFJYzO
	FXeoX33F3ZRzflkmejjoRDYpxArPUKy7HW008k8MwbCAwuY54xBekFLmRJum+eP+jF8oF0q9fXdIa
	sX2P1Slw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsgte-00000009nnP-1SyH;
	Wed, 18 Feb 2026 12:43:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsgtc-00000009nmi-07yx
	for barebox@lists.infradead.org;
	Wed, 18 Feb 2026 12:43:13 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vsgtZ-0004hW-2z
	for barebox@lists.infradead.org; Wed, 18 Feb 2026 13:43:09 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 Feb 2026 13:42:48 +0100
Message-ID: <20260218124307.2358552-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_044312_068759_F58AFE83 
X-CRM114-Status: UNSURE (   9.53  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] eeprom: at24: verify that chip is accessible during probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Perform a basic sanity check to verify that the EEPROM is actually
accessible by reading 1-byte. Linux does the same sanity check for all
non-ACPI platforms.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/eeprom/at24.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 06a2a4b22697..a08d42fe3e14 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -373,6 +373,7 @@ static int at24_probe(struct device *dev)
 	unsigned i, num_addresses;
 	const char *devname;
 	const char *alias;
+	u8 test_byte;
 
 	if (dev->platform_data) {
 		chip = *(struct at24_platform_data *)dev->platform_data;
@@ -487,6 +488,12 @@ static int at24_probe(struct device *dev)
 	at24->nvmem_config.size = chip.byte_len;
 	at24->nvmem_config.id = devid;
 
+	/* Perform a one-byte test read to verify that the chip is functional */
+	if (at24_read(at24, &test_byte, 0, 1) != 1) {
+		err = -ENODEV;
+		goto err_devfs_create;
+	}
+
 	at24->nvmem = nvmem_register(&at24->nvmem_config);
 	err = PTR_ERR_OR_ZERO(at24->nvmem);
 	if (err)
-- 
2.47.3



