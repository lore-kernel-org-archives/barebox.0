Delivery-date: Mon, 26 Aug 2024 13:09:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXbV-00DZ7I-0d
	for lore@lore.pengutronix.de;
	Mon, 26 Aug 2024 13:09:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXbU-0005Dv-IL
	for lore@pengutronix.de; Mon, 26 Aug 2024 13:09:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GC9d0y1jmdbfGwp1I88BE3uxnKHwlx5DuFTwI4Yaxlg=; b=Ctr167L70kt3YeJ+9KdnUeq+2X
	B2skFYD6957cjMvEv59vn9ZpTnu1SF0tAUxx7MpUBTLa3r0Sm+fzKPIzZ12UWBos7o8j7sY/pJIsj
	eN5gUEJ8hLTHJxfflJEPgUw9fiuolQQKhtlRJl59atl2Qp4Kg30U7ziWuCNtxW7MTuU80va/yVk6Y
	2BdtakL0VfazL6V61phwDzl2Hwh3pJY47NIHf4/DIzl07WYnR9dYu/1pH1Mu+dMMN0Tl9HSxJnn5N
	JPwwR3FMcWrb+LipQgfWinxARdts20zHv91fp18drPigVUeXoC47GRiMG7LX/dIm9+VeraEz46Vef
	Ivki8gPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXas-000000075HN-1BIu;
	Mon, 26 Aug 2024 11:09:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXYP-000000074pV-1r9I
	for barebox@lists.infradead.org;
	Mon, 26 Aug 2024 11:06:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXYM-0004il-56; Mon, 26 Aug 2024 13:06:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXYL-003AhH-Mo; Mon, 26 Aug 2024 13:06:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXYL-004alq-25;
	Mon, 26 Aug 2024 13:06:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20240822115420.1178987-1-a.fatoum@pengutronix.de>
References: <20240822115420.1178987-1-a.fatoum@pengutronix.de>
Message-Id: <172467038964.1094622.13027526998392614939.b4-ty@pengutronix.de>
Date: Mon, 26 Aug 2024 13:06:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_040633_495042_B5BAB06C 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: socfpga: drop unused Arria 10 barebox-arm-head.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 Aug 2024 13:54:20 +0200, Ahmad Fatoum wrote:
> The file is unreferenced anywhere and it doesn't differ from the default
> __barebox_arm_head anyway, except by two additional words with value
> 0x55555555, which shouldn't matter.
> 
> It thus seems that the file wasn't needed when it was first added and
> it's surely not needed now as it has been unreferenced for more than a
> year.
> 
> [...]

Applied, thanks!

[1/1] ARM: socfpga: drop unused Arria 10 barebox-arm-head.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=33908299f1d1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



