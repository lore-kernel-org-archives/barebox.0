Delivery-date: Mon, 15 Mar 2021 10:26:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLjUD-0000fq-Eq
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 10:26:05 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLjUC-0001Z9-Mt
	for lore@pengutronix.de; Mon, 15 Mar 2021 10:26:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IxlWb+sEajRHbArFKqIRF5LhFAJQ8bkXyF7vdOJ1yCU=; b=Ymrj+vJYOH+FHQZJq2iFB8eGE
	/fv+VBwlLLvRWDP+JZtfkIbybfjloCyjREMdhlCG6hdxh7bZabU07DtYquU6pJ+sAgJMKLMvLgBV/
	v/67Tky4oCGLHHQ2J6XOgE9kcdFcVheRZuAm+8lLVm85XLDw50VMLsbibziAHGf8/YtF9FUmne567
	4nkErMGbLfmcKiCaP1vPb0VovsxXvQjFCgsHEJOfk5SdmfOeIdd6WnZ2OoY4p0y2aBXC29EcLkESB
	df6StTq4zAEJGnvdbK9nu20Q6+MgFNT/FLrV8mniNLgx+luGrqNdhQ6UJ8W0OK/aF7aIFQzPmgReG
	DAPfMCfSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLjTB-00FNFg-Fq; Mon, 15 Mar 2021 09:25:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLjT1-00FNEV-34
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 09:24:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLjT0-0001Iv-Bp; Mon, 15 Mar 2021 10:24:50 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLjT0-0002us-2M; Mon, 15 Mar 2021 10:24:50 +0100
Date: Mon, 15 Mar 2021 10:24:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
 Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20210315092450.GP23724@pengutronix.de>
References: <20210312101309.29650-1-s.hauer@pengutronix.de>
 <fdfda15d-cdcd-19a7-a874-98c0b2b3c89c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fdfda15d-cdcd-19a7-a874-98c0b2b3c89c@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:23:49 up 25 days, 12:47, 81 users,  load average: 1.48, 0.93, 0.53
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_092452_777843_51149B10 
X-CRM114-Status: GOOD (  28.79  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: fix waiting for link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 12, 2021 at 11:23:56AM +0100, Ahmad Fatoum wrote:
> 
> 
> On 12.03.21 11:13, Sascha Hauer wrote:
> > phydev->adjust_link() is called only from phy_update_status() when the
> > link status changes during that function. phydev->link is also updated
> > in genphy_update_link() called from phy_wait_aneg_done(), so it can
> > happen that phydev->link changes outside of phy_update_status(), thus
> > phydev->adjust_link is never called and no link change notice is
> > printed.
> > 
> > Instead of calling genphy_update_link() from phy_wait_aneg_done(), call
> > phy_update_status(). This makes sure that a link change is properly
> > noticed.
> > 
> 
> Fixes: 8f75aa496dcb ("net: reply to ping requests")
> 
> Isn't it?

8f75aa496dcb Isn't exactly broken, it just triggers a problem on this
particular board. It might be confusing to add a fixes tag here.

Sascha

> 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/net/phy/phy.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> > index 622acbe40d..e8e8dad5bd 100644
> > --- a/drivers/net/phy/phy.c
> > +++ b/drivers/net/phy/phy.c
> > @@ -571,7 +571,7 @@ int phy_wait_aneg_done(struct phy_device *phydev)
> >  	}
> >  
> >  	do {
> > -		genphy_update_link(phydev);
> > +		phy_update_status(phydev);
> >  		if (phydev->link == 1)
> >  			return 0;
> >  	} while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND));
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

