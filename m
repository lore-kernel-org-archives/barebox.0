Delivery-date: Mon, 19 Feb 2024 16:21:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc5Se-00EnYs-2n
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 16:21:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc5Se-0000Vi-5Z
	for lore@pengutronix.de; Mon, 19 Feb 2024 16:21:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9LJsSP7druxj+0yWk36Be9rQzjS5u7JPUkREr5HMFs4=; b=4JT5ZS8/C74Eo7AGwyA8b/3t54
	seG96Q+SHMoAgmt0N7Y8a053aBq8R5EhrDtNpDR+vee1C2G2Ubw5pag3/zRIayon9oGLxkcJHSbhw
	Qn5P0LKkJ2t393rr4M58JvF+WBuK90mdaAWZKhGAzCciNz2DnpBU3qCfOIWq65JQ9JBGgdMMFeoPo
	xIDAm7gg9HrPUpf6mdfMmJEyHkmOUKdcmfCRVFcTFs9fb+A8nbLPRJXa2TvH7QQvPkWOhtZxQHSf4
	tZP0NdN9nOIdC8/bALHGiJsIA9+eawBpJVdq+xtqZ1z9cp1dRVQgFRpiPv4GNBiPnX7syPNp0B3mQ
	rK1lEl0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc5SD-0000000B4da-1aEm;
	Mon, 19 Feb 2024 15:21:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc5SA-0000000B4cA-0OdM
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 15:21:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rc5S7-00008Y-GF; Mon, 19 Feb 2024 16:21:07 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rc5S7-001g1e-3Z; Mon, 19 Feb 2024 16:21:07 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rc5S7-00FusY-06;
	Mon, 19 Feb 2024 16:21:07 +0100
Date: Mon, 19 Feb 2024 16:21:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZdNx4yaum8DXpMAZ@pengutronix.de>
References: <20240219145159.1962618-1-s.hauer@pengutronix.de>
 <20240219145159.1962618-3-s.hauer@pengutronix.de>
 <20240219145936.uiwy7frsbk4grtcy@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240219145936.uiwy7frsbk4grtcy@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_072110_170699_2DAA1CE8 
X-CRM114-Status: GOOD (  26.15  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] bootsource: add function to get device_node we
 booted from
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 19, 2024 at 03:59:36PM +0100, Marco Felsch wrote:
> On 24-02-19, Sascha Hauer wrote:
> > We have a relation between the bootsource and the corresponding
> > device_node. Add a function to get the device_node we booted from.
> > This is already open coded in of_fixup_bootargs_bootsource(),
> > use the newly created function for it.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/bootsource.c  | 14 ++++++++++++++
> >  common/oftree.c      |  7 +------
> >  include/bootsource.h |  1 +
> >  3 files changed, 16 insertions(+), 6 deletions(-)
> > 
> > diff --git a/common/bootsource.c b/common/bootsource.c
> > index da528a5b9b..5666d8d30d 100644
> > --- a/common/bootsource.c
> > +++ b/common/bootsource.c
> > @@ -108,6 +108,20 @@ char *bootsource_get_alias_name(void)
> >  	return basprintf("%s%d", stem, bootsource_instance);
> >  }
> >  
> > +struct device_node *bootsource_of_node_get(struct device_node *root)
> > +{
> > +	struct device_node *np;
> > +	char *alias_name;
> > +
> > +	alias_name = bootsource_get_alias_name();
> 
> 	if (!alias_name) {
> 		pr_warn("No alias found for bootsource\n");
> 		return 0;
> 	}

I'll have to look over this. With this we assume that for example the
mmcx alias really matches bootsource instance x. This is not the case,
instead we have to look for an alias named "barebox,bootsource-%s%u".
This alias doesn't exist for the majority of platforms, so when we
issue a warning here it would be seen on most boards.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


