Delivery-date: Tue, 14 Mar 2023 16:50:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc6v0-00FL8f-IM
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 16:50:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc6v0-00061t-CD
	for lore@pengutronix.de; Tue, 14 Mar 2023 16:50:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bOQ++qUe5hA0SGVZw4U7c6EQbtcJz+VJxaESZnlmG+Y=; b=ZXTgXsyNueGwRNGpkc+xsNSVOf
	9jUkK7qPEEn+Jx/8WxGgbIkmT4tMiOK+6s3cBN/cZAu0XjnxN5Q4nlW7b36u+4FH3k2arRyjRVdK5
	CJo3ntOe4DRJSCY8FoI2RnWldiqCPx2yCS/zyuWBfyMtu0nkdCzwKjDrkr8/EMY6YAoeFNnS20J+L
	y7EcU9Jf1968ok71qQswRgjMsEGX/43UH6Z6TCJvPyitV9OpTkakz+NaKeuEgVI9rde81efXfcyqC
	6BxBPTYXfFfxHe6WV353pV8ZaskPRfryJphP2qQgNpnyz7QsjcWjFNL0gXfwcI52eyuhRvgWACuN/
	tAJZMBBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc6th-00AgQv-2T;
	Tue, 14 Mar 2023 15:49:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc6tf-00AgQ7-0S
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 15:49:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pc6tc-0005q3-VM; Tue, 14 Mar 2023 16:49:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pc6tc-0001SL-KP; Tue, 14 Mar 2023 16:49:04 +0100
Date: Tue, 14 Mar 2023 16:49:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230314154904.GK7446@pengutronix.de>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
 <20230310094222.2538259-8-s.hauer@pengutronix.de>
 <2b5df3a5-37f1-44f2-12f4-1bb6f2a0f379@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2b5df3a5-37f1-44f2-12f4-1bb6f2a0f379@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_084907_178597_E352F21E 
X-CRM114-Status: GOOD (  29.20  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 7/7] of_overlay: Add option to apply overlay to live
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 14, 2023 at 03:59:29PM +0100, Michael Riesch wrote:
> Hi Sascha,
> 
> On 3/10/23 10:42, Sascha Hauer wrote:
> > The of_overlay command currently only supports applying overlays to the
> > Linux device tree. Add an option to apply an overlay to the live tree.
> > Using this option will apply the overlay and also triggers rescanning
> > the device tree in case new devices have been added.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/of_overlay.c | 38 ++++++++++++++++++++++++++++++++++----
> >  1 file changed, 34 insertions(+), 4 deletions(-)
> > 
> > diff --git a/commands/of_overlay.c b/commands/of_overlay.c
> > index b3660b4bf1..1d68e31ef2 100644
> > --- a/commands/of_overlay.c
> > +++ b/commands/of_overlay.c
> > @@ -17,10 +17,20 @@ static int do_of_overlay(int argc, char *argv[])
> >  	struct fdt_header *fdt;
> >  	struct device_node *overlay;
> >  	size_t size;
> > +	bool live_tree = false;
> > +	int opt;
> >  
> > -	if (argc != 2)
> > +	if (argc < 2)
> >  		return COMMAND_ERROR_USAGE;
> >  
> > +	while ((opt = getopt(argc, argv, "l")) > 0) {
> > +		switch (opt) {
> > +		case 'l':
> > +			live_tree = true;
> > +			break;
> > +		}
> > +	}
> > +
> >  	fdt = read_file(argv[optind], &size);
> 
> of course this is not the intended usage, but "of_overlay -l" (i.e.,
> skipping the overlay argument) throws an exception.

Okay, will fix.

> 
> >  	if (!fdt) {
> >  		printf("cannot read %s\n", argv[optind]);
> > @@ -32,7 +42,14 @@ static int do_of_overlay(int argc, char *argv[])
> >  	if (IS_ERR(overlay))
> >  		return PTR_ERR(overlay);
> >  
> > -	ret = of_register_overlay(overlay);
> > +	if (live_tree) {
> > +		ret = of_overlay_apply_tree(of_get_root_node(), overlay);
> 
> If I pass a meaningful argument ("of_overlay -l path_to_my_overlay"), I get
> 
> ERROR: of_resolver: __symbols__ missing from base devicetree
> cannot apply oftree overlay: Invalid argument
> of_overlay: Invalid argument
> 
> in return. The base device tree does not contain any __symbols__
> sections indeed. How can I activate the generation of this section?

Please enable CONFIG_OF_OVERLAY_LIVE. Maybe we can improve this a bit to
make this clearer somehow / somewhere,

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


