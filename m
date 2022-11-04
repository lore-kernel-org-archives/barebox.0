Delivery-date: Fri, 04 Nov 2022 09:38:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsDn-00EjK2-MJ
	for lore@lore.pengutronix.de; Fri, 04 Nov 2022 09:38:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsDm-0004QI-Ke
	for lore@pengutronix.de; Fri, 04 Nov 2022 09:38:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tIrFu/FYuyetibAEBTUwVUTZ7RCJp8U4i+lri1QFVgI=; b=zG0aRbMICT/D4XLtLGDjq3/kNr
	6CAqnfCwbLF4wdnA/Y4F5CCio/UWYAMUGgZiI3EvNUM4chlE7hlnvHPpZ9CJL1GQLr1NtzSUa+tdn
	tQK0s57HHKu+iZCoOXZ+7dONuJkalxnx+bODeEGQgyy3K7vlEZK+b8SwEskA5HtHwDh0w8AtBYmNS
	cVRNX6eMyp6PQNf9PSQdrSikVsFcWtR4ugedqlHnVrPrNmdTWpfo7viVDqGdicXSDU1KhJtSmNtDY
	0j5KTdjg63JvxDJ6/fC/RjbDlxLr5MXIr4coqxFnHBKmQ4wNmC1yyrEO3V7nFlau7KHVf8MV04B2V
	12gUhdxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsCY-002z7y-SW; Fri, 04 Nov 2022 08:37:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsCU-002z72-0j
	for barebox@lists.infradead.org; Fri, 04 Nov 2022 08:37:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oqsCS-0004Lx-FE; Fri, 04 Nov 2022 09:37:16 +0100
Message-ID: <0bf2eb6a-5c5a-2456-6080-7092291c524f@pengutronix.de>
Date: Fri, 4 Nov 2022 09:37:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20221103131351.2059683-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221103131351.2059683-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_013718_091130_AAC7A022 
X-CRM114-Status: GOOD (  25.71  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/6] net: add promiscuous mode configuration support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On 03.11.22 14:13, Oleksij Rempel wrote:
> This configuration is mostly needed for controllers attached to switches
> with different MAC address configurations.

I think all interfaces should have a promisc parameter to be able to
configure this. This can be added in future, but for now it would be
great if ethlog could have an optional parameter to enable promisc
on the interface it's listening at. Should be useful for future
debugging.

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
> +
>  int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr)
>  {
>  	int ret;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



