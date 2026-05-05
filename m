Delivery-date: Tue, 05 May 2026 11:52:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCSF-001CZX-17
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 11:52:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCS9-0003Wd-Rh
	for lore@pengutronix.de; Tue, 05 May 2026 11:52:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u4SOIXEzX+SfJ0qWaN0cIJVzomfwFpBcg5uylMsuUsA=; b=EI7yyd993xeI9+pJShK2cQYqjF
	nbi/bAgOk7iljAWJMTDoHjM1NjpNjQUuF66ntFqHJUEJXhb2TKTjXxkb5Sn4YmfRUVL83ssFA5CMg
	5hc0L9Gj8hn66z5s6UW0E0M/Dp+j+KksBiRTKIG47zjPQ1i7MSoz0twSqoPsZDD32gFuqnMm3a4by
	HRGtXudBwYfH8mtK/50KqVoT9cSJWJCbA+qRPPDcpG8krmZcjxnAEpC5JG5OmbmxQ0HheuJr7DM9B
	9Ujf6cueCwcWSN6SmQ6PvJ/UXW9kDMiGPlUlSIUS5mtfroBSEzryLeGWeWsAGqtmUapSgnhdl2B74
	b90dGeGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCRM-0000000FhvA-45yA;
	Tue, 05 May 2026 09:51:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCRJ-0000000Fhtj-0Qyg
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 09:51:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-000341-PC; Tue, 05 May 2026 11:51:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-000Ybx-0R;
	Tue, 05 May 2026 11:51:38 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-00000004iUp-20Yi;
	Tue, 05 May 2026 11:51:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 May 2026 11:50:57 +0200
Message-ID: <20260505095137.1123867-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_025141_232933_3F7E93BD 
X-CRM114-Status: GOOD (  11.24  )
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
Subject: [PATCH 0/3] bootm: append automatic parameters after all other linux.bootargs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootm can be configured to determine suitable values for a number of
kernel command line options that will automatically be fixed up.

Currently, these options are concatenated into the kernel command line
interleaved with all other options in the lexicographical order of the
linux.bootargs. parameter name.

For the root= option, this means that any root= in a blspec file for
example will override barebox' own root=, because:

  global.linux.bootargs.bootm.root < global.linux.bootargs.dyn.bootentries

The other way makes more sense however, especially as there is always a
device parameter or Kconfig option to control whether the fixup should
happen at all.

With the new order, it's now possible to set global.bootm.appendroot=1
and have barebox append a new root= and have it take precedence over a
bootloader spec provided root=. To reflect that this has occurred, the
kernel command-line will continue to list two root='s, which greatly
simplifies debugging if issues happen (e.g. because there was a
rootfstype that is no longer accurate).

Ahmad Fatoum (3):
  common: fix help text reference to internal imagicvars
  Documentation: user: booting-linux: split off mtdparts fixup section
  bootm: append automatic parameters after all other linux.bootargs

 .../migration-guides/migration-master.rst     |  9 +++
 Documentation/user/booting-linux.rst          | 69 +++++++++++++------
 common/Kconfig                                |  7 +-
 common/bootm.c                                | 26 +++++--
 4 files changed, 79 insertions(+), 32 deletions(-)

-- 
2.47.3



