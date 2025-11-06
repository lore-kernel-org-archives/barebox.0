Delivery-date: Thu, 06 Nov 2025 16:19:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lQ-00FyoE-0Z
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lL-0006hS-H3
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xlweRhJ7IF+DRaSjaeL78LowFpR3NWlG6L5cuRByCZo=; b=z9Qse6vD/hoPKWmRKDx22pnvkC
	qv2ccDih2bOitNeNuBTV6H+lrRb8eJYjKMi0tarFcqTBRoig9BKFVIBvGjIsLeBX+5OjZB5jHlkTG
	1YxlffY4oeGbWAck3T3cAYuQSowSAbDO6Me1sYgkh9hC4rcscAFlMcLnffFraLuv/XrdiZBHB3xAd
	j5BRhwZCQe8v5Es8LfnG5Oec/FgB2l+22nLXDrbCrFue5LcP+DwfnaxngRDpPVZDD7W/icvM0HmSq
	eotxBAGrRH5w8AIPC3pi+sI8ftajxjLQjJkSBP4/5+A2ylRKfsKBVGu/r//3AHoIJ7OYAe2LA2JGY
	MCMV96Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1ki-0000000FnJI-245g;
	Thu, 06 Nov 2025 15:18:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAd-0eaO
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:17 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kZ-0005tl-2A; Thu, 06 Nov 2025 16:18:11 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-10-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=7047; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=OcCgkugs4xxjQUZN9BiZIYQdfHTPB9n0YK33vWKOBNI=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aNvXpHqoCW1U3zJ3vItOTHK0jcveD0zmHdaPdBt/
 RSDi2vOdZSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACYiZs3wV/Roh/zSVZsvHbFX
 3n1/Q0+gxbMdH5luSEesPrZ+gtuZg+6MDF1c047naLDFrmQ9dMtMnb/lZ1fUyZc3/u9ZWSF6NGr
 uLV4A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_414993_8CD3FADC 
X-CRM114-Status: GOOD (  20.88  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 10/17] common: tlv: Add TLV-Signature support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement TLV signature using the existing placeholders for it. Use the
existing cryptographic primitives and public key handling used for
fitimage verification.

Signature is verified and then must be valid iff CONFIG_TLV_SIGNATURE is
enabled and a keyring is selected for the decoder. SHA256 hashing is
hardcoded for now.

As 16 bit are well sufficient to store the length of the signature
section in bytes, reduce it to its least significant 16 bit and reserve
the remaining 16 bit for future use.

As sig_len where the only reserved bits left, and where zero-reserved,
this leaves more wiggle room to still expand the format in the future.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 common/Kconfig       |  5 +++
 common/tlv/parser.c  | 89 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/tlv/format.h | 22 ++++++++++---
 include/tlv/tlv.h    |  1 +
 4 files changed, 112 insertions(+), 5 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index d923d4c4b6..663465443d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1122,6 +1122,11 @@ config TLV
 	  barebox TLV is a scheme for storing factory data on non-volatile
 	  storage. Unlike state, it's meant to be read-only.
 
+config TLV_SIGNATURE
+	bool "barebox TLV signature support"
+	depends on TLV
+	select CRYPTO_BUILTIN_KEYS
+
 config TLV_DRV
 	bool "barebox TLV generic driver"
 	depends on TLV
diff --git a/common/tlv/parser.c b/common/tlv/parser.c
index f74ada99d7..7e15147582 100644
--- a/common/tlv/parser.c
+++ b/common/tlv/parser.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #define pr_fmt(fmt) "barebox-tlv: " fmt
+#include "tlv/format.h"
 
 #include <common.h>
 #include <tlv/tlv.h>
@@ -9,6 +10,82 @@
 #include <linux/stat.h>
 #include <crc.h>
 #include <net.h>
+#include <crypto/public_key.h>
+
+static int tlv_verify_try_key(const struct public_key *key, const uint8_t *sig,
+			      const uint32_t sig_len, const struct tlv_header *tlv,
+			      unsigned long tlv_len)
+{
+	enum hash_algo algo = HASH_ALGO_SHA256;
+	int ret;
+	struct digest *digest;
+	struct tlv_header *copy;
+	void *hash;
+
+	digest = digest_alloc_by_algo(algo);
+	if (!digest)
+		return -ENOMEM;
+
+	ret = digest_init(digest);
+	if (ret) {
+		digest_free(digest);
+		return -EINVAL;
+	}
+
+	/* signature length field must always be zeroed during signing and verification */
+	copy = xmemdup(tlv, tlv_len);
+	copy->length_sig = 0;
+	digest_update(digest, copy, tlv_len);
+	free(copy);
+
+	hash = xzalloc(digest_length(digest));
+	digest_final(digest, hash);
+
+	ret = public_key_verify(key, sig, sig_len, hash, algo);
+
+	digest_free(digest);
+	free(hash);
+
+	return ret;
+}
+
+static int tlv_verify(const struct tlv_header *header, const char *keyring)
+{
+	const struct public_key *key;
+	size_t payload_sz = tlv_spki_hash_offset(header);
+	const void *spki_tlv_ptr = (void *)header + payload_sz;
+	u32 spki_tlv = get_unaligned_le32(spki_tlv_ptr);
+	int SPKI_LEN = 4;
+	u32 sig_len = get_unaligned_be16(&header->length_sig);
+	int ret, id;
+	int count_spki_matches = 0;
+
+	if (!IS_ENABLED(CONFIG_TLV_SIGNATURE)) {
+		pr_err("signature selected in decoder but not enabled!\n");
+		return -ENOSYS;
+	} else if (sig_len == 0) {
+		pr_err("signature selected in decoder but an unsigned TLV matched by magic %08x!\n", be32_to_cpu(header->magic));
+		return -EPROTO;
+	}
+
+	for_each_public_key_keyring(key, id, keyring) {
+		u32 spki_key = get_unaligned_le32(key->hash);
+
+		if (spki_key == spki_tlv) {
+			count_spki_matches++;
+			ret = tlv_verify_try_key(key, spki_tlv_ptr + SPKI_LEN, sig_len - SPKI_LEN, header, payload_sz);
+			if (!ret)
+				return 0;
+			pr_warn("TLV spki %08x matched available key but signature verification failed: %pe!\n", spki_tlv, ERR_PTR(ret));
+		}
+	}
+
+	if (!count_spki_matches) {
+		pr_warn("TLV spki %08x matched no key!\n", spki_tlv);
+		return -ENOKEY;
+	}
+	return -EINVAL;
+}
 
 int tlv_parse(struct tlv_device *tlvdev,
 	      const struct tlv_decoder *decoder)
@@ -17,6 +94,7 @@ int tlv_parse(struct tlv_device *tlvdev,
 	struct tlv_mapping *map = NULL;
 	struct tlv_header *header = tlv_device_header(tlvdev);
 	u32 magic;
+	u16 reserved;
 	size_t size;
 	int ret = 0;
 	u32 crc = ~0;
@@ -24,6 +102,7 @@ int tlv_parse(struct tlv_device *tlvdev,
 	magic = be32_to_cpu(header->magic);
 
 	size = tlv_total_len(header);
+	reserved = get_unaligned_be16(&header->reserved);
 
 	if (size == SIZE_MAX) {
 		pr_warn("Invalid TLV header, overflows\n");
@@ -36,6 +115,16 @@ int tlv_parse(struct tlv_device *tlvdev,
 		return -EILSEQ;
 	}
 
+	if (decoder->signature_keyring) {
+		ret = tlv_verify(header, decoder->signature_keyring);
+		if (ret)
+			return ret;
+	} else if (get_unaligned_be16(&header->length_sig)) {
+		pr_warn("Skipping verification of TLV signature: "
+			"No keyring selected in decoder with magic %08x\n",
+			decoder->magic);
+	}
+
 	for_each_tlv(header, tlv) {
 		struct tlv_mapping **mappings;
 		u16 tag = TLV_TAG(tlv);
diff --git a/include/tlv/format.h b/include/tlv/format.h
index c4521c3131..cbe0a132b1 100644
--- a/include/tlv/format.h
+++ b/include/tlv/format.h
@@ -47,11 +47,12 @@ struct tlv {
 struct tlv_header {
 	__be32 magic;
 	__be32 length_tlv; /* in bytes */
-	__be32 length_sig; /* in bytes */
+	__be16 reserved;
+	__be16 length_sig; /* in bytes */
 	struct tlv tlvs[];
-	/* __be32 crc; */
 	/* u8 sig[]; */
-};
+	/* __be32 crc; */
+} __packed;
 static_assert(sizeof(struct tlv_header) == 3 * 4);
 
 #define for_each_tlv(tlv_head, tlv) \
@@ -62,8 +63,19 @@ static inline size_t tlv_total_len(const struct tlv_header *header)
 	size_t ret;
 
 	ret = size_add(sizeof(struct tlv_header), get_unaligned_be32(&header->length_tlv));
-	ret = size_add(ret, sizeof(__be32)); /* CRC appended after TLVs */
-	ret = size_add(ret, get_unaligned_be32(&header->length_sig)); /* optional signature appended after CRC */
+	ret = size_add(ret, get_unaligned_be16(&header->length_sig)); /* optional signature appended after TLVs */
+	ret = size_add(ret, sizeof(__be32)); /* CRC at end of file */
+
+	return ret; /* SIZE_MAX on overflow */
+}
+
+/*
+ * Retrieve length of header+TLVs (offset of spki hash part of signature if available)
+ */
+
+static inline size_t tlv_spki_hash_offset(const struct tlv_header *header)
+{
+	size_t ret = size_add(sizeof(struct tlv_header), get_unaligned_be32(&header->length_tlv));
 
 	return ret; /* SIZE_MAX on overflow */
 }
diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
index 2a3fb14392..536f61646c 100644
--- a/include/tlv/tlv.h
+++ b/include/tlv/tlv.h
@@ -42,6 +42,7 @@ extern int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping
 
 struct tlv_decoder {
 	u32 magic;
+	const char *signature_keyring;
 	void *driverata;
 	struct tlv_mapping **mappings;
 	struct driver driver;

-- 
2.51.2.535.g419c72cb8a



