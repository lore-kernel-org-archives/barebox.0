Delivery-date: Mon, 11 Sep 2023 14:57:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTu-00BViI-Uz
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:57:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTt-0007TQ-2k
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:57:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9vuRALl3aWcfdWvNhyUinkNb7UZJ6rwemQKUM6+jI6U=; b=j0GOAi6R9qXOgqN+2nOYGWx64J
	k60BrStvjTxz2i5D0QT+r3Hp1oUGKTvaD6Xn1qznXJOzVWBbjqA1qh4KLazd7NgVwle22aH+BVM4E
	OS225omPAq8pzkvPHdrJCPr4Dl4J2MPqqMZLyZMBaBeCo8l64W7yMeeNa8XTHsvnLMpAdb7zVSQhf
	6U4BhR6fGJt9Vwx+Nyhij1Df5GA2PQfx5YPSWbh5uJCcBR9W4iaJGmzkILdGJ16sm99e5+ZQPV43x
	62BwdTFdIzXKFSxx0NF/u1+dLnpuBL4PZOeLdgr0o7Kk47OHRGWux1+DsWgld0wK9OEL8uunqsg3C
	ApcOuWJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSq-000XBu-0A;
	Mon, 11 Sep 2023 12:56:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSl-000X9Y-2I
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-0007A7-Ka
	for barebox@lists.infradead.org; Mon, 11 Sep 2023 14:56:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-005YTf-82
	for barebox@lists.infradead.org; Mon, 11 Sep 2023 14:56:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSj-00Bg1H-1r
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 14:56:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 11 Sep 2023 14:56:15 +0200
Message-Id: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_055623_763429_6B147969 
X-CRM114-Status: UNSURE (   6.30  )
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
Subject: [PATCH 0/4] KASan: print output directly to stderr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I recently hunted down a heap memory corruption and this was somewhat
complicated by KASan and dump_stack() themselves allocating memory
off the heap. This series switches them to directly write to the
consoles associated with stderr, while skipping the log.

Ahmad Fatoum (4):
  ARM: unwind: don't allocate while printing stack trace
  ARM64: backtrace: print stacktrace to stderr
  KASan: only print to stderr
  KASan: don't allocate memory while printing report

 arch/arm/lib32/unwind.c     | 20 ++++++++++----------
 arch/arm/lib64/stacktrace.c |  6 +++---
 lib/kasan/generic.c         |  2 --
 lib/kasan/report.c          | 22 +++++++++++-----------
 4 files changed, 24 insertions(+), 26 deletions(-)

-- 
2.39.2



