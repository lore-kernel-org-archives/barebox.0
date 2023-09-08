Delivery-date: Fri, 08 Sep 2023 13:53:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qea2s-008C7d-GM
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 13:53:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qea2q-0003FR-FI
	for lore@pengutronix.de; Fri, 08 Sep 2023 13:53:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cFa3TJ58uz11sisPda2LTf3rzQquuG8FyUmWIsb/4aA=; b=ehFZS89cgVYddytG+x/iFJGmPz
	DykD2YqrAe5NxFG2y7LcLvtkJ+ilXNHy7xylgk+4AsXCA7m/03W+XWB1+BGffN4TWkPSF1Uxodq4g
	hBteDSMvUIVujfa6PA0m7bl7ITrdKR6yVgL7bhznsNnNT36Em//nl364Ox73SkxdSOPCvX92SUYeQ
	VZfbthfU7DMseXBeHfFFGnCFpRXDLxWPCSqkH/tFgQO599mrzWzdukefuiyaU/WZmgx451DnHSv7n
	w6ZoFcNPMfGK008jFSxI0wKEFGrNifPafKhBEsOT4GA7X8vR4PqKsttZxMjcXpXI2XxpXNJWzHDQz
	lI822Qyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qea1f-00Di33-0T;
	Fri, 08 Sep 2023 11:51:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qea1b-00Di14-1P
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 11:51:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qea1P-0002rI-AY; Fri, 08 Sep 2023 13:51:35 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qea1M-004rtD-Uq; Fri, 08 Sep 2023 13:51:32 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qea1M-003KDl-Eb; Fri, 08 Sep 2023 13:51:32 +0200
Date: Fri, 8 Sep 2023 13:51:32 +0200
To: Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230908115132.GG637806@pengutronix.de>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
 <20230908-bugfix-i2c-rockchip-v1-2-f8235d811f6b@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230908-bugfix-i2c-rockchip-v1-2-f8235d811f6b@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_045147_492295_BAD17537 
X-CRM114-Status: GOOD (  26.66  )
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

On Fri, Sep 08, 2023 at 12:16:47PM +0200, Gerald Loacker wrote:
> It may happen that an i2c transfer is requested by a callback although
> there is an other i2c transfer running. In this case do not interrupt the
> transfer and return with an error.
> 
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> ---
>  drivers/i2c/busses/i2c-rockchip.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
> index 1bca3e9913..a869b9d0b7 100644
> --- a/drivers/i2c/busses/i2c-rockchip.c
> +++ b/drivers/i2c/busses/i2c-rockchip.c
> @@ -369,7 +369,19 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
>  {
>  	struct rk_i2c *i2c = to_rk_i2c(adapter);
>  	struct device *dev = &adapter->dev;
> -	int i, ret = 0;
> +	struct i2c_regs *regs = i2c->regs;
> +	int i, ret = 0, val;
> +
> +	val = readl(&regs->con);
> +	if (val & I2C_CON_EN) {
> +		val = readl(&regs->con);
> +		if (val & I2C_IPD_ALL_CLEAN) {
> +			dev_dbg(dev,
> +				"i2c_xfer: %d messages dropped due to pending interrupts\n",
> +				nmsgs);
> +			return -EAGAIN;
> +		}
> +	}

Can you have a look how this can happen? Normally this should only
happen if you have a heartbeat LED behind a I2C GPIO expander or some
other unusual setup. Adding a dump_stack() next to the dev_dbg() call
might give a clue.

Let's see how this really happens, but generally I think we should find
another solution for this, either on I2C core level or by replacing
the readl_poll_timeout() with a variant that doesn't allow running in
the background, i.e. one which uses is_timeout_non_interruptible()
rather than is_timeout().

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


