Delivery-date: Wed, 26 Jan 2022 10:27:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCeae-00Dgw3-4j
	for lore@lore.pengutronix.de; Wed, 26 Jan 2022 10:27:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCeac-0004kt-Fq
	for lore@pengutronix.de; Wed, 26 Jan 2022 10:27:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/65ueo6jmHm2nk+3uuOyeTKen6jaia5GnpHs57bq8Tk=; b=2TURlZJSgGTV1M
	4maoPK4ETUNqt3otSk3T6cB9NozOMbem4bURQJuh6aBCzNaCt3qW/lMguxUQ65dEX+oTQX8bgSpmu
	8jdzdGXVecbvdq9/+1ZO2yWFejik8eMaG+JHwU4dN1asUCxopZMvi1V1n7puHzdIUVGWN7syCWRPN
	ibKhYO3LsXNCu1EKMpk2dWLW4mo3jDp4UOCcdslu1hHCWWtuWJCfX9MyHep0joG7sMnu/aXo89usO
	rReOV+weOKofuWshFoTtoZIGv9EsOXZrZYIvDvVX0v0HWn9tww2nOJxL1LxAmX5Ac6nJgoDbYbkEr
	P/Cds2Q/DyVKHpOipYRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCeZG-00AxNt-UT; Wed, 26 Jan 2022 09:26:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCeWN-00AwU2-Id
 for barebox@lists.infradead.org; Wed, 26 Jan 2022 09:23:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCeWM-0004Aw-5N; Wed, 26 Jan 2022 10:23:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCeWL-0002Qv-K7; Wed, 26 Jan 2022 10:23:17 +0100
Date: Wed, 26 Jan 2022 10:23:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220126092317.GG23490@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
 <20210607104411.23071-7-s.hauer@pengutronix.de>
 <20220126093233.026701eddc2a1a7dceb76849@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126093233.026701eddc2a1a7dceb76849@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:08:50 up 46 days, 17:54, 80 users,  load average: 0.01, 0.14, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_012319_665493_C2DAFF4C 
X-CRM114-Status: GOOD (  25.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/12] mci: sdhci: Use Linux defines for
 SDHCI_HOST_CONTROL register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 26, 2022 at 09:32:33AM +0300, Antony Pavlov wrote:
> On Mon,  7 Jun 2021 12:44:05 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> Hi Sascha!
> 
> > To ease porting and comparing of Linux code.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/mci/arasan-sdhci.c       | 12 ++++++------
> >  drivers/mci/atmel-sdhci-common.c | 14 +++++++-------
> >  drivers/mci/dove-sdhci.c         | 10 +++++-----
> >  drivers/mci/sdhci.h              | 17 ++++++++++++-----
> >  4 files changed, 30 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> > index e22db4cfa3..e02f222345 100644
> > --- a/drivers/mci/arasan-sdhci.c
> > +++ b/drivers/mci/arasan-sdhci.c
> 
> ...
> 
> > @@ -200,21 +200,21 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
> >  	}
> >  
> >  	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
> > -			~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
> > +			~(SDHCI_CTRL_8BITBUS | SDHCI_CTRL_8BITBUS);
> >  
> >  	switch (ios->bus_width) {
> >  	case MMC_BUS_WIDTH_8:
> > -		val |= SDHCI_DATA_WIDTH_8BIT;
> > +		val |= SDHCI_CTRL_8BITBUS;
> >  		break;
> >  	case MMC_BUS_WIDTH_4:
>                      ^^^^^^^^
> > -		val |= SDHCI_DATA_WIDTH_4BIT;
>                                   ^^^^^^^^^^^
> > +		val |= SDHCI_CTRL_8BITBUS;
>                                   ^^^^^^^
> Is this correct?

Nope, indeed not. Fortunately it's fixed in the same series in "[PATCH
08/12] mci: sdhci: arasan: Use sdhci_set_bus_width()". The other places
need fixing though, patch is out.

Thanks for noting

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

