Delivery-date: Tue, 14 Jun 2022 11:12:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12bI-0024Lm-8g
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 11:12:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12bH-0004k3-MU
	for lore@pengutronix.de; Tue, 14 Jun 2022 11:12:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WrGZkQ40YH4bQx1qGrh1R1b/jb3OVEXJJdCr2YGIkM=; b=itO5L+0ywA4OSu
	Qr3Whm/7umfmipNJbRwotpz8sK2OS2BGixEsqvNfrTeeGh4SlZkSWdUC1P+ZuyvKqfJaPt2AIlOeA
	vM3pdm/Itag2ao2+U5GancsGrrgcTfa0Mbgvcb/SwFtQdT0HACu/Pm9aE8Vlq1+5G+fmaMkvvRoUV
	VyAazoOMx+78OaHmV9jSwDPZ3fYvKvQHVgKDQr66qTRXqmioQGo2fu9I9WQp9l8OpShHEKADyYnQp
	U/hSAXqToG4yOTNj0odg5j9SSnif6AqVgPsV9Bbpv5tejseA/Dug3YJZba8uX3fF7nQHz7RrDLk3S
	0jiQ9CDxrL+Y9Q0mjQUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12Zh-008aG8-1y; Tue, 14 Jun 2022 09:11:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12Pn-008Ult-LB
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 09:00:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o12Pk-0002DH-4h; Tue, 14 Jun 2022 11:00:44 +0200
Message-ID: <2733a4fc-0948-a120-5eb9-222cfd125559@pengutronix.de>
Date: Tue, 14 Jun 2022 11:00:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
 <20220609055922.667016-3-a.fatoum@pengutronix.de>
 <20220614084924.GR2387@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220614084924.GR2387@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_020047_767391_95B14384 
X-CRM114-Status: GOOD (  20.17  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 02/21] dma: add dma_sync nop stubs for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.06.22 10:49, Sascha Hauer wrote:
> On Thu, Jun 09, 2022 at 07:59:03AM +0200, Ahmad Fatoum wrote:
>> We can implement dma_sync functions as compiler barriers when we are
>> certain that the buffers are in coherent/uncached memory, e.g. because
>> MMU is only enabled in barebox_arm_entry which hasn't run yet.
>>
>> This will come in handy when doing mailbox communication in PBL on the
>> Raspberry Pi.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/dma.h | 19 +++++++++++++++++++
>>  1 file changed, 19 insertions(+)
>>
>> diff --git a/include/dma.h b/include/dma.h
>> index 90f9254ea80f..aeaba7d9316d 100644
>> --- a/include/dma.h
>> +++ b/include/dma.h
>> @@ -8,6 +8,7 @@
>>  
>>  #include <malloc.h>
>>  #include <xfuncs.h>
>> +#include <pbl.h>
>>  #include <linux/kernel.h>
>>  
>>  #include <dma-dir.h>
>> @@ -56,12 +57,30 @@ static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
>>  		(dev->dma_mask && dma_addr > dev->dma_mask);
>>  }
>>  
>> +#ifndef __PBL__
>>  /* streaming DMA - implement the below calls to support HAS_DMA */
>>  void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
>>  			     enum dma_data_direction dir);
>>  
>>  void dma_sync_single_for_device(dma_addr_t address, size_t size,
>>  				enum dma_data_direction dir);
>> +#else
>> +/*
>> + * assumes buffers are in coherent/uncached memory, e.g. because
>> + * MMU is only enabled in barebox_arm_entry which hasn't run yet.
>> + */
>> +static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
>> +			     enum dma_data_direction dir)
>> +{
>> +	barrier_data((void *)address);
>> +}
>> +
>> +static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
>> +				enum dma_data_direction dir)
>> +{
>> +	barrier_data((void *)address);
>> +}
>> +#endif
> 
> This breaks compilation of socfpga-arria10_defconfig. We have these
> stubs in arch/arm/include/asm/dma.h as well inside a #ifndef CONFIG_MMU.

I am preparing a fix.

> 
> Sascha
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

