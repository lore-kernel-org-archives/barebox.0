Delivery-date: Mon, 01 Mar 2021 17:31:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGlRw-000525-3n
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 17:31:12 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGlRv-0005Bp-4p
	for lore@pengutronix.de; Mon, 01 Mar 2021 17:31:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NREyH3miSHFbyBE+sS1mxGsxXSdr6RJ3+8Xk6jGGEiE=; b=m5liyqCyw1y+yAv6b0ph+pVZ4
	Y8Y+Sy+N/Daj/ulaEQePBVKLiCWPyZu4BM0Fo50xpRfB7n4sE3UVEFpXjF6PQ+Lafp6lb86eNk5VU
	2OVJBg6ejz50WZA4NvWaNBJ5z+dJHXWsItqBomh22PfBEa5cSQKckkLEmUNtGCZo4Q+Av2vmu9qp6
	qZYxjKVtUSWilkcQF4NX5BxngPr97ytNsjwvvE8NzDpydcBXPWcoU9GEdLM9Y4Sb3upvKW54+iJWd
	fq8PqWYHNejqEH/63s4jT9rv2TvWur4aHcOXDRIRE725/bEY1g8CgK51nshCoMF3Xvyozkzd0WXXW
	mg91fizWQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGlQe-0002cs-JT; Mon, 01 Mar 2021 16:29:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGlQb-0002cW-3s
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 16:29:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGlQZ-00050k-Of; Mon, 01 Mar 2021 17:29:47 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGlQZ-0007a4-9N; Mon, 01 Mar 2021 17:29:47 +0100
Date: Mon, 1 Mar 2021 17:29:47 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <20210301162947.GJ5549@pengutronix.de>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:29:34 up 11 days, 19:53, 83 users,  load average: 0.03, 0.19, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_112949_743509_11671AF9 
X-CRM114-Status: GOOD (  25.24  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/9] virtio: align virtio_config_ops::generation return
 type with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Feb 28, 2021 at 08:08:28PM +0100, Ahmad Fatoum wrote:
> The U-Boot return type for the function differs from Linux. We use
> the Linux API elsewhere, so use it here as well.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/virtio/virtio_mmio.c  | 8 +++-----
>  include/linux/virtio_config.h | 9 ++++-----
>  2 files changed, 7 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/virtio/virtio_mmio.c b/drivers/virtio/virtio_mmio.c
> index 821b43871a04..4a689495b8df 100644
> --- a/drivers/virtio/virtio_mmio.c
> +++ b/drivers/virtio/virtio_mmio.c
> @@ -141,16 +141,14 @@ static int virtio_mmio_set_config(struct virtio_device *vdev, unsigned int offse
>  	return 0;
>  }
>  
> -static int virtio_mmio_generation(struct virtio_device *vdev, u32 *counter)
> +static u32 virtio_mmio_generation(struct virtio_device *vdev)
>  {
>  	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
>  
>  	if (priv->version == 1)
> -		*counter = 0;
> -	else
> -		*counter = readl(priv->base + VIRTIO_MMIO_CONFIG_GENERATION);
> +		return 0;
>  
> -	return 0;
> +	return readl(priv->base + VIRTIO_MMIO_CONFIG_GENERATION);
>  }
>  
>  static int virtio_mmio_get_status(struct virtio_device *vdev)
> diff --git a/include/linux/virtio_config.h b/include/linux/virtio_config.h
> index 5ee0807fb098..3ed7001f4800 100644
> --- a/include/linux/virtio_config.h
> +++ b/include/linux/virtio_config.h
> @@ -49,10 +49,9 @@ struct virtio_config_ops {
>  	 * generation() - config generation counter
>  	 *
>  	 * @vdev:	the real virtio device
> -	 * @counter:	the returned config generation counter
> -	 * @return 0 if OK, -ve on error
> +	 * @return the config generation counter
>  	 */
> -	int (*generation)(struct virtio_device *vdev, u32 *counter);
> +	u32 (*generation)(struct virtio_device *vdev);
>  	/**
>  	 * get_status() - read the status byte
>  	 *
> @@ -311,7 +310,7 @@ static inline void __virtio_cread_many(struct virtio_device *vdev,
>  	int i;
>  
>  	/* no need to check return value as generation can be optional */
> -	vdev->config->generation(vdev, &gen);
> +	gen = vdev->config->generation(vdev);
>  	do {
>  		old = gen;
>  
> @@ -319,7 +318,7 @@ static inline void __virtio_cread_many(struct virtio_device *vdev,
>  			virtio_get_config(vdev, offset + bytes * i,
>  					  buf + i * bytes, bytes);
>  
> -		vdev->config->generation(vdev, &gen);
> +		gen = vdev->config->generation(vdev);
>  	} while (gen != old);
>  }
>  
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

