Delivery-date: Fri, 04 Nov 2022 09:54:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsT9-00Ejuc-Ix
	for lore@lore.pengutronix.de; Fri, 04 Nov 2022 09:54:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsT8-00069j-G2
	for lore@pengutronix.de; Fri, 04 Nov 2022 09:54:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jJaj3mL/h3tOsYZe5lAruRetPwA9lHjutg0D12QF3bA=; b=WksXhh9qDPxNnIldLAimqbi2n5
	PKkVbnN7p8nZJhcYryDgllKrQLt8Gc06hS6uRs44Q3NxaesjQ++Qtdqai2shSNQT9Nw7e2agZN/dD
	vtS3CBEq8VAH4+lbuVmCFNEx8dM8vCPuk90lBXtw0OZ7sK6+y9hF0JVKogy2/YNsOFexyOEPnq0tg
	bTMVAM7u6jL1HFldJRsFC9hkKexiBvDBCUNnK586izxCkD5Tko8bcXJMT6n3oaFdl+kF+rZgKKQHm
	xQ2EuzsrrK6iZ0WMLRxM6qxaFtioer2qDWD6100DSCFQKx5OvFXww26Zww3eUfs0mW0Dv7/g46E3R
	gx6tZ6+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsRt-0030pM-Cq; Fri, 04 Nov 2022 08:53:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsRe-0030oZ-VG
	for barebox@lists.infradead.org; Fri, 04 Nov 2022 08:53:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqsRd-00061u-71; Fri, 04 Nov 2022 09:52:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqsRc-0006X1-Vs; Fri, 04 Nov 2022 09:52:56 +0100
Date: Fri, 4 Nov 2022 09:52:56 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221104085256.GE9130@pengutronix.de>
References: <20221103131351.2059683-1-o.rempel@pengutronix.de>
 <20221103131351.2059683-3-o.rempel@pengutronix.de>
 <20221104082904.GS3143@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104082904.GS3143@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_015259_047400_2A55E3C1 
X-CRM114-Status: GOOD (  25.71  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/6] drivers: net: fec_imx: add promiscuous mode
 configuration support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Nov 04, 2022 at 09:29:04AM +0100, Sascha Hauer wrote:
> On Thu, Nov 03, 2022 at 02:13:48PM +0100, Oleksij Rempel wrote:
> > Add promiscuous mode configuration support to allow using multiple MAC address
> > on same FEC interfaces.
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/net/fec_imx.c | 24 +++++++++++++++++++++++-
> >  drivers/net/fec_imx.h |  1 +
> >  2 files changed, 24 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> > index 673555a48a..a5ff764e28 100644
> > --- a/drivers/net/fec_imx.c
> > +++ b/drivers/net/fec_imx.c
> > @@ -25,6 +25,22 @@
> >  
> >  #include "fec_imx.h"
> >  
> > +static int fec_set_promiscuous_mode(struct eth_device *edev, bool enable)
> > +{
> > +	struct fec_priv *fec = (struct fec_priv *)edev->priv;
> > +	u32 rcntl;
> > +
> > +	rcntl = readl(fec->regs + FEC_R_CNTRL);
> > +
> > +	if (enable)
> > +		rcntl |= FEC_R_CNTRL_PROMISC;
> > +	else
> > +		rcntl &= ~FEC_R_CNTRL_PROMISC;
> > +
> > +	writel(rcntl, fec->regs + FEC_R_CNTRL);
> > +
> > +	return 0;
> > +}
> >  
> >  /*
> >   * MII-interface related functions
> > @@ -257,10 +273,13 @@ static int fec_init(struct eth_device *dev)
> >  	 */
> >  	writel(0x00000000, fec->regs + FEC_IMASK);
> >  
> > +	rcntl = readl(fec->regs + FEC_R_CNTRL);
> > +	rcntl &= FEC_R_CNTRL_PROMISC;
> > +
> >  	/*
> >  	 * Set FEC-Lite receive control register(R_CNTRL):
> >  	 */
> > -	rcntl = FEC_R_CNTRL_MAX_FL(1518);
> > +	rcntl |= FEC_R_CNTRL_MAX_FL(1518);
> 
> Mask out the set bits before setting them again.

Indeed you do that already, I misread the patch

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


