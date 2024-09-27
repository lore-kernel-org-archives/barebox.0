Delivery-date: Fri, 27 Sep 2024 12:16:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su81M-003Maf-1O
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:16:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su81M-0001Qj-Tk
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:16:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dhxj7sw4/W3xSQhbvPdXXvX3qAdM2LNjaoPtgc0RaKA=; b=V/WAQFvAki+vgKx4+aq9BxLjNJ
	qHk3okltmM8HIXgPM9lLU5jc9HBiNCyAINGpRtUXsIxR8+dUi5dpyp08GPwvM6JpxeeBpmz0P75WC
	WN+wJO2tWcMIAgFTNU+LMlaF1CLyMLRiQ9N93gTCQvIqo0QUoCkhwneo6c7vw3nrMV8LIm20DG6bK
	p7vNt17gtr2AXZzi00SbbsyQMvwUTHEJc327Avnfmupz80PA8sYHlv1MuOevDs4qa12a6H14TysRq
	CZZD4syA0JiVg6OqMKh0cNQQ7WYs4QPwHjpunu/1fZdKEi4A7rAO9Zh6pvFSBWX7NZUK5cx4mMkj8
	w58/j1ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su80r-0000000An5p-2Vg4;
	Fri, 27 Sep 2024 10:15:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su80T-0000000An48-124f
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:15:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1su80R-00010u-Cn; Fri, 27 Sep 2024 12:15:23 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1su80R-001tov-00; Fri, 27 Sep 2024 12:15:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1su80Q-00F1ww-2x;
	Fri, 27 Sep 2024 12:15:22 +0200
Date: Fri, 27 Sep 2024 12:15:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZvaFurNT_O63mEma@pengutronix.de>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
 <20240926-vop2-v1-7-fe0581f2020b@pengutronix.de>
 <408551eb-5646-40b7-8679-1b63a20538c9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <408551eb-5646-40b7-8679-1b63a20538c9@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_031525_323236_645F87C3 
X-CRM114-Status: GOOD (  16.61  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 07/13] video: Add Sitronix st7789v panel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 26, 2024 at 04:16:13PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 26.09.24 15:15, Sascha Hauer wrote:
> > +	ret = st7789v_read_data(ctx, MIPI_DCS_GET_DISPLAY_ID, ids, ST7789V_IDS_SIZE);
> > +	if (ret)
> > +		return ret;
> > +printf("%s: %02x %02x %02x\n", __func__, ids[0], ids[1], ids[2]);
> 
> Debugging left-over.
> 
> > +static int st7789v_prepare(struct st7789v *ctx)
> > +{
> 
> 
> > +	ret = regulator_enable(ctx->power);
> > +	if (ret)
> > +		return ret;
> > +
> > +	gpiod_set_value(ctx->reset, 1);
> > +	mdelay(30);
> > +	gpiod_set_value(ctx->reset, 0);
> > +	mdelay(120);
> 
> Ouch. That's quite a bit of wasted time. Could it make sense to move device
> out of reset in probe function instead?

We could play tricks like store the time we released the reset in the
driver struct and only wait the remaining time here, but I think that's
not really worth it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


