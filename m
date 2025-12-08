Delivery-date: Mon, 08 Dec 2025 13:01:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvu-009CjC-1j
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:01:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvt-0002jJ-Un
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:01:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=USU5ZAZry1MswHdoY+B07gaPMCGP2o5s3XsXmbaAIVM=; b=Q3GB5z+Ycy5eoSqhehLKQFEaH9
	mfmwrJxTF+896CKyDBG7s5wads9gzeA6PtdWuhgLes9mGJ514BrjoW2Kk7pTsZ5yj1L679nGulyJ1
	KiGPPBa19WSozKUBetyiRAT5Wq2tvWpnS8+/KnaHRB37HSRFZvHqyCdHhUYcRZjsgekv8PDLl5fiH
	IoUtzZmxs2XaSMTZDArNsDnuq+UzDPHrDUF59iwPJ7wXsEYAyGDs1JKyqZ+rxYXXDH+Yq3mif+oPC
	RYm8JLQobrPu6BIeghmPAbAbqS1lCLx3D6G/Tzd2uYq95w1vzGJhFJ2PsBrMBduOL9TvFrZyvcI/L
	G97aSkTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvN-0000000D2JT-2VSX;
	Mon, 08 Dec 2025 12:01:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvG-0000000D2Gt-1FtE
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:01:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-0002VS-9b; Mon, 08 Dec 2025 13:00:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-004bia-0E;
	Mon, 08 Dec 2025 13:00:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-000000027w4-00EI;
	Mon, 08 Dec 2025 13:00:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Dec 2025 13:00:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251208-nvmem-eeprom-v1-2-41ba588e2f3a@pengutronix.de>
References: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
In-Reply-To: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765195255; l=1754;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=j02PMmCcJb2W9bx+BS8yCu/G1dz265WWrztQISLAytQ=;
 b=ek22AeXobZljb7XkDlC6i6iAaM1PqcaxC5tWvAfYoDjjYHsqFo07hE9RV4XhVegFfUP7py+Yp
 uQ64KcX8WDLDPd7wGqbPi0IpDYrtW95hmx6H5HJmrY3R16HoaLbVmMd
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_040058_370244_BF3B297E 
X-CRM114-Status: GOOD (  12.39  )
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
Subject: [PATCH 2/4] nvmem: fix device name setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For the nvmem device ID it was only possible to specify NVMEM_DEVID_NONE
which translates to DEVICE_ID_SINGLE or NVMEM_DEVID_AUTO which
translates to DEVICE_ID_DYNAMIC. All other values default to
DEVICE_ID_DYNAMIC.

Explicitly allow to set a fixed device ID so that the caller can fully
specify the name under which the new nvmem device appears. The special
case is when no config->name is given. In this we use "nvmem" as device
name, but we also have to ignore config->id.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/core.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index a96aaf0b5a7215d05e976133aacfee1fdf9c36f7..8e1cf400e5d83ad6d53d21a705913cee72bfd4ab 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -487,15 +487,23 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
 
-	dev_set_name(&nvmem->dev, "%s", config->name ? : "nvmem");
-	switch (config->id) {
-	case NVMEM_DEVID_NONE:
-		nvmem->dev.id = DEVICE_ID_SINGLE;
+	if (config->name) {
+		dev_set_name(&nvmem->dev, "%s", config->name);
+
+		switch (config->id) {
+		case NVMEM_DEVID_NONE:
+			nvmem->dev.id = DEVICE_ID_SINGLE;
+			break;
+		case NVMEM_DEVID_AUTO:
+			nvmem->dev.id = DEVICE_ID_DYNAMIC;
+			break;
+		default:
+			nvmem->dev.id = config->id;
 		break;
-	case NVMEM_DEVID_AUTO:
-	default:
+		}
+	} else {
+		dev_set_name(&nvmem->dev, "nvmem");
 		nvmem->dev.id = DEVICE_ID_DYNAMIC;
-		break;
 	}
 
 	rval = register_device(&nvmem->dev);

-- 
2.47.3



