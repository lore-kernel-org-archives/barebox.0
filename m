Delivery-date: Tue, 26 Mar 2024 18:33:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpAfk-005avo-2b
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 18:33:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpAfk-0000dH-48
	for lore@pengutronix.de; Tue, 26 Mar 2024 18:33:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NKPTOREywrxhhaz8aKriZisHnoowCp/QyVeYepn0xJM=; b=pvz9YR4ThCVl39HNfz0+QgMths
	0wr0XBWlsBIvUXk7gtoHnGMzrc7hX8LrzPdIz5Km3mbWHWdTEo9I1GFB4we6jBRLwhWz26ztMupPd
	s3f03ZKWictKuZ8hDkIoNuaPJ7xM699LkVDCohUGGL2XDN52WvYwc+sDZM5+8V7Sfn+MlGhvaUe5M
	kk6BkpaMVk8gcyhodfdolqnaZdD+Xssf9lOisLHT629EkgnukBCrSCxWO5+Y6Vm451Utdt2z+7LIZ
	wiJdgS3wCSjGUZTZsuQnM2lfJzb47JmazPxZbsS1j1uRjenIXengfXmhouUv/LQRq79wEK0LB/F/J
	GfJwDmTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAf5-00000005kUT-3Bit;
	Tue, 26 Mar 2024 17:32:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAez-00000005kRm-1asP
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 17:32:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rpAeu-0008HJ-VQ; Tue, 26 Mar 2024 18:32:25 +0100
Message-ID: <0de04927-a9a6-44b3-82f1-7a60d1e46bbf@pengutronix.de>
Date: Tue, 26 Mar 2024 18:32:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240322142424.981863-1-a.fatoum@pengutronix.de>
 <ZgKkaT6jNha92DHu@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZgKkaT6jNha92DHu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_103229_497537_F2850C17 
X-CRM114-Status: GOOD (  21.61  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] dma: correctly honour dma-noncoherent device tree
 property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.03.24 11:33, Sascha Hauer wrote:
> On Fri, Mar 22, 2024 at 03:24:24PM +0100, Ahmad Fatoum wrote:
>> Most barebox platforms are either completely cache-coherent with respect to
>> DMA or completely non-coherent. To avoid having to walk the device tree for
>> non-existent dma-coherent and dma-noncohrent properties, barebox thus
>> only does this when CONFIG_OF_DMA_COHERENCY is selected.
>>
>> CONFIG_OF_DMA_COHERENCY is to be selected by platforms that have mixed
>> coherency for DMA masters. Forgetting to select this option can be
>> annoying to debug, which is why devinfo will inform the user of default
>> DMA coherency assignments:
>>
>>   DMA Coherent: false (default)
>>
>> In order to allow devinfo to differentiate implicit default and explicit
>> device tree DMA coherency configuration, the struct device::dma_coherent
>> member is not of boolean type, but Instead an enumeration that besides
>> coherent and non-coherent also encodes a DEV_DMA_COHERENCE_DEFAULT state.
>>
>> In practice though, a boolean was saved in this dma_coherent member,
>> leading to any dma-noncoherent property being ignored and the default
>> coherency setting being taken for the node.
>>
>> By fixing the type confusion, we restore working Ethernet on the
>> StarFive JH7100, which is the only SoC we currently support that
>> requires /soc/dma-noncohrent to be set for proper operation of its DMA
>> masters.
>>
>> Fixes: fbdea8fd54fe ("of: populate new device_d::dma_coherent attribute")
>> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/platform.c | 34 +++++++++++++++++++++++-----------
>>  1 file changed, 23 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
>> index ec1482b27797..e2c252b1ffee 100644
>> --- a/drivers/of/platform.c
>> +++ b/drivers/of/platform.c
>> @@ -90,6 +90,21 @@ static struct device_node *of_get_next_dma_parent(const struct device_node *np)
>>  	return args.np;
>>  }
>>  
>> +static enum dev_dma_coherence of_dma_get_coherence(struct device_node *node)
>> +{
>> +	if (IS_ENABLED(CONFIG_OF_DMA_COHERENCY)) {
>> +		while (node) {
>> +			if (of_property_read_bool(node, "dma-coherent"))
>> +				return DEV_DMA_COHERENT;
>> +			if (of_property_read_bool(node, "dma-noncoherent"))
>> +				return DEV_DMA_NON_COHERENT;
>> +			node = of_get_next_dma_parent(node);
>> +		}
>> +	}
>> +
>> +	return DEV_DMA_COHERENCE_DEFAULT;
>> +}
>> +
>>  /**
>>   * of_dma_is_coherent - Check if device is coherent
>>   * @np:	device node
>> @@ -101,17 +116,14 @@ static struct device_node *of_get_next_dma_parent(const struct device_node *np)
>>   */
>>  bool of_dma_is_coherent(struct device_node *node)
>>  {
>> -	if (IS_ENABLED(CONFIG_OF_DMA_COHERENCY)) {
>> -		while (node) {
>> -			if (of_property_read_bool(node, "dma-coherent"))
>> -				return true;
>> -			if (of_property_read_bool(node, "dma-noncoherent"))
>> -				return false;
>> -			node = of_get_next_dma_parent(node);
>> -		}
>> +	switch (of_dma_get_coherence(node)) {
>> +	case DEV_DMA_COHERENT:
>> +		return true;
>> +	case DEV_DMA_NON_COHERENT:
>> +		return false;
>> +	case DEV_DMA_COHERENCE_DEFAULT:
>> +		return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
>>  	}
>> -
>> -	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
>>  }
> 
> This brings us:
> 
> drivers/of/platform.c: In function 'of_dma_is_coherent':
> drivers/of/platform.c:127:1: warning: control reaches end of non-void function [-Wreturn-type]
> 
> what shall we return in the default case? also
> IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT)?

Yes. Either that or BUG()/__builtin_unreachable();

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



