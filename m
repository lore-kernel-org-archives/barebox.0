Delivery-date: Thu, 01 Jun 2023 19:14:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4lsl-0065i6-Jc
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 19:14:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4lsi-0004ts-Td
	for lore@pengutronix.de; Thu, 01 Jun 2023 19:14:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7sPBqg4YuFBImI/hqSpk1QYUf0i9X+yEaR9HvNzAyT0=; b=aGXp/eX/xwW0siVkYA6saXBmRI
	WjCc1GDFC/bJHNQWS2QzMUOwRyLw6ei2jfaUssdH5RPHlbUlGdomOpnWyhrCfvyOMuljRohjuEiaO
	rJvcvmL9nhhgX4IuNUPRm0uzpEu4hduB4YWWKSCbj86hN6PanHhFftXefPRmITJHwkPRsrHR0K2cY
	6t/CXnVqFxiY7qEl+VepQHiLtAzsNLkiqN6UgZ3kC2iSRNJBRHoR4eC6jydiXVZqjkcHciW5L+Vxm
	QQ0hqFeAAK7diWLA2V+y34vap6Xd/UclyyDUZSUUfaHbm4N8yA4qJgqhFfnhvRRX2yiYKGPMKTxtK
	G/BfXV6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4lrW-004NOS-0U;
	Thu, 01 Jun 2023 17:13:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4lrS-004NNj-1s
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 17:13:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4lrP-0004pg-Tg; Thu, 01 Jun 2023 19:13:15 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4lrP-0004nc-G7; Thu, 01 Jun 2023 19:13:15 +0200
Date: Thu, 1 Jun 2023 19:13:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230601171315.4ck3kdwybpaiezmh@pengutronix.de>
References: <20230601142506.1069998-1-m.felsch@pengutronix.de>
 <20230601143209.GN18491@pengutronix.de>
 <ZHjCvPyB21Y2AWw+@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZHjCvPyB21Y2AWw+@tellis.lin.mbt.kalray.eu>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_101318_618499_BF1388CB 
X-CRM114-Status: GOOD (  24.29  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpiolib: fix gpio-hog functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-01, Jules Maselbas wrote:
> On Thu, Jun 01, 2023 at 04:32:09PM +0200, Sascha Hauer wrote:
> > On Thu, Jun 01, 2023 at 04:25:06PM +0200, Marco Felsch wrote:
> > > This reverts commit 3641d381e63321016e3bf09504852a6b2a2f879b.
> > > 
> > > Since the of_xlate support the gpio-hog support is broken because the
> > > 'gpio' property used to specify the gpio-hog pin does not contain any
> > > phandle. Due to the fact that of_xlate was never implemented the easiest
> > > way to fix the gpio-hog functionality is to revert the commit.
> > 
> > 3641d381e63321016e3bf09504852a6b2a2f879b was introduced for sunxi. As
> > Jules is currently working on sunxi support this is likely needed soon,
> > so what's the second easiest way?
> I am not very familiar with the gpio-hog concept, what I understand is:
> 
> "gpio-hog" are a description of gpios config to be initialized early on.
> The main difference with classic gpio is the omission of the phandle of
> the gpio controller (since gpio-hog are expected to be a child node of
> gpio controller). Correct me if I am wrong.

Correct hogs are used if you have a static gpio e.g. a power-switch
which is never turned off.

> In this case the current version of of_hog_gpio fails since it calls
> of_parse_phandle_with_args which expect the gpio to start with the controller
> phandle.

Correct.

> My best guess would be to rework of_hog_gpio to not use of_parse_phandle_with_args
> and probably not gpio_of_xlate

This would be a partly revert of your commit.

> This sounds easier than a sync of barebox gpio code with linux.

You don't need to sync the complete code, let me check if I can prepare
a patch which adds the of_xlate support and is a bit more in sync with
the kernel. If this is not possible I go with the partly revert.

Regards,
  Marco


