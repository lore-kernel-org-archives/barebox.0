Delivery-date: Wed, 25 Jan 2023 09:34:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbEx-001IPV-8B
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 09:34:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbEu-0007mR-Ig
	for lore@pengutronix.de; Wed, 25 Jan 2023 09:34:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8xm+VO01iAqDInyrR0tXQrILN80AscUhokEePYrq6d8=; b=jqV2PoFF7HzKrMH2Iy5RfHYuIM
	Va6izf6+eoi3iK2s0/Rf41C2bAIRqTK5WWFa8y0eFRGet+zf8+i7znxE5UF+OYqXM4EXzNjEDpun6
	mBgrZPAHljkWR+ZhA2nDevFAF5wqtKOCBU29SBmH3dvEeQ9ZgwKVDsdSKartwRoqx+DnAjPaIJRTm
	DR22nwFYOOMxpdIkR+F61DAOG35C6InejD+o6UAAYAAME5SGKT4oVcpuoi/cdH3A8j2X0DR25Jd4b
	HF1dJ2Nb8YxQOIjzx9ZXJK5csMKboU0mfWCJ2PsD3Q863p7RVRwR6E9Dco2iGNz6Hh6OembPaI77u
	CvxWaLQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbDY-006RvQ-K8; Wed, 25 Jan 2023 08:33:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbDM-006RsW-82
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 08:33:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKbDK-0007Vg-SP; Wed, 25 Jan 2023 09:33:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKbDK-0003SY-KC; Wed, 25 Jan 2023 09:33:02 +0100
Date: Wed, 25 Jan 2023 09:33:02 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230125083302.GA24755@pengutronix.de>
References: <20230125075354.1760273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125075354.1760273-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_003304_318713_C081132B 
X-CRM114-Status: GOOD (  24.69  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] net: dsa: realtek: support enabling only one
 of the drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 08:53:53AM +0100, Ahmad Fatoum wrote:
> We have drivers for both rtl8365mb and rtl8366rb and each uses a
> different tagger. realtek-dsa didn't know that and caused a reference to
> an unavailable symbol when one of them was disabled. Add IS_ENABLED()
> guards to fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/realtek-dsa/tagger.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/realtek-dsa/tagger.c b/drivers/net/realtek-dsa/tagger.c
> index 1d4461aebcb8..3a41f3b3c1b4 100644
> --- a/drivers/net/realtek-dsa/tagger.c
> +++ b/drivers/net/realtek-dsa/tagger.c
> @@ -4,7 +4,7 @@
>  
>  int realtek_dsa_init_tagger(struct realtek_priv *priv)
>  {
> -	const struct dsa_device_ops *tagger_ops;
> +	const struct dsa_device_ops *tagger_ops = NULL;
>  	struct dsa_switch_ops *ops;
>  
>  	/* TODO: Tagging can be configured per port in Linux. barebox DSA core
> @@ -14,18 +14,24 @@ int realtek_dsa_init_tagger(struct realtek_priv *priv)
>  	 */
>  	switch (priv->ops->get_tag_protocol(priv)) {
>  	case DSA_TAG_PROTO_RTL4_A:
> -		tagger_ops = &rtl4a_netdev_ops;
> +		if (IS_ENABLED(CONFIG_NET_DSA_TAG_RTL4_A))
> +			tagger_ops = &rtl4a_netdev_ops;
>  		break;
>  	case DSA_TAG_PROTO_RTL8_4:
> -		tagger_ops = &rtl8_4_netdev_ops;
> +		if (IS_ENABLED(CONFIG_NET_DSA_TAG_RTL8_4))
> +			tagger_ops = &rtl8_4_netdev_ops;
>  		break;
>  	case DSA_TAG_PROTO_RTL8_4T:
> -		tagger_ops = &rtl8_4t_netdev_ops;
> +		if (IS_ENABLED(CONFIG_NET_DSA_TAG_RTL8_4))
> +			tagger_ops = &rtl8_4t_netdev_ops;
>  		break;
>  	default:
> -		return -EINVAL;
> +		break;
>  	}
>  
> +	if (!tagger_ops)
> +		return -EINVAL;
> +
>  	ops = memdup(priv->ds->ops, sizeof(*priv->ds->ops));
>  	ops->xmit = tagger_ops->xmit;
>  	ops->rcv = tagger_ops->rcv;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


