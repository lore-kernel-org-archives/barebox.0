Delivery-date: Tue, 20 Jan 2026 17:12:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viEKt-003RbJ-0a
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 17:12:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viEKs-0001Xc-2l
	for lore@pengutronix.de; Tue, 20 Jan 2026 17:12:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MZT7T53fzl6IYBCDDHhtYWGNB6ySOZI/80tWRZMgfJs=; b=YlWF9J0snd1oT/8aThQ65KSAoN
	8uVp0vIVhbF0iaWRMVj/GoYu42a358Oio5lQ6IU0ghN+gRK34H4EN6lXB3/DJCFrFcLQ7WXPo2DdJ
	Cl/ae/M15n2wU9Fcls6EhpmxiD26mCHj/OjZK6VWovi89i5K1g+mbXV9SGJ0aqbcZ6Ycya7UNu0dW
	cPIg3WZx4XRG7n1JcB5fmQVEQb+G+vYu/uuFbhV1rHB9PYpxJ0573sM9IIiMZJFbDjs7uMdz8Igib
	gHXkArMhMCX1fFhFkiybyda53C4Ilm3fRLuyZR6pf+CqISZZnOPADIDBcBbgASA7UAE8j7a/k53V3
	VNvlCp9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKN-000000048OF-3QyN;
	Tue, 20 Jan 2026 16:11:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKM-000000048Nn-1Hrs
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 16:11:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=MZT7T53fzl6IYBCDDHhtYWGNB6ySOZI/80tWRZMgfJs=; b=bVeADiDiVTx/XQKjNdkZ0Y0JhJ
	ubH4JqWznZd3+HNU0DWzG+NcmfQ7KwcGqXk10zzlLOQjYoPF/gRSAstt4AX8we4Dqrm8x7TwY7Rq2
	fAQTX6X8eir418ET7teNbhJmrLd3BFH89CDplJytOd2kY7EPAB6CdBqPerMnycoVhvQQnTKgKgHd+
	xBWbtKMuGLdqMZ9ETryjzpfuauDvPo1U9CxdLEsmQfrm7a/Gz2n3yIzpTQU4RBVyaWrnOhPIXFNmv
	VYnco6MX2BdaubMi2g6fBwCUVpuyFoxypVvIq7BDqaPQ3ARoEmb7u9RZblQ6491oaF06g5wo9I08H
	Arsq83Qg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKI-0000000ENhO-0342
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 16:11:33 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1viEKH-0001Ie-E9; Tue, 20 Jan 2026 17:11:29 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 20 Jan 2026 17:11:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-tlv_bind_serial-v3-1-91db0e4b07fb@pengutronix.de>
References: <20260120-tlv_bind_serial-v3-0-91db0e4b07fb@pengutronix.de>
In-Reply-To: <20260120-tlv_bind_serial-v3-0-91db0e4b07fb@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3895; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=HPEf7cwogEXaJoYdOuEEdY40IK/fHhqykYN/jAOmLgo=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjMX2mw9kdag3gF3/l1Gtea14tO2bF1Vt2qyh2TL/X+O
 f/U47LrhI5SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBEVmgx/K+etf+NX0Z0GNPT
 /73xqlmiritKC34drbwS8T0nb/2p2vOMDIuEupy4w2/91RC5qVHs7329yyZH8brOyw5dlz+RUvH
 MfAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_161130_196527_1359F85F 
X-CRM114-Status: GOOD (  16.76  )
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
Subject: [PATCH v3 1/2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Particularly when using secure boot with signed TLVs, it may be required
to issue and sign TLVs for specific units. As typically all units of a
board are compiled to validate TLVs against the same key, a "binding"
mechanism is needed if interchange of TLVs across those units must be
prevented. This mapping binds against the UID of the SoC, rendering a
signed TLV with such a field invalid for all but the one unit.

When generating TLVs that use this mapping, the exact binary
representation of the SoC UID must be provided as present in the
respective registers.

Add the special mapping tlv_bind_soc_uid that aborts TLV parsing if the
supplied binary does not match the SoC UID register value.

Include this mapping in barebox_tlv_v1_mappings with tag 0x0024 to make
it available in testing and in other setups using the generic tlv
parsers.

Set up tlv_register_default as a late initcall so that it's loaded after
the SoC UID was initialized.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 common/tlv/barebox.c | 25 ++++++++++++++++++++++++-
 include/tlv/tlv.h    |  1 +
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
index 24de3eeaaa..88961942eb 100644
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
@@ -150,6 +154,23 @@ int tlv_format_dec(struct tlv_device *dev, struct tlv_mapping *map, u16 len, con
 	}
 }
 
+int tlv_bind_soc_uid(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	const void *soc_uid = 0;
+	size_t soc_uid_len = 0;
+
+	if (barebox_get_soc_uid_bin(&soc_uid, &soc_uid_len))
+		return -EACCES;
+
+	if (soc_uid && (size_t)len == soc_uid_len && !memcmp(val, soc_uid, len))
+		return tlv_format(dev, map, "%*phN", len, val);
+
+	dev_err(&dev->dev, "%s: tlv bound to SoC UID %*phN, got %*phN\n", __func__,
+		len, val, (int)soc_uid_len, soc_uid);
+
+	return -EACCES;
+}
+
 struct tlv_mapping barebox_tlv_v1_mappings[] = {
 	/* Detailed release information string for the device */
 	{ 0x0002, tlv_format_str, "device-hardware-release" },
@@ -169,6 +190,8 @@ struct tlv_mapping barebox_tlv_v1_mappings[] = {
 	{ 0x0011, tlv_handle_eth_address, "ethernet-address" },
 	/* A sequence of multiple Ethernet addresses */
 	{ 0x0012, tlv_handle_eth_address_seq, "ethernet-address" },
+	/* Reject TLV if supplied binary data does not match UID SoC register */
+	{ 0x0024, tlv_bind_soc_uid, "bound-soc-uid"},
 	{ /* sentintel */ },
 };
 
@@ -212,4 +235,4 @@ static int tlv_register_default(void)
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
 

-- 
2.51.2.535.g419c72cb8a



