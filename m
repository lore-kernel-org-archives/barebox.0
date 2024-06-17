Delivery-date: Mon, 17 Jun 2024 10:05:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJ7N4-007Tml-0H
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 10:05:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJ7N3-00058u-Ej
	for lore@pengutronix.de; Mon, 17 Jun 2024 10:05:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qXwA+Or2a9mbG662jFWjK1rZmPtA0Y6s44hu5YPeaTg=; b=OhaSgJsemEC2AXNB9756/Lcmg4
	yxu8va4h1rbtdfUMqXTqJooSgf8PEStdYT1kOU9bdnZfx4Bv0lWrLmmOuoJgQ2fHY3a2YbqaPamSn
	nEtzqN2SgPyrh0RcshNSdUlHXrs1COqGTKagO6rCVVRmDMD//RALsUVcbpv7XBEWLuUugz1uDuhy8
	9Q+w0eXWw23t/TOBXZLcmv3NQYxj5M6P9M/2ymF26xG2O3WZdOH1qWLDoxTc079HMbF3/GpDltPJA
	zJ1TQMLb8EkHH3ReQEqrBxZwZwjcscByCpF98/6raXWctLKaTbtvbHFi2QauvvjKwkEIBI8wfSjs+
	tvlD515w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7Md-00000009mni-1Ykj;
	Mon, 17 Jun 2024 08:05:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7Ma-00000009mmv-1pjx
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 08:05:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sJ7MZ-00053F-5T; Mon, 17 Jun 2024 10:05:15 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sJ7MY-002vUJ-Ow; Mon, 17 Jun 2024 10:05:14 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sJ7MY-00G3cA-2F;
	Mon, 17 Jun 2024 10:05:14 +0200
Date: Mon, 17 Jun 2024 10:05:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zm_uOkmFzm7pRHyZ@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
 <20240613125818.30499-4-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613125818.30499-4-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_010516_498002_81339D89 
X-CRM114-Status: GOOD (  19.48  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 03/11] FIT: skip possible overlay config nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 13, 2024 at 02:58:10PM +0200, Marco Felsch wrote:
> The FIT spec is not very specific when it comes to device-tree overlay
> handling. Overlays can be added directely to an config node:
> 
> 	config-a {
> 		compatible = "machine-compatible";
> 		kernel = "kernel-img-name";
> 		fdt = "fdt-base-name", "fdt-overlay1-name", "...";
> 	}
> 
> or they are supplied via dedicated config nodes:
> 
> 	overlay-2 {
> 		fdt = "fdt-overlay2-name";
> 	}
> 
> Of course these config nodes can have compatibles as well:
> 
> 	overlay-3 {
> 		compatible = "machine-compatible";
> 		fdt = "fdt-overlay3-name";
> 	}
> 
> The current fit_find_compatible_unit() code would skip the overlay node
> if the config-a compatible has the same score as the overlay-3
> compatible and if the overlay-3 config-node is listed after the config-a
> config-node. But if the compatible of config-a config-node has a lower
> score or the overlay-3 config-note is listed first (the spec does not
> specify any order) we end up in taking the overlay-3 config-node instead
> of config-a config-node.
> 
> Make to code more robust by skip all config nodes matching the pattern
> from global.of.overlay.fitconfigpattern.

Reading this patch again I come to the same conclusion as last time, so
I continued the discussion there.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


