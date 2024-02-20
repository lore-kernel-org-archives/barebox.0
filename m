Delivery-date: Tue, 20 Feb 2024 11:57:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNoS-00FwE0-1n
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 11:57:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNoR-0002E1-UO
	for lore@pengutronix.de; Tue, 20 Feb 2024 11:57:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c/inSEQWC4wk0GWsMaySNC2YoH7aKi+LnhQIJFGo+Ic=; b=LP/3UmXqiJ9a/fIxXYSm+BQBmj
	QSJ6hmjePI0hsY+eBLS/16hUksOcPXnBdHZFS7PeTRtu3kXxjbjvrCWCmdZyfc7QdABbdPmTH3qRN
	koQ5cETUQrdn2AHwVp55Rl/UlgBeulkEdtgklfTtDyXA6GSTcuurHbBClFJM7SPxrt5eXG3GiOyF3
	4sohUraiWBtKZj4NXbOnCExm+Ox8juXLl+c1Lz7Y0h5iTZC1b52eg8G9wIMzGo81sWLD8XFKkfxUm
	WjBXeffISUmwwkRz2EdgB+4ZKk4k1UTmxHvEZd5SmHf5evAejtjObs6xxPlJAZgRTCk5Qc/7AeeOk
	v4hyzyiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNnv-0000000EM2c-276n;
	Tue, 20 Feb 2024 10:56:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNns-0000000EM29-2uIs
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 10:56:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNnr-00025E-Ag; Tue, 20 Feb 2024 11:56:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNnq-001pKP-UN; Tue, 20 Feb 2024 11:56:46 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNnq-00HOHo-2l;
	Tue, 20 Feb 2024 11:56:46 +0100
Date: Tue, 20 Feb 2024 11:56:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZdSFbvoQ4Zi9kjVf@pengutronix.de>
References: <20240219145159.1962618-1-s.hauer@pengutronix.de>
 <20240219145159.1962618-3-s.hauer@pengutronix.de>
 <20240219145936.uiwy7frsbk4grtcy@pengutronix.de>
 <ZdNx4yaum8DXpMAZ@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZdNx4yaum8DXpMAZ@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_025648_750244_C280E83B 
X-CRM114-Status: GOOD (  29.02  )
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

On Mon, Feb 19, 2024 at 04:21:07PM +0100, Sascha Hauer wrote:
> On Mon, Feb 19, 2024 at 03:59:36PM +0100, Marco Felsch wrote:
> > On 24-02-19, Sascha Hauer wrote:
> > > We have a relation between the bootsource and the corresponding
> > > device_node. Add a function to get the device_node we booted from.
> > > This is already open coded in of_fixup_bootargs_bootsource(),
> > > use the newly created function for it.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  common/bootsource.c  | 14 ++++++++++++++
> > >  common/oftree.c      |  7 +------
> > >  include/bootsource.h |  1 +
> > >  3 files changed, 16 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/common/bootsource.c b/common/bootsource.c
> > > index da528a5b9b..5666d8d30d 100644
> > > --- a/common/bootsource.c
> > > +++ b/common/bootsource.c
> > > @@ -108,6 +108,20 @@ char *bootsource_get_alias_name(void)
> > >  	return basprintf("%s%d", stem, bootsource_instance);
> > >  }
> > >  
> > > +struct device_node *bootsource_of_node_get(struct device_node *root)
> > > +{
> > > +	struct device_node *np;
> > > +	char *alias_name;
> > > +
> > > +	alias_name = bootsource_get_alias_name();
> > 
> > 	if (!alias_name) {
> > 		pr_warn("No alias found for bootsource\n");
> > 		return 0;
> > 	}
> 
> I'll have to look over this. With this we assume that for example the
> mmcx alias really matches bootsource instance x. This is not the case,
> instead we have to look for an alias named "barebox,bootsource-%s%u".

Looking at this again I believe it is correctly handled in the patch.
I was under the assumption that the "barebox,bootsource-%s%u" property
was not honoured, but in fact it is.

Still I believe a warning is not appropriate here as it would warn about
too many false positives.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


