Delivery-date: Wed, 02 Nov 2022 12:02:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBW9-00CEtu-JG
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 12:02:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBW8-00030O-BE
	for lore@pengutronix.de; Wed, 02 Nov 2022 12:02:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NfcaaaM1yc5DMz3vwKeB2tZupDWTZ9rQxpO7fOOmfMs=; b=KtG6SLUA1kaND3HjSxkQTNXdPV
	GlEaTc7gW10RDsvmAyXtzG3hjBM/7S/2RMlw5LxhAJV+hb0ToBp1K/xsk3moJXEaFg2Y43z5lLtqH
	OEvHgGBgdL41U9YYo+RQS8Ld7RnVqE3Un5Na25hENUtCqSD3+MHeuapmMQMCknp+M9UzBmLiHi1gD
	r0Lz87fuc6ZFIv59bayhDYbh78UB/kG+GJMFO6tfoJc6JMamPGSkZ5kTClr64E1w3ETjXaTGQAwj7
	VNEt4qltv4mLfyozuvx7VMRpDsjCkI9zSvdmw2OwdCaTzhkEMgZgXy/k9Sc31VbYm9NSvWyxDKxOp
	i67ln73g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBUp-00AeiO-05; Wed, 02 Nov 2022 11:01:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBUk-00Aegz-4h
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 11:01:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oqBUh-0002bb-Fs; Wed, 02 Nov 2022 12:01:15 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oqBUh-0002EE-AC; Wed, 02 Nov 2022 12:01:15 +0100
Date: Wed, 2 Nov 2022 12:01:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221102110115.gfixasjd7r5z4bom@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
 <20221101153048.772146-15-s.hauer@pengutronix.de>
 <20221102084441.o53v5zl3ki5if43r@pengutronix.de>
 <20221102105532.GK3143@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102105532.GK3143@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_040118_199102_C2D21C1A 
X-CRM114-Status: GOOD (  19.37  )
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

On 22-11-02, Sascha Hauer wrote:
> On Wed, Nov 02, 2022 at 09:44:41AM +0100, Marco Felsch wrote:
> > > +static void dump_fcb_n(struct fcb_block **fcbs, int n)
> > > +{
> > > +	int i;
> > > +
> > > +	if (!n || !fcbs[n])
> > > +		goto skip_compare;
> > > +
> > > +	for (i = 0; i < n; i++) {
> > > +		if (!fcbs[i] || !fcbs[n])
> > > +			continue;
> > > +
> > > +		if (!memcmp(fcbs[i], fcbs[n], sizeof(struct fcb_block))) {
> > > +			printf("FCB block#%d: same as FCB block#%d\n", n, i);
> > > +			return;
> > > +		}
> > > +	}
> > > +
> > > +skip_compare:
> > > +	if (fcbs[n]) {
> > > +		printf("FCB block#%d:\n", n);
> > > +		dump_fcb(fcbs[n]);
> > > +	} else {
> > > +		printf("FCB block#%d: NULL\n", n);
> > > +	}
> > > +}
> > > +
> > > +#ifdef CONFIG_ARCH_IMX28
> > 
> > Why this #ifdef? Can't we do this by cpu_is_mx28()?
> 
> i.MX28 is a different architecture in barebox, it's in
> arch/arm/mach-mxs/. We do not have the cpu_is_mx7() and cpu_is_mx6ul()
> macros there.

Argh.. always messing the mxs/mxc stuff up in my head. Got your point,
but shouldn't we add the macros instead of adding the #ifdef here?

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


