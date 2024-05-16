Delivery-date: Thu, 16 May 2024 16:43:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7cKm-00HDgu-1I
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 16:43:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7cKl-0000MO-RI
	for lore@pengutronix.de; Thu, 16 May 2024 16:43:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K0Azkq0VFfHfpjC4CbN8nyYNWta40HGTZ8DfsnjWa8s=; b=PzQRNo+rXpUWBJVgYCT/EhCTG+
	+3yIo3y4FC9SvghIcnFOBXxQQBflITYsDrVfRMlyZPBwoM7F92T2wBj2rJ7F7XJ/azaXmdan6F8KS
	KigGa2XbsyGHoAnTY+jYcuxABrX1fhLalvm1E6aDADuSm5FYCdIfyxwNum4Ile/YVe8okWRZVOZY6
	AZg83wDsZRqYMLhFa3YLZJMzuMnaU0hciRcMIXukVq3o5c3LHg5VAufC7tlPQm9PuSscuTF/4LW5Q
	FsNrR41iPMb1RD1+gzHg0k9B8f6oM/MnMHpjryEgZKZn2lIgeIUIWgT1/1+XtEeUWhsmEnR1JbRLE
	dTY4uzAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7cK6-00000005BrP-3TTU;
	Thu, 16 May 2024 14:43:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7cK3-00000005Bpw-3ttq
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 14:43:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1s7cK0-00006B-Vg; Thu, 16 May 2024 16:43:04 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1s7cK0-001jMR-Iw; Thu, 16 May 2024 16:43:04 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1s7cK0-00Eu5g-1e;
	Thu, 16 May 2024 16:43:04 +0200
Date: Thu, 16 May 2024 16:43:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240516144304.gtzxiuhvvjuprxwj@pengutronix.de>
References: <20240516070822.2746845-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240516070822.2746845-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_074308_038795_916A6BD1 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] replace cdev_by_name() with cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 24-05-16, Sascha Hauer wrote:
> As Ahmad noticed cdev_by_name() doesn't increase the reference counting
> on the returned cdev which causes problems further down the road. This
> series replaces some of the easier occurences of cdev_by_name() with
> cdev_open_by_name().

Can we kindly inform the user with a print_once() or so that
cdev_by_name should be replaced with cdev_open_by_name()?

Regards,
  Marco

> Sascha Hauer (7):
>   ARM: Freescale i.MX23 evk: use cdev_open_by_name()
>   ARM: tx28: use cdev_open_by_name()
>   ARM: omap: use cdev_open_by_name()
>   ARM: Rockchip: use cdev_open_by_name()
>   commands: devlookup: use cdev_open_by_name()
>   commands: findmnt: use cdev_open_by_name()
>   bootm: use cdev_open_by_name()
> 
>  arch/arm/boards/freescale-mx23-evk/mx23-evk.c | 13 +++++++------
>  arch/arm/boards/karo-tx28/tx28-stk5.c         | 13 ++++++++-----
>  arch/arm/mach-omap/omap_generic.c             |  5 ++++-
>  arch/arm/mach-rockchip/bbu.c                  |  8 +++++++-
>  commands/devlookup.c                          | 15 ++++++++++-----
>  commands/findmnt.c                            |  3 ++-
>  common/bootm.c                                |  5 ++++-
>  7 files changed, 42 insertions(+), 20 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 


