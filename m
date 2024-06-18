Delivery-date: Tue, 18 Jun 2024 08:14:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJS71-007ze9-0l
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 08:14:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJS70-000838-Ix
	for lore@pengutronix.de; Tue, 18 Jun 2024 08:14:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8fiUBCAOM++uLy4FgWDh0SaC9xyE6TmFlDvNsssI6Rk=; b=SGP4nUi3P590HKplmpTkAwbwsX
	uKQa0WJgUIKcHHH0BKJr5Wo1cgK8aNS4KGJosf06rKTTBopr6cGAvRavEvWi9ciARkftf8gSNaNpq
	h5uXy5CHdEy79cLBtrBxbUR+VxdBcH0NoOnTeU3MnVGrilV9YY+NtJcfy2eXVk7jTd7skE5k2SlGk
	q+ga3N1V1q1FaJyczNMrcx2OJOdcwjJOX/kEAwuq6uVSxnpI6f3y8NmLaXnsY+9BABDFFbgUOQdnN
	5mLe9fHKPKhoke1jVHwK5XcTVc/x9nWCQoy15mw48zanTYAiNnpduc/vV4k5ZoHFgpjuMLn9jlfa4
	IpA2v7wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJS6N-0000000Dkwt-2K3k;
	Tue, 18 Jun 2024 06:13:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJS6G-0000000Dkvo-2QeE
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 06:13:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6E-0007w0-9K; Tue, 18 Jun 2024 08:13:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6D-0039rn-JP; Tue, 18 Jun 2024 08:13:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6D-00G2XX-1i;
	Tue, 18 Jun 2024 08:13:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, jvetter@kalrayinc.com
Cc: ysionneau@kalrayinc.com, jborne@kalrayinc.com, jhascoet@kalrayinc.com, 
 clement@clement-leger.fr
In-Reply-To: <20240617134329.3671762-2-jvetter@kalrayinc.com>
References: <20240617134329.3671762-1-jvetter@kalrayinc.com>
 <20240617134329.3671762-2-jvetter@kalrayinc.com>
Message-Id: <171869122552.3822978.150489488503401465.b4-ty@pengutronix.de>
Date: Tue, 18 Jun 2024 08:13:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_231350_080566_D743F1B3 
X-CRM114-Status: UNSURE (   5.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/5] kvx: Fix barebox build for kvx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Jun 2024 15:43:25 +0200, jvetter@kalrayinc.com wrote:
> Add <linux/bug.h> to arch/kvx/lib/dma-default.c
> 
> 

Applied, thanks!

[1/5] kvx: Fix barebox build for kvx
      https://git.pengutronix.de/cgit/barebox/commit/?id=c084e47d1764 (link may not be stable)
[2/5] kvx: Add 'stop' instruction to power down sequence
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec10ee14e3dd (link may not be stable)
[3/5] kvx: robustify i/d cache startup
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a2b1131307a (link may not be stable)
[4/5] kvx: handle syscalls gracefully
      https://git.pengutronix.de/cgit/barebox/commit/?id=8586e67a013b (link may not be stable)
[5/5] kvx: add support for Coolidge V1/V2 march selection
      https://git.pengutronix.de/cgit/barebox/commit/?id=115f47b183fb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



