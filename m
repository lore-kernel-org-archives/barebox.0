Delivery-date: Mon, 25 May 2026 13:48:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRTn1-003e4A-21
	for lore@lore.pengutronix.de;
	Mon, 25 May 2026 13:48:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRTn0-0000uK-Rc
	for lore@pengutronix.de; Mon, 25 May 2026 13:48:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qIqLlHnz+Z2fKyqhGsfIuSuIqgBuWn06nhAByMeHnl4=; b=ECxwPyF2RMTTrF1jMJdd9crX3A
	e/MlBo4Pt7rO3KVkhLBK2dtVM9bLqNGXTqz32RNon0tm3USVzEWV3oZj6oud6175eBiNDDdcM0aIR
	BqMvGzDtaB8S1YImfDhsm0apgiYuwGvtUo188l0NlBnsZnx6OI+Mn89/bZ71gkOb1Aw6ELLaNQca6
	Bm5XJL/ZCsSGlZTdSlLWwdDKZV5vDNbuo3oa6rq0LRksLic0+81l7xJvxbxUYtDd5vB0c9ToF4MZw
	ECF9FoCIp0HlJ5OZT5KE6VkUQsTbNFttOO7lQswwkTyYaeGri+X4LqbaYLU9P4cjYz2L/3EH4i42e
	T+ggtRKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRTlY-0000000H7rY-2jJ9;
	Mon, 25 May 2026 11:46:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRTlW-0000000H7qR-13by
	for barebox@lists.infradead.org;
	Mon, 25 May 2026 11:46:39 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wRTlS-0000il-R6; Mon, 25 May 2026 13:46:34 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 25 May 2026 13:45:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260525-short_nvmem_write-v1-1-ff741d6ff1d5@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHU2FGoC/yXMTQqEMAxA4atI1hZs0Tp4FRFRJ44RrJLUHxDvb
 keX3+K9EwSZUKCITmDcSGh2ATqOoBsa90NF32AwibFJZjIlw8y+dtuEU70zeVQf2xit097meQq
 hWxh7Op5nWb2WtR2x8/8RXNcN7WhUz3UAAAA=
X-Change-ID: 20260525-short_nvmem_write-86a2114f6774
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2249; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=nijIYq3tyWCKx6RkJ7qa6eMK2SkWPHoD3WaJm48YsxY=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsgSMZu1JJKfoeXW6uNvvVamPTz1Sqd668e5ns0Jv5wzF
 lQ6Zh/T7ChlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzkqzXD/+zlSze8bOta+sKk
 MyRlkajMxN+3/Kfv79q32Hlj56UV208y/DOeafj/2AXv7wxvokrtM4oeCUaxyf7PKku33Jhzzej
 NUW4A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_044638_294155_EE4747FE 
X-CRM114-Status: GOOD (  11.97  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] nvmem: core: Allow sub-register width nvmem_regmap_write()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The previous implementation of nvmem_regmap_write() required the
supplied value to be a multiple of the register size defined by the
driver ("expect users to observe alignment").

This is however not respected by nvmem cell functions
nvmem_cell_prepare_write_buffer()/__nvmem_cell_entry_write() which
prepare the value buffer based on the "bits" supplied in the devicetree,
resulting in EINVAL errors if an nvmem cell with "bits" spanning less
bytes than val_bytes = DIV_ROUND_UP(config->val_bits, 8) of the nvmem
driver.

To resolve this, accept buffers shorter than val_bytes, and place them
correctly with regard to endianness.

Not-Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Ahmad and me pair-programmed this on friday. Ahmad, can we have your
SoB?
---
 drivers/nvmem/regmap.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index 98e57909eb..22e667af17 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -12,16 +12,31 @@
 static int nvmem_regmap_write(void *ctx, unsigned offset, const void *val, size_t bytes)
 {
 	struct regmap *map = ctx;
+	unsigned int tmp;
 
-	/*
-	 * eFuse writes going through this function may be irreversible,
-	 * so expect users to observe alignment.
-	 */
-	if (bytes % regmap_get_val_bytes(map))
+	if (bytes > regmap_get_val_bytes(map)) {
+		if (bytes % regmap_get_val_bytes(map))
+			return -EINVAL;
+
+		return regmap_bulk_write(map, offset, val,
+					 bytes / regmap_get_val_bytes(map));
+	}
+
+	switch (bytes) {
+	case 1:
+		tmp = *(u8 *)val;
+		break;
+	case 2:
+		tmp = *(u16 *)val;
+		break;
+	case 4:
+		tmp = *(u32 *)val;
+		break;
+	default:
 		return -EINVAL;
+	}
 
-	return regmap_bulk_write(map, offset, val,
-				 bytes / regmap_get_val_bytes(map));
+	return regmap_write(map, offset, tmp);
 }
 
 static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes)

---
base-commit: f5956c772dc00837bad36fc66df8a53aae86558d
change-id: 20260525-short_nvmem_write-86a2114f6774

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



