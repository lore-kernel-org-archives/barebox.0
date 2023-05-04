Delivery-date: Thu, 04 May 2023 10:59:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUoW-004N7n-Rp
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:59:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUoU-00080M-0j
	for lore@pengutronix.de; Thu, 04 May 2023 10:59:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4C8Qp2Ya50glGn3K9QAquNNLnBoO87Hhr3SJtMKv+xU=; b=kAPp6SCM+V6xllJViE73KvGyhl
	nHFP3c2RckeSYPmLYc7pmpKFHbKQKyPvYGM7lubW1EfquJ/COzo96NqvUxL9OIKRGfaOS8EwI50yM
	o+V85LbY/ZFwHqh/X+bgWGhxJT79EBTEsP9FcGKE0HJmH4KmaLrMwOIkwtGW0LWiUfrF1VW85MaTe
	F6YU+RRWFfEp2hAli0mxtEQdC2s2o5N9wDmvDBvA810/OCwjA9YRj9Kq8OhjzzDgYCmm9kpQ/rWTs
	a95s6fyeaXxQvvEbehunr4ceUFdRngKowqU6MbA7UwodyFHfYTdE+v32AyC295IhiBIfQKsvkKgS+
	JBGlLyTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUnL-007Bak-0A;
	Thu, 04 May 2023 08:58:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUnH-007BZj-2p
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:58:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puUnF-0007mm-VE; Thu, 04 May 2023 10:58:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puUnF-0011Nd-AG; Thu, 04 May 2023 10:58:29 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puUnE-005TrH-H7; Thu, 04 May 2023 10:58:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:58:26 +0200
Message-Id: <20230504085827.484198-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_015831_910551_DAB52FE3 
X-CRM114-Status: GOOD (  16.67  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/1] GitHub actions for barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds support for GitHub actions to compile barebox and to do some
basic runtime tests on emulated machines.

A container is set up with Crosstool toolchains installed for most
architectures in barebox (kvx is missing currently). This is used to
compile all defconfigs. See
https://github.com/barebox/barebox/actions/runs/4880635125 for the
results of the current next branch.

The runtime tests can be seen here:
https://github.com/barebox/barebox/actions/runs/4880635129 . barebox
starts on several emulated ARM/Mips/riscv/x86 machines. This shows that
the boards come up. Additionally the barebox selftests are enabled and
run on the boards.

This is all far from being perfect, but it's a start. I'd be glad to get
some comments and/or suggestions how this could be improved, I am still
a beginner when it comes to GitHub actions. Also suggestions what else
could be tested would be welcomed on our way to get better releases in
the future.

For those of you who are not familiar with GitHub actions: You can
easily run the tests yourself. Just fork the barebox repository on
GitHub and push some branch based on the current next branch to it.
Head over to the "Actions" tab and wait/look for the results.

Sascha

Sascha Hauer (1):
  Add GitHub CI

 .github/workflows/container.yml           | 32 ++++++++
 .github/workflows/test-defconfigs.yml     | 44 +++++++++++
 .github/workflows/test-labgrid-pytest.yml | 70 ++++++++++++++++++
 test/Containerfile                        | 89 +++++++++++++++++++++++
 test/generate-dummy-fw.sh                 | 62 ++++++++++++++++
 test/kconfig/disable_size_check.kconf     |  1 +
 test/kconfig/disable_target_tools.kconf   |  5 ++
 test/kconfig/enable_self_test.kconf       |  5 ++
 8 files changed, 308 insertions(+)
 create mode 100644 .github/workflows/container.yml
 create mode 100644 .github/workflows/test-defconfigs.yml
 create mode 100644 .github/workflows/test-labgrid-pytest.yml
 create mode 100644 test/Containerfile
 create mode 100755 test/generate-dummy-fw.sh
 create mode 100644 test/kconfig/disable_size_check.kconf
 create mode 100644 test/kconfig/disable_target_tools.kconf
 create mode 100644 test/kconfig/enable_self_test.kconf

-- 
2.39.2



