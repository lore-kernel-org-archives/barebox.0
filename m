Delivery-date: Fri, 14 Jan 2022 10:16:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IhB-001uHj-7u
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 10:16:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Ih9-0005zZ-Ot
	for lore@pengutronix.de; Fri, 14 Jan 2022 10:16:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GKBDDebezvyTrrRJ6tAkfCEVcozFrYiv1FbUI/HJOU=; b=lfrFiQoKImOZ1J
	730dHDr1l42NEJkvRsbExtwWsms7/PZu4C9PsL2zphHfNm+PkIOmY5EYLHOj71Wkb3q8RuKW0z/yG
	fQ2rxy4TwR8URs8vV3f+snQQlajj40x06qffZ3FmLWh74z2/HX+hfHwwUT71kty21qt51whagevCY
	/iLYpQcqGhZlT7lwGkz2Gd15l5Hmk0mJueSMWRDWkkE2xtVtWzx2PRqfjW0xt9J7np5xB/zhrzWeX
	nfnDrn0JZJif/h/c4WOMkOeFn1dZwKO9gnI0Ql34vB3lSgU/1JfGbGG3fdiWmV2NX2CGGMkbnB0Kp
	O1g3wzbxApZf7wh+wwbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Ifs-008RAo-0w; Fri, 14 Jan 2022 09:15:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Ifn-008RAC-Ed
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 09:15:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8Ifk-0005gO-U7; Fri, 14 Jan 2022 10:15:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8Ifk-0000um-Bw; Fri, 14 Jan 2022 10:15:00 +0100
Date: Fri, 14 Jan 2022 10:15:00 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20220114091500.GA2312@pengutronix.de>
References: <3fb6debc-4891-c366-94df-0d7c0b80685c@wolfvision.net>
 <20211117142448.2091017-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117142448.2091017-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:47:06 up 34 days, 17:32, 75 users,  load average: 0.13, 0.14, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_011503_519420_48D28E3A 
X-CRM114-Status: GOOD (  21.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] bootsource: add helper to set instance by name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 17, 2021 at 03:24:48PM +0100, Michael Riesch wrote:
> Instance numbers should be related to device tree aliases, which may be
> board-specific.

When instance numbers were introduced they were meant to be SoC
specific, i.e. they should correspond to the numbers in the manual.
When starting with device tree aliases the alias numbers were assumed to
match the numbers in the manual. On i.MX this is still mostly true, but
on (most?) other SoCs it is not. In barebox we have several users of
bootsource_get_instance() which rely on the instance being the hardware
instance number, so we can't just change that.

If we have to keep track of both hardware numbers and alias numbers we
have to store both separately and not change the meaning of the existing
instance number.

Thinking this further I don't think the alias is worth anything because
it may differ between the barebox internal device tree and the one the
kernel is booted with. We should rather store the device node providing
the bootsource. From that we can retrieve the alias matching a given
device tree if we still need it.

That said, I don't know a good way how we get there from our existing
codebase.

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

