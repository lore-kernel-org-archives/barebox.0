Delivery-date: Wed, 20 Aug 2025 11:05:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoelI-002YzG-1m
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 11:05:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoelH-00018P-E4
	for lore@pengutronix.de; Wed, 20 Aug 2025 11:05:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tJjheC3LdVjZFlRiN1Etk+oG3A499BNxylQ4I06g+q8=; b=oN8w0L3RjMeonYL8/Ys+f0ATh3
	1jJjsdG+RWEGwPu1F73OwvYGnepfzxubq8kR1b6L4lcY2uau6U3iDVwHF6+YFimpsNt1Ve4cPuTab
	1dQsF7IQGzEDIyqkktOhCpBtw5bEfPyCGi2oV/eKGYI3RvfFuW9bYyryL5d1YI74wh8kyI/5Ia7kJ
	FmTWMAZC9CPGj/A1YTCuWu3M22NXaGKHGzuqkqcXEgD75WIfiL7E+qJETEe4USuYV+d8gP2P8equz
	ozwR0ChpFZ3kdkzQzAxLFzYXN5gm9oC4V0CxECE/XcCZQzgp+fPXl9TAL19ATTRigjJaseMUZ9BfR
	CJ2ONTBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoekn-0000000Cq3C-2zbU;
	Wed, 20 Aug 2025 09:05:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodzj-0000000ChY0-0wz9
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 08:16:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uodzg-0001Bs-LP; Wed, 20 Aug 2025 10:16:28 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uodzg-001DMY-1X;
	Wed, 20 Aug 2025 10:16:28 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uodzg-005rpU-1E;
	Wed, 20 Aug 2025 10:16:28 +0200
Date: Wed, 20 Aug 2025 10:16:28 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250820081628.bhjmc6jco2n6xvmq@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
 <20250818-v2024-05-0-topic-fit-overlay-v5-7-b92e466a1d32@pengutronix.de>
 <aKQbz3Q_bcGGxpHX@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKQbz3Q_bcGGxpHX@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_011631_262958_D5796B34 
X-CRM114-Status: GOOD (  14.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 07/11] of: overlay: add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 25-08-19, Sascha Hauer wrote:
> On Mon, Aug 18, 2025 at 07:26:15PM +0200, Marco Felsch wrote:

...

> > +static int of_overlay_apply_fit(struct device_node *root, struct fit_handle *fit,
> > +				struct device_node *config)
> > +{
> > +	const char *name = config->name;
> > +	struct device_node *overlay;
> > +	unsigned long ovl_sz;
> > +	const void *ovl;
> > +	int ret;
> > +
> > +	if (!of_overlay_matches_filter(name, NULL))
> > +		return 0;
> 
> Can we have a
> 	pr_debug("FIT config \"%s\" doesn't match filter \"%s\"\n",
> 		name, of_overlay_filter);
> 
> Here?
> 
> > +
> > +	ret = fit_open_image(fit, config, "fdt", &ovl, &ovl_sz);
> > +	if (ret)
> > +		return ret;
> > +
> > +	overlay = of_unflatten_dtb(ovl, ovl_sz);
> 
> 	if (IS_ERR(overlay))
> 		...
> 
> > +
> > +	if (!of_overlay_matches_filter(NULL, overlay)) {
> > +		ret = 0;
> > +		goto out;
> > +	}
> 
> I think a pr_debug printing the reason would be appropriate here as
> well.

Instead of adding it here I adapted the three cases in
of_overlay_matches_filter() which didn't had a pr_debug() yet to cover
all possible cases.

I also added pr_debug("Process FIT config \"%s\"\n", name); at the
beginning of of_overlay_apply_fit().

Regards,
  Marco


