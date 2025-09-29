Delivery-date: Mon, 29 Sep 2025 10:05:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sl-002LaQ-0g
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:05:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sj-0000gy-M2
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:05:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AXdo2+ab67OBl6V9l9lLdgEQOvwFNqdq3GEHlrZERbc=; b=jcHJjbM5AG39Ox
	twz2nKuClq2nnHGqauGhSju5ef4aAzKOcrJL31WQDdnr0Mkp0GOZp9xNaiOWk3Q25lBoCJ781lYwW
	LgiJQ8uOHE7fJTuILMYnDB+d9KlY4WAcjJCiZ/+7Bra3pQsaSX4qMoSQO9ZVAUtonncnI2yH3/joa
	EEasAPsz38Cn8YMWP+yvMewTBhUdHMUvxiMI4tW33tnE1RO0A4l/OlClLhDL8ZhzVFbXLVyLNYjCu
	1Ow4d+5mInBKl4E5crCwBQpf1axs34NqaTKkukJUezoE7yode0NP/axvTG9JgJcBXVkPZJe1RY5tR
	3wy2+XExikIw2RXF0XGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38sD-00000001iLg-1CWB;
	Mon, 29 Sep 2025 08:04:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38s9-00000001iGn-10Qx
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:04:39 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v38s6-000070-6s; Mon, 29 Sep 2025 10:04:34 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 29 Sep 2025 10:03:51 +0200
Message-Id: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGg92mgC/3WNQQ7CIBREr9L8tRiKBaUr72G6KOVLf2JoA0hqG
 u4udu/yTWbe7BAxEEbomx0CZoq0+Ari1MA0j94hI1sZBBeSa6FYemVGPqELY6pdpjtprL1qfrE
 a6moN+KTtMD6GyjPFtITPcZDbX/rflVvGWSftpG5GG8XFfUXv3iksnrazRRhKKV9aPrziswAAA
 A==
X-Change-ID: 20250926-tlv-integration-945bdd7903d9
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3040; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=Q0hkIxp+XXplZU8ZewxScbUykKoS3GCSOR5xGtugcmE=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ZdvbHmzt7Hbj0qaEUPk9By4qW1w4syF3w6XPc9hfh
 fJ47s007ihlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzEn4GRob3r5vfDfGsDg4M2
 XsuzfvXlXEyIFh//8m6hbylqHyZYvGH4X9mlefFk7GeGRtUmv7cNflcZmeYrTn0Zdsa0UKiu6ic
 PHwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_010437_297044_010D8ED7 
X-CRM114-Status: GOOD (  11.55  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/9] TLV integration tests and test/py cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With TLV signature coming up, we want to test all things TLV more
thoroughly, including "roundtrip" integration tests that include the
bareboxtlv-generator python-script and the tlv barebox-command.

As this is the third test module to make use of the testfs, it seemed
adequate to revisit its implementation.

Avoid integration test logic outside pytest; migrate logic from .github/
and scripts/ into pytest.

Use fixtures for testcase preconditions and migrate existing testdata
preparation from scripts/generate_testfs.sh.

Cleanups here and there.

The ci-container needs to be rebuilt before the TLV tests will succeed
in CI.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- work around a corner case where a failed network test leads to
  unrelated pritinting above the tlv command output (triggered by
  accessing the 9pfs)
- move fitimage testdata generation to fixture and drop script
- Enable CMD_TLV for multi_v7 and multi_v8 (required for tlv_command test)
- Skip tlv_command test if CMD_TLV is disabled
- Ensure that pwd is returned to / after dm_verity test even on failure
- Silently skip generating testdata for the fit tests for platforms for
  which no files are provided to prevent ci failure on mips and riscv
- minor improvements in style and consistency
- Link to v1: https://lore.barebox.org/barebox/20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de

---
Jonas Rebmann (9):
      test: when testfs feature is available, always enable it
      test: provide testfs via fixture
      test: move dm-verity testdata generation to fixture
      test: move fitimage testdata generation to fixture and drop script
      test: py: test_bootchooser: remove dead code
      commands: tlv: clarify error opening tlv
      ci: container: install crcmod and cryptography
      configs: enable tlv command for multi_v7 and multi_v8
      test: py: add TLV integration tests

 .github/workflows/test-labgrid-pytest.yml          | 13 ----
 arch/arm/configs/multi_v7_defconfig                |  2 +
 arch/arm/configs/multi_v8_defconfig                |  2 +
 commands/tlv.c                                     |  8 ++-
 conftest.py                                        | 14 ++++
 scripts/generate_testfs.sh                         | 77 ---------------------
 test/Containerfile                                 |  8 ++-
 test/py/test_bootchooser.py                        |  4 --
 test/py/test_dm.py                                 | 59 ++++++++++++++--
 test/py/test_fit.py                                | 46 +++++++++++--
 test/py/test_tlv.py                                | 78 ++++++++++++++++++++++
 .../testdata}/multi_v7_defconfig-gzipped.its       |  0
 .../testdata}/multi_v8_defconfig-gzipped.its       |  0
 13 files changed, 200 insertions(+), 111 deletions(-)
---
base-commit: 1b817ae40c2ba628ba0ce413564ea77e91a6009b
change-id: 20250926-tlv-integration-945bdd7903d9

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



