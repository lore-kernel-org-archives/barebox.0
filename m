Delivery-date: Tue, 14 Oct 2025 13:03:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8coo-007iFc-0c
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:03:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8coj-0003DN-O6
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:03:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wrY/FvWhpi/PbDjtcMVOR/bvjpBLEQDt2CccvrFBxMU=; b=DGfJJBSEZt303z
	A+YPM4d2cyFq3+GjAfTRM+meesZwU1MfQ1rToQbKJ6dCJCH0Y75ezf1BgA8CPqea8kYRGcCOFmwfM
	ol59iOMZkIvb5ObxqDFdpvx8JDRyLhCwzMH0bnxtevEOkfCGip1C49Eo1/x3M5vHchNSFFgl4kW4T
	m3N3T4BqoHjG6xokVtayfDV5yMJwcOK2wAy22ADxlLXDmMYiL6la4dI9ecLx/EncZpCTk/jQNQ7cu
	W3Sx0Y8bJxn70QglkRFDNz524BfgMzaWAG75rl4iNUIUrVO4UbNx4C6fCvSgP2ChBJ7C/hLRRDv/k
	iOo6psQJHbxW5xrl06WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coD-0000000G0Q4-2eHc;
	Tue, 14 Oct 2025 11:03:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co6-0000000G0I6-2zsK
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:10 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-4i; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:02:51 +0200
Message-Id: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANst7mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0MT3ZKcMt3izPS8xJLSolRdIzNz4yTDRCMTExNTJaCegqLUtMwKsHn
 RsbW1AOEBpqJfAAAA
X-Change-ID: 20251014-tlv-signature-2673b1a24445
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=4215; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=MmkH6rC14D7O8xfsqEYNV6wE04D4GA5oGGfc94MLwb0=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/twzh277fIqzxKlD/591blkho/1oyRBreWc3yOfz
 Z69v/D/3Y5SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBE0pwZGe4v3Z1WaDhtr+Fi
 86rla1gqxKXrl1acC3oUP8kn4LmjFAMjwyTnR7svzGm5L7v/VkK90Ib0h6JHUqo2Tnz298SfLP8
 9nzgB
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_040306_778018_4D873691 
X-CRM114-Status: GOOD (  12.54  )
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
Subject: [PATCH 00/15] TLV-Signature and keyrings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series introduces everything needed for the use of signed TLVs in
barebox. This allows for signed TLVs to be part of a secure boot chain,
if CONFIG_TLV_SIGNATURE is enabled, keys are configured and the decoder
is configured to require signature.

As TLV signature verification uses the public_keys list, propagated by
keytoc.c with the public keys selected in CONFIG_CRYPTO_PUBLIC_KEYS, the
keyring feature was introduced to allow separate keys for separate
concerns.

The existing fitimage verification now only verifies against keys in the
"fit" keyring. To require a valid signature of TLVs, specify a
tlv_decoder::signature_keyring in the decoder. No signature verification
is performed if signature_keyring is NULL for a decoder matched to the
TLV magic.

A new builtin decoder was added to common/tlv/barebox.c with the magic
0x61bb95f3 and .signature_keyring = "tlv". Consequently
CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS now adds the insecure development
keys to both the "tlv" and the "fit" keyring. This allows for quick
testing and debugging of decoders requiring signature.

For the creation of signed TLVs, bareboxtlv-generator.py was updated
with --sign and --verify options for TLV binary encoding and decoding
respectively.

Changes to the TLV format and -tool usage as well as the breaking
changes to the keyspec syntax are documented in Documentation/.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (15):
      common: clean up TLV code
      crypto: Add support for keyrings
      fit: only accept keys from "fit"-keyring
      crypto: keytoc: Rename "hint" to "fit-hint" and do not use it in identifiers
      commands: keys: update output format to include keyring
      commands: tlv: Error out on invalid TLVs
      scripts: bareboxtlv-generator: Implement signature
      scripts: bareboxtlv-generator: Increase max_size in example schema
      common: tlv: Add TLV-Signature support
      common: tlv: default decoder for signed TLV
      crypto: Use "development" keys for "fit" and "tlv" keyring
      test: py: add signature to TLV integration tests
      ci: pytest: Add kconfig fragment for TLV signature integration tests
      doc/barebox-tlv: Update documentation regarding TLV-Signature
      Documentation: migration-2025.11.0: List changes to CONFIG_CRYPTO_PUBLIC_KEYS

 .github/workflows/test-labgrid-pytest.yml          |   1 +
 .../devicetree/bindings/nvmem/barebox,tlv.yaml     |   1 +
 .../migration-guides/migration-2025.11.0.rst       |  17 ++
 Documentation/user/barebox-tlv.rst                 |  49 +++-
 commands/keys.c                                    |   8 +-
 commands/tlv.c                                     |   2 +-
 common/Kconfig                                     |   4 +
 .../boards/configs/enable_tlv_sig_testing.config   |  13 +
 common/image-fit.c                                 |  13 +-
 common/tlv/barebox.c                               |  25 +-
 common/tlv/parser.c                                | 102 ++++++-
 crypto/Makefile                                    |   6 +-
 crypto/fit-4096-development.key                    |  51 ++++
 crypto/fit-ecdsa-development.key                   |   5 +
 crypto/public-keys.c                               |  15 +-
 crypto/rsa.c                                       |   1 +
 include/crypto/public_key.h                        |  22 +-
 include/tlv/format.h                               |  29 +-
 include/tlv/tlv.h                                  |   1 +
 .../bareboxtlv-generator/bareboxtlv-generator.py   | 242 ++++++++++++++--
 scripts/bareboxtlv-generator/requirements.txt      |   1 +
 scripts/bareboxtlv-generator/schema-example.yaml   |   2 +-
 scripts/include/linux/overflow.h                   | 312 +++++++++++++++++++++
 scripts/keytoc.c                                   | 259 +++++++++++------
 test/py/test_tlv.py                                | 205 +++++++++++---
 25 files changed, 1202 insertions(+), 184 deletions(-)
---
base-commit: 39309dcb356714fc3f345f52ff30b0281d65e27b
change-id: 20251014-tlv-signature-2673b1a24445

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



