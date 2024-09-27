Delivery-date: Fri, 27 Sep 2024 12:43:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8Rd-003N5C-0f
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RO-0005q9-Tn
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fMTEW0aaanjg/dYJv0o4Iz30JCSitJOagIn3slJEc3U=; b=g8PdPT4e7Bl2zUZ+WXFwjOfU/r
	BT8NLHj8ZmVOmQFC5L40FTVglBdMYLmx4uyidovqCykkb6TDtidi8hmH484xEPsvL5m1I5YPSLv/H
	M2dJGZplHWfVLSNSs4gHwn8RIZuEdf6PlowIvxcZv18Fl9YveoeL1zjdLFlrBZLJ4MSwedIt/f3KF
	O8y8FsKLu87EZBZKCmDyCULhYO7bt+AWbu9+x361Ui84AK6lyvsljW0oGzvwLQhhqjOoksiZXQWBD
	PCyl/CQgPbqR6U/WUr0uvYy2/PK3hUYJ8LPVBudAcDAo2+wHP7+x4SDK4KJk5m/lL7qcsTUOouJJi
	Q1lXYNPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QM-0000000Aqpi-3HlH;
	Fri, 27 Sep 2024 10:42:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Os-0000000AqVQ-3TgT
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=fMTEW0aaanjg/dYJv0o4Iz30JCSitJOagIn3slJEc3U=; b=o7O1vo50E3O07rj2N7IRSShSOB
	k6d0PMXoFe4j9gsngKZHib9JUZa0b2JP/tVs+QOJHiNrMVT7WJswm3SfdfZnbLWhDP30pqPu93e/y
	WW8Jj3LJlq0LUB/MrInxwevvIGYlG+Zy7PJpo80bGgQH1NwlQ5NOysTzUPrHI/qBaLQlEmgpUYH8r
	oZSCQYhcSm6UMki0FA6TQaVgqIjiCDxz8ulIKZc+osATdktI1wT41TXyXmooPSiJv2ecAjyv3uQfH
	8q872be+xvqKycnbg4oRdhnN7X9SfheidpYZDqa3TlRcam7xLI+I4OVYv9+kJwbc1ilzEBc/omCj9
	YxQyKF6Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Op-00000002KcT-25wK
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:40:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Op-00043A-5d; Fri, 27 Sep 2024 12:40:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Oo-001u44-PQ; Fri, 27 Sep 2024 12:40:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Op-000Q9b-0Z;
	Fri, 27 Sep 2024 12:40:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240926113320.3780408-1-s.hauer@pengutronix.de>
References: <20240926113320.3780408-1-s.hauer@pengutronix.de>
Message-Id: <172743363473.100528.5958821855328519019.b4-ty@pengutronix.de>
Date: Fri, 27 Sep 2024 12:40:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_114035_795999_144BF7EB 
X-CRM114-Status: GOOD (  20.43  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: imx: improve precision of AV PLL to 1 Hz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Sep 2024 13:33:20 +0200, Sascha Hauer wrote:
> Adoption of Linux commit:
> 
> | commit c5a8045a553e32529ffb6bfb33fcad4d38aec2c7
> | Author: Emil Lundmark <emil@limesaudio.com>
> | Date:   Wed Oct 12 12:31:41 2016 +0200
> |
> |     clk: imx: improve precision of AV PLL to 1 Hz
> |
> |     The audio and video PLLs are designed to have a precision of 1 Hz if some
> |     conditions are met. The current implementation only allows a precision that
> |     depends on the rate of the parent clock. E.g., if the parent clock is 24
> |     MHz, the precision will be 24 Hz; or more generally the precision will be
> |
> |         p / 10^6 Hz
> |
> |     where p is the parent clock rate. This comes down to how the register
> |     values for the PLL's fractional loop divider are chosen.
> |
> |     The clock rate calculation for the PLL is
> |
> |         PLL output frequency = Fref * (DIV_SELECT + NUM / DENOM)
> |
> |     or with a shorter notation
> |
> |         r = p * (d + a / b)
> |
> |     In addition to all variables being integers, we also have the following
> |     conditions:
> |
> |         27 <= d <= 54
> |
> |         -2^29 <= a <= 2^29-1
> |          0    <  b <= 2^30-1
> |         |a| < b
> |
> |     Here, d, a and b are register values for the fractional loop divider. We
> |     want to chose d, a and b such that f(p, r) = p, i.e. f is our round_rate
> |     function. Currently, d and b are chosen as
> |
> |         d = r / p
> |         b = 10^6
> |
> |     hence we get the poor precision. And a is defined in terms of r, d, p and
> |     b:
> |
> |         a = (r - d * p) * b / p
> |
> |     I propose that if p <= 2^30-1 (i.e., the max value for b), we chose b as
> |
> |         b = p
> |
> |     We can do this since
> |
> |         |a| < b
> |
> |         |(r - d * p) * b / p| < b
> |
> |         |r - d * p| < p
> |
> |     Which have two solutions, one of them is when p < 0, so we can skip that
> |     one. The other is when p > 0 and
> |
> |         p * (d - 1) < r < p * (d + 1)
> |
> |     Substitute d = r / p:
> |
> |         (r - p) < r < (r + p)  <=>  p > 0
> |
> |     So, as long as p > 0, we can chose b = p. This is a good choise for b since
> |
> |         a = (r - d * p) * b / p
> |           = (r - d * p) * p / p
> |           = r - d * p
> |
> |         r = p * (d + a / b)
> |           = p * d + p * a / b
> |           = p * d + p * a / p
> |           = p * d + a
> |
> |     and if d = r / p:
> |
> |         a = r - d * p
> |           = r - r / p * p
> |           = 0
> |
> |         r = p * d + a
> |           = p * d + 0
> |           = p * r / p
> |           = r
> |
> |     I reckon this is the intention by the design of the clock rate formula.
> |
> |     Signed-off-by: Emil Lundmark <emil@limesaudio.com>
> |     Reviewed-by: Fabio Estevam <fabio.estevam@nxp.com>
> |     Acked-by: Shawn Guo <shawnguo@kernel.org>
> |     Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> 
> [...]

Applied, thanks!

[1/1] clk: imx: improve precision of AV PLL to 1 Hz
      https://git.pengutronix.de/cgit/barebox/commit/?id=af3d99396a8b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



