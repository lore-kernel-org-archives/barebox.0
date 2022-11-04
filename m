Delivery-date: Fri, 04 Nov 2022 09:27:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqs3S-00Eiv2-Qv
	for lore@lore.pengutronix.de; Fri, 04 Nov 2022 09:27:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqs3R-00031z-78
	for lore@pengutronix.de; Fri, 04 Nov 2022 09:27:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SNgyD/8ARvtMnvcjU09RjNBx60HC+r/RUV/JQy4DPXs=; b=QrtMP23aqDIKypM77skdCWDzsX
	LVVbYi5RJfvphMNpjrOuZuRPdXBAi8encHK1WKw285yleg8gdQj1PLFFFz080aqrO3gzdx/FAq0ee
	hhL42cCqzzwUtqaP8Z7Dgt5vNe+n7pdHYO1oeMe8i9/mVQsCRH9/PTsMnihvB8m/PNsApQrSfktTJ
	98b2QhcdfjH1ATYRRhV0/EbMayGsBrpGuVLkBG6ikt28+DN9P46FJAb8SWQ4pxXbb7F4U9v1rbUR7
	NAW4OJ6qgEO1OmMbwGNRicGaqFgJxXduHxZcGwr2z5uESYQMOtvqoHES9EGiqYQazNUsFxTDCcvI1
	47m8Jpzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqs1Y-002wyq-Gf; Fri, 04 Nov 2022 08:26:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqs1R-002wxU-AK
	for barebox@lists.infradead.org; Fri, 04 Nov 2022 08:25:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqs1K-0002jj-1t; Fri, 04 Nov 2022 09:25:46 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqs1J-0005CW-Qu; Fri, 04 Nov 2022 09:25:45 +0100
Date: Fri, 4 Nov 2022 09:25:45 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221104082545.GQ3143@pengutronix.de>
References: <20221103131351.2059683-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221103131351.2059683-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_012553_395726_1014FB78 
X-CRM114-Status: GOOD (  25.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/6] net: add promiscuous mode configuration support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 03, 2022 at 02:13:46PM +0100, Oleksij Rempel wrote:
> This configuration is mostly needed for controllers attached to switches
> with different MAC address configurations.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  include/net.h |  3 +++
>  net/eth.c     | 10 ++++++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/include/net.h b/include/net.h
> index 338033d698..96c2ed1d11 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -49,6 +49,8 @@ struct eth_device {
>  				 int *length);
>  	void (*rx_monitor) (struct eth_device*, void *packet, int length);
>  	void (*tx_monitor) (struct eth_device*, void *packet, int length);
> +	/* Set promiscuous mode */
> +	int  (*set_promiscuous_mode) (struct eth_device*, bool enable);
>  
>  	struct eth_device *next;
>  	void *priv;
> @@ -113,6 +115,7 @@ int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a pa
>  int eth_rx(void);			/* Check for received packets	*/
>  void eth_open_all(void);
>  struct eth_device *of_find_eth_device_by_node(struct device_node *np);
> +int eth_set_promiscuous_mode(struct eth_device *edev, bool enable);
>  
>  /* associate a MAC address to a ethernet device. Should be called by
>   * board code for boards which store their MAC address at some unusual
> diff --git a/net/eth.c b/net/eth.c
> index 8f6ff7db3a..ad4b9d5987 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -31,6 +31,16 @@ struct eth_ethaddr {
>  
>  static LIST_HEAD(ethaddr_list);
>  
> +int eth_set_promiscuous_mode(struct eth_device *edev, bool enable)
> +{
> +	int ret = 0;
> +
> +	if (edev->set_promiscuous_mode)
> +		ret = edev->set_promiscuous_mode(edev, enable);
> +
> +	return ret;
> +}

We should return an error when set_promiscuous_mode() is not
implemented.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


