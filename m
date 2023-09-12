Delivery-date: Tue, 12 Sep 2023 08:05:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfwWg-00CLIO-1I
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 08:05:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfwWe-0002sf-2d
	for lore@pengutronix.de; Tue, 12 Sep 2023 08:05:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5kzNMvssrDpU20i6sPTsYKoTIuTSbbGCWv9hLZRkw6o=; b=2sc2u217+1sThn1ku18LJS4V89
	t29GwFcYYCmQEssB7mPHgWPXOdS2MyAugpMJL+5Nppq6xGZlDm9ZSP2CULMuBvtzdtBs0RhFWVhNb
	hdSIFMIWyPxyJmpJH4DlGCU9IIsRR9qzQx5AhIeg4hGkHMIXr736QZGGPMwozJLXlZEHLJ0K+g2Pc
	x5QTbxjRW8THyGAhe9+ayx7xPiKeiXBSRITo9z6X35h5mqCmfZfOzOuEavPNoin9uME/q+JqVyUbo
	7Kh4q5cugo+vAvX6Gfo9VOYBaXN4p6MFCKrHpyRn6ikg1jKCpQFrah0QMqQQD8tRjILcAYpI1svEI
	bAn/2Czw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfwVM-002FGV-0E;
	Tue, 12 Sep 2023 06:04:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfwVI-002FFP-2F
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 06:04:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfwVD-0002hQ-5R; Tue, 12 Sep 2023 08:03:59 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qfwVB-005i54-Dp; Tue, 12 Sep 2023 08:03:57 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfwVA-005V05-VY; Tue, 12 Sep 2023 08:03:56 +0200
Date: Tue, 12 Sep 2023 08:03:56 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230912060356.GN637806@pengutronix.de>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
 <20230908-bugfix-i2c-rockchip-v1-1-f8235d811f6b@wolfvision.net>
 <20230908135323.GK637806@pengutronix.de>
 <0483b90f-52a4-5d3b-674e-fa7b935c04cc@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0483b90f-52a4-5d3b-674e-fa7b935c04cc@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_230404_734912_D09387F8 
X-CRM114-Status: GOOD (  26.82  )
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
Subject: Re: [PATCH 1/4] i2c: rockchip: fix i2c stop condition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 12, 2023 at 07:45:36AM +0200, Gerald Loacker wrote:
> 
> 
> Am 08.09.2023 um 15:53 schrieb Sascha Hauer:
> > On Fri, Sep 08, 2023 at 12:16:46PM +0200, Gerald Loacker wrote:
> >> The i2c bus gets disabled without sending a stop condition. This violates
> >> i2c timing on the clock line. Fix this and include all related functions
> >> (rk_i2c_send_start_bit, rk_i2c_send_stop_bit, rk_i2c_disable) onto the same
> >> level.
> >>
> >> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> >> ---
> >>  drivers/i2c/busses/i2c-rockchip.c | 21 ++++++++-------------
> >>  1 file changed, 8 insertions(+), 13 deletions(-)
> >>
> >> @@ -387,6 +376,11 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
> >>  		struct i2c_msg *msg = &msgs[i];
> >>  
> >>  		dev_dbg(dev, "i2c_xfer: chip=0x%x, len=0x%x\n", msg->addr, msg->len);
> >> +
> >> +		ret = rk_i2c_send_start_bit(i2c);
> >> +		if (ret)
> >> +			break;
> >> +
> >>  		if (msg->flags & I2C_M_RD) {
> >>  			ret = rk_i2c_read(i2c, msg->addr, 0, 0, msg->buf,
> >>  					  msg->len);
> >> @@ -394,6 +388,9 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
> >>  			ret = rk_i2c_write(i2c, msg->addr, 0, 0, msg->buf,
> >>  					   msg->len);
> >>  		}
> >> +
> >> +		rk_i2c_send_stop_bit(i2c);
> >> +
> >>  		if (ret) {
> >>  			dev_dbg(dev, "i2c_write: error sending: %pe\n",
> >>  				ERR_PTR(ret));
> >> @@ -402,9 +399,7 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
> >>  		}
> >>  	}
> >>  
> >> -	rk_i2c_send_stop_bit(i2c);
> > 
> > I believe this is wrong. A stop bit should only be sent after the last
> > message, not after all messages.
> > 
> 
> Your're right. This was just because the repeated start does not work
> consitently in our case. I'll come up with another approach.

Might be worth to look at the kernel driver. It has a comment about
this:

	/*
	 * The HW is actually not capable of REPEATED START. But we can
	 * get the intended effect by resetting its internal state
	 * and issuing an ordinary START.
	 */
	ctrl = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
	i2c_writel(i2c, ctrl, REG_CON);

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


