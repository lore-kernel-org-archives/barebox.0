Delivery-date: Wed, 26 Mar 2025 09:00:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgL-004Lkw-2Z
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 09:00:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgK-0005mH-Hj
	for lore@pengutronix.de; Wed, 26 Mar 2025 09:00:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3pu1lw9KhxpD/g+94ejGuAnyHcxeIeioMWbS6hY4D1o=; b=XB4/FqmcvxPbTccRs2yqAmGByD
	eGh2XVZydiPwQnzMsJukANscQCIstUy0a3Jn8u4Cb0EAN7dPII4rv1zbbovsCGvEjEbb0Ff5wipxS
	wsLa9VmWOXUZ1DvazZ/BS6PEUyEQLlqqlsVynsBkKBVqTODqcgeClFUK7fUvAcO7mvYQ9PYUS5KMz
	PVwhTiak8owubg+6jYNiUkePK5JMtHIFTyTYIuYompdWuVpfeEc7ZhErvg3EwTdmE51IZDp8bOGMV
	ApDNST+8NZ4Y1v/uXfz2LvlSVFAodnTypeGpcB8kYhrw/iC57azEEB4KtHv/udxDA0jpf/ktsCyRw
	kVS+ILhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfl-00000007qYv-24Gj;
	Wed, 26 Mar 2025 07:59:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfW-00000007qSZ-1EBZ
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 07:59:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfV-0005KQ-0g; Wed, 26 Mar 2025 08:59:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-001iAi-1I;
	Wed, 26 Mar 2025 08:59:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-00EZsX-2J;
	Wed, 26 Mar 2025 08:59:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	jre@pengutronix.de
Date: Wed, 26 Mar 2025 08:59:13 +0100
Message-Id: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_005922_333988_ED7D7EAC 
X-CRM114-Status: UNSURE (   7.82  )
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
Subject: [PATCH 0/6] ci: run tests and static analysis on allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With a one-liner fix remaining[1], sandbox now builds allyesconfig sans
SDL/libftdi to completion. Let's seize the opportunity and add it to CI,
so we easily detect breakage around allyesconfig in future.

This series also switches the recently added Coverity and CodeQL Github
Actions to use allyesconfig to extend coverage to non-sandbox related
drivers as well.

[1]: https://lore.barebox.org/barebox/20250312-rpmb-v1-7-0f213382a3f3@pengutronix.de/T/#m4e6fcf916dd9461bbef25a93439ad8fdb36c8217

Ahmad Fatoum (6):
  sandbox: use CROSS_PKG_CONFIG when compiling sandbox arch code
  sandbox: hide sdl/libftdi symbols if libraries not found
  MAKEALL: fix check_pipe_status usage
  MAKEALL: remove use of alias in script
  ci: pytest: run test suite on sandbox allyesconfig
  ci: run static analysis on allyesconfig

 .github/workflows/codeql.yml              |  2 +-
 .github/workflows/coverity.sh             |  2 +-
 .github/workflows/test-labgrid-pytest.yml |  4 ++++
 MAKEALL                                   | 14 +++++++-------
 arch/sandbox/Kconfig                      |  6 ++++++
 arch/sandbox/Makefile                     |  4 ++--
 arch/sandbox/os/Makefile                  |  4 ++--
 drivers/gpio/Kconfig                      |  2 +-
 drivers/sound/Kconfig                     |  2 +-
 drivers/video/Kconfig                     |  2 +-
 test/sandbox/allyesconfig.yaml            | 17 +++++++++++++++++
 11 files changed, 43 insertions(+), 16 deletions(-)
 create mode 100644 test/sandbox/allyesconfig.yaml

-- 
2.39.5



