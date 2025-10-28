Delivery-date: Tue, 28 Oct 2025 16:02:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDlDl-00Cir7-1h
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 16:02:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDlDk-0008BE-TQ
	for lore@pengutronix.de; Tue, 28 Oct 2025 16:02:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kT8otf2BpqZU1lKS9VUiLRbjydo+qfSvLdCb3GwncRw=; b=O9nJWtJJqo1i0goSsiKHVoOA2I
	rrrupOlu6+jIA+FMp3yDFPyE3cTPxUUhOxq6RdwR+22NRekuv1E5C4cqu0SwWl5v68Qgp79wJmASr
	iE2azvyI2mddthBVFS03PNJ9FUEOrDpnf4ZjluCvkoMsrqF+Ad6IyU5IjxLukBr1U4DbnmFRPzjO5
	lxqxFTuFG6rg3KqDgmQ8xfwlanxaeGaLeWHFmdlQG0i3J9hHatR7ylFmMkGM4b82xDnRY8oaes3y+
	4Krd0Yh6oUyCndt4fPkH6ZICD1B0b9igy3frEIWExdve/DirC2SZYC/RILyfNV8trKrH9VOI8k0xY
	MdIYTR2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDlDA-0000000G8j2-2lM4;
	Tue, 28 Oct 2025 15:02:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDlD8-0000000G8iU-3PoS
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 15:02:12 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDlD5-0007t8-Rh; Tue, 28 Oct 2025 16:02:07 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 16:01:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-fixup-ecdsa-v1-1-aca221d4672b@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAOTaAGkC/x2MQQqAIBAAvyJ7TlDDkr4SHUzX2ouJUgTi35OOw
 zBToWAmLLCwChkfKnTFDnJg4E4bD+TkO4MSSkuhDA/03omj88VyY8Pk3azDKHfoRcrY9X9bt9Y
 +iXweQ10AAAA=
X-Change-ID: 20251028-fixup-ecdsa-8af6dc75f31b
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2302; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=+43XMgyLA7Zeyv7H0m1j8qxJCSBDtNKKhuFKriLFEjE=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkuPXKKZRBO/3l/wqBeZfTK9MCp2s8znBsPOL5/0rOg
 m3zdm3K6ChlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzEjoWRYQnfK99biUaKrsrf
 5rx67+1dYvQuavOdC6cOKVxoSlA8PJHhf96aN6IXI9hWPeFxWHXs9NLNrrdFJ1+0yprM8+G0g3t
 bJy8A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_080210_864057_C3CBB88B 
X-CRM114-Status: UNSURE (   9.99  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! public-keys: move list out of struct public_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After not invoking ecdsa_key_dup() on keys before first use anymore,
key->size bits remains uninitialized, breaking ecdsa_verify() and
thereby ECDSA at large.

 - Drop the unused ecdsa_key_dup
 - Drop the uninitialized size_bits field in struct ecdsa_public_key
 - Invoke ecdsa_key_size() in ecdsa_verify() instead

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/ecdsa.c         | 22 ++++------------------
 include/crypto/ecdsa.h |  1 -
 2 files changed, 4 insertions(+), 19 deletions(-)

diff --git a/crypto/ecdsa.c b/crypto/ecdsa.c
index 6aaeff5c14..6bc4da2cdd 100644
--- a/crypto/ecdsa.c
+++ b/crypto/ecdsa.c
@@ -78,7 +78,10 @@ int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
 	const void *r, *s;
 	u64 rh[4], sh[4];
 	u64 mhash[ECC_MAX_DIGITS];
-	int key_size_bytes = key->size_bits / 8;
+	int key_size_bits, key_size_bytes;
+
+	key_size_bits = ecdsa_key_size(key->curve_name);
+	key_size_bytes = key_size_bits / 8;
 
 	ctx->curve_id = curve_id;
 	ctx->curve = ecc_get_curve(curve_id);
@@ -103,20 +106,3 @@ int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
 
 	return _ecdsa_verify(ctx, (void *)mhash, rh, sh);
 }
-
-struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
-{
-	struct ecdsa_public_key *new;
-	int key_size_bits;
-
-	key_size_bits = ecdsa_key_size(key->curve_name);
-	if (!key_size_bits)
-		return NULL;
-
-	new = xmemdup(key, sizeof(*key));
-	new->x = xmemdup(key->x, key_size_bits / 8);
-	new->y = xmemdup(key->y, key_size_bits / 8);
-	new->size_bits = key_size_bits;
-
-	return new;
-}
diff --git a/include/crypto/ecdsa.h b/include/crypto/ecdsa.h
index 3b6bb394d9..7c8aeadc25 100644
--- a/include/crypto/ecdsa.h
+++ b/include/crypto/ecdsa.h
@@ -10,7 +10,6 @@ struct ecdsa_public_key {
 	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
 	const uint64_t *x;	/* x coordinate of public key */
 	const uint64_t *y;	/* y coordinate of public key */
-	unsigned int size_bits;	/* key size in bits, derived from curve name */
 };
 
 #ifdef CONFIG_CRYPTO_ECDSA

---
base-commit: 946cf6bbbe2bdaac56b17185af673a1fa3288635
change-id: 20251028-fixup-ecdsa-8af6dc75f31b

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



