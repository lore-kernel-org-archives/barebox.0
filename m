Delivery-date: Mon, 15 Dec 2025 15:15:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Mg-00BlqW-06
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:15:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Mf-0001ip-Dy
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:15:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oYpN8LeziZU7tn3HKlsJ1SKFFzaLS5hOxY4u39LbTj0=; b=OaHtJU9rb8GFWip7X4ZMHXWo9H
	dMPNyhIH8e/MOwci+QX59mhwCUBeBsKsHqVWM7hojsxmiQDNc9evt7f8hqDe13iGHFWsHwDwul1Uw
	eR7v7dNROmUw6oxZlFLgziNIFTrROw3bxnHceplTUtx0NwYesSZfxJki6/WxB0+Y3AZNFUiHwFQYo
	G9j767BfP0QiqVMii0oPsRV5iOCXMt9lJrxX3ojOxSY3LvdfggvLGf2H2OLSvCzsTgQQ8/ev+YS6S
	iIo68RYDf/JUBzWkm1/QGtIPHvY0xg+gj5/vbt/6W161ZavnmGI36ZzgMOTRqVxCBfUs4Fp+MbUrm
	E1Ndcp7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9M6-00000003lu4-3sgc;
	Mon, 15 Dec 2025 14:15:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9M3-00000003ltZ-3RVV
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:15:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV9M2-0001ce-6e; Mon, 15 Dec 2025 15:15:14 +0100
Message-ID: <059edd9c-327f-42ab-81df-813acbd1a72f@pengutronix.de>
Date: Mon, 15 Dec 2025 15:15:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <20251203-efi-partition-refresh-v1-6-f0b6e79b5fa0@pengutronix.de>
 <3ad1186d-9e8c-4276-8f42-aef60de4956b@pengutronix.de>
 <aUAXduF1t74M2xtZ@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aUAXduF1t74M2xtZ@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_061515_866508_4F193AFD 
X-CRM114-Status: GOOD (  19.65  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] partitions: gpt: refresh partition tables when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/15/25 3:13 PM, Sascha Hauer wrote:
> On Mon, Dec 15, 2025 at 01:47:09PM +0100, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 12/3/25 4:19 PM, Sascha Hauer wrote:
>>> The GPT alternative header must be at the end of the device. When disk
>>> images are written to a device this often is not the case which results
>>> in warnings:
>>>
>>> WARNING: mmc0: GPT:Primary header thinks Alt. header is not at the end of the disk.
>>> WARNING: mmc0: GPT:6561831 != 62160895
>>> WARNING: mmc0: GPT:Alternate GPT header not at the end of the disk.
>>> WARNING: mmc0: GPT:6561831 != 62160895
>>> WARNING: mmc0: GPT: Use parted to correct GPT errors.
>>>
>>> This patch adds support for automatically rewriting the partition table
>>> when this happens. This behaviour is optional and needs to be enabled at
>>> compile time with CONFIG_PARTITION_DISK_EFI_REFRESH. Also this is
>>> runtime configurable with global.system.gpt_refresh
>>>
>>> Link: https://lore.barebox.org/20251128111929.2463263-1-s.hauer@pengutronix.de
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> With below point addressed:
>>
>> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>>
>>> -	if (error_found)
>>> +	if (error_found) {
>>> +		add_gpt_refresh(blk);
>>>  		dev_warn(dev, "GPT: Use parted to correct GPT errors.\n");
>>
>> With CONFIG_PARTITION_DISK_EFI_REFRESH enabled, I would suggest changing
>> this to a dev_info(dev, "GPT: barebox will autocorrect.\n") or something.
> 
> We can know that this feature is compiled in, but we don't know yet if it
> is actually enabled, so the best we can write is something like:
> 
> 	dev_info(dev, "GPT: will repair later when global.system.gpt_refresh is true\n");

Maybe: "GPT: will repair later if global.system.gpt_refresh=1" ?

> 
> I added this while applying.
> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



