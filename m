Delivery-date: Wed, 30 Apr 2025 11:46:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA41X-000mpH-1P
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 11:46:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA41W-0004pv-Q8
	for lore@pengutronix.de; Wed, 30 Apr 2025 11:46:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5xiz2hHAPicIQpf06UxN7N8hbCbFftZtGQRiKrErHlE=; b=45FSuaf/fKEzqaVhOotQkS+0MU
	r3ici4B2nYH8/GhEPpLr1J807KDPWBJFsFTmcnBgGY6TJhGMlb8i9Mv+vw4u6g8LhQibtMatjZWpp
	TUtHSy/sruTtxSkXyi04dzX2H3l+D5JXH7HrE8ZJvCgNpeqc0EetgmwyPGaAhVfEXCa543X5jIGRI
	iifu1XXk+aXEoacoQ4QXyLNf8fAYh9jg05fF+Xf5F1fA1XVo3X6uy4wKj4j5GprRLe532zhB2yGH8
	V5CQLbIAn3QF0UA4zMTRs37bSOAmQ7h1WCiXb6AU9sSsHh+65vvHanBIbg4jyKPlzKk3LGjNlG5vU
	i+2LOPrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA41L-0000000CQIh-2YNt;
	Wed, 30 Apr 2025 09:46:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA2vy-0000000CB8s-0DKG
	for barebox@bombadil.infradead.org;
	Wed, 30 Apr 2025 08:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=5xiz2hHAPicIQpf06UxN7N8hbCbFftZtGQRiKrErHlE=; b=lGxzuchfXHr6A+kdlmLxhEYG3V
	xmTeNMy6tlaJweEPphmXH7sNTYa0wO5GGXL1Vv/thPmDbA7ZopQ4bBmQoKNBaHhucgmciQyxVuOQO
	8YRsrjYLlpO8TP0qWAL2pX3NcQUcq22LYx+c7nariCAiszFyPwNsOecPEDjgqtkLOoZ44oekxI0i3
	j4AJz2qgSc4riDgwYAibr1BxM26sNfk7Dl9zMmu2bEjF3AmBfpkEuXww7+3ofCkJjvZIYN7Q8U+2O
	yiYfXKX4Vt8qemyC9oyB2Vom3yU6E9YckLGKMGmq0cKJ+7I1I1QgsIzTmzeibvOv2aewa3JV9kNCK
	TwsOgxIg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uA2vt-0000000Dk1P-2Paa
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 08:36:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uA2vq-0002UD-Kd
	for barebox@lists.infradead.org; Wed, 30 Apr 2025 10:36:42 +0200
Message-ID: <ca2da684-fa88-45da-a16d-6c11b5842009@pengutronix.de>
Date: Wed, 30 Apr 2025 10:36:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: BAREBOX <barebox@lists.infradead.org>
References: <20250429085005.3114496-1-a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250429085005.3114496-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_093645_796658_9C5E1853 
X-CRM114-Status: GOOD (  24.52  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: seed PRNG from PHY link up jitter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 4/29/25 10:50, Ahmad Fatoum wrote:
> The new Xorshift* RNG is seeded only from the cycle counter at startup,
> which is much less entropy for the MAC address generation use case,
> which used the nanosecond timestamp at generation time before the switch
> to Xorshift*.
> 
> The nice thing about our new PRNG implementation is that we can call
> srand_xor multiple times to keep adding entropy, so let's do that after
> each PHY link up.
> 
> This should ensure that MAC addresses are sufficiently random again.

I talked off-list with Sascha about this and there are other callsites
to random_ether_addr that can happen before Ethernet link is up.

I will revisit this patch later.

Cheers,
Ahmad

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I think this is a candidate for master, because especially network
> booted barebox can now easily end up with the same seed on two
> susbequent runs (observed on i.MX6).
> ---
>  common/clock.c        | 7 +++++++
>  drivers/net/phy/phy.c | 7 +++++--
>  include/clock.h       | 8 ++++++++
>  3 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/common/clock.c b/common/clock.c
> index 517116e3b9a3..931a96865140 100644
> --- a/common/clock.c
> +++ b/common/clock.c
> @@ -207,6 +207,13 @@ void mdelay_non_interruptible(unsigned long msecs)
>  }
>  EXPORT_SYMBOL(mdelay_non_interruptible);
>  
> +#if IN_PROPER
> +void clocksource_srand(void)
> +{
> +	srand_xor(current_clock->read() & current_clock->mask);
> +}
> +#endif
> +
>  int init_clock(struct clocksource *cs)
>  {
>  	if (current_clock && cs->priority <= current_clock->priority)
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 2795d09918d5..d9f50f45f441 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -68,11 +68,14 @@ int phy_update_status(struct phy_device *phydev)
>  	if (phydev->adjust_link)
>  		phydev->adjust_link(edev);
>  
> -	if (phydev->link)
> +	if (phydev->link) {
>  		dev_info(&edev->dev, "%dMbps %s duplex link detected\n",
>  				phydev->speed, phydev->duplex ? "full" : "half");
> -	else if (oldlink)
> +		/* Add time to establish link up to RNG state */
> +		clocksource_srand();
> +	} else if (oldlink) {
>  		dev_info(&edev->dev, "link down\n");
> +	}
>  
>  	return 0;
>  }
> diff --git a/include/clock.h b/include/clock.h
> index 03a38911a7a7..e28870b1e84b 100644
> --- a/include/clock.h
> +++ b/include/clock.h
> @@ -43,6 +43,14 @@ void udelay(unsigned long usecs);
>  void mdelay(unsigned long msecs);
>  void mdelay_non_interruptible(unsigned long msecs);
>  
> +#if IN_PROPER
> +void clocksource_srand(void);
> +#else
> +static inline void clocksource_srand(void)
> +{
> +}
> +#endif
> +
>  #define SECOND ((uint64_t)(1000 * 1000 * 1000))
>  #define MSECOND ((uint64_t)(1000 * 1000))
>  #define USECOND ((uint64_t)(1000))

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



