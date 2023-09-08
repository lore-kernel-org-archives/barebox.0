Delivery-date: Fri, 08 Sep 2023 13:56:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qea6T-008CGp-TG
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 13:56:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qea6R-0004FL-RK
	for lore@pengutronix.de; Fri, 08 Sep 2023 13:56:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UZ29ndqNRVN7J36kmbSDGLvo34qFMnFtjsC+x3C0Q3I=; b=UtfNMHzYl4/KTnInIqfSnFz4z1
	NcWoAwXOrj/ERkcoVW70FPN8rwVkcYjHT8o1JMbklApXnr10UJqX9IKtoMJDyVSUwpG6Ct2iYbDKP
	+cCU4gj9+iaEq0HLrZhj1RqQUfcSrDHUSUsw9L1zvNmdRcn0AbvV0JV/7aeP2w2mfUPxoCz0x3pk3
	Tf47/wb1hnOzI95lHCZW7NBYbD2rzYioNm8aPxerLaNxq7SEKZPJGQA0Lc3UFRC+5GIH7JLYsyBlC
	dzkVSlrwH5a2vVcBamHtELOoh4eLC2bpbYF4SbHWvOvcW209u52+6uXfafmlOsjfTDApF8lh8zt09
	10lLwm1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qea5S-00DiNd-1t;
	Fri, 08 Sep 2023 11:55:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qea5P-00DiN5-1D
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 11:55:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qea5O-0003uU-6M; Fri, 08 Sep 2023 13:55:42 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qea5M-004rtU-Rm; Fri, 08 Sep 2023 13:55:40 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qea5M-003KFE-Aq; Fri, 08 Sep 2023 13:55:40 +0200
Date: Fri, 8 Sep 2023 13:55:40 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230908115540.GH637806@pengutronix.de>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
 <20230908-bugfix-i2c-rockchip-v1-2-f8235d811f6b@wolfvision.net>
 <20230908115132.GG637806@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230908115132.GG637806@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_045543_409693_75D1F9E1 
X-CRM114-Status: GOOD (  27.11  )
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
Subject: Re: [PATCH 2/4] i2c: rockchip: ignore i2c transfers when another
 transfer is running
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 08, 2023 at 01:51:32PM +0200, Sascha Hauer wrote:
> On Fri, Sep 08, 2023 at 12:16:47PM +0200, Gerald Loacker wrote:
> > It may happen that an i2c transfer is requested by a callback although
> > there is an other i2c transfer running. In this case do not interrupt the
> > transfer and return with an error.
> > 
> > Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> > ---
> >  drivers/i2c/busses/i2c-rockchip.c | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
> > index 1bca3e9913..a869b9d0b7 100644
> > --- a/drivers/i2c/busses/i2c-rockchip.c
> > +++ b/drivers/i2c/busses/i2c-rockchip.c
> > @@ -369,7 +369,19 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
> >  {
> >  	struct rk_i2c *i2c = to_rk_i2c(adapter);
> >  	struct device *dev = &adapter->dev;
> > -	int i, ret = 0;
> > +	struct i2c_regs *regs = i2c->regs;
> > +	int i, ret = 0, val;
> > +
> > +	val = readl(&regs->con);
> > +	if (val & I2C_CON_EN) {
> > +		val = readl(&regs->con);
> > +		if (val & I2C_IPD_ALL_CLEAN) {
> > +			dev_dbg(dev,
> > +				"i2c_xfer: %d messages dropped due to pending interrupts\n",
> > +				nmsgs);
> > +			return -EAGAIN;
> > +		}
> > +	}
> 
> Can you have a look how this can happen? Normally this should only
> happen if you have a heartbeat LED behind a I2C GPIO expander or some
> other unusual setup. Adding a dump_stack() next to the dev_dbg() call
> might give a clue.

I just realized you sent some ksz9477 along with this series. Are you
using that in I2C mode? In that case it could be the periodic link check
that does I2C accesses in the background.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


