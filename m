Delivery-date: Wed, 06 Oct 2021 16:24:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qm-0004za-8B
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 16:24:52 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qk-0000bO-WC
	for lore@pengutronix.de; Wed, 06 Oct 2021 16:24:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1FmZq4Eo/55q1ngOZZmmQvYmUj1Ie7GgbEu4L/T7OX4=; b=Fop99bbSkqHlsB
	Iifmjiv+fVJbbb/PalfzwMhHQcX4Ix2FHtlmEfLzSIqiROfQpfZWTkXV6X0erblKMr08hi9aZuJY0
	xqiytdKSV7Xt43f+x5yyVcnRLt3WTJ+5g7BCJngKObHIsBgU+ePavZvXkBWCphNuJ1SyIPwh6r/4t
	98W3XpJ9Ev47coIgeqyt5vS55nplvW1Dd9gW6w1XVzojAFd1FbVPLKv6RnZk8tMOoAxWUBeMHP6GR
	XI0730I38AJHddPyNx6P9YHJ2R6ZIzGUEvErWo+vs2rvBUHtgAFLBPzltOJVlKXE1GyX8gfDwt38F
	VMnowpn4beRPXtdwCa0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY7p8-00Ecjf-Bj; Wed, 06 Oct 2021 14:23:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY7oz-00Ecel-Ua
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 14:23:04 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ov-0000I7-Ap; Wed, 06 Oct 2021 16:22:57 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ou-0089SO-O7; Wed, 06 Oct 2021 16:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  6 Oct 2021 16:22:49 +0200
Message-Id: <20211006142254.1751864-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_072302_006783_1B25524E 
X-CRM114-Status: GOOD (  13.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/5] scripts: Common functions for host tools and rk-usb-loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Whenever I added a new host tool in scripts/ I usually ended up copying
functions from other host tools and thought it's about time to create
a library for sharing code between the host tools. Not this time. I
finally added such a library. I have no idea how a library can be built
(and used by host programs) with Kbuild, so I took the easy way out
and included a C file where needed instead of building a library.
I'm open for suggestions how this can be improved.

Last patch of this series adds a rk-usb-loader tool suitable for
bootstrapping barebox on a Rockchip RK3568 via USB.

Sascha

Sascha Hauer (5):
  scripts: Add Kconfig option for most host tools
  scripts: Add common library functions
  scripts/common: Add write_file()
  scripts/common: Add write_full() and read_full()
  scripts: Add rk-usb-loader tool

 scripts/Kconfig              |  71 ++++++++
 scripts/Makefile             |  21 ++-
 scripts/bareboximd.c         | 100 +----------
 scripts/common.c             | 168 ++++++++++++++++++
 scripts/common.h             |  10 ++
 scripts/imx/imx-image.c      |  47 ++---
 scripts/imx/imx-usb-loader.c |  77 ++-------
 scripts/omap3-usb-loader.c   |  47 +----
 scripts/rk-usb-loader.c      | 324 +++++++++++++++++++++++++++++++++++
 scripts/rkimage.c            |  71 +-------
 scripts/rockchip.h           |  35 ++++
 scripts/socfpga_mkimage.c    |  51 +-----
 12 files changed, 658 insertions(+), 364 deletions(-)
 create mode 100644 scripts/common.c
 create mode 100644 scripts/common.h
 create mode 100644 scripts/rk-usb-loader.c
 create mode 100644 scripts/rockchip.h

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

