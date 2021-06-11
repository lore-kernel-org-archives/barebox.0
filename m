Delivery-date: Fri, 11 Jun 2021 12:42:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrebz-0004fH-4l
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 12:42:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lreby-0002EI-74
	for lore@pengutronix.de; Fri, 11 Jun 2021 12:42:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mK/QbIqOEon5kDDddkbF8QMywg5cNi1Wni48kX/GEtc=; b=1D8MceS2M4OOZ421z2gwbIFph5
	uXRDuBRqtTxb3bohSsLz//GgEOPQmCGkrUdTHQAEJB0ylzKViej/8wPUPS19/fU+mFjPveYwgQv+F
	HTlOUyguPpGEKuIi11CIw4/JZ9W5k+eyS/yiNc6sHrD0lZuPYyKjXn3KZDiowO5Vxf3v5d7qWraBK
	4RhAyxeLZV/n6FKDEt57oJqBG0rrmvD4FRMROIUUifohMFQmANMM+M9gPEpIXigumINwozDhjcnQm
	MbiVQOsdkQzq4hkYSzsqO2jG+w4FU3ufjIIWdDcqVm7SCxLMvIpmjf7vo12A0L5BNVKA3UTXarEL/
	pEU6rcsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lreaJ-004mQ5-JY; Fri, 11 Jun 2021 10:40:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lreaE-004mPR-DD
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 10:40:16 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lreaD-0001w1-3K; Fri, 11 Jun 2021 12:40:13 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210610131032.6645-1-s.hauer@pengutronix.de>
 <a08e527d-7557-a2fa-1bef-c3875a4c9072@pengutronix.de>
 <20210611100208.GD22904@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0c1b20e7-f829-fe21-ef0c-62b1bf246606@pengutronix.de>
Date: Fri, 11 Jun 2021 12:40:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210611100208.GD22904@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_034014_481315_8955A9CD 
X-CRM114-Status: GOOD (  20.64  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: dw_mmc: set dma mask to work correctly on 64bit
 platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 11.06.21 12:02, Sascha Hauer wrote:
> On Fri, Jun 11, 2021 at 10:23:25AM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 10.06.21 15:10, Sascha Hauer wrote:
>>> The variant we support currently can only do 32bit DMA. Adjust dma mask
>>> accordingly. Also use dma_map_single() rather than dma_sync_single() to
>>> actually get errors when the mapping fails.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> On a StarFive JH7100 (64-bit CPU, 32-bit MMC controller, non-1:1 mapping for
>> coherent DMA).
>>
>>>  	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
>>> -					 DMA_ADDRESS_BROKEN);
>>> +					 &host->idmac_dma);
>>> +	if (!host->idmac)
>>
>> That works for Linux, but not for barebox: barebox dma_alloc_coherent doesn't have
>>
>> a dev parameter, so it can't check for dma_mapping_error() internally.
> 
> Yeah, I know. I have that on my mental todo list and hoped nobody would
> realize.

Tss. tss. ;)

> Adding a dev parameter to dma_alloc_coherent() is one thing. With that
> we can check for errors. The next step of course would be to allocate
> memory in the allowed area, not only to complain.

What you can do for now is checking for dma_mapping_error here and abort
the probe if you exceed the mask.

> 
>>
>> dma_alloc_coherent also never returns NULL in barebox, all implementations, except
>>
>> for kvx, abort if no memory could be allocated.
>>
>>> +		return PTR_ERR(-ENOMEM);
>>
>> -ENOMEM is no pointer.
> 
> Yes, fixed.
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

