Delivery-date: Thu, 06 Nov 2025 16:19:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lQ-00FyoY-1w
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lM-0006iA-7W
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kbZtjQST8znndQUl8Qcl2lXmrn+qOTXhb+tidue5AvA=; b=vMbzW5JhClrMK7
	/tR+O+RmGEe9s2CkQa88/CwUGkX7JyZQb84aafXd35tgXE/mMQosqr3Da2IWLTbA8vyqOyihpZQ0b
	xETEFY3iQTcDhKdsrPSZ0H5joziZhXVwgMMg4bT/hTsE6U1oZaVF3fD0sULVrt3DzIXveyn1I0woM
	AFXg3F0cGOY3IGDc/9mvZMeV3dv8Zfp2bsjb6qzm0GrYYlsazzYWYqiyZ3YZRUdQW4GuAB+WmHz4r
	UjJ9Ql44HFo46HXm+8xQY6XuHj2JIE0p6BhVz/h6KxVl7DozgedtVqo81AwcZ3+nH8zDyleSHd+sl
	RPZvtqX47MWrap0v8ZXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kh-0000000FnHe-1pS3;
	Thu, 06 Nov 2025 15:18:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAU-1CoY
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:16 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kY-0005tl-O4; Thu, 06 Nov 2025 16:18:10 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:17:57 +0100
Message-Id: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACW8DGkC/3XMSw6CMBSF4a2Qjq3pi4eO3IdxcIEL3MQU0pYGQ
 9i7hZHROPxPcr6VeXSEnl2zlTmM5Gm0KfQpY80AtkdObWqmhMqlkIaHZ+SeegthdshVUepagjL
 G5Cx9JocdLYd3f6QeyIfRvQ4+yn39J0XJBS+hAuguuahkc5vQ9nNwo6Xl3CLbuag+CFV9EyoRu
 oauwUIX0JY/xLZtb+D1H1PyAAAA
X-Change-ID: 20251014-tlv-signature-2673b1a24445
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=5992; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=cLxMHciU9dFr5ebHy67lfrYTrn3OwOmB+6jK29oHpJw=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aP1c33OTSYZh0KhNwUf5xz0OrPK9ZVe4ObupHkH7
 7iZ1pnodJSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACayWICRYbvoHZWwzrMVn5pP
 2vUwqoSGr/z7T+zdX09FcZNAu8mynowMXY9eR3PpzDvy/7P49iTxdsMlN43m3IuUE73xvu5RiDI
 HJwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_369513_AF801225 
X-CRM114-Status: GOOD (  16.26  )
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
Subject: [PATCH v3 00/17] TLV-Signature and keyrings
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
Changes in v3:
- To zero length_sig field, operate on a copy of the tlv in
  tlv_verify_try_key (Thanks, Sascha)
- Correctly check error of digest_init() in tlv_verify_try_key()
  (Thanks, Sascha)
- Move tlv_decoder::signature_keyring declaration to the patch that
  first uses it (Thanks, Sascha)
- Rebase to next
- Move migration documentation to 2025.12 (Thanks, Sascha)
- Link to v2: https://lore.barebox.org/barebox/20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de

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
      Documentation: migration-2025.12.0: List changes to CONFIG_CRYPTO_PUBLIC_KEYS

 .github/workflows/test-labgrid-pytest.yml          |   1 +
 .../devicetree/bindings/nvmem/barebox,tlv.yaml     |   1 +
 .../migration-guides/migration-2025.12.0.rst       |  15 +
 Documentation/user/barebox-tlv.rst                 |  49 +++-
 commands/keys.c                                    |   8 +-
 commands/tlv.c                                     |   2 +-
 common/Kconfig                                     |   5 +
 .../boards/configs/enable_tlv_sig_testing.config   |  13 +
 common/image-fit.c                                 |  13 +-
 common/tlv/barebox.c                               |  25 +-
 common/tlv/parser.c                                | 107 ++++++-
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
 28 files changed, 1264 insertions(+), 231 deletions(-)
---
base-commit: 7ce5c14e883d08c71af12a02c66dc2ae7191a7d7
change-id: 20251014-tlv-signature-2673b1a24445

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



