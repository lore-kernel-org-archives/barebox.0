Delivery-date: Tue, 28 Oct 2025 19:04:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3a-00Cljr-2m
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3X-0001Aw-4A
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RactI9d4x0b0GVthFRZXP59f8X1PvX3IKrtOtHn1sYE=; b=Ecfi5oST/69H0V
	P7injLODnjdbCJmljalwhoOdctvSHPZxSCh7UAs7YXKhvFhqEChg4a8UfXs1+aRagJlnfl8LL/ZMu
	x33tkf+bjvUhENQcPGRcDgrBVlqnqcXQ+gNbHd4kHws4WtojdxIkhMU4MeKfP912tX8Da6e5CL9J/
	vJxE0Crv3vitQHKbZA0l9l/pfcIjyf+6BV2hvkzN6XoqZHDyHgmpds7K++gYLxn/6kx7xRkBJJFvi
	nSrk+25nF0xJIgkXDYKAKIu2AwwgJyZyGnKy3+yBsLU4MOgfbnNhtserGRszV4KQKD0/t4PxT/j6l
	BSut+HGjvMUFYFv5XPug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2s-0000000GSDg-0XGp;
	Tue, 28 Oct 2025 18:03:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2j-0000000GS7h-0TdI
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 18:03:41 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2g-0000PX-Tb; Tue, 28 Oct 2025 19:03:34 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:05 +0100
Message-Id: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFkFAWkC/3XMQQ7CIBCF4as0sxYDCLa68h6mC2yndBIDDVBS0
 3B3sXuX/0vet0PEQBjh3uwQMFMk72rIUwPDbJxFRmNtkFxqwYVi6Z1ZJOtMWgMyeW0vL2GkUkp
 D/SwBJ9oO79nXnikmHz4Hn8Vv/SdlwThrTWfMdNO8E8NjQWfXFLyj7Twi9KWULy06OaevAAAA
X-Change-ID: 20251014-tlv-signature-2673b1a24445
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=5503; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=TIIqd/1ieCavXP4oAFQCrjzR+uSSy5e8Cqzt8RNpCE0=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZM1btSBR1m/xxed6x5ZtkI8tKP4REbNeYkW/t+fnZ
 uaZHE9cOkpZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABMJDWJkeFwaK1x9aGn+U9vu
 6/FLHJz3bG7YN/fHBzsmxZI7ZvJOrxj+hy6Os3Fk0WH96BZSndJ5ICFozRpl55cTn+yJmdJzaX0
 7CwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_110337_159447_7D041627 
X-CRM114-Status: GOOD (  15.19  )
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
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/17] TLV-Signature and keyrings
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
Changes in v2:
- Update usage message in keytoc
- Update kconfig help text for CONFIG_CRYPTO_PUBLIC_KEYS
- Separate migration doc and user doc patches correctly
- Warn about skipping verification when TLV is signed but no keyring
  selected in decoder
- Have config TLV_SIGNATURE depend on TLV (Thanks, Ahmad)
- Move pr_fmt before all includes in tlv/parser.c (Thanks, Ahmad)
- Style impromenets (Thanks, Ahmad)
- Pass down error code from public_key_verify() (Thanks, Ahmad)
- Rename keyring for barebox_tlv_v1_signed to "tlv-generic" (Thanks, Ahmad)
- Append cert and private key of 'builtin development keys' and name
  them "snakeoil" rather than fit (Thanks, Ahmad)
- Rebase to next, adapt to const public keys list
- To avoid CI failure due to -Werror=dangling-else, include a fix for
  the dangling else issue in idr_for_each_entry
- Link to v1: https://lore.barebox.org/barebox/20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de

---
Jonas Rebmann (17):
      lib: idr: avoid dangling else in idr_for_each_entry()
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
      crypto: concatenate fit development certificate with private key
      doc/barebox-tlv: Update documentation regarding TLV-Signature
      Documentation: migration-2025.11.0: List changes to CONFIG_CRYPTO_PUBLIC_KEYS

 .github/workflows/test-labgrid-pytest.yml          |   1 +
 .../devicetree/bindings/nvmem/barebox,tlv.yaml     |   1 +
 .../migration-guides/migration-2025.11.0.rst       |  15 +
 Documentation/user/barebox-tlv.rst                 |  49 +++-
 commands/keys.c                                    |   8 +-
 commands/tlv.c                                     |   2 +-
 common/Kconfig                                     |   5 +
 .../boards/configs/enable_tlv_sig_testing.config   |  13 +
 common/image-fit.c                                 |  13 +-
 common/tlv/barebox.c                               |  25 +-
 common/tlv/parser.c                                | 105 ++++++-
 crypto/Kconfig                                     |  37 ++-
 crypto/Makefile                                    |   6 +-
 crypto/fit-4096-development.crt                    |  33 ---
 crypto/public-keys.c                               |  13 +-
 crypto/rsa.c                                       |   1 +
 crypto/snakeoil-4096-development.pem               |  84 ++++++
 ...elopment.crt => snakeoil-ecdsa-development.pem} |   5 +
 include/crypto/public_key.h                        |  22 +-
 include/linux/idr.h                                |   2 +-
 include/tlv/format.h                               |  29 +-
 include/tlv/tlv.h                                  |   1 +
 .../bareboxtlv-generator/bareboxtlv-generator.py   | 243 ++++++++++++++--
 scripts/bareboxtlv-generator/requirements.txt      |   1 +
 scripts/bareboxtlv-generator/schema-example.yaml   |   2 +-
 scripts/include/linux/overflow.h                   | 312 +++++++++++++++++++++
 scripts/keytoc.c                                   | 259 +++++++++++------
 test/py/test_tlv.py                                | 206 +++++++++++---
 28 files changed, 1262 insertions(+), 231 deletions(-)
---
base-commit: cfa444bc5b878fb8eb36eee1f7e0f38c92449193
change-id: 20251014-tlv-signature-2673b1a24445

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



