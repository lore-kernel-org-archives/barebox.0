Delivery-date: Tue, 04 Oct 2022 17:56:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHa-005iCd-HF
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:56:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHZ-0006Lg-Dy
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:56:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g5ETNnoSNueHyrIalPhvi9qoSTs3TfQcxZYTLtmPQzk=; b=eeMhqOcItgIFyDlLj4ygBx0024
	rGIYS9nShQ8v0YEEf7YAc8lQ4ASVoRDXVnhPaz7GZ/zyqNPe8qjuC/8Jp3HoZWZUsESdJzmNrqSlp
	gAU0VLaUwNnmkXyHC4fj4BPfPog4Igd8U06LiTOYSRwi78jjte1RgUvF75UEKfg68gD3WBDdcbd1S
	OIVRv0L4k/MzTqWuHIqvlCTMEF5jfl+QRCjuNaPXun9sxT6n0ziwlJWI6Ajnl7htp3dR63R7w9OdJ
	0mrM0pGJLvPVilSS/mnUR+HICw+OdJ+BNJHi3PhQq+rgWyChPs2EFnNgNP6LYwYHttKuE0Vpei4cm
	x4XxMgBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGH-00A7qB-RQ; Tue, 04 Oct 2022 15:55:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkG7-00A7mD-6N
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG4-0005gc-Oi; Tue, 04 Oct 2022 17:55:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-004all-GT; Tue, 04 Oct 2022 17:55:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW82-90; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  4 Oct 2022 17:53:58 +0200
Message-Id: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085503_332832_58B41D2F 
X-CRM114-Status: UNSURE (   9.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] tlsf: use 8-byte alignment for normal malloc allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

TLSF currently uses only 4-byte alignment on 32-bit platforms, which isn't
enough for ldrd/strd on ARMv7. This series reworks TLSF a bit, so we always
have at least 8 byte alignment.  dlmalloc already has 8 byte alignment
minimum, so nothing to do there.

While this fixes real issues like what Enrico ran into, I'd suggest we only
this be taken into next only after v2022.10.0 is tagged, so this can get
some more testing exposure in the mean time.

Ahmad Fatoum (9):
  test: include <linux/printk.h>
  tlsf: use bselftest for testing ffs/fls
  tlsf: ensure malloc pool is aligned
  tlsf: fix sizeof(size_t) == sizeof(void *) assumption
  tlsf: decouple maximum allocation size from sizeof(size_t)
  tlsf: use 8-byte alignment for normal malloc allocations
  common: malloc: ensure alignment is always at least 8 byte
  test: self: refactor to allow alignment check
  test: self: malloc: fix memory leaks

 common/Kconfig        |  5 +++
 common/dlmalloc.c     |  3 ++
 common/dummy_malloc.c |  2 +-
 common/tlsf.c         | 72 ++++++++++++++++-----------------
 include/bselftest.h   |  1 +
 test/self/malloc.c    | 92 ++++++++++++++++++++++++++++++++-----------
 6 files changed, 114 insertions(+), 61 deletions(-)

-- 
2.30.2



