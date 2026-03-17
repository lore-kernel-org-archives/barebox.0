Delivery-date: Tue, 17 Mar 2026 11:21:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2RYN-001ltD-2g
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 11:21:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2RYN-00011N-AP
	for lore@pengutronix.de; Tue, 17 Mar 2026 11:21:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Mp/R8zneY0/rOzqnewvevjWUS6co28NQNUSQ+0N7XQ=; b=mgp3hbrhI7HSK4weF2nbkXzIfg
	10lOj1t+h29xDMsRT30vcUBOV1kwrW7IRnAKltoAxqlUWDn/B26Ws5NzeiCfF4TSBLVfSThqLh+7Y
	TXQeqgts9XtS9wJxYSk1g358hoif75qiAVKw7Dz3/QIt+6gsBQCW9tVEYMGH3xrlB3dxKDuVIWKe7
	rhUMtT0vUNUnSGlpmaZhVkZtKYlFcBakHmF4bXNGruZSg6RwRtBCWB420l79rofNeCeMHYa/indkV
	ff+NVjGHYbSWBxBGmUR5OrIHuerlN04vH9yxbXjPzvmvGWmc2paTyd7G6qfT3yksaJvo6XfhXtGH4
	6uBzdVrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2RXx-00000005ydr-03ZM;
	Tue, 17 Mar 2026 10:21:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2RXu-00000005ycr-20Ci
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 10:21:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RXs-0000s7-U2; Tue, 17 Mar 2026 11:21:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RXs-000iuo-1q;
	Tue, 17 Mar 2026 11:21:04 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RXs-0000000DClm-25xs;
	Tue, 17 Mar 2026 11:21:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
Message-Id: <177374286449.3147253.739397460993018101.b4-ty@pengutronix.de>
Date: Tue, 17 Mar 2026 11:21:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_032106_520892_B45EFE2A 
X-CRM114-Status: UNSURE (   6.65  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] ARM: Avoid to clear bss multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Mar 2026 08:53:20 +0100, Sascha Hauer wrote:
> Currently we clear the bss everytime we call setup_c(). We can do better
> and clear it only once which makes for example alloc_pte() in the PBL
> MMU setup preserve its state and we can call mmu_early_enable() multiple
> times without harm.
> 
> 

Applied, thanks!

[1/2] ARM: setupc_32: remove relocation code from setup_c
      https://git.pengutronix.de/cgit/barebox/commit/?id=dd85266b1fa3 (link may not be stable)
[2/2] ARM: setup_c: avoid clearing BSS twice
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



