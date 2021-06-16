Delivery-date: Wed, 16 Jun 2021 10:31:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQx1-00028b-Sc
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 10:31:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQx1-0006Xj-1D
	for lore@pengutronix.de; Wed, 16 Jun 2021 10:31:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeryDImEE8aZLkLHXesJ7bsfHKOUzubqIvNazMMb6ws=; b=dqtYZJbiv1Cv24
	gSmj0XqmGNseoi3bCyq2eoFhlNcjU18u5WzGpddQ/Ug27KQm6NYRbxTPNG/38mQrCPBDHbmPDXoTa
	ycmHze3+u61v3+DgOTLcbZFvO9Sf6roVfdDfObSui2qi+rfzfAsPkKUUGrxjkYLszDUtrQM+JBYzK
	ZgCia96pGxzBPZdcgGDfyEjbolEgPqPMn+J9YekykYj2NfImEvf2XiTbhDmXgTagf67u33+PnTUqm
	EWdu+hiKKmmOoSz/nSa5k8Iqu04B+YPpQabH7ObVqmUjtF4+wz7x3BbSGM0tMfgrLz6e17mgd3Xqz
	DR9Nng2aV9qifVbkw5jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQvp-005NsL-I9; Wed, 16 Jun 2021 08:29:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQvk-005Nrs-51
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:29:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltQvi-0006C6-NP; Wed, 16 Jun 2021 10:29:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltQvh-00042g-86; Wed, 16 Jun 2021 10:29:45 +0200
Date: Wed, 16 Jun 2021 10:29:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210616082945.GR9782@pengutronix.de>
References: <20210607141256.24801-1-s.hauer@pengutronix.de>
 <8d61da9c-a55a-9c98-2918-7f9c95df324f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d61da9c-a55a-9c98-2918-7f9c95df324f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:28:44 up 118 days, 11:52, 117 users,  load average: 0.05, 0.11,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_012948_232156_71AB9E40 
X-CRM114-Status: GOOD (  25.46  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: bail out early when rate is already desired one
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 07, 2021 at 05:46:12PM +0200, Ahmad Fatoum wrote:
> 
> 
> On 07.06.21 16:12, Sascha Hauer wrote:
> > Return successfully from clk_set_rate() when the rate is already the
> > desired one. This prevents a failure in clk_set_rate() when the current
> > clock doesn't have a set_rate hook.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/clk/clk.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> > index 8b90f30486..ba726c342c 100644
> > --- a/drivers/clk/clk.c
> > +++ b/drivers/clk/clk.c
> > @@ -169,6 +169,9 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
> >  	if (IS_ERR(clk))
> >  		return PTR_ERR(clk);
> >  
> > +	if (clk_get_rate(clk) == clk_round_rate(clk, rate))
> > +		return 0;
> > +
> >  	if (!clk->ops->set_rate)
> >  		return -ENOSYS;
> 
> 
> This means we can drop 459bf1fd31da ("ARM: clk: rk3188: don't set same
> clk rate twice"), right?

Indeed, yes. This part was lost with "clk: rockchip: Update to current
Linux" anyway, so nothing to do here.

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

