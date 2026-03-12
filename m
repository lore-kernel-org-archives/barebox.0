Delivery-date: Thu, 12 Mar 2026 12:38:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eMa-00Ao2S-2A
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 12:38:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eMb-0006Eq-0Y
	for lore@pengutronix.de; Thu, 12 Mar 2026 12:38:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cW1QXkDp6paa6oEi3RbOgTzqFO4DzOWXsNxUYmRJlgw=; b=l/wHtM8Ydry8m7S4bLb35iDHVo
	i00EOR+lV9hDjddMnrNGKSwLkKEvXe0BtIP+J8vZlXQ3Kyn6otm/IfyVW2knQog9RXJn9Xyw0NYuZ
	3x3MctdSYQOY7lsrSzzOiKfUZYNOgXPnr21gs6qyC5AZdbE8JlP2vWIruZ8qkhOnqMmXe9lXLkG2N
	lHiv7jwxM7xdOcrXTj6Fb2gIUNsx8Ye29BqAhRQ3RHJJrrfwAKF4qSiplbQqPTKIil6w2EInrkyYC
	/O4BFnJGBB4NMuHnhaeq1VBorYQaOQ8rYcbfsWH9tCFSSb7l+t4iFhiKHsq5OGstZ+JRQNypPmtw5
	GlCHzY0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eMA-0000000DyJx-433u;
	Thu, 12 Mar 2026 11:37:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eM8-0000000DyJo-3meA
	for barebox@bombadil.infradead.org;
	Thu, 12 Mar 2026 11:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=cW1QXkDp6paa6oEi3RbOgTzqFO4DzOWXsNxUYmRJlgw=; b=ogVUyDyT//RiOWEWcCkqZf9saI
	1whrdySvWilXc5vHBhbVdcBUDPsYoVizdZUsLm+J4rHBSCQ+yiph7ohQD3S8f+y9fSRvR6TBXoWqU
	RWWMYnpgAww71D3M0D0sq6D8GY8fgQGSDfU2qgxFuM8Zspb7GIRpzV2GXY1kBZzr+ZHdO1htfiaJR
	+Y9CN//FciP8ZsqD6abGaj6Q1yIB6hsRsQAQpkIrmjhhZipaIfzU4G6Fdff67akRAO8yW4Z1rjzFj
	iAMDiNdkvB2g/KiuUlBmRSF/39kzyYtXtWyd1SJZD1iwttxIq5K2ErD4kBcV8XVusoM6Cf4O09eNb
	1dsMKWYg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eM5-000000012GV-493d
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 11:37:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1w0eM4-00068t-8c; Thu, 12 Mar 2026 12:37:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1w0eM2-0050wX-2N;
	Thu, 12 Mar 2026 12:37:28 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1w0eM3-0000000FIQd-48Gm;
	Thu, 12 Mar 2026 12:37:27 +0100
Date: Thu, 12 Mar 2026 12:37:27 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <n23uq4da6aopfjf2babgwafortv3kja6xu2vesoeyah2fihp6z@wlwarbr77xnd>
References: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
 <20260312-v2026-01-0-topic-tqma8mpxs-v4-1-88472a13347d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312-v2026-01-0-topic-tqma8mpxs-v4-1-88472a13347d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_113730_101521_DC3EB0B2 
X-CRM114-Status: UNSURE (   6.81  )
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
Subject: Re: [PATCH v4 1/3] ARM: boards: tqma8mpxl: rename to tqma8mpxx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-03-12, Fabian Pflug wrote:
> This is a preparation commit before adding support for the tqma8mpxs
> module from TQ with nearly identical settings.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


