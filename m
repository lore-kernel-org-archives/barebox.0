Delivery-date: Fri, 26 Sep 2025 12:15:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25To-001IIc-2b
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 12:15:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tn-0004nc-ED
	for lore@pengutronix.de; Fri, 26 Sep 2025 12:15:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KwioSpuRCvSf6PuhI3iKsfRY5s+oxZzAXbfMrJpC+5w=; b=1IyznjTn3VLzNP
	R7ZTy19HgzWgsqZIeq+VeZVkg+IRuj0q690skYSdqvURW7s9Lsw0f9xQHRElMrr1Bc3pd2gCW+VEm
	l/dY+NgGoCQpLXFzPNRziN+FPiLcRpr7HaPh1FjVVWUT31H4Ov9nea3OogqZ7ZyYGsxRPevF002SZ
	BD5XSco35+oUKiMHUfPnlQgFek6UQiB0SJFI7oiWYJ0vV02Oam2NLpq6UvXJEf6Sv2if2RBe034kz
	0rBhZdbly+NFneowvODEdarNfY6MtnQaKVS64ZPSw8ZmEEOGyW81CAF8OZk3hIs3MVsTSZGSVpvtB
	d2dpzbJOQCOaVVHVJ+Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TF-00000000Ich-3TMD;
	Fri, 26 Sep 2025 10:14:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TB-00000000IWh-1PUJ
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 10:14:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v25T8-0004Ji-AS; Fri, 26 Sep 2025 12:14:26 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 26 Sep 2025 12:14:01 +0200
Message-Id: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGln1mgC/x2MQQqAIBAAvyJ7TjDLwr4SHSw3WwgLFQnCvycdB
 2bmhYiBMMLEXgiYKdLlK7QNg+0w3iEnWxmkkEpoOfB0Zk4+oQsmVZfrXq3Wjlp0VkOt7oA7Pf9
 xXkr5AFn5SRthAAAA
X-Change-ID: 20250926-tlv-integration-945bdd7903d9
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1776; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=Qgh3tbFO1krw5eriZTr3BaVQgy6YwyyB1pBnvUeBe6g=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ll4+f7KB+y793R9O7L//eH3Ud+kXezirLzCU8G3gt
 fn+MfHBw45SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBEzrxj+O9+K2F7to9YqHWh
 z5uof36PuljO79u5vU9AMtievVf8BBvDf+9dF6MF7nnrf7A6zsN0ReqJ6iMjodzj7Xkx0UkCm42
 LOQA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_031429_391972_81A25EA7 
X-CRM114-Status: UNSURE (   7.40  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] TLV integration tests and test/py cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With TLV signature coming up, we want to test all things TLV more
thoroughly, including "roundtrip" integration tests that include the
bareboxtlv-generator python-script and the tlv barebox-command.

As this is the third test module to make use of the testfs, it seemed
adequate to revisit its implementation.

Avoid integration test logic outside pytest; migrate logic from .github/
and scripts/ into pytest.

Use fixtures for testcase preconditions.

Cleanups here and there.

The ci-container needs to be rebuilt before the new tests will succeed
in CI.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (7):
      test: when testfs feature is available, always enable it
      test: provide testfs via fixture
      test: move dm-verity testdata generation to fixture
      test: py: test_bootchooser: remove dead code
      commands: tlv: clarify error opening tlv
      ci: container: install crcmod and cryptography
      test: py: add TLV integration tests

 .github/workflows/test-labgrid-pytest.yml |  3 --
 commands/tlv.c                            |  8 ++--
 conftest.py                               | 14 ++++++
 scripts/generate_testfs.sh                | 44 -----------------
 test/Containerfile                        |  8 ++--
 test/py/test_bootchooser.py               |  4 --
 test/py/test_dm.py                        | 53 ++++++++++++++++++--
 test/py/test_fit.py                       |  9 +---
 test/py/test_tlv.py                       | 80 +++++++++++++++++++++++++++++++
 9 files changed, 153 insertions(+), 70 deletions(-)
---
base-commit: 7e32be40a193007e138c0eb589eb852420655523
change-id: 20250926-tlv-integration-945bdd7903d9

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



