Delivery-date: Fri, 05 Jan 2024 10:22:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLgPB-004ZsR-22
	for lore@lore.pengutronix.de;
	Fri, 05 Jan 2024 10:22:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLgPA-0000FK-Vf
	for lore@pengutronix.de; Fri, 05 Jan 2024 10:22:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HwHPh1QiN1kfQHRGpEheJIQM2y7upqsgBgOWuvlynAE=; b=kPWjxTyiIK2zf5lil12x6eRfKa
	H6L+Hva9MHWaEmhBOfmUJG4VKhX6P8ZWlxTm4VKpGsPMiY8WFhvhhAjU/Dogu3YKhMnZTfdi/W5h2
	7S3/147G3oywRpHBT+sg4E2N3NemlNUQH1ZHswfdvGDvXQIpyono8xkz4svF5NJLVZb1D6vN2Sxq3
	uGp07y4wt1trvdu5Spe/g0ADaPL0bX2pZzJvqEf7hcOJqBd6XXwcWOjEokI2HVAtEZwOChMHFTJ97
	ZpP3Pj5JP6OPauaW6ja0r2Hlk5Qa42Lvir/lyu+4ZrR8QADRB6TUH0VDk9EBO8hXNPAzGSpbnZuko
	3hA8HKyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgO6-00GN1p-2e;
	Fri, 05 Jan 2024 09:21:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgO3-00GN0a-1U
	for barebox@lists.infradead.org;
	Fri, 05 Jan 2024 09:21:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLgO2-0008S9-2e; Fri, 05 Jan 2024 10:21:06 +0100
Message-ID: <0dc646f4-5023-4ec2-b091-c123137c7824@pengutronix.de>
Date: Fri, 5 Jan 2024 10:21:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240104112241.989839-1-s.hauer@pengutronix.de>
 <20240104112241.989839-2-s.hauer@pengutronix.de>
 <20240104121856.GT1318922@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240104121856.GT1318922@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_012107_496129_27053F35 
X-CRM114-Status: GOOD (  24.59  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] net: Add fsl_enetc network driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 04.01.24 13:18, Sascha Hauer wrote:
> On Thu, Jan 04, 2024 at 12:22:41PM +0100, Sascha Hauer wrote:
>> This adds support for the fsl_enetc network controller found on several
>> Layerscape SoCs. The code is originally from U-Boot-2023.10-rc1.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>
>> Notes:
>>     Changes since v1:
>>     
>>     - Use get_unaligned to access unaligned pointers
>>     - use physical address returned by dma_alloc_coherent()
>>     - implement struct pci_driver::remove hook
>>     - do not printf in poller function
>>     - use write[lwq] to access rx/tx rings to avoid dmb()
> 
> Actually this last part is missing, here it is:
> 
> ---------------------------------8<---------------------------
> 
> From 3b312b7d501be3b0049de27582a26b19fdaf84e1 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Wed, 3 Jan 2024 20:55:39 +0100
> Subject: [PATCH] fixup! net: Add fsl_enetc network driver support
> 
> ---
>  drivers/net/fsl_enetc.c | 19 +++++++------------
>  1 file changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/fsl_enetc.c b/drivers/net/fsl_enetc.c
> index eb90c526bb..07e9a6b7c8 100644
> --- a/drivers/net/fsl_enetc.c
> +++ b/drivers/net/fsl_enetc.c
> @@ -454,13 +454,10 @@ static int enetc_send(struct eth_device *edev, void *packet, int length)
>  	dma = dma_map_single(priv->dev, packet, length, DMA_TO_DEVICE);
>  
>  	/* prepare Tx BD */
> -	memset(&priv->enetc_txbd[pi], 0x0, sizeof(struct enetc_tx_bd));
> -	priv->enetc_txbd[pi].addr = cpu_to_le64(dma);
> -	priv->enetc_txbd[pi].buf_len = cpu_to_le16(length);
> -	priv->enetc_txbd[pi].frm_len = cpu_to_le16(length);
> -	priv->enetc_txbd[pi].flags = cpu_to_le16(ENETC_TXBD_FLAGS_F);
> -
> -	dmb();
> +	writeq(cpu_to_le64(dma), &priv->enetc_txbd[pi].addr);
> +	writew(cpu_to_le16(length), &priv->enetc_txbd[pi].buf_len);
> +	writew(cpu_to_le16(length), &priv->enetc_txbd[pi].frm_len);
> +	writew(cpu_to_le16(ENETC_TXBD_FLAGS_F), &priv->enetc_txbd[pi].flags);

The cpu_to_le* can be dropped because writew/writeq always do conversion
to little endian.

>  
>  	/* send frame: increment producer index */
>  	pi = (pi + 1) % txr->bd_count;
> @@ -508,9 +505,7 @@ static int enetc_recv(struct eth_device *edev)
>  	if (!ENETC_RXBD_STATUS_R(status))
>  		return 0;
>  
> -	dmb();
> -
> -	len = le16_to_cpu(priv->enetc_rxbd[pi].r.buf_len);
> +	len = le16_to_cpu(readw(&priv->enetc_rxbd[pi].r.buf_len));

Same.

>  
>  	dev_dbg(&edev->dev, "RxBD[%d]: len=%d err=%d pkt=0x%p\n", pi, len,
>  		  ENETC_RXBD_STATUS_ERRORS(status), pkg);
> @@ -520,8 +515,8 @@ static int enetc_recv(struct eth_device *edev)
>  	dma_sync_single_for_device(priv->dev, priv->rx_pkg_phys[pi], PKTSIZE, DMA_FROM_DEVICE);
>  
>  	/* BD clean up and advance to next in ring */
> -	memset(&priv->enetc_rxbd[pi], 0, sizeof(union enetc_rx_bd));
> -	priv->enetc_rxbd[pi].w.addr = priv->rx_pkg_phys[pi];
> +	memset_io(&priv->enetc_rxbd[pi], 0, sizeof(union enetc_rx_bd));
> +	writeq(priv->rx_pkg_phys[pi], &priv->enetc_rxbd[pi].w.addr);
>  	rxr->next_prod_idx = (pi + 1) % rxr->bd_count;
>  	ci = (ci + 1) % rxr->bd_count;
>  	rxr->next_cons_idx = ci;
LGTM with changes applied:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



