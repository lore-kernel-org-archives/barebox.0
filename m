Delivery-date: Wed, 02 Nov 2022 12:31:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBxn-00CGzJ-Kw
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 12:31:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBxm-0007LW-Jd
	for lore@pengutronix.de; Wed, 02 Nov 2022 12:31:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LgzaoAZaS/vm8D4y72B71FZiSCxWSbVen8WibYTAR2Y=; b=vf5HsPFzwJQfTppX5HkIgWOIFw
	Ch4TnHhp172wRtcrL0gtWPvhY/Y1K9svCkKSYq+kIdLddq9n9nM5ZFGYtAm5fqg03O4jjVsMA/cEx
	poneckONJJMI0KPkwQh47bpJvVW1TGC5lOEUVXouFBoQsdRDFI8U2Kq9wz2kJ6vobD7tVa1MnfZX8
	VQSh1DLxf6ZpQELQo+QpnSVlujoeE6GX69iDEhyHSDbOb01WTC1+2N+pfwN+4qCm0UFRtk0WH/vPx
	YMC2tieAJpxR6agOPOIjNz3MjaCYxTOS2Azi6s4fSSQ5AmjvoCtUjmuNO6bH6YEd4SJz9FiBXDRqg
	phoy0ZDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBwT-00AlXz-3r; Wed, 02 Nov 2022 11:29:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBwO-00AlX7-IF
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 11:29:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBwM-0006sd-Cw; Wed, 02 Nov 2022 12:29:50 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBwM-0004PF-4z; Wed, 02 Nov 2022 12:29:50 +0100
Date: Wed, 2 Nov 2022 12:29:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221102112950.GO3143@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
 <20221101153048.772146-15-s.hauer@pengutronix.de>
 <20221102084441.o53v5zl3ki5if43r@pengutronix.de>
 <20221102105532.GK3143@pengutronix.de>
 <20221102110115.gfixasjd7r5z4bom@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102110115.gfixasjd7r5z4bom@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_042952_622073_4277F879 
X-CRM114-Status: GOOD (  24.24  )
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
Subject: Re: [PATCH 14/14] imx-bbu-nand-fcb: Add fcb command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 02, 2022 at 12:01:15PM +0100, Marco Felsch wrote:
> On 22-11-02, Sascha Hauer wrote:
> > On Wed, Nov 02, 2022 at 09:44:41AM +0100, Marco Felsch wrote:
> > > > +static void dump_fcb_n(struct fcb_block **fcbs, int n)
> > > > +{
> > > > +	int i;
> > > > +
> > > > +	if (!n || !fcbs[n])
> > > > +		goto skip_compare;
> > > > +
> > > > +	for (i = 0; i < n; i++) {
> > > > +		if (!fcbs[i] || !fcbs[n])
> > > > +			continue;
> > > > +
> > > > +		if (!memcmp(fcbs[i], fcbs[n], sizeof(struct fcb_block))) {
> > > > +			printf("FCB block#%d: same as FCB block#%d\n", n, i);
> > > > +			return;
> > > > +		}
> > > > +	}
> > > > +
> > > > +skip_compare:
> > > > +	if (fcbs[n]) {
> > > > +		printf("FCB block#%d:\n", n);
> > > > +		dump_fcb(fcbs[n]);
> > > > +	} else {
> > > > +		printf("FCB block#%d: NULL\n", n);
> > > > +	}
> > > > +}
> > > > +
> > > > +#ifdef CONFIG_ARCH_IMX28
> > > 
> > > Why this #ifdef? Can't we do this by cpu_is_mx28()?
> > 
> > i.MX28 is a different architecture in barebox, it's in
> > arch/arm/mach-mxs/. We do not have the cpu_is_mx7() and cpu_is_mx6ul()
> > macros there.
> 
> Argh.. always messing the mxs/mxc stuff up in my head. Got your point,
> but shouldn't we add the macros instead of adding the #ifdef here?

Right. We have several cpu_is_mx* macros there already, so we can just
add the missing ones and avoid the ifdeffery.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


