Delivery-date: Thu, 14 Sep 2023 09:53:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghAD-00ElbF-VD
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 09:53:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghAC-0002mi-5V
	for lore@pengutronix.de; Thu, 14 Sep 2023 09:53:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ihZbSYwivzk7yRAe6oclTO3yq/1O2mL8HKEHPfvvLoM=; b=UthgXB2j2zfBGklXaBTzfNQQc1
	1XiZB/7x/mo02EFIQY98tlK950LleLQOB/h977dAgPYpJz3rCiPIu7NHgmjQ3NN5+ILsoJgcbRDli
	z1/6KT9h0jdMXpBeEha+vaMxETdSdspt/VlevmMx9io84WnfH/6qmrLWKzBO1W6+KE4XW8F/2eJxe
	zmskoLiibU1YdrwqNjfO/IG2DZCchWH7RdHEbuHh8hg6ARppjWDDWylGTipPPmjLDrTsA0DuoX+Y4
	AEwZLEQZc97AmBk0F1AvNEA4aJFEXXxHrfgHY505gc9WNduTeaGzEs0BVYy293t7IPDGbzjz62rc4
	TX00/QZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgh9A-007coZ-2X;
	Thu, 14 Sep 2023 07:52:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgh97-007cnj-2p
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 07:52:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh96-00024V-P8; Thu, 14 Sep 2023 09:52:16 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh96-006FdN-Ce; Thu, 14 Sep 2023 09:52:16 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh96-006ew7-AK; Thu, 14 Sep 2023 09:52:16 +0200
Date: Thu, 14 Sep 2023 09:52:16 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914075216.GJ637806@pengutronix.de>
References: <20230913120807.1869600-1-a.fatoum@pengutronix.de>
 <20230913120807.1869600-2-a.fatoum@pengutronix.de>
 <20230914074640.GI637806@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914074640.GI637806@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_005217_912243_C770389F 
X-CRM114-Status: GOOD (  25.57  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] clk: implement clk_get_enabled helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 14, 2023 at 09:46:40AM +0200, Sascha Hauer wrote:
> On Wed, Sep 13, 2023 at 02:08:06PM +0200, Ahmad Fatoum wrote:
> > Kernel code increasingly uses devm_clk_get_enabled to make driver code
> > more compact. Port a devres-less version to barebox to make porting such
> > Linux code easier.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  include/linux/clk.h | 29 +++++++++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> > 
> > diff --git a/include/linux/clk.h b/include/linux/clk.h
> > index 82022e78e39d..398427eca676 100644
> > --- a/include/linux/clk.h
> > +++ b/include/linux/clk.h
> > @@ -951,4 +951,33 @@ static inline struct clk *clk_get_optional(struct device *dev, const char *id)
> >  	return clk;
> >  }
> >  
> > +/**
> > + * clk_get_enabled - clk_get() + clk_prepare_enable()
> > + * @dev: device for clock "consumer"
> > + * @id: clock consumer ID
> > + *
> > + * Return: a struct clk corresponding to the clock producer, or
> > + * valid IS_ERR() condition containing errno.  The implementation
> > + * uses @dev and @id to determine the clock consumer, and thereby
> > + * the clock producer.  (IOW, @id may be identical strings, but
> > + * clk_get may return different clock producers depending on @dev.)
> > + *
> > + * The returned clk (if valid) is enabled.
> > + */
> > +static inline struct clk *clk_get_enabled(struct device *dev, const char *id)
> > +{
> > +	struct clk *clk;
> > +	int ret;
> > +
> > +	clk = clk_get(dev, id);
> > +	if (IS_ERR(clk))
> > +		return clk;
> > +
> > +	ret = clk_enable(clk);
> > +	if (ret)
> > +		return ERR_PTR(ret);
> 
> As this isn't devm managed you should release the clock in the error
> path.

Oh, our clk_put() implementation is a no-op ;)
Added a clk_put() while applying anyway.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


