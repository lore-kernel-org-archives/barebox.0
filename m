Delivery-date: Mon, 11 Sep 2023 17:26:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfinc-00BddC-8V
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:26:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfina-0007Rd-Fx
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:26:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d5NHZ1SntJyVKLHnns/zfiE7oDJ3gMTYIYb13BjjkrU=; b=tOAqBvHdphf4C+vut4b4RBfNJL
	OvOot/RmGP26h1bsgLDwleB3aDVAfdYsL0EckMTla3A0HgeBeXPP/QQyy+fgJCqqeMDtKB9xythBu
	n/fIZY0ODs4zepO+g4F2btxZJj6LA9oYu4aeL681MMtHe2GbGPrDmuQJVBaXfNCoi4NGQ0G99+xvf
	Jnk2cONi4GM+0lwORuFICWG9jdQOtP4ricRKV+MIapuCANLrppb8ZIJCauzy66gPvcGW8Tbnhx7is
	q4sTPAQeWH0lhCV+yGV6JztzvaLuNa4sGFYbnrJCErsQ/TRXkOmW1fuM18akpKH9L0XHVyx82X9dT
	8EUvksbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimV-000sDd-1L;
	Mon, 11 Sep 2023 15:24:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimO-000s9L-2h
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:24:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimN-000720-PL
	for barebox@lists.infradead.org; Mon, 11 Sep 2023 17:24:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimN-005a9H-Cu
	for barebox@lists.infradead.org; Mon, 11 Sep 2023 17:24:47 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimL-00FHKR-29
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 17:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 11 Sep 2023 17:24:26 +0200
Message-Id: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_082448_872178_8C04F20C 
X-CRM114-Status: UNSURE (   9.96  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/7] tlsf: use 8-byte alignment for normal malloc allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLSF currently uses only 4-byte alignment on 32-bit platforms, which isn't
enough for ldrd/strd on ARMv7. This series reworks TLSF a bit, so we always
have at least 8 byte alignment.  dlmalloc already has 8 byte alignment
minimum, so nothing to do there.

This has the added benefit of giving TLSF the same alignment as KASAN,
which can make debugging easier.

v1 didn't actually manage to boot on an i.MX6, which v2 fixes. This
also boots normally on i.MX8M. I suggest this going into next after
v2023.09.0.

v1 -> v2:
  - drop switch of test_ffs_fls to bselftest. This function should just
    be replaced with barebox' own implementation in future
  - keep block size a size_t and just ensure the block metadata is
    correctly aligned.

Ahmad Fatoum (7):
  tlsf: turn static const variables into compiletime constant
    expressions
  tlsf: ensure malloc pool is aligned
  tlsf: fix sizeof(size_t) == sizeof(void *) assumption
  tlsf: give malloc 8-byte alignment on 32-bit as well
  common: malloc: ensure alignment is always at least 8 byte
  test: self: refactor to allow alignment check
  test: self: malloc: fix memory leaks

 common/Kconfig         |  5 +++
 common/dlmalloc.c      |  3 ++
 common/dummy_malloc.c  |  2 +-
 common/tlsf.c          | 43 ++++++++++---------
 include/linux/bitops.h |  1 +
 test/self/malloc.c     | 96 ++++++++++++++++++++++++++++++------------
 6 files changed, 102 insertions(+), 48 deletions(-)

-- 
2.39.2



