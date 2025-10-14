Delivery-date: Tue, 14 Oct 2025 13:04:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cp6-007iKz-2g
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:04:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cp4-0003Xx-5R
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:04:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KhvNbVjO6NyN+KUlVtO3QuOU1WDrkaTdqFHG0ICrUKc=; b=njplOLt3/X+IXlFk37y1ExUfAT
	98rAct4ylZij/antCsuk0todfXdeo6A5pM3QHK22Cl6BCf83qdIRMNb9XXdS+/kJ1EDxh+C7yeNMP
	qYrbtj8vQsnbEjw8sq70BRczzXUddSwbjY3wtXI9lTy7b83pK0G5PW0qFWFp7vjIjvDW/zO+9Shd5
	Q7v21YsGx8YvdLriUvivdBl5XBUb0QuF63fydNTDfMRDkTNpRdVio+3lbs9tOwHdMUCM1GP1kKCKC
	t3xUQ/hWL7beiLF64oFf+ut8FbF4R8m1Hn0puAt/7McCEzGbLmYzUf64ULYBBqMOJqV19PIAsKDUK
	SkEqR6MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coS-0000000G0gb-0Z3Y;
	Tue, 14 Oct 2025 11:03:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coO-0000000G0bP-20gi
	for barebox@bombadil.infradead.org;
	Tue, 14 Oct 2025 11:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=KhvNbVjO6NyN+KUlVtO3QuOU1WDrkaTdqFHG0ICrUKc=; b=J/oGJEYN2obJipc0RKPJLo/hWC
	4BVx1EHpLMkIcb83sliiiVwQoxq4tk6MLZ0u+NTfI6+WIJcr8qBzmUQwE3q+r+VFso4YOzy39iZeR
	PYySduVM9Qyt4MGUYEWlomuf8BITGvMjGKI2TD+H/FdndkcNVthxsc2TZRBhUcaWmjQqwmq8iZnNO
	AdhL5CBJp4CEqzVeG+fDLDF2X6VnkDEk8PaJ37F6eWoGy61X3zTgwWYSvQHX1VbEdEc9aUAdiXAIJ
	N7uRt8uczvNt9NpKiGHdlXRILtJl/sqAtyWozQtgW21MCTim3O+DIzN/l0OQT5g2fSD6c9E9mS1M3
	W9cRNRMg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co8-000000056kp-2nUD
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:12 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-Ey; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:03:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-9-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=6461; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=xhCmOF6g2btM6Y0h/+3685sR5fW1XPwFzUQY4DeCCX4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/vUYGVLVs9s7vi0w1PWt9qst7+21PdXg+Md1opfL
 KxSB24EdJSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACZSo8/IcNEnT9emc81e/VsL
 lA2mejMePdUi5LPykb+DbD/7U3k2GUaGVnO20utTk25FPqyO//QpbNKd/1tnL1df2yeeO/9zzLy
 nzAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_120309_169972_2DBAD8CF 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/15] common: tlv: Add TLV-Signature support
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
 common/Kconfig       |  4 +++
 common/tlv/parser.c  | 84 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/tlv/format.h | 22 ++++++++++----
 3 files changed, 105 insertions(+), 5 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index d923d4c4b6..b7ac7094a6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1122,6 +1122,10 @@ config TLV
 	  barebox TLV is a scheme for storing factory data on non-volatile
 	  storage. Unlike state, it's meant to be read-only.
 
+config TLV_SIGNATURE
+	bool "barebox TLV signature support"
+	select CRYPTO_BUILTIN_KEYS
+
 config TLV_DRV
 	bool "barebox TLV generic driver"
 	depends on TLV
diff --git a/common/tlv/parser.c b/common/tlv/parser.c
index f74ada99d7..0a23beba4e 100644
--- a/common/tlv/parser.c
+++ b/common/tlv/parser.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#include "tlv/format.h"
 #define pr_fmt(fmt) "barebox-tlv: " fmt
 
 #include <common.h>
@@ -9,6 +10,81 @@
 #include <linux/stat.h>
 #include <crc.h>
 #include <net.h>
+#include <crypto/public_key.h>
+
+static int tlv_verify_try_key(const struct public_key *key, const uint8_t *sig,
+			      const uint32_t sig_len, const void *data,
+			      unsigned long data_len)
+{
+	enum hash_algo algo = HASH_ALGO_SHA256;
+	int ret;
+	struct digest *digest = digest_alloc_by_algo(algo);
+	void *hash;
+
+	if (!digest)
+		return -ENOMEM;
+
+	digest_init(digest);
+	if (IS_ERR(digest)) {
+		digest_free(digest);
+		return -EINVAL;
+	}
+	digest_update(digest, data, data_len);
+	hash = xzalloc(digest_length(digest));
+	digest_final(digest, hash);
+
+	ret = public_key_verify(key, sig, sig_len, hash, algo);
+
+	digest_free(digest);
+	free(hash);
+
+	if (ret)
+		return -ENOKEY;
+	return 0;
+}
+
+static int tlv_verify(struct tlv_header *header, const char *keyring)
+{
+	const struct public_key *key;
+	size_t payload_sz = tlv_spki_hash_offset(header);
+	void *spki_tlv_ptr = (void *)header + payload_sz;
+	u32 spki_tlv = get_unaligned_le32(spki_tlv_ptr);
+	const int SPKI_LEN = 4;
+	u32 sig_len = get_unaligned_be16(&header->length_sig);
+	int ret;
+	int count_spki_matches = 0;
+
+	if (!IS_ENABLED(CONFIG_TLV_SIGNATURE)) {
+		pr_err("TLV signature selected in decoder but not enabled!\n");
+		return -ENOSYS;
+	} else if (sig_len == 0) {
+		pr_err("TLV signature selected in decoder but an unsigned TLV matched by magic %08x!\n", be32_to_cpu(header->magic));
+		return -EPROTO;
+	}
+	/* signature length field must always be zeroed during signage and verification */
+	header->length_sig = 0;
+
+	for_each_public_key_keyring(key, keyring) {
+		u32 spki_key = get_unaligned_le32(key->hash);
+
+		if (spki_key == spki_tlv) {
+			count_spki_matches++;
+			ret = tlv_verify_try_key(key, spki_tlv_ptr + SPKI_LEN, sig_len - SPKI_LEN, header, payload_sz);
+			if (!ret)
+				return 0;
+			pr_warn("TLV spki %08x matched available key but signature verification failed: %s!\n", spki_tlv, strerror(-ret));
+		}
+	}
+
+	/* reset signature length field after verification to avoid later confusion */
+	put_unaligned_be16(sig_len, &header->length_sig);
+
+	if (!count_spki_matches) {
+		pr_warn("TLV spki %08x matched no key!\n", spki_tlv);
+		return -ENOKEY;
+	}
+	return -EINVAL;
+}
 
 int tlv_parse(struct tlv_device *tlvdev,
 	      const struct tlv_decoder *decoder)
@@ -17,6 +93,7 @@ int tlv_parse(struct tlv_device *tlvdev,
 	struct tlv_mapping *map = NULL;
 	struct tlv_header *header = tlv_device_header(tlvdev);
 	u32 magic;
+	u16 reserved;
 	size_t size;
 	int ret = 0;
 	u32 crc = ~0;
@@ -24,6 +101,7 @@ int tlv_parse(struct tlv_device *tlvdev,
 	magic = be32_to_cpu(header->magic);
 
 	size = tlv_total_len(header);
+	reserved = get_unaligned_be16(&header->reserved);
 
 	if (size == SIZE_MAX) {
 		pr_warn("Invalid TLV header, overflows\n");
@@ -36,6 +114,12 @@ int tlv_parse(struct tlv_device *tlvdev,
 		return -EILSEQ;
 	}
 
+	if (decoder->signature_keyring) {
+		ret = tlv_verify(header, decoder->signature_keyring);
+		if (ret)
+			return ret;
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

-- 
2.51.0.297.gca2559c1d6



