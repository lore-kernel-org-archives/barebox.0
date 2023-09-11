Delivery-date: Mon, 11 Sep 2023 14:13:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffn4-00BSuF-91
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:13:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffn0-0001VC-T8
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:13:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k8kPQuMTQqu4G2qPZ0e29y+yTJyyoahJaK5dBwoycug=; b=V3udhJxkcI2/jjyLlPzfg8qZx/
	WmvkSl+rxmL1roporcH5afD1HLhyiSUFbakjgo/Rp2t4DR44R5wxopBFdtDI6rpkKyPPZeP2l8lJn
	P609xu/F+2RZBiTV7lMkH/txCnUraofEHOJOeuw7X6TIrFG7GHPocubYwISkUsjegODcTAEliYYkl
	8od7vIhLaSiynR4IJ0o5jkEYR5TPvPX3jZULGockEVjjGvkgE2L1nfXipHPTnQ2muLuPLkJP2uLW4
	4Ko3X82kNdkABziN8qGchbeQd11FytEdyqmdWwnC1lkJcd7/pTj1VkLFZHl5XexYmh+9PECn72C90
	XAJjkKEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfflu-000SMC-2b;
	Mon, 11 Sep 2023 12:12:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfflq-000SL6-23
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:12:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfflm-0001Gu-CI; Mon, 11 Sep 2023 14:11:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qffll-005Xrj-TM; Mon, 11 Sep 2023 14:11:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qffll-00B5gG-0u;
	Mon, 11 Sep 2023 14:11:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jmaselbas@zdiv.net,
	ore@pengutronix.de
Date: Mon, 11 Sep 2023 14:11:54 +0200
Message-Id: <20230911121156.2632668-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_051202_673737_4BA9E7CB 
X-CRM114-Status: UNSURE (   8.82  )
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
Subject: [PATCH master 0/2] mci: sdhci: fix memory corruption on DMA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Recent changes to teach SDHCI 64-bit support inadvertently changed
the address used for cache maintenance away from the DMA buffer address
with the result that unrelated cache lines were dropped and memory
corruption. This series fixes this. I must admit I don't understand
how the SDMA boundary mechanism works, so I did not change too much
about it.

Ahmad Fatoum (2):
  mci: sdhci: unmap the DMA buffers actually used
  mci: sdhci: hardcode SDMA boundary for DMA

 drivers/mci/sdhci.c | 9 ++-------
 drivers/mci/sdhci.h | 3 +++
 2 files changed, 5 insertions(+), 7 deletions(-)

-- 
2.39.2



