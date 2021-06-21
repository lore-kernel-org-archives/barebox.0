Delivery-date: Mon, 21 Jun 2021 06:32:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBbU-0003YK-6Q
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 06:32:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBbT-0008JQ-26
	for lore@pengutronix.de; Mon, 21 Jun 2021 06:32:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WNEdas6C2sxAmpSsd8g7S0HiATMXplNyQY1pzT4QqNc=; b=qRdce1XXEKhUzwoqoeBCIH9pVL
	Zo/NuS+tPld2CeQxgkWx2L/mdt+hZT/PawBcOYkcrxpmSXIGZ8uQlRo0ygbkhLe5hjqbLGLRIp/VJ
	W6ySvylZeSbBfPdxBumeZau+SmmL0KDBCo4R641fNWttWWnl7yV7mf6U1UlafGLCJIzvedHroP2yh
	J3pqsrBmvrsqpI72A5mdx2W+CUYRjL7nRJTNfD+Rxsaxv2uj+0IFMFIsAXqXztNqxfcYmpyDJ0aho
	Iqlndenllxci4gi9x4wvjW02GcSwaQURYz7m1DPXkz97LlInZWj5h1NhCJJ78E87cENGs1/578O3c
	vkymO01Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvBa8-0022dy-GD; Mon, 21 Jun 2021 04:30:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvBa3-0022dD-3L
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 04:30:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvBa1-00086G-Hn; Mon, 21 Jun 2021 06:30:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvBa0-0006jv-Lc; Mon, 21 Jun 2021 06:30:36 +0200
Date: Mon, 21 Jun 2021 06:30:36 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20210621043036.GE9782@pengutronix.de>
References: <20210617143654.32616-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210617143654.32616-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:13:00 up 123 days,  7:36, 89 users,  load average: 0.05, 0.14,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_213039_200310_05C6212C 
X-CRM114-Status: GOOD (  24.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] aiodev: add driver for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

On Thu, Jun 17, 2021 at 04:36:54PM +0200, Michael Riesch wrote:
> +static int rockchip_saradc_read(struct aiochannel *chan, int *val)
> +{
> +	struct rockchip_saradc_data *data;
> +	int timeout = SARADC_TIMEOUT;
> +	u32 value = 0;
> +	u32 control = 0;
> +	u32 mask;
> +
> +	if (!chan || !val)
> +		return -EINVAL;
> +
> +	data = container_of(chan->aiodev, struct rockchip_saradc_data, aiodev);
> +	if (!data)
> +		return -EINVAL;
> +
> +	rockchip_saradc_reg_wr(data, 8, SARADC_DLY_PU_SOC);
> +	rockchip_saradc_reg_wr(data,
> +			       (chan->index & SARADC_CTRL_CHN_MASK) |
> +				       SARADC_CTRL_IRQ_ENABLE |
> +				       SARADC_CTRL_POWER_CTRL,
> +			       SARADC_CTRL);
> +
> +	do {
> +		control = rockchip_saradc_reg_rd(data, SARADC_CTRL);
> +
> +		if (--timeout == 0)
> +			return -ETIMEDOUT;
> +		mdelay(1);
> +	} while (!(control & SARADC_CTRL_IRQ_STATUS));

You should do a timeout loop with

	u64 start = get_time_ns();

	do {
		if (is_timeout(start, 100 * MSECOND)
			return -ETIMEDOUT;
	} while(bar);

We don't have any way nor need to put the CPU into idle, so we can poll
as fast as we can.

> +
> +	mask = (1 << data->config->num_bits) - 1;
> +	value = rockchip_saradc_reg_rd(data, SARADC_DATA) & mask;
> +	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
> +
> +	printf("Raw value: %d\n", value);

Debugging leftover.

> +fail_channels:
> +	kfree(data->channels);
> +	kfree(data->aiodev.channels);
> +
> +fail_data:
> +	kfree(data);
> +	return ret;
> +}
> +
> +static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
> +	.ref_voltage_mv = 1800,

>From looking at the downstream dts files this doesn't seem to be SoC
specific:

	&saradc {
        	status = "okay";
		vref-supply = <&vcca_1v8>;
	};

I suggest doing the same here.

> +	.num_bits = 10,
> +	.num_channels = 8,
> +};
> +
> +static const struct of_device_id of_rockchip_saradc_match[] = {
> +	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },

The device nodes in the downstream Kernel also contain some clocks.
These should be handled in the driver.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

