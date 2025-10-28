Delivery-date: Tue, 28 Oct 2025 19:04:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3j-00Clo5-17
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3g-0001Kx-Ql
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=caKrk06DO3xglbJgrZCb4H/7djgeXqTnOFhF0V8d8ck=; b=vWcVMfZj4MDZ9Im0Esw0RZ/C57
	7/Em/c9GxJUaHwTK0+jkBC9ShqMOAvsGG2ZkeiwmsSmkyQc8M7dlOVHJiv0Mk22CPIMw7YpaYNGIS
	Zdv5cqTLMv1qJTBxV4Qt5MW7aBsD9r34pUKb1K+KGcky2OlGpbXNjuiya51r4AYddOuxntQgSGxyi
	ia+sMCrOpQtWbUAHOn0oqrPMVsm4trbPwZmt3WUvettAeuJJrutWERmFmbfp5yhfNxRdydj31WrU1
	2aNur/xpp7ZQFqvql8YQKPs5E5giG+XseIaHaO9jPqWhEoIU4CcptPTJCJXTdqbFMdDUUZgwFSVdo
	6U2YEb3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2w-0000000GSJt-48PA;
	Tue, 28 Oct 2025 18:03:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2p-0000000GSBS-36cU
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 18:03:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=caKrk06DO3xglbJgrZCb4H/7djgeXqTnOFhF0V8d8ck=; b=hOyL2dtMmScjynB3Zc/URlVsx6
	rafW0rFDvYGnIqXm6PRk62GRTeNcSKe1nfV8xTXdXEoGt2TgTgzTQsvBKt1d56KHCTCbfku0OcMj3
	D49WuRbayaoN8iH6R/PMf4Vhmu10vFvMf9MGR7Y43Z1MYZC2orOfx19LCBNk78Vuvi8x8CelUG6sp
	RcrkJLjvW+VhVEe64i91btNcZ4GwgnU+/zyIB/hGpv4xwPGbhqyeADIrYEK9N9X2o8XP5vYfcikRP
	jUF02z+R+If3uLEqyZyGXcfUnvP2MlcvBisnw/iukyhdem2L0oHibfP6Lxa8hrET0rjackTwgdzbE
	5l1Y8sXw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnAz-000000050Da-3e3u
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 17:08:10 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-I7; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-16-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3296; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=5yRnKKt7Kc+mJP2ufkW/BALMQHnT/UR+fWAfresUgB4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC2TNJ/z2FrC5Xhe+vfVXcd+F2S2nUg99WeZMosf7
 +vPK5uWdZSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACby9i8jw+a1Tw6whVxoqtho
 VL/B7IZR8aFtkxgSqt89qD4leyHT/APDX8nv3zc9CPwyVdq2zWH3DI1ZXHstcw525PGrNerohN+
 7zwQA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_170806_019794_CCB05D5D 
X-CRM114-Status: GOOD (  14.09  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 16/17] doc/barebox-tlv: Update documentation regarding
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



