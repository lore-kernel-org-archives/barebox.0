Delivery-date: Thu, 27 Mar 2025 15:59:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohk-004uXv-1K
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 15:59:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohj-0000h8-PU
	for lore@pengutronix.de; Thu, 27 Mar 2025 15:59:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s2mvqO316PVPsU4+HcXbCnHe8rd4X8o3OMa4ZwYPvoI=; b=yNKimH1qwMgUPiYjNLzyMeoTID
	Qoeqw5TYxXW1QyVI8t49RhRULPSzjCoiTSG/u1LsoNC9MuA7Zvug0vaTdxfI6l1E+iqQj/nqQ0WNv
	DPIaOUYmXUNz0DgA8Kc5u29xRDEEPv58+4CSUgIXUufJsNmWGvQo2Rz0ff2IRA7r88Wb+Bh3bF+hn
	lKF2pK44Bm+E0XTehdcr5lyguRXN6WKpKG05dTtlZFI5f+iGQR8+l4TQd16cqt57V3g2KAth/Sstg
	q4yCC8E4QlrIw7/msaFUdKJpBGJ6kIrjqP8eTCzFbZHnKSC3yiEZ/DoYPhwJdamHZUy2K8c2ckH3Z
	dfICGvWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txohI-0000000BHio-1hpy;
	Thu, 27 Mar 2025 14:59:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txoWK-0000000BFom-10K7
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 14:47:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWJ-0006Jc-1S
	for barebox@lists.infradead.org; Thu, 27 Mar 2025 15:47:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-001whs-2i
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 15:47:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-007jNu-2Q
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 15:47:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 27 Mar 2025 15:47:38 +0100
Message-Id: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_074748_276114_441719DD 
X-CRM114-Status: UNSURE (   7.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] ci: fix sandbox allyesconfig build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With these changes applied, the most recent container image can be used
to run the pytest tests for allyesconfig.

Ahmad Fatoum (4):
  sandbox: env: switch from CONFIG_DEFAULT_ENVIRONMENT_PATH to bbenv-y
  test: bthread: change comparison condition for switches vs. yields
  ci: pytest: rename build directories
  ci: pytest: enable console and libc allocator for allyesconfig

 .github/workflows/test-labgrid-pytest.yml        | 16 ++++++++++------
 arch/sandbox/board/Makefile                      |  1 +
 arch/sandbox/board/board.c                       |  3 +++
 .../{env => defaultenv-sandbox}/network/eth0     |  0
 .../{env => defaultenv-sandbox}/nv/autoboot      |  0
 arch/sandbox/configs/sandbox_defconfig           |  2 +-
 test/py/test_bthread.py                          |  3 ++-
 7 files changed, 17 insertions(+), 8 deletions(-)
 rename arch/sandbox/board/{env => defaultenv-sandbox}/network/eth0 (100%)
 rename arch/sandbox/board/{env => defaultenv-sandbox}/nv/autoboot (100%)

-- 
2.39.5



