Delivery-date: Mon, 17 Nov 2025 18:14:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL2oW-0022yF-04
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 18:14:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL2oV-0002P9-Bt
	for lore@pengutronix.de; Mon, 17 Nov 2025 18:14:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Og9DXWuJp59kHOFdsEQH9Ugbhqh4B8DG6JIWafbdImw=; b=4uYY6vwOOZ7IxbVH0D1Nl4nwVv
	dBROh0IPxjiZvKwGjVPZHEdkP83BzZnvkQOb0e2HoyQLeq5ClxKlbiGpXDXuLPRMM6dk0Tp/25nc/
	PoGSagBuqN2GiRCRuXrnVtrEudEidP580iiDNdi9bw2PlnTpvLextDHMztcN6eZLZ6qpGnamHPhvR
	fkpaG6L377QTw38y/3whSce7TuQuYs+vxKcjvmYInZgRo/QJhBpugY5O7/n6HL5ZFJAoloJSdDYNu
	GlhWTCP8mNDYm9lijcIgjGY68Qpao6MuEeNPkynHT4Wy41K9HkaAzoKqSCZnuwdpR23vyB7y1tuas
	7/P1RXGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL2nv-0000000GW9f-3u3Z;
	Mon, 17 Nov 2025 17:14:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL2nu-0000000GW99-0PcE
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 17:14:15 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vL2ns-0002Dd-3R; Mon, 17 Nov 2025 18:14:12 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 17 Nov 2025 18:14:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAN1XG2kC/3WNywqDMBBFf0Vm3RQzPpCu+h8iEs1EByRKYoNF8
 u+N7rs8F865J3hyTB5e2QmOAntebQJ8ZDDOyk4kWCcGzLGSUqLYl9APbHV/iWoRQzNgqWqjS5V
 DsjZHho+72HaJZ/b76r73QZDX+r8VpJCiLprRIGJVFeq9kZ0+u1stH09N0MUYfyflOFazAAAA
X-Change-ID: 20251112-tlv_bind_serial-b8b24a6fd4a0
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=4054; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=SBe8CbMEbLRgsUwI1EHEx4e+VZgHejsCgvSXNnVh1WE=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsiUDn9cVvQgO/l2zJ59k6pEDDfqsLEue7eSbXbKHyX2t
 IMP2q5M6yhlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAExEh5Phv1dczBXnrRpfw7Zt
 nWj9UJlx8gTflc5nvWfqn57z+vucefYM/0yPfdrUHKohwTxzzUtZ//zDp32P8z0t3/S73jA8o2W
 fHhMA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_091414_140309_70809FC3 
X-CRM114-Status: GOOD (  15.48  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Particularly when using secure boot with signed TLVs, it may be required
to issue and sign TLVs for specific units. As typically all units of a
board are compiled to validate TLVs against the same key, a "binding"
mechanism is needed if interchange of TLVs across those units must be
prevented. This mapping binds against the UID of the SoC, rendering a
signed TLV with such a field invalid for all but the one unit.

When generating TLVs that use this mapping, the exact case-sensitive
string representation of the SoC UID must be taken into account.

Add the special mapping tlv_bind_soc_uid that aborts TLV parsing if the
supplied string does not match the SoC UID number.

Include this mapping in barebox_tlv_v1_mappings with tag 0x0024 to make
it available in testing and in other setups using the generic tlv
parsers.

Set up tlv_register_default as a late initcall so that it's loaded after
the SoC UID was initialized.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- Switch to using barebox_get_soc_uid and rename and reword everything
  accordingly (serial number -> soc uid)
- Init tlv_register_default as late_initcall instead of device_initcall
- Link to v1: https://lore.barebox.org/barebox/20251112-tlv_bind_serial-v1-1-638cf222553a@pengutronix.de
---
 common/tlv/barebox.c | 18 +++++++++++++++++-
 include/tlv/tlv.h    |  1 +
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
index 24de3eeaaa..fdba9fa2a5 100644
--- a/common/tlv/barebox.c
+++ b/common/tlv/barebox.c
@@ -1,8 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#include "barebox-info.h"
 #include <common.h>
 #include <net.h>
 #include <tlv/tlv.h>
+#include <param.h>
+#include <string.h>
+
 
 int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
 {
@@ -16,6 +20,16 @@ int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len,
 	return 0;
 }
 
+int tlv_bind_soc_uid(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	char *tlv_serial = basprintf("%.*s", len, val);
+
+	if (streq_ptr(tlv_serial, barebox_get_soc_uid()))
+		return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;
+
+	return -EACCES;
+}
+
 int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
 {
 	int i;
@@ -169,6 +183,8 @@ struct tlv_mapping barebox_tlv_v1_mappings[] = {
 	{ 0x0011, tlv_handle_eth_address, "ethernet-address" },
 	/* A sequence of multiple Ethernet addresses */
 	{ 0x0012, tlv_handle_eth_address_seq, "ethernet-address" },
+	/* Reject TLVs if device serial number string does not match CPU serial */
+	{ 0x0024, tlv_bind_soc_uid, "bound-soc_uid"},
 	{ /* sentintel */ },
 };
 
@@ -212,4 +228,4 @@ static int tlv_register_default(void)
 	}
 	return 0;
 }
-device_initcall(tlv_register_default);
+late_initcall(tlv_register_default);
diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
index 536f61646c..54e3afed45 100644
--- a/include/tlv/tlv.h
+++ b/include/tlv/tlv.h
@@ -37,6 +37,7 @@ extern int tlv_format_hex(struct tlv_device *dev, struct tlv_mapping *map, u16 l
 extern int tlv_format_mac(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
 extern int tlv_format_blob(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
 extern int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+extern int tlv_bind_soc_uid(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
 extern int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
 extern int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
 

---
base-commit: bafc52d7dc93accb213271e3e5c267c4335d8cb2
change-id: 20251112-tlv_bind_serial-b8b24a6fd4a0

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



