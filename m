Delivery-date: Tue, 14 Oct 2025 13:04:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cp3-007iKc-2a
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:04:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cp1-0003Ur-VX
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:04:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qUWVEa1oandnDQTtVnRk2YJExEU1KLgE+pSMDUZmNc8=; b=XZshxFfnmpIDIIOuoDh9Dfj8FH
	N3xKt9/uNXusAej9Svlj5syrTM9DTsibqIJUkBNWpRKFEXOZaKsMgYlEY/MrCF8dvAgKcpe4XBZi8
	Fqpg3tsasldRani2L/fJZ8wOtpWB6RnExiIyjiDf8Q4rSfcv/iDxcEMPgSEvozSy0p8J7LbRESJll
	qlxrt4KoUP9/gBW/6iXYps0zJ+Rneh67HADa4Mdmw/GvJZpUU3s/NxpWC2ozsrGuutxJIU1i7ZF6J
	0yFvy8E16ukkEfwuu5LtF7SnXCQvophrAscRzVgtFezrfyTHu2ntRgDXq/juCrH1okySSMJ9lNtK8
	7BY3pjkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coP-0000000G0dT-38Vs;
	Tue, 14 Oct 2025 11:03:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coO-0000000G0bR-1yM1
	for barebox@bombadil.infradead.org;
	Tue, 14 Oct 2025 11:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=qUWVEa1oandnDQTtVnRk2YJExEU1KLgE+pSMDUZmNc8=; b=Z00yUI63C6ehBzj1O8o0u9qiNB
	jsLf+ivAuO6gh1+GNLAk4R78oJk1guyOwNj03fzqBvpJznmFc90/P2JxdooTWtk68WyS0ijfK0vhJ
	2VYQYkaP/fhi0ASWlmBcs9ISkWj3B9L8Y3gJNVG1DBmftvI9jTltkePxr7LKWjA6WG/WQUh5eBJu3
	kzX9dsWr5Kui5Y33w100mWCWJQe22wTTqd0L08W6/0uVPz0om0M38/NSzIxIXH39vH4EihFtW0FsF
	6SIf38HJqcRZAbS2Si85+kF5DRVnkbtJ1YMtzPy9T7J8MIFEnsA6UqMkzGnBX77vZTUz1k6u2tfgw
	WZsIaU8Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co8-000000056ks-18Rc
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:21 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-KD; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:03:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-14-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3284; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=5rALUdH6yfA94y72E/IG9knh6VF/QbGZ1vm484pXauY=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/tCUtbo+T+jiXax/6aLL206fy2yyzzavPfDIodNH
 D9/fvyT1FHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZjI8yxGhluH2d0nhM5WWaCa
 Y1WT/O3w93BX5VKRk7s0e6ZOcJtuU8rI0Pa4SHVuXVSyxLE5Nmnvr3upPrn12uhP6NbFusc0eKb
 e4QYA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_120308_599274_23FFB239 
X-CRM114-Status: GOOD (  14.08  )
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
Subject: [PATCH 14/15] doc/barebox-tlv: Update documentation regarding
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
index 4e83cdf47f..46d1f7a006 100644
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
+       u8 spki_hash_prefix[4];
+       u8 signature[];
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
+If ``length_sig`` is zero, signature is disabled.
+The ``signature`` section of the file is exactly ``length_sig`` bytes long.
+This includes the ``spki_hash_prefix``, followed by the signature itself.
+``spki_hash_prefix`` is the first bytes of the sha256 hash of the *Subject
+Public Key Info* and its purpose is to allow for quicker matching of a signed
+TLV with its corresponding public key during signature verification.
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
2.51.0.297.gca2559c1d6



