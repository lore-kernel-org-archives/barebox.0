Delivery-date: Mon, 28 Jun 2021 14:53:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxqlF-0007ng-LA
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 14:53:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxqlE-0005Ur-O1
	for lore@pengutronix.de; Mon, 28 Jun 2021 14:53:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RneKwAblEyUu4Pac7qq/+8g0Xnj2Io9gR6/fDfkLo98=; b=Z+TPVfNL1zMWhZivtFij83SZ+8
	qTAZJVF67Pt1aba3fejwxlX1KM0gcJx3gdxwPrWPczsbtmvMEo0ucLsl5X7lDCykSBY/ODtaU15uN
	7UIsI9dBakel+ZM4wmPRj6Kqb5rXnYEX96CDKlF6+MhbRKaZa/4e7EbxZuMM8dF3Yj4H9vvrsdk4a
	FsUtsqDj6nolejq4S+D4JuGHq0S/LF2JIevqnkbi4tP/IppT3fcRNYAuQssHSSplDQx3WLS51f3Q6
	h1pQLfgYd4rTkyo3Ier3Bj8rOP3h3wliuCUJdvqinMPeh2SrHQ6kTeXMeGMLKZsq9Ngx5kNb/sFF5
	U1MnaO5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxqkA-0083ik-Kp; Mon, 28 Jun 2021 12:52:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxqk5-0083hk-Aa
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 12:52:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxqk3-0005HS-Qg; Mon, 28 Jun 2021 14:51:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxqk3-00019l-5S; Mon, 28 Jun 2021 14:51:59 +0200
Date: Mon, 28 Jun 2021 14:51:59 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210628125159.GM9782@pengutronix.de>
References: <20210619054048.498826-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210619054048.498826-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:51:35 up 130 days, 16:15, 121 users,  load average: 0.11, 0.09,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_055201_409055_7E48595C 
X-CRM114-Status: GOOD (  18.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: self: add tests for progress notifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jun 19, 2021 at 07:40:48AM +0200, Ahmad Fatoum wrote:
> We don't yet have any boards upstream that make use of the progress
> notifier, but at least have some tests, so we know it's working.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  lib/Kconfig                   |  2 +-
>  test/kconfig/base.cfg         |  1 +
>  test/kconfig/full.cfg         |  1 +
>  test/self/Kconfig             |  4 ++
>  test/self/Makefile            |  1 +
>  test/self/progress-notifier.c | 79 +++++++++++++++++++++++++++++++++++
>  6 files changed, 87 insertions(+), 1 deletion(-)
>  create mode 100644 test/self/progress-notifier.c

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

