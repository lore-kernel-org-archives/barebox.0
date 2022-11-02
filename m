Delivery-date: Wed, 02 Nov 2022 11:57:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBQa-00CDyi-KK
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 11:57:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBQZ-0001s2-DR
	for lore@pengutronix.de; Wed, 02 Nov 2022 11:56:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BaSbbTmYbI++aQKzrKJDm/yo4bUFpwQBIQUerTIkR5E=; b=1cpZs9rlhwGNwgiQMFO9zpgqB3
	tjeqrmoRL/xYxsjvcCTwCRNvV80L5PMfB5jXJEQvminT66lFzNENU1NSZcNooe49DY6WTn79kJ/K7
	Tq1MTfjeoB8UMmj/YKnq/UTHR3M7BE053LXRAu0MvEda3OvFwYP9hKYu0EelohLe1peRn9MIp1WwM
	HDrTw2MGrq5e6rMd3GTq3K41XvdRjDk22TyGjJ95KEqE6SgmeKW+l0GmxTw9Cn7h5LnlRq2q3r8Ky
	AwYJ5ex7DGLuDDuDArcpJqiEf9aeUESvABZMmQSueDmZcbjLBgCdaHile0h+TE7jVit6GmAAM2cwh
	efXml49g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBPJ-00AdJ6-I9; Wed, 02 Nov 2022 10:55:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBPE-00AdHU-Jk
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 10:55:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBPA-0001V5-Vr; Wed, 02 Nov 2022 11:55:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBPA-0001XW-OJ; Wed, 02 Nov 2022 11:55:32 +0100
Date: Wed, 2 Nov 2022 11:55:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221102105532.GK3143@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
 <20221101153048.772146-15-s.hauer@pengutronix.de>
 <20221102084441.o53v5zl3ki5if43r@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102084441.o53v5zl3ki5if43r@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_035536_666350_35EC861F 
X-CRM114-Status: GOOD (  18.27  )
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

On Wed, Nov 02, 2022 at 09:44:41AM +0100, Marco Felsch wrote:
> > +static void dump_fcb_n(struct fcb_block **fcbs, int n)
> > +{
> > +	int i;
> > +
> > +	if (!n || !fcbs[n])
> > +		goto skip_compare;
> > +
> > +	for (i = 0; i < n; i++) {
> > +		if (!fcbs[i] || !fcbs[n])
> > +			continue;
> > +
> > +		if (!memcmp(fcbs[i], fcbs[n], sizeof(struct fcb_block))) {
> > +			printf("FCB block#%d: same as FCB block#%d\n", n, i);
> > +			return;
> > +		}
> > +	}
> > +
> > +skip_compare:
> > +	if (fcbs[n]) {
> > +		printf("FCB block#%d:\n", n);
> > +		dump_fcb(fcbs[n]);
> > +	} else {
> > +		printf("FCB block#%d: NULL\n", n);
> > +	}
> > +}
> > +
> > +#ifdef CONFIG_ARCH_IMX28
> 
> Why this #ifdef? Can't we do this by cpu_is_mx28()?

i.MX28 is a different architecture in barebox, it's in
arch/arm/mach-mxs/. We do not have the cpu_is_mx7() and cpu_is_mx6ul()
macros there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


