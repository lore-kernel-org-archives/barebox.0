Delivery-date: Thu, 06 Nov 2025 16:19:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lR-00FypL-1f
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lN-0006kJ-Q4
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=caKrk06DO3xglbJgrZCb4H/7djgeXqTnOFhF0V8d8ck=; b=gVodBI3rhA/GbpfL9fcJpM2o+z
	Jt8j1Hc8CHuaz/Ubl2VFciBgptO1J2wfKI3DHrEKkMp8TyHwKTKkbQZjOB15AdD4icgINWkRuDDx7
	n1u0RlR/eAXJQgzgASbYQVj53vSWGHhmWvt76Hd57y9MQyUH+2mDYAjPFD+eU4terJBfwzzDhnmmz
	99wbJTw8NaaVgMqqtwn9SbvFVKOK5v1/3bjhxh8jD5h2SI85uIhEc/rMtRWKpFMh3u0DCxiL6uilx
	PG4UG0wEReiU+xI9YQFwkkuNANCSEUvUHNtgOuaahAJa5BIBfEFzGTiodzwXuXtSjg2Vu56ZtBb14
	e+Wdgluw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kh-0000000FnII-3dVZ;
	Thu, 06 Nov 2025 15:18:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAi-14Jw
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:16 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kZ-0005tl-AM; Thu, 06 Nov 2025 16:18:11 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-16-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3296; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=5yRnKKt7Kc+mJP2ufkW/BALMQHnT/UR+fWAfresUgB4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2WPosXnTzEYG59//pK4ue3R0x+Tj21yvh7+aNyP0s
 2t53p180Y5SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBEZLsZ/vucv244S+L6lrMN
 zreV7kyw2rdkm0Hlrw33HFtVGeYcX63DyDC/T3fjnWMPphavcuQTrbpl/+ekq9f0iyKhf8XEmLv
 8l3MAAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_320786_0FC133E5 
X-CRM114-Status: GOOD (  14.31  )
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
Subject: [PATCH v3 16/17] doc/barebox-tlv: Update documentation regarding
 TLV-Signature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

 - Update the data structure documentation
 - Explain the signature scheme
 - Add signature to bareboxtlv-generator usage description

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/user/barebox-tlv.rst | 49 +++++++++++++++++++++++++++++---------
 1 file changed, 38 insertions(+), 11 deletions(-)

diff --git a/Documentation/user/barebox-tlv.rst b/Documentation/user/barebox-tlv.rst
index 4e83cdf47f..1c1abfb43a 100644
--- a/Documentation/user/barebox-tlv.rst
+++ b/Documentation/user/barebox-tlv.rst
@@ -25,22 +25,25 @@ The TLV binary has the following format:
 .. code-block:: C
 
      struct tlv {
-         be16 tag; /* 2 bytes */
-         be16 len; /* 2 bytes */
+         be16 tag;
+         be16 len;
          u8 payload[];
      };
 
-     struct binfile {
-         be32 magic_version;
-         be32 length_tlv; /* 4 bytes */
-         be32 length_sig; /* 4 bytes */
-         struct tlv tlvs[];
-         be32 crc32;
+     struct sig {
+         u8 spki_hash_prefix[4];
+         u8 signature[];
      };
 
-.. note::
-  Even though the header has a ``length_sig`` field,
-  there is currently no support for cryptographic signatures.
+     struct tlv_format {
+         be32 magic;
+         be32 length_tlv;   /* in bytes */
+         be16 reserved;     /* must be 0 */
+         be16 length_sig;   /* in bytes */
+         struct tlv tlvs[];
+         struct sig signature; /* omitted if length_sig == 0 */
+         be32 crc;
+     };
 
 Tags
 ----
@@ -61,6 +64,24 @@ These common tags are defined in ``common/tlv/barebox.c``.
 The tag range ``0x8000`` to ``0xFFFF`` is intended for custom extensions.
 Parsing must be handled by board-specific extensions.
 
+Signature
+---------
+
+If ``length_sig`` is zero, signature is disabled.  The ``signature`` section of
+the file is exactly ``length_sig`` bytes long.  This includes the
+``spki_hash_prefix``, followed by the signature itself.  ``spki_hash_prefix``
+is the first four bytes of the sha256 hash of the *Subject Public Key Info* and
+its purpose is to allow for quicker matching of a signed TLV with its
+corresponding public key during signature verification.
+
+The ``signature`` shall be verified on all fields before the ``signature`` field,
+but with ``length_sig`` overwritten with 0,
+hashed with sha256
+and signed using any of the supported algorithms (currently RSA and some ECDSA curves).
+
+Note that ECDSA signatures are not DER encoded but rather plain concatenation
+of r and s (each extended to the size of the ECDSA-key).
+
 Data Types
 ----------
 
@@ -88,6 +109,12 @@ With these information in place a TLV binary can be created:
    ./bareboxtlv-generator.py --input-data data-example.yaml \
                              schema-example.yaml tlv.bin
 
+To additionally sign the TLV, supply a private key using the ``--sign KEY`` option.
+
+As ``bareboxtlv-generator.py`` internally uses ``openssl pkeyutl`` for
+accessing the private key, when using OpenSSL 3, any provider, such as pkcs11,
+that is correctly configured, can be used as KEY.
+
 .. note::
   The ``FactoryDataset`` class in ``bareboxtlv-generator.py``
    is intended to be used as a library.

-- 
2.51.2.535.g419c72cb8a



