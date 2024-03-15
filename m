Delivery-date: Fri, 15 Mar 2024 12:48:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl62f-007oPm-0n
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 12:48:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl62e-0005qx-Kx
	for lore@pengutronix.de; Fri, 15 Mar 2024 12:48:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9P41x4hHgGkpfZzq4f7EcjHyL88sw5sbP7M58shOJu0=; b=R6E6v4Y8NMPYa0t7TTizShnxSL
	iXZxU1pIpPp6eHUQMlofuN/O1ZDaipnxu1fB3Xm86xCuYoxX3/Fi/Nas2dTCZYE3efQyAR/qNFUrU
	NU+TzSfXIp0jlYA8q3iPmaS84rG4EJbgx9mIv9WAtkXPwACo0XJEWMxlFNfd9UluwRNvAm2rLOTD5
	y6ARj2QjpmHFx5cXNFLWIjAbcmPYiUUGpHxIAsaWxwCBKN7hUROtrxR9qC7CFs7A21MTRUzV/UPU6
	AZuEg71Jm76lEPrJgaaHHdNrvk5gxHeHKoPI0UDsKDvklqIiev9WcDRSNJH6boH1LBto9mAwvUv19
	yXn/DKzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl61y-0000000056k-28x5;
	Fri, 15 Mar 2024 11:47:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl61u-0000000054H-0cXC
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 11:47:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rl61q-0005Fv-LO; Fri, 15 Mar 2024 12:47:14 +0100
Message-ID: <8a6cac5f-f0a1-44bb-b5d0-e96317c2b4b6@pengutronix.de>
Date: Fri, 15 Mar 2024 12:47:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
 <20240314-v2024-02-0-topic-arasan-hs200-support-v2-6-0386c27fe653@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-6-0386c27fe653@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_044718_587471_F6921D07 
X-CRM114-Status: GOOD (  18.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 06/14] mci: core: save the set clock as actual_clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.03.24 19:47, Steffen Trumtrar wrote:
> Linux mmc_host saves the actual_clock set on the HC. Do the same to use
> it later.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/mci-core.c | 2 ++
>  include/mci.h          | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 2b39985d5e..6c473d21bf 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -867,6 +867,8 @@ static void mci_set_ios(struct mci *mci)
>  	};
>  
>  	host->set_ios(host, &ios);
> +
> +	host->actual_clock = host->clock;
>  }
>  
>  /**
> diff --git a/include/mci.h b/include/mci.h
> index 91460b7ef6..fe0bd26888 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -460,6 +460,7 @@ struct mci_host {
>  	unsigned f_min;		/**< host interface lower limit */
>  	unsigned f_max;		/**< host interface upper limit */
>  	unsigned clock;		/**< Current clock used to talk to the card */
> +	unsigned actual_clock;

/**< Clock used to talk to card, before ios set  */ would be a suitable comment,
but that can be squashed later as a fixup.

>  	enum mci_bus_width bus_width;	/**< used data bus width to the card */
>  	enum mci_timing timing;	/**< used timing specification to the card */
>  	unsigned max_req_size;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



