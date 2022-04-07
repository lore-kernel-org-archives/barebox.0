Delivery-date: Thu, 07 Apr 2022 15:37:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncSKf-00AUco-Ld
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 15:37:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncSKd-0007G7-4e
	for lore@pengutronix.de; Thu, 07 Apr 2022 15:37:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/ampdfiooFA04hwx5Pm4qL8KgRZ59GhUlIiy5zCMOLA=; b=0C/Ccwb4dCPLsjGUAV2wctG8kF
	8z08NyffWLAM5qKhWmC/JkcvYNN2wbpAH4/qGYlubRdPM5ZS5xXEREr1lFxnRyI6mRxG8K5MNfGtP
	7ZrAiX9lO4P4dHi7CosDLBopowWAfhJzsMBgkM5BGkOI4A8O00Ucv7yZIVlQ6IE00mM6YpTs8cNdv
	2sfIXN5KUOBb4wZloCIlCYpwhr8zXOwSmw0taKkueUXYdxrI58VqonX0NKs3UF1fwsALkLm+iaZ91
	NHgFd2MbGl0KuPJY+pbvqHLIbrgFPJDHlVJX2ZNeHBl1XgTBEDK5Qf4V7u5fUqYfQ07vqSwqh5CqK
	SWvo3L0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncSJ9-00CB4Y-Vk; Thu, 07 Apr 2022 13:36:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncSJ4-00CB1M-KW
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 13:36:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncSJ1-0006wu-KK; Thu, 07 Apr 2022 15:36:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncSJ1-0004g7-AM; Thu, 07 Apr 2022 15:36:11 +0200
Date: Thu, 7 Apr 2022 15:36:11 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220407133611.GI4012@pengutronix.de>
References: <20220407091604.956577-1-o.rempel@pengutronix.de>
 <20220407091604.956577-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407091604.956577-3-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:35:53 up 8 days, 2:05, 73 users, load average: 0.12, 0.08, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_063614_688178_662431CF 
X-CRM114-Status: GOOD (  25.36  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 02/12] net: add of_find_eth_device_by_node() function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 07, 2022 at 11:15:54AM +0200, Oleksij Rempel wrote:
> For DSA support we need to find MAC node by phandle from the switch port
> node. So, provide of_find_eth_device_by_node() to solve this task.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  include/net.h |  1 +
>  net/eth.c     | 16 ++++++++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/include/net.h b/include/net.h
> index ca9b6cd61e..8013f79c2e 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -97,6 +97,7 @@ int eth_open(struct eth_device *edev);
>  void eth_close(struct eth_device *edev);
>  int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
>  int eth_rx(void);			/* Check for received packets	*/
> +struct eth_device *of_find_eth_device_by_node(struct device_node *np);
>  
>  /* associate a MAC address to a ethernet device. Should be called by
>   * board code for boards which store their MAC address at some unusual
> diff --git a/net/eth.c b/net/eth.c
> index 762c5dfb8a..06bf5fbe65 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -506,6 +506,22 @@ void led_trigger_network(enum led_trigger trigger)
>  	led_trigger(LED_TRIGGER_NET_TXRX, TRIGGER_FLASH);
>  }
>  
> +struct eth_device *of_find_eth_device_by_node(struct device_node *np)
> +{
> +	struct eth_device *edev;
> +	int ret;
> +
> +	ret = of_device_ensure_probed(np);
> +	if (ret)
> +		return NULL;
> +
> +	list_for_each_entry(edev, &netdev_list, list)
> +		if (edev->parent->device_node == np)
> +			return edev;
> +	return NULL;
> +}
> +EXPORT_SYMBOL(of_find_device_by_node);

Should be of_find_eth_device_by_node

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

