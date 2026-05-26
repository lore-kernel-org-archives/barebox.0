Delivery-date: Tue, 26 May 2026 08:57:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRljd-003uxf-0H
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:57:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRljc-00052i-Hw
	for lore@pengutronix.de; Tue, 26 May 2026 08:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zDqLUomElwbUQQc6qxUCax4jPC02Jb56e7d+UzvsAcY=; b=BVt5DasK6eObPjc1O0nsbgcri6
	dSvxvPp2JABwycYqs1mk4n11rVH3kpZa4hrcY/3ogJYV8akELjvxsrB1qUWkIkUzuxpTEx3t1lz+O
	IqLhc399EiHmlYMLN/esPGdhpCFVWovHZKA2p/6tZTg/DwrvxnK27e0XfJECHjjw+wH7n5zKO68cx
	TWJxQuSpG2ChpTco3mNV9dt4unHhi4tA0PuVqSBv6Ft4YJh/doMhnx7Tj0ePtceyt6MyLl3KCAX8M
	pW2eZ3fFBh7axpfiJ2a1P2ZTbE/KG0MDs9Y/H7J+H6Ieu/nd4clxtvGi2d1TNNZkq7MZX0nmTVfpp
	hZqyYpmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRliY-00000001DBs-2EEi;
	Tue, 26 May 2026 06:56:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRliV-00000001DB5-3Jki
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:56:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRliU-0004tO-0q; Tue, 26 May 2026 08:56:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRliT-001sCV-1J;
	Tue, 26 May 2026 08:56:41 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRliT-0000000GaVj-3pxO;
	Tue, 26 May 2026 08:56:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: str@pengutronix.de
In-Reply-To: <20260522134803.2988021-1-a.fatoum@pengutronix.de>
References: <20260522134803.2988021-1-a.fatoum@pengutronix.de>
Message-Id: <177977860191.3953510.12509619058026170338.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:56:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_235643_833329_63BDD568 
X-CRM114-Status: UNSURE (   7.82  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: prevent use of imx_cpu_type in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 May 2026 15:48:00 +0200, Ahmad Fatoum wrote:
> Functions like cpu_is_mx6q internally call cpu_is_mx6() first,
> which can be evaluated at compile-time if only i.MX6 boards are enabled.
> 
> This allowed calling cpu_is_mx6q in PBL entry points as long as barebox was
> compiled for only a single SoC.
> 
> Since the multi-arch/multi-platform support was added however,
> cpu_is_mx6 became a runtime check that's never true in PBL, leading all
> cpu_is_mx* in 32-boards to silently fail at runtime.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX: prevent use of imx_cpu_type in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=945f4513ed3b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



