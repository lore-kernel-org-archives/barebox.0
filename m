Delivery-date: Wed, 21 Sep 2022 09:59:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaudL-00B9Hr-Fe
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 09:59:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaudJ-00024v-MV
	for lore@pengutronix.de; Wed, 21 Sep 2022 09:59:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BqvXkooUdqThR8nfQKusxrzoBGb+8nCKvgnEeBCujIU=; b=spGp6vC5cjVqD0A78KgmG+tWyb
	Z9PWebnEIwc1lCzez0C5wlmQ6NIF/0bAilk7CGQCmdiLAz/bMXwpegONwXIdp2qxrW+bNPYcW4N6Z
	Zdd+qE5MuH110Mh08JPIveUxWM1OeChB1XRnE0vjDEQc5yBtvE7UIp2Trh29Ct+y8XS7f2Npt6Tg+
	10P03KVIQXH2C1Nc1X9FncAx5g0IkMXrKKP8wRYZKSJ9LhHbX6U6F0eYJ9ep8faRCVWoKcTo42Bvv
	s9TZE0I+CtdALDFC97JPtoXk2YfNBv3EU8B7yf+s/vwEuchq71/AV+Zwv4LNap/jV4ZOUHqho02+n
	UKgO8CoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaubf-009k8O-2A; Wed, 21 Sep 2022 07:57:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaubZ-009k6R-34
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 07:57:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1oaubS-0001tW-7c; Wed, 21 Sep 2022 09:57:06 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1oaubR-0007KH-M9; Wed, 21 Sep 2022 09:57:05 +0200
Date: Wed, 21 Sep 2022 09:57:05 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20220921075705.GD16312@pengutronix.de>
References: <20220905100717.150557-1-michael.riesch@wolfvision.net>
 <20220905100717.150557-2-michael.riesch@wolfvision.net>
 <2ab1b3d8-eff0-f012-94bb-a6ddc61b982f@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2ab1b3d8-eff0-f012-94bb-a6ddc61b982f@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_005713_145954_A0EE2D2D 
X-CRM114-Status: GOOD (  28.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: overlay: improve error handling in
 of_overlay_apply_tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 21 Sep 2022 08:55:12 +0200, Michael Riesch wrote:
> On 9/5/22 12:07, Michael Riesch wrote:
> > Propagate any error from of_overlay_apply_symbols and let the user
> > know if the provided overlay is not applicable.
> > 
> > Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> > ---
> >  drivers/of/overlay.c | 14 +++++++++-----
> >  1 file changed, 9 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> > index 20a43f5170..20686db511 100644
> > --- a/drivers/of/overlay.c
> > +++ b/drivers/of/overlay.c
> > @@ -115,8 +115,8 @@ static char *of_overlay_fix_path(struct device_node *root,
> >  	return basprintf("%s%s", target->full_name, path_tail);
> >  }
> >  
> > -static void of_overlay_apply_symbols(struct device_node *root,
> > -				     struct device_node *overlay)
> > +static int of_overlay_apply_symbols(struct device_node *root,
> > +				    struct device_node *overlay)
> >  {
> >  	const char *old_path;
> >  	char *new_path;
> > @@ -129,12 +129,12 @@ static void of_overlay_apply_symbols(struct device_node *root,
> >  
> >  	if (!overlay_symbols) {
> >  		pr_debug("overlay doesn't have a __symbols__ node\n");
> > -		return;
> > +		return -EINVAL;
> 
> Come to think of it, do all overlays need to provide a __symbols__ node?
> If not, this check is overly strict.

Overlays don't need a __symbols__ node. It would be only required, if overlays
are stacked and the second overlay refers to nodes of the first overlay by
labels. Having no __symbols__ in the overlay is a success path and the message
is just a debug message.

> 
> >  	}
> >  
> >  	if (!root_symbols) {
> >  		pr_info("root doesn't have a __symbols__ node\n");
> > -		return;
> > +		return -EINVAL;
> 
> Ditto for the root.

I'm not sure what should happen, if the root does not have __symbols__.
Barebox wouldn't be able to copy the __symbols__ of the overlay, but this
still wouldn't be a problem unless overlays are stacked. In the stacking case,
only applying the second overlay should fail.

Maybe, we should add a new __symbols__ node, if the root doesn't have a
__symbols__ node?

> 
> >  	}
> >  
> >  	list_for_each_entry(prop, &overlay_symbols->properties, list) {
> > @@ -148,6 +148,8 @@ static void of_overlay_apply_symbols(struct device_node *root,
> >  			 prop->name, new_path);
> >  		of_property_write_string(root_symbols, prop->name, new_path);
> >  	}
> > +
> > +	return 0;
> >  }
> >  
> >  static int of_overlay_apply_fragment(struct device_node *root,
> > @@ -190,7 +192,9 @@ int of_overlay_apply_tree(struct device_node *root,
> >  		goto out_err;
> >  
> >  	/* Copy symbols from resolved overlay to base device tree */
> > -	of_overlay_apply_symbols(root, resolved);
> > +	err = of_overlay_apply_symbols(root, resolved);
> > +	if (err)
> > +		goto out_err;
> 
> If both checks need to be relaxed, the complete patch should be reverted
> I guess :-/

What did you do to run into this error? What was your expectation?

Michael


