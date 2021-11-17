Delivery-date: Wed, 17 Nov 2021 08:26:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFKi-0004tt-Ku
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 08:26:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFKh-0002ZR-LM
	for lore@pengutronix.de; Wed, 17 Nov 2021 08:26:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Wuj20+mcAilIHr+oOeptaxQ5T/ki6WYKRQwqS2/otk=; b=pMB2gyPgXpExqk
	UkVwO5gRz6WB8iMViAQ5S48BwMiXFI+/2ISox788JknpoebI5JnJQ66hCQ3mlMDYKZgL4gAtaTOnl
	QFf2XxNH8DCa5UJqCxsD+hLQbXh35FI5gLye4TiCEgepyCeCABSO2N4x0XfqrqCEy3VrilD4FQYVp
	F6jh3GXSCuIJDIAyUc8rP48ZKHfBjILPNqUq8ZnP++8v8kkXo144L69T0qYK3LCc95xXMdX1l+HPu
	JX4atimRld8+s5aqMOnbcG/GflIrC+C1wYFiOdRHjWNdq6IUyrtCrDOtvx9EBqFB0GY6p6F7ILv+6
	Ppq4Cf+vs5eEmDBA0xqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnFJJ-003lkI-Sl; Wed, 17 Nov 2021 07:24:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnFIX-003lQb-AF
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 07:24:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnFIW-00027h-2f; Wed, 17 Nov 2021 08:24:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnFIT-0005jo-8M; Wed, 17 Nov 2021 08:23:57 +0100
Date: Wed, 17 Nov 2021 08:23:57 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Joacim Zetterling <joaze@westermo.com>
Cc: barebox@lists.infradead.org
Message-ID: <20211117072357.GJ6556@pengutronix.de>
References: <20211101121109.GA56533@wsevst-c0022>
 <20211105093927.GI25698@pengutronix.de>
 <20211115140539.GA118449@wsevst-c0022>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115140539.GA118449@wsevst-c0022>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:23:09 up 272 days, 10:47, 118 users,  load average: 0.38, 0.22,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_232401_392296_4D069C50 
X-CRM114-Status: GOOD (  33.37  )
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
Subject: Re: [PATCH v3] Fix problem with imx_ddrc_sdram_size calc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 15, 2021 at 03:05:39PM +0100, Joacim Zetterling wrote:
> On Fri, Nov 05, 2021 at 10:39:27AM +0100, Sascha Hauer wrote:
> > Hi Joacim,
> > 
> > On Mon, Nov 01, 2021 at 01:11:09PM +0100, Joacim Zetterling wrote:
> > > There was some issues with the imx_ddrc_sdram_size calculation.
> > > 
> > > If we compare the imx8mn DDR4 evk against the LPDDR4 variant in
> > > code and in the datasheets, we see the following:
> > > 
> > >              DDR4   LPDDR4
> > >   ========================
> > >   Bus width   16      16
> > >   Rank        1       1
> > >   Ranks       1       1
> > >   Banks       4       8
> > >   Banks grps  2       1
> > >   Rows        17      15
> > >   Col         10      10
> > > 
> > > This gives us the following problems:
> > > 
> > > 1. Bus width problem.
> > >    Does not support 16 bit SDRAM bus mode, only 32 bit supported
> > > 
> > > 2. Row size problem.
> > >    Only up to 16 bit row size support.
> > > 
> > > 3. Bank groups support.
> > >    Only support of 1 bank group.
> > > 
> > > 4. Bit count problem.
> > >    The imx_ddrc_count_bits function does not do a correct count.
> > 
> > Could you split this into four patches fixing one problem at a time?
> > I am not sure the problems can be separated from each other entirely,
> > but splitting this up would make it much easier to understand the
> > problems and also their fixes. We'll be glad having smaller patches
> > should we ever have to look at this again.
> > 
> > Sascha
> I agree with You that the problems can not be separated completely.
> But I will try to do my best. Do You prefer a patch set or separately
> patches or a combination of them both?

A patch set would be fine.

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

