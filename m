Delivery-date: Thu, 27 Oct 2022 10:51:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onybX-003uF2-3Q
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 10:51:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onybV-0002pO-VQ
	for lore@pengutronix.de; Thu, 27 Oct 2022 10:51:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vsI4CkuLSDaKIshG9Vy1picYRGxaVt27iy1dwdIgI5w=; b=4BF+TU8mWtuIjljchmQ4ThCABG
	ocrBAjFTKfrOMY8QvznjoYFIQZwqRFVPjGanNInduDqiVPcQivvCwFZrWbORL4UurjsBbsKL5hs4+
	sF2FnJ4f/FcrNIUj8TCyvBFz/+mDA8q2Z05PcTbC+fHO8xRrq1pBuq2A9FcSHezrl4VM6Y0uO/b8r
	wAdAOkRvG/xb0ULIYCNWCj4lcg6t9FsCxpi2C4Ph7n5R3fFK714Pb2CGl6IjYBQFXYwpim5C1S//a
	qIQYCyt8/LcpTfapyCJEG7gDeRPhmhTAZPLftEQdzWkDbGY0uZphHbA56lMk2uNTLWvvg+1DbACB2
	gapE/jIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyaC-00CSzb-G1; Thu, 27 Oct 2022 08:49:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onya7-00CSyO-5K
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 08:49:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onya5-0002Xi-TW; Thu, 27 Oct 2022 10:49:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onya5-00088d-LW; Thu, 27 Oct 2022 10:49:41 +0200
Date: Thu, 27 Oct 2022 10:49:41 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221027084941.GU6702@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
 <20221026064205.2360041-5-a.fatoum@pengutronix.de>
 <20221027072916.GB9130@pengutronix.de>
 <85fd321f-b525-76a2-1184-39a0ac2f9caa@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85fd321f-b525-76a2-1184-39a0ac2f9caa@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_014943_227321_E4EF2DF2 
X-CRM114-Status: GOOD (  23.57  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/6] commands: drvinfo: support filtering by driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 27, 2022 at 09:51:38AM +0200, Ahmad Fatoum wrote:
> Hi!
> 
> On 27.10.22 09:29, Sascha Hauer wrote:
> > On Wed, Oct 26, 2022 at 08:42:04AM +0200, Ahmad Fatoum wrote:
> >> drvinfo can be very long especially for the in-tree defconfigs,
> >> add optional filtering support:
> >> +	if (IS_ENABLED(CONFIG_AUTO_COMPLETE) && argc > 1)
> >> +		filter = strjoin(" ", &argv[1], argc - 1);
> > 
> > Why does this depend on CONFIG_AUTO_COMPLETE?
> 
> drvinfo is something I think should always be enabled and I didn't want
> to bloat it unconditionally.
> 
> > 
> >> +
> >>  	printf("Driver\tDevice(s)\n");
> >>  	printf("--------------------\n");
> >>  	for_each_driver(drv) {
> >> +		if (filter && !str_has_prefix(drv->name, filter))
> >> +			continue;
> > 
> > I don't see how this is expected to work. When you pass multiple drivers
> > as argument 'filter' will be a concatenation of multiple driver names
> > which then matches nothing.
> 
> Autocomplete doesn't work for elements with spaces, so when you write
> 
>   drvinfo TI<Tab>
> 
> You get
> 
>     drvinfo TI DP83
> 
> with no further ability to complete. The prefix matching can work with that
> and will produce:

Then please fix the tab completion accordingly rather than further work
around this. See the series I just sent.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


