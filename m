Delivery-date: Fri, 13 Feb 2026 11:37:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqqXq-001Dks-0v
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 11:37:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqqXq-0007R3-I1
	for lore@pengutronix.de; Fri, 13 Feb 2026 11:37:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OIojYxzBdbs1MVLaIAjjWQnfRub8lCLctp1g5eZ6rgI=; b=kEEUHTi5ZCNm4fbdFfzHB3pJwS
	uxSfRLjbes/dXjQciLbMSQSE7JZ0teFxPyJYzAnBeJxyCjPqnY2YLDy3WK3avVWR6IJdymJqiCEzt
	U97oy8p95KLZl3/16s1o+V176QnLLySrfoJuD2R0fF4M+W6lcXfrSdtVI2intxBhBRNqFWWfINUml
	Irj4FSkv/6zMJD/7Mxh0VPVC8MDecPGb1i+Fbhaa/TEUtOaOV4mw6QcDq9K2vnrnPm/VPZBESZMVb
	iM/kkzq8ywy5EPc6vm9k+EMZ/ETKCp7WhoiPNTHLVHnpyPTN4VMXRtE2kdXpb/kW2rDIM0QyJ0wJO
	4ZcAzDQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqXK-00000003K9P-3faP;
	Fri, 13 Feb 2026 10:36:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqXH-00000003K8I-1vqd
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 10:36:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXD-0007EY-BZ; Fri, 13 Feb 2026 11:36:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXB-000Z4Q-2e;
	Fri, 13 Feb 2026 11:36:27 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXD-0000000BmW2-0Heb;
	Fri, 13 Feb 2026 11:36:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Feb 2026 11:35:55 +0100
Message-ID: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_023631_497728_EF9B6693 
X-CRM114-Status: UNSURE (   7.18  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] test: test boot with Debian netinstaller CDROM image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The nocloud image takes quite long to boot and now includes
systemd-firstboot, which doesn't lend itself that well to automated
testing.

Switch to the CDROM image instead. That one doesn't autoboot
unfortunately and opens a screen, so we need a few workarounds for that,
but the tests work again now.

The end goal remains building a dedicated image for testing instead.

Ahmad Fatoum (3):
  test: py: linux: use utilities available in Debian netinstall images
  test: test boot with Debian netinstaller CDROM image
  test: py: linux: remove test_ prefix for intermediate functions

 .github/workflows/test-labgrid-pytest.yml  |  2 +-
 scripts/fetch-os.sh                        |  2 +-
 test/arm/multi_v8_efiloader_defconfig.yaml | 12 ++--
 test/py/helper.py                          | 39 ++++++++++++
 test/py/test_linux_efiloader.py            | 73 +++++++++++-----------
 test/py/test_linux_smbios.py               | 27 +++++---
 test/strategy.py                           | 64 +++++++++++++++----
 7 files changed, 156 insertions(+), 63 deletions(-)

-- 
2.47.3



