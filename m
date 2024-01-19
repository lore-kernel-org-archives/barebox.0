Delivery-date: Fri, 19 Jan 2024 07:51:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQij5-006dGc-1s
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 07:51:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQij6-0007uB-AK
	for lore@pengutronix.de; Fri, 19 Jan 2024 07:51:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bn2gsIS7ZnlrHvjm1bl8SgyDkVPRtYrZEH33QxW3pgw=; b=2fHKfKYrZB1kcHlx4Yrriyb/IP
	7H2PPeSpAS6O1yD6iOTb4+0wjGmxdAVBuVf62jb0CzfFlEcGAnxLfgWCUAOYYUiPpF1hxFn+uYOGF
	oeykhwZBDHo8WKmehq8JYXrGaZG+mBYuoxXEnMUyszSeDt2ecGl2P/1KL5vWinGw9y1ZzHjANEnpl
	/zAnzI5yXD0BXQl1C0O+OkQLLY1QmNAh086ow4BukWxsrvMqWehZ1F9rZ1br+dOdyB/H3wZbg/Bk5
	T4uJ/2mE9nkqa5zeaLH3lBjmCufwc4TyIRgRT2wyrMoTcmsGPG7PlwNZ/8K+FjCgXQlIIUnd0yFzH
	UHtbLtIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQii2-004d9t-07;
	Fri, 19 Jan 2024 06:50:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQihx-004d9Q-2g
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 06:50:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQihw-0007rF-1p; Fri, 19 Jan 2024 07:50:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQiht-000rKS-UJ; Fri, 19 Jan 2024 07:50:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQiht-00965X-2p;
	Fri, 19 Jan 2024 07:50:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240118090718.1314156-1-a.fatoum@pengutronix.de>
References: <20240118090718.1314156-1-a.fatoum@pengutronix.de>
Message-Id: <170564702587.2168344.12997376474081606611.b4-ty@pengutronix.de>
Date: Fri, 19 Jan 2024 07:50:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_225029_867666_792115DA 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] clk: make COMMON_CLK a visible symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Jan 2024 10:07:17 +0100, Ahmad Fatoum wrote:
> So far, we expected platforms to select COMMON_CLK if they have a clock
> controller that's covered by the common clk framework and HAVE_CLK if
> they have a legacy clock driver.
> 
> With the addition of SCMI clocks, platforms, especially virtualized ones,
> that previously didn't need clock support may now want access to them.
> 
> [...]

Applied, thanks!

[1/2] clk: make COMMON_CLK a visible symbol
      https://git.pengutronix.de/cgit/barebox/commit/?id=98a65c0d6af8 (link may not be stable)
[2/2] clk: select CLKDEV_LOOKUP from COMMON_CLK
      https://git.pengutronix.de/cgit/barebox/commit/?id=f9c6eb75f564 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



