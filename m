Delivery-date: Thu, 28 May 2026 13:10:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYcr-004iaK-0I
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 13:10:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYcq-00049T-Gm
	for lore@pengutronix.de; Thu, 28 May 2026 13:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZSq20OMCCuKZajxppsWLPt+2RbcKNymMpY+HeBxlppI=; b=bm/x+jAv0EqzhzEUn4Sc34XWBD
	FKYCnmFNuqGnkLGZxxH7ElQzI0rlk72yEOYK4CTItbaJE1+/r4V/hpPMMenbPJ9N4qCJY6Obafq67
	gHH4dy43JUpv67zjC+ljWIJmqr0CFodI4XtNxg/Gz4tu2BQbsS7UWyKcsmcxjyDR/J2n/xk7QjD1+
	zqpEHMuuY8T0n+D+ddnBUyedAAFNUxLccFSX6qdMgrQ0FYSqQ3PgjPEsjWyOQcucEQ21wlyvWR2JS
	+84KEzDaEqaLS9Gl2PIzwdKiu1fTKwl96pQq6bBFaTTo+1JRmjmFi7m1o9fM/icrnXTj/BpT2d0cn
	3q88G8YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYbr-00000005dpF-2o4T;
	Thu, 28 May 2026 11:09:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYbp-00000005dol-0X0X
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 11:09:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSYbn-0003ql-Br; Thu, 28 May 2026 13:09:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSYbm-002GDr-2L;
	Thu, 28 May 2026 13:09:03 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSYbn-00000009Odv-0qV1;
	Thu, 28 May 2026 13:09:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: eagle.alexander923@gmail.com
In-Reply-To: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
References: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
Message-Id: <177996654319.2238789.13971715460657857248.b4-ty@pengutronix.de>
Date: Thu, 28 May 2026 13:09:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_040905_191625_FF261BCD 
X-CRM114-Status: UNSURE (   6.82  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2 0/5] ARM64: unify pbl and proper malloc area
 start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 27 May 2026 14:15:19 +0200, Ahmad Fatoum wrote:
> The current location used to place the very early PBL malloc area on
> Rockchip overlaps the OP-TEE region. This series changes ARM64 to
> make the start of the barebox proper malloc area easier to calculate and
> uses that also for the PBL memory region.
> 
> v1: https://lore.barebox.org/barebox/20260522105852.2681680-1-a.fatoum@pengutronix.de/
> 
> [...]

Applied, thanks!

[1/5] arch: introduce new CONFIG_ARCH_HAS_MALLOC_SIZE
      https://git.pengutronix.de/cgit/barebox/commit/?id=660163f709e3 (link may not be stable)
[2/5] arch: introduce CONFIG_BAREBOX_MEMORY_OFFSET
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f63ce43a399 (link may not be stable)
[3/5] ARM64: switch to CONFIG_BAREBOX_MEMORY_OFFSET
      https://git.pengutronix.de/cgit/barebox/commit/?id=a4e8173a985e (link may not be stable)
[4/5] ARM64: configs: drop CONFIG_MALLOC_SIZE=0x0 as it's now the default
      https://git.pengutronix.de/cgit/barebox/commit/?id=f2a6431a7a38 (link may not be stable)
[5/5] ARM64: place PBL malloc area at start of barebox proper malloc area
      https://git.pengutronix.de/cgit/barebox/commit/?id=81fbe2e8d0d4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



