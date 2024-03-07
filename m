Delivery-date: Thu, 07 Mar 2024 13:28:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riCrD-00CHD5-0E
	for lore@lore.pengutronix.de;
	Thu, 07 Mar 2024 13:28:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riCrC-00017F-DA
	for lore@pengutronix.de; Thu, 07 Mar 2024 13:28:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ycSmI14oFw0ryJFkD9ZmXKKAVMR7GN74NC1Xena1UUA=; b=OjDILw3H5wBUSCm5Vf169yDiJI
	0Ak6Q8GksyzPghgjVOaOzP80VXtgUidE+s/uJZXnol77rE2du8LkU+3pHiEy+HJB7CLKf6t6WUmcB
	8TdXSrGiibso166Y5HcsF9F82BEjQDS5k5arH2xc7jt85MAcU1ON7MOEtFlk6NK+kX1jR1JC6Lyu8
	BxWeUGN5iLHW6mep7IGbZWl8AqP4VX6rvqZmmwnVF5b7GJtp4Yo0+i20WpLQcm3Wqk+qwFGh48emr
	PVWyT9ecnROX51OJpSq3sJRPKx1TeDXT6bJ5M7+9Xcc/8jKaWGNKuZbtzOr6yVTVwzmy1Zn/5XB4y
	9DNf6Kug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riCqZ-00000004Yl3-2BFq;
	Thu, 07 Mar 2024 12:27:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riCqW-00000004Ykc-1U9K
	for barebox@lists.infradead.org;
	Thu, 07 Mar 2024 12:27:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1riCqU-0000PB-7W; Thu, 07 Mar 2024 13:27:34 +0100
Message-ID: <152b0d55-9a77-4aa2-9dab-192eb4f78a19@pengutronix.de>
Date: Thu, 7 Mar 2024 13:27:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
Cc: rcz@pengutronix.de, lst@pengutronix.de
References: <20240307111409.3733947-1-a.fatoum@pengutronix.de>
 <8ce80053a8fc3767cc4a7c96189c35b2eac49b60.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <8ce80053a8fc3767cc4a7c96189c35b2eac49b60.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_042736_550190_EE9E2490 
X-CRM114-Status: GOOD (  25.35  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] dma: debug: detect repeated DMA sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.03.24 12:20, Rouven Czerwinski wrote:
> Hi Ahmad,
> 
> On Thu, 2024-03-07 at 12:14 +0100, Ahmad Fatoum wrote:
>> dma_map_single will do any necessary cache maintenance to make a buffer
>> available to a device. Calling debug_dma_sync_single_for_device on such
>> a buffer is unnecessary, so flag when this happens.
> 
> 
> AFAIUI It is only incorrect if the buffer is handed of to the device
> and never touched by the CPU again. If you want to modify a buffer
> after the device has modified it to let the device work on it again,
> dma_sync_single_for_device is the correct function.
> 
> In Essence:
> 
> Device Access -> dma_sync_single_for_cpu -> CPU modification ->
> dma_sync_single_for_device -> Device Access
> 
> The buffer stays mapped to the deivce the whole time. Please correct me
> if my understanding is wrong.

Your understanding is correct and my patch shouldn't preclude using
the DMA API that way. What it flags is doing a sync for CPU or a sync
for device twice in a row without an intervening sync into the
inverse direction.

Cheers,
Ahmad

> 
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/dma/debug.c | 22 ++++++++++++++++++++--
>>  1 file changed, 20 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
>> index b3bfbff9b2f5..b80e35ff5092 100644
>> --- a/drivers/dma/debug.c
>> +++ b/drivers/dma/debug.c
>> @@ -12,6 +12,7 @@ struct dma_debug_entry {
>>  	dma_addr_t       dev_addr;
>>  	size_t           size;
>>  	int              direction;
>> +	bool             dev_mapped;
>>  };
>>  
>>  static const char *dir2name[] = {
>> @@ -121,6 +122,7 @@ void debug_dma_map(struct device *dev, void
>> *addr,
>>  	entry->dev_addr = dev_addr;
>>  	entry->size = size;
>>  	entry->direction = direction;
>> +	entry->dev_mapped = true;
>>  
>>  	list_add(&entry->list, &dma_mappings);
>>  
>> @@ -159,9 +161,17 @@ void debug_dma_sync_single_for_cpu(struct device
>> *dev,
>>  	struct dma_debug_entry *entry;
>>  
>>  	entry = dma_debug_entry_find(dev, dma_handle, size);
>> -	if (!entry)
>> +	if (!entry) {
>>  		dma_dev_warn(dev, "sync for CPU of never-mapped %s
>> buffer 0x%llx+0x%zx!\n",
>>  			     dir2name[direction], (u64)dma_handle,
>> size);
>> +		return;
>> +	}
>> +
>> +	if (!entry->dev_mapped)
>> +		dma_dev_warn(dev, "unexpected sync for CPU of
>> already CPU-mapped %s buffer 0x%llx+0x%zx!\n",
>> +			     dir2name[direction], (u64)dma_handle,
>> size);
>> +
>> +	entry->dev_mapped = false;
>>  }
>>  
>>  void debug_dma_sync_single_for_device(struct device *dev,
>> @@ -177,7 +187,15 @@ void debug_dma_sync_single_for_device(struct
>> device *dev,
>>  	 * corruption
>>  	 */
>>  	entry = dma_debug_entry_find(dev, dma_handle, size);
>> -	if (!entry)
>> +	if (!entry) {
>>  		dma_dev_warn(dev, "Syncing for device of never-
>> mapped %s buffer 0x%llx+0x%zx!\n",
>>  			     dir2name[direction], (u64)dma_handle,
>> size);
>> +		return;
>> +	}
>> +
>> +	if (entry->dev_mapped)
>> +		dma_dev_warn(dev, "unexpected sync for device of
>> already device-mapped %s buffer 0x%llx+0x%zx!\n",
>> +			     dir2name[direction], (u64)dma_handle,
>> size);
>> +
>> +	entry->dev_mapped = true;
>>  }
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



