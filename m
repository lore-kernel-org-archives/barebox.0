Delivery-date: Tue, 21 May 2024 08:18:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Ipo-00Bnbn-1a
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:18:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Ipn-0005cM-T3
	for lore@pengutronix.de; Tue, 21 May 2024 08:18:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hek+P5fwmeFLT3b1omLh3P0xfba46RJIqA2xMNN4CXc=; b=3QfIgu15kD37QVPvr3JjrHznQh
	HmtsklHeoLzAjILB6XWtvPP60vl4AGyKOW+QZD6twws7uclRZrXHlRjthq3HusYkupXK0DNMgFNxC
	tq8ILWU1yHyTPos/lMCePVOrzLK5Z1Bp/H8waQlg+tHtlZMR00ebzJBFgWiEYaxnBYAKu39/gNmTz
	Yl2Q3OHaEvMx8mYk6+ee050bsVg/vYqyeFsGWJM+p0unCbmpbr7PzoHJ/oWrnmUa+GOM6ADd8IUJl
	FRUGJwrnipjMA52QduwXXdimp26U0PMuUxC9xzI/T9ACXmuQtpM6OT4LDrkrOz6JvwY95HyrsApFe
	3kTeSZ6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Ip6-0000000GSIc-0TUN;
	Tue, 21 May 2024 06:18:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Ip0-0000000GSFA-2Nsf
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:18:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iow-0005Op-F5; Tue, 21 May 2024 08:17:58 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iow-002LsU-2F; Tue, 21 May 2024 08:17:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iow-005zXx-01;
	Tue, 21 May 2024 08:17:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240516070822.2746845-1-s.hauer@pengutronix.de>
References: <20240516070822.2746845-1-s.hauer@pengutronix.de>
Message-Id: <171627227800.1428178.6212792306461694761.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 08:17:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_231802_822298_D2A96F5D 
X-CRM114-Status: UNSURE (   6.69  )
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
Subject: Re: [PATCH 0/7] replace cdev_by_name() with cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 May 2024 09:08:15 +0200, Sascha Hauer wrote:
> As Ahmad noticed cdev_by_name() doesn't increase the reference counting
> on the returned cdev which causes problems further down the road. This
> series replaces some of the easier occurences of cdev_by_name() with
> cdev_open_by_name().
> 
> Sascha Hauer (7):
>   ARM: Freescale i.MX23 evk: use cdev_open_by_name()
>   ARM: tx28: use cdev_open_by_name()
>   ARM: omap: use cdev_open_by_name()
>   ARM: Rockchip: use cdev_open_by_name()
>   commands: devlookup: use cdev_open_by_name()
>   commands: findmnt: use cdev_open_by_name()
>   bootm: use cdev_open_by_name()
> 
> [...]

Applied, thanks!

[1/7] ARM: Freescale i.MX23 evk: use cdev_open_by_name()
      https://git.pengutronix.de/cgit/barebox/commit/?id=3111bf9b13d2 (link may not be stable)
[2/7] ARM: tx28: use cdev_open_by_name()
      https://git.pengutronix.de/cgit/barebox/commit/?id=05164ce75799 (link may not be stable)
[3/7] ARM: omap: use cdev_open_by_name()
      https://git.pengutronix.de/cgit/barebox/commit/?id=50788af27a89 (link may not be stable)
[4/7] ARM: Rockchip: use cdev_open_by_name()
      https://git.pengutronix.de/cgit/barebox/commit/?id=9da41e4d65fc (link may not be stable)
[5/7] commands: devlookup: use cdev_open_by_name()
      https://git.pengutronix.de/cgit/barebox/commit/?id=bc5868b647aa (link may not be stable)
[6/7] commands: findmnt: use cdev_open_by_name()
      https://git.pengutronix.de/cgit/barebox/commit/?id=7aa92b02b84a (link may not be stable)
[7/7] bootm: use cdev_open_by_name()
      https://git.pengutronix.de/cgit/barebox/commit/?id=888a17fa7e95 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



