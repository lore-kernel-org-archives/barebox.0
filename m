Delivery-date: Mon, 21 Jun 2021 09:34:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvESN-00074N-2v
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 09:34:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvESL-000238-Ar
	for lore@pengutronix.de; Mon, 21 Jun 2021 09:34:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wlkvT8sLKCVZ+HX7X35ClHYBNps+iasC4trbB3az+II=; b=aLx0ZrT9vBJlQCXsQkcpJjrn2g
	/jPx2BwtJCG/2h6XCOJDc5t0gAFhD1aIO2nSxoIJUkJxgSOzDDjmD2YYsCUNuHJzmrcq+ngTlrZYN
	qaXoen4M+Dv6pF5lubiKJd8QOHI84TWU6nl8/aLcoBFDTdpKyf7LYfz4/S61SHLgdfwXV4PrQ0M4K
	H2vvcGo9+xUzUinzPIzCfGi5TlUaUSJHuEMi6FWzbWQN4Q65+RR6gsfcfNzRXUeRPLMvZVUii4P1r
	pTuwPbZWVPssKULYSMgteAyJGriqeWnOWzsO6U1TpApYTImswKxnoHlW5GjAE9N9hU6B4fb2C0rq0
	56wEXheA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvER1-002Xws-Dd; Mon, 21 Jun 2021 07:33:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEQq-002Xsx-S3
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 07:33:22 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvEQp-0001yz-Ax; Mon, 21 Jun 2021 09:33:19 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
 <20210619045055.779-16-a.fatoum@pengutronix.de>
 <20210621072558.GM9782@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b7ab9d9b-4e6f-8bcf-a1af-ad5028824bfd@pengutronix.de>
Date: Mon, 21 Jun 2021 09:33:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210621072558.GM9782@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_003321_009472_3661558A 
X-CRM114-Status: GOOD (  27.81  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 15/29] net: designware: fix non-1:1 mapped 64-bit
 systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 21.06.21 09:25, Sascha Hauer wrote:
> On Sat, Jun 19, 2021 at 06:50:41AM +0200, Ahmad Fatoum wrote:
>> drivers/net/designware.c handles the older Designware < 4.x MAC IPs,
>> which do not support DMA beyond 32-bit. They are still being integrated
>> into SoCs with 64-bit CPUs like the StarFive JH7100, which additionally
>> needs a non 1:1 mapping for coherent DMA.
>>
>> Fix the driver to support such usage. The driver still has the assumption
>> that barebox core will only pass it 32-bit pointers. This is now made
>> explicit by returning error codes when the DMA mask is violated.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/riscv/include/asm/io.h | 10 +++++++
>>  drivers/net/designware.c    | 57 ++++++++++++++++++++++---------------
>>  drivers/net/designware.h    | 28 +++++++++++++++---
>>  3 files changed, 68 insertions(+), 27 deletions(-)
>>
>> diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
>> index 3cdea7fcace1..795e670e3b9b 100644
>> --- a/arch/riscv/include/asm/io.h
>> +++ b/arch/riscv/include/asm/io.h
>> @@ -5,4 +5,14 @@
>>  
>>  #include <asm-generic/io.h>
>>  
>> +static inline void *phys_to_virt(unsigned long phys)
>> +{
>> +	return (void *)phys;
>> +}
>> +
>> +static inline unsigned long virt_to_phys(volatile void *mem)
>> +{
>> +	return (unsigned long)mem;
>> +}
>> +
>>  #endif /* __ASM_RISCV_IO_H */
>> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
>> index 0ee6d3d78ac7..559e202c29ce 100644
>> --- a/drivers/net/designware.c
>> +++ b/drivers/net/designware.c
>> @@ -104,15 +104,15 @@ static void tx_descs_init(struct eth_device *dev)
>>  {
>>  	struct dw_eth_dev *priv = dev->priv;
>>  	struct eth_dma_regs *dma_p = priv->dma_regs_p;
>> -	struct dmamacdescr *desc_table_p = &priv->tx_mac_descrtable[0];
>> +	struct dmamacdescr *desc_table_p = &priv->tx_mac_descrtable_cpu[0];
>>  	char *txbuffs = &priv->txbuffs[0];
>>  	struct dmamacdescr *desc_p;
>>  	u32 idx;
>>  
>>  	for (idx = 0; idx < CONFIG_TX_DESCR_NUM; idx++) {
>>  		desc_p = &desc_table_p[idx];
>> -		desc_p->dmamac_addr = &txbuffs[idx * CONFIG_ETH_BUFSIZE];
>> -		desc_p->dmamac_next = &desc_table_p[idx + 1];
>> +		desc_p->dmamac_addr = virt_to_phys(&txbuffs[idx * CONFIG_ETH_BUFSIZE]);
>> +		desc_p->dmamac_next = tx_dma_addr(priv, &desc_table_p[idx + 1]);
>>  
>>  		if (priv->enh_desc) {
>>  			desc_p->txrx_status &= ~(DESC_ENH_TXSTS_TXINT | DESC_ENH_TXSTS_TXLAST |
>> @@ -130,9 +130,9 @@ static void tx_descs_init(struct eth_device *dev)
>>  	}
>>  
>>  	/* Correcting the last pointer of the chain */
>> -	desc_p->dmamac_next = &desc_table_p[0];
>> +	desc_p->dmamac_next = tx_dma_addr(priv, &desc_table_p[0]);
>>  
>> -	writel((ulong)&desc_table_p[0], &dma_p->txdesclistaddr);
>> +	writel(desc_p->dmamac_next, &dma_p->txdesclistaddr);
>>  	priv->tx_currdescnum = 0;
>>  }
>>  
>> @@ -140,15 +140,15 @@ static void rx_descs_init(struct eth_device *dev)
>>  {
>>  	struct dw_eth_dev *priv = dev->priv;
>>  	struct eth_dma_regs *dma_p = priv->dma_regs_p;
>> -	struct dmamacdescr *desc_table_p = &priv->rx_mac_descrtable[0];
>> +	struct dmamacdescr *desc_table_p = &priv->rx_mac_descrtable_cpu[0];
>>  	char *rxbuffs = &priv->rxbuffs[0];
>>  	struct dmamacdescr *desc_p;
>>  	u32 idx;
>>  
>>  	for (idx = 0; idx < CONFIG_RX_DESCR_NUM; idx++) {
>>  		desc_p = &desc_table_p[idx];
>> -		desc_p->dmamac_addr = &rxbuffs[idx * CONFIG_ETH_BUFSIZE];
>> -		desc_p->dmamac_next = &desc_table_p[idx + 1];
>> +		desc_p->dmamac_addr = virt_to_phys(&rxbuffs[idx * CONFIG_ETH_BUFSIZE]);
> 
> You have both the DMA and virtual addresses available when allocating
> the memory. I think you should use this information rather than
> introducing the need for a virt_to_phys() phys_to_virt() pair.

desc_p points at DMA coherent memory. desc_p->dmamac_addr is supposed to contain
the physical address of memory used for streaming DMA. I think virt_to_phys
is appropriate here.

> 
>> @@ -276,7 +276,7 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
>>  	struct dw_eth_dev *priv = dev->priv;
>>  	struct eth_dma_regs *dma_p = priv->dma_regs_p;
>>  	u32 owndma, desc_num = priv->tx_currdescnum;
>> -	struct dmamacdescr *desc_p = &priv->tx_mac_descrtable[desc_num];
>> +	struct dmamacdescr *desc_p = &priv->tx_mac_descrtable_cpu[desc_num];
>>  
>>  	owndma = priv->enh_desc ? DESC_ENH_TXSTS_OWNBYDMA : DESC_TXSTS_OWNBYDMA;
>>  	/* Check if the descriptor is owned by CPU */
>> @@ -285,8 +285,8 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
>>  		return -1;
>>  	}
>>  
>> -	memcpy((void *)desc_p->dmamac_addr, packet, length);
>> -	dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr, length,
>> +	memcpy(dmamac_addr(desc_p), packet, length);
>> +	dma_sync_single_for_device(desc_p->dmamac_addr, length,
>>  				   DMA_TO_DEVICE);
> 
> Rather use dma_map_single() here?

There's is an unbalanced dma_sync_single_for_cpu in rx_descs_init().
I wasn't sure how to deal with it, had I wanted to move everything to dma_map_single.

I can supply a patch later for dma_map_single(), once I am told how, if that's
ok with you.

> 
> Sascha
> 
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

