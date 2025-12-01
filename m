Delivery-date: Mon, 01 Dec 2025 15:13:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ4eQ-006qEL-2W
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 15:13:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ4eQ-00087Y-7j
	for lore@pengutronix.de; Mon, 01 Dec 2025 15:13:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lMthcoSyjEqhMpES9WGgvuOREctoUlXuN1PQPtcCXtk=; b=2YPpF06+lWgpc1Jt3iwrASV6OR
	VD4kPGkL9oyDGcidzLVcjM27JpI2eJYLKN3T0cWhJVl+w2oK3/j0SSpiV9rpk7xEyJv9xTJbg03NT
	pOXaf4vTagHE/zlmVjwcVHhrmAUfJnYfhi3OZXQuZPehZldMs8Jk4J1wbl2EvqoZTtgA8sQ9PIP9G
	OZQ+OCYm21fgsBuO7M9tDR63IpovRAc42rxzoq7Ajw5wbLEakJJMVrgLccvWRtLI/XA2PFECHd7Jh
	jeqsX19VP/qetwy3BRLQoszjIkGHs/xrZci/zqIHkokNk9nYPJtFWOjTkpOmN0aRqUKN29QTmlhdz
	LSBWN97A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4e1-000000043tC-3x4P;
	Mon, 01 Dec 2025 14:12:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4dz-000000043sY-0sHe
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 14:12:48 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vQ4dx-000837-Ks; Mon, 01 Dec 2025 15:12:45 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 01 Dec 2025 15:12:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-tlv-hardening-v1-1-5dcaa5f7aed5@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAFqiLWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIwND3ZKcMt2MxKKU1LzMvHTdtBQDc2MLw6Rk4zQLJaCegqLUtMwKsHn
 RsbW1AKLM0jBfAAAA
X-Change-ID: 20251201-tlv-hardening-fd07381bc3f8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1204; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=GNQMmD59fKmSPhWsCh0vs7wDwzOgw5cMBmodCdnIzdM=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjUXRQblaCxPsbDPE/g2K8F1ye+uCDD/4DnA4tRiPfe6
 HP5wsflO0pZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABMRiWX4KzctjL1TWbDVeuPB
 kCuCTBNdTxfseTX1iPKunYpq6m9PvmFkeDZz4+Q5eyKOzDu+z1en9NTn6XXlxtG38pe+lH6xbuW
 Kdl4A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_061247_246754_5668F3CA 
X-CRM114-Status: UNSURE (   9.12  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] tlv: register_device() error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

register_device() returns 0 on success, or an error, which must be
handled appropriately.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Resolves coverity CID 584716 (Unchecked return value).
---
 common/tlv/bus.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/tlv/bus.c b/common/tlv/bus.c
index a59f8d297a..36a3022fdf 100644
--- a/common/tlv/bus.c
+++ b/common/tlv/bus.c
@@ -23,6 +23,7 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
 	const char *name = NULL;
 	struct device *dev;
 	static int id = 0;
+	int ret;
 
 	tlvdev = xzalloc(sizeof(*tlvdev));
 
@@ -46,7 +47,12 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
 
 	dev->device_node = of_new_node(tlv_parent_node, dev_name(dev));
 	dev->device_node->dev = dev;
-	register_device(dev);
+	ret = register_device(dev);
+	if (ret) {
+		pr_err("Failed to register device %s, %d\n", name, ret);
+		free(tlvdev);
+		return ERR_PTR(ret);
+	}
 
 	return tlvdev;
 }

---
base-commit: ec00fef65d808f8bc9c5655262b0e4f8ce2c4e92
change-id: 20251201-tlv-hardening-fd07381bc3f8

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



