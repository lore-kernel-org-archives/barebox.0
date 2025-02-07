Delivery-date: Fri, 07 Feb 2025 09:27:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgJiF-009Z7h-0c
	for lore@lore.pengutronix.de;
	Fri, 07 Feb 2025 09:27:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgJiF-0001Bh-AM
	for lore@pengutronix.de; Fri, 07 Feb 2025 09:27:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+I5qeFh6l7lWMVG4o9bfXW4ufkxvRat//yksBhgkMkM=; b=NomDzIR+5YiD5ObPVKaB9iObQs
	WkCIhLCf50tQvQ9yYyD9A++rPZomzXIY8nlFgOcidIvhwJRTEb7gZ8AQ+hrrOfObX7YA5CsFZAl9F
	O56I4dFy6v8zJXnzA6q+ZbB516h/ZOgd9cY2P4ZVi3YsuPCBFs0CTPhr8cdA8VrAWLNbhzvdDL77Q
	q/3J0KRBuzul6aoZEl4/vOYNhAi/FONPFVU96TbnFLgsTxu/6rkKdAG7t/muwkwPvGhPdNt04Oyfi
	Hc0c+z7Kjx44RQnm9jAJHsPoTIPKWgPe108VhWZnCLRIXako6UMSsodILy4yKGm4z2LaRkEA1oTAR
	qKLSE65g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJhp-00000008oUP-1YIT;
	Fri, 07 Feb 2025 08:27:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJhm-00000008oTj-3fmH
	for barebox@lists.infradead.org;
	Fri, 07 Feb 2025 08:27:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tgJhk-000177-Cu; Fri, 07 Feb 2025 09:27:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tgJhk-003whg-0f;
	Fri, 07 Feb 2025 09:27:16 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tgJhk-001cjf-0N;
	Fri, 07 Feb 2025 09:27:16 +0100
Date: Fri, 7 Feb 2025 09:27:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z6XD5KGrSWnYBBXL@pengutronix.de>
References: <20250204132207.332918-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204132207.332918-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_002718_914556_647AD053 
X-CRM114-Status: GOOD (  17.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: rockchip: Replace driver from kernel repository
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Tue, Feb 04, 2025 at 04:22:07PM +0300, Alexander Shiyan wrote:
> +
> +static int rk3x_i2c_wait_xfer_poll(struct rk3x_i2c *i2c)
> +{
> +	uint64_t start = get_time_ns();
> +
> +	while (!is_timeout(start, WAIT_TIMEOUT)) {
> +		rk3x_i2c_irq(i2c);
> +		if (i2c->state == STATE_IDLE)
> +			return 0;
> +		udelay(5);

While it doesn't really hurt, this delay is unnecessary. We're busy
waiting anyway.

> +	}
> +
> +	return -ETIMEDOUT;
> +}
> +
> +static int rk3x_i2c_probe(struct device *dev)
> +{
> +	struct device_node *np = dev->of_node;
> +	struct rk3x_i2c_soc_data *data;
> +	struct resource *iores;
> +	unsigned long clk_rate;
> +	struct rk3x_i2c *i2c;
> +	int ret;
> +
> +	i2c = xzalloc(sizeof(*i2c));
> +	i2c->dev = dev;
> +
> +	ret = dev_get_drvdata(dev, (const void **)&data);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to retrieve driver data\n");

This function is deprecated:

 * DEPRECATED: use device_get_match_data instead, which avoids
 * common pitfalls due to explicit pointer casts

I fixed these two things while applying.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


