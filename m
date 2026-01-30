Delivery-date: Fri, 30 Jan 2026 12:50:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vln0u-006yIz-1L
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 12:50:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vln0t-0003Zw-2y
	for lore@pengutronix.de; Fri, 30 Jan 2026 12:50:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bwtQNcxaBa6cIZBmVHsavHU9PbaTb2VVbapUjs17xgE=; b=O16lfnSqREU9c3Gx1CxdVp5DPq
	qOcFp6wg/qzu60DzvIwamNFQR6W7VPHw84fM1qrfHtt/K57Qrt56x/dm9z1niPNRV1qL6Vb25/Njg
	LicD2ZLX5/PV6mVirRTc4kdAhXX6Awc76q1n4Y+sSrJ+iRHq/WBmYjjSVjuN+RN65uFOva8xxi5cM
	0GDs+l5BSfKLdFUngqrfpryDsNJZwRke5x/wIc6d/zvZnMwVUbiHBEoahorDRDrgOKiA12gbN4Qzz
	VTWZ3bKtkVMnG03xNYnHQGgFuE0asCb+rzvE8Apr8TcI/3RsH/5uXnHaYFQRBTSrUHvK7brkCyxDi
	imPg2Znw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vln0C-00000001Rwf-1fr0;
	Fri, 30 Jan 2026 11:49:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vln07-00000001RwC-1yWf
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 11:49:26 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vln03-0003Ud-Il; Fri, 30 Jan 2026 12:49:19 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 30 Jan 2026 12:49:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-tlveth-v2-1-895d3a4d0759@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIALeafGkC/2XMQQ6DIBCF4auYWZdGsMXYlfdoXIAOMkkDBiixM
 dy91G2X/8vLd0DEQBjh0RwQMFMk72qISwOzVW5FRkttEK2QLRcDS6+MybKb0cMiZtkrY6Cet4C
 G9hN6TrUtxeTD53Qz/61/ROaMMy256Po7qk6bcUO3vlPwjvbrgjCVUr4PCC/PoQAAAA==
X-Change-ID: 20260129-tlveth-4fb9d2c67aff
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=6825; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=+VsUSMmU01BjQik/Gfd35C/4D9M5ewNzjk2Dbl6P0a4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsismbXbh3MH+0bPxw/7F5ZxtzjnP2Zhm2y+3ebiUe9qp
 hfRDRM9OkpZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABNJv87wV/SX7owbB71P5z++
 zuewXCeI/fseKT9X4cOLdymzTRY7Xs/I8HtndcvxjkpBnfu6yau2yP2qWT3dvuDp/BfrPSRXGlx
 s5AEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_034923_695756_DD7F640A 
X-CRM114-Status: GOOD (  16.16  )
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
Subject: [PATCH v2] common: tlv clarify the difference between mac list and
 sequence
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The tlv_handle_eth_address (here 0x001) and tlv_handle_eth_address_seq
(here 0x0012) correspond to the mac-list and mac-sequence formats
respectively.

A single MAC address as well as a list of MAC-Addresses is to be
generated using "mac-list" and handled by tlv_handle_eth_address, while
-sequence/_seq is a special case of generating multiple sequential
addresses.

This is under-documented and set up in a confusing way.

Even more confusingly, both examples in bareboxtlv-generator.py show
0x0012 as "tag".

To improve the situation in a backwards compatible way:

 - Correct and clarify comments in common/tlv/barebox.c
 - Re-order documentation and code in
   scripts/bareboxtlv-generator/bareboxtlv-generator.py so the order
   matches that in the barebox side, and the ordering of the default
   tags; and so that the more obvious case of single address or list
   comes first.
 - Fix tags in examples

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- Fix the tags in the inline examples of bareboxtlv-generator.py
- Link to v1: https://lore.barebox.org/barebox/20260129-tlveth-v1-1-b612375ea3bf@pengutronix.de
---
 common/tlv/barebox.c                               |  4 +--
 .../bareboxtlv-generator/bareboxtlv-generator.py   | 40 +++++++++++-----------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
index 88961942eb..6fdfe94028 100644
--- a/common/tlv/barebox.c
+++ b/common/tlv/barebox.c
@@ -186,9 +186,9 @@ struct tlv_mapping barebox_tlv_v1_mappings[] = {
 	{ 0x0007, tlv_format_str, "pcba-serial-number"},
 	/* Printed Circuit Board Assembly hardware release */
 	{ 0x0008, tlv_format_str, "pcba-hardware-release"},
-	/* A single Ethernet address */
+	/* A list of Ethernet addresses or a single Ethernet address */
 	{ 0x0011, tlv_handle_eth_address, "ethernet-address" },
-	/* A sequence of multiple Ethernet addresses */
+	/* A sequence of subsequent Ethernet addresses, by number and starting address */
 	{ 0x0012, tlv_handle_eth_address_seq, "ethernet-address" },
 	/* Reject TLV if supplied binary data does not match UID SoC register */
 	{ 0x0024, tlv_bind_soc_uid, "bound-soc-uid"},
diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
index 1fd5a45d43..2eba0aeb23 100755
--- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
+++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
@@ -267,6 +267,14 @@ class FactoryDataset:
             |    tag: 0x0005
             |    format: decimal
             |    length: 1
+        * mac-list:
+          - A list of MAC addresses or a signle MAC address
+          - Input data must be an iterable of MAC addresses: (first_mac: int, second_mac: int, ...)
+          - MAC-addresses are represented as python ints
+          - Schema example:
+            |  ethernet-address:
+            |    tag: 0x0011
+            |    format: "mac-list"
         * mac-sequence:
           - Describes a consecutive number of MAC addresses
           - Contains a starting address and a count
@@ -276,14 +284,6 @@ class FactoryDataset:
             |  ethernet-address:
             |    tag: 0x0012
             |    format: "mac-sequence"
-        * mac-list:
-          - A list of MAC addresses
-          - Input data must be an iterable of MAC addresses: (first_mac: int, second_mac: int, ...)
-          - MAC-addresses are represented as python ints
-          - Schema example:
-            |  ethernet-address:
-            |    tag: 0x0012
-            |    format: "mac-list"
         * linear-calibration
           - Linear calibration data for analog channels
           - Input data must be an iterable of floats: (c1: float, c2: float, ...)
@@ -346,6 +346,12 @@ class FactoryDataset:
                     raise ValueError(f"Decimal {name} has invalid len {fmtl}. Must be in [1, 2, 4, 8]!")
                 bin = abs(int(value))
 
+            elif tag_format == "mac-list":
+                bin = b""
+                for mac in value:
+                    bin += struct.pack(">Q", mac)[2:]
+                fmt = f"{len(value) * 6}s"
+
             elif tag_format == "mac-sequence":
                 if len(value) != 2:
                     raise ValueError(f"mac-sequence {name} must be in format (base_mac: int, count: int)")
@@ -353,12 +359,6 @@ class FactoryDataset:
                 mac = struct.pack(">Q", value[0])[2:]
                 bin = struct.pack(">B6s", value[1], mac)
 
-            elif tag_format == "mac-list":
-                bin = b""
-                for mac in value:
-                    bin += struct.pack(">Q", mac)[2:]
-                fmt = f"{len(value) * 6}s"
-
             elif tag_format == "calibration":
                 bin = b""
                 if len(value) != tag["length"]:
@@ -465,12 +465,6 @@ class FactoryDataset:
                 value = bin[data_ptr : data_ptr + tag_len].decode("UTF-8")  # noqa E203
             elif tag_schema["format"] == "bytes":
                 value = bin[data_ptr : data_ptr + tag_len].hex()
-            elif tag_schema["format"] == "mac-sequence":
-                if tag_len != 7:
-                    raise ValueError(f"Tag {name} has wrong length {hex(tag_len)} but expected 0x7.")
-                count, base_mac = struct.unpack_from(">B6s", bin, data_ptr)
-                base_mac = struct.unpack(">Q", b"\x00\x00" + base_mac)[0]
-                value = [base_mac, count]
             elif tag_schema["format"] == "mac-list":
                 if tag_len % 6 != 0:
                     raise ValueError(f"Tag {name} has wrong length {hex(tag_id)}. Must be multiple of 0x6.")
@@ -479,6 +473,12 @@ class FactoryDataset:
                     mac = struct.unpack_from(">6s", bin, data_ptr + int(i * 6))[0]
                     mac = struct.unpack(">Q", b"\x00\x00" + mac)[0]
                     value.append(mac)
+            elif tag_schema["format"] == "mac-sequence":
+                if tag_len != 7:
+                    raise ValueError(f"Tag {name} has wrong length {hex(tag_len)} but expected 0x7.")
+                count, base_mac = struct.unpack_from(">B6s", bin, data_ptr)
+                base_mac = struct.unpack(">Q", b"\x00\x00" + base_mac)[0]
+                value = [base_mac, count]
             elif tag_schema["format"] == "calibration":
                 if tag_len % 4 != 0:
                     raise ValueError(f"Tag {name} has wrong length {hex(tag_id)}. Must be multiple of 0x4.")

---
base-commit: 378bc32467af0afbbcb9d9e3cc1bfd5fb429a826
change-id: 20260129-tlveth-4fb9d2c67aff

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



