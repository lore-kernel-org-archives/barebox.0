Delivery-date: Tue, 01 Mar 2022 09:49:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyC9-00ECMi-JU
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 09:49:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyC8-0007Bj-3W
	for lore@pengutronix.de; Tue, 01 Mar 2022 09:49:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=srf8IF8eRWsigr6irc2AYV/7Bu6WzG0Y+C9WoNg/rxs=; b=iH++IJ10XyO4Bi/7XbYnavBNrT
	dbEoDLZChIy9MBZDfUEJkm9ft8KLIQX0HPFwLqha4y894Ej8mr2T5a3UcVc2iYvHz26HcfRhjMHud
	GD8W/1/VW7j+wKZYtS9QOFDhfRYU1MOOhtP0z+8Zg8uC6LvagB27wNSQz0zfJbsonXti78mFTSC5x
	sjqa22CfymjfK5X1+CKW/CkoORNB+FgLyVJIBBV9hQU1KjIdn8S22WGKgPDdhwxR0WwRi0wfa9+EU
	iR1SqI/vxtt5oieI6v1fAI9Fvd2ZGzvLZXinUehr9pxOVvm4BEyZra+tND9V81ydEmas7aB1fi84v
	wCHSxqFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOyAu-00Fg0H-Tu; Tue, 01 Mar 2022 08:48:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOyAp-00Ffyp-Q8
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 08:48:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOyAo-00070R-KZ; Tue, 01 Mar 2022 09:47:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOyAo-00043s-8M; Tue, 01 Mar 2022 09:47:58 +0100
Date: Tue, 1 Mar 2022 09:47:58 +0100
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220301084758.GP19585@pengutronix.de>
References: <CAMHeXxPD9eOdamfmB84e76YtMrifo663zt7cnDN7Qd=iENQdfA@mail.gmail.com>
 <20211119130623.1948659-1-andrej.picej@norik.com>
 <5d436fc3-fc64-1b68-1a72-510462e08686@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d436fc3-fc64-1b68-1a72-510462e08686@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:44:48 up 80 days, 17:30, 81 users,  load average: 0.05, 0.31, 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_004759_874080_AA490861 
X-CRM114-Status: GOOD (  23.46  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] regulator: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 01, 2022 at 09:21:34AM +0100, Andrej Picej wrote:
> Gentle ping. The patch was probably missed as is was send as an reply to
> Trent's memory leak find.
> 
> On 19. 11. 21 14:06, Andrej Picej wrote:
> > Fix memory leak of propname.
> > 
> > Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> > ---
> >   drivers/regulator/core.c | 6 ++++--
> >   1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> > index 097f7d779..c5cb9ee34 100644
> > --- a/drivers/regulator/core.c
> > +++ b/drivers/regulator/core.c
> > @@ -231,8 +231,10 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
> >   	}
> >   	ret = of_device_ensure_probed(node);
> > -	if (ret)
> > -		return ERR_PTR(ret);
> > +	if (ret) {
> > +		ri = ERR_PTR(ret);
> > +		goto out;
> > +	}

This conflicts with b720625659 ("regulator: allow use of dummy regulator").
I fixed this up, see the result in next.

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

