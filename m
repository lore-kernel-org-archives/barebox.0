Delivery-date: Thu, 11 Jan 2024 08:07:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNp9c-00CdlQ-1P
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 08:07:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNp9b-0004X5-PL
	for lore@pengutronix.de; Thu, 11 Jan 2024 08:07:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=owdGtp0sgasjDC5I2T30tcuXYy+PX0Zhpy2cm1x1Xb0=; b=wsa12lbrlGFNK1xzXbKrWrLsVK
	bO3rTkFmtMBMA7RziWpfPbvvHw1F6htssYmtaGaxK1y25XUCvKhF5dp1Nfrc6vVowXspua2M+0COF
	u0qyqbRjQHrc+QRAAXBZtARkvXufybD5ls4mtXXVxLb03XxX2ljvi+CdL4LCu0oY23niYhxeYHxzF
	o1xLwL/c/3hE6FWL7m3Bupup9yHHogrclThuSkt4Dl0v0JKrw2eAEm3f2hx25g6Ymzx5/CaBABC2f
	k/GJsPOqEd2V2Uom7Us+/kvFP0tV5kNnb5l8roLn5kGy2vl28N/bCYRlYmvNIwFkvBHozUPu07TaU
	rmC4Oh7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNp8A-00GD9y-1O;
	Thu, 11 Jan 2024 07:05:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNp85-00GD6g-1v
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 07:05:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNp81-0004LQ-86; Thu, 11 Jan 2024 08:05:25 +0100
Message-ID: <3f24753c-ca82-4a27-97a2-938f4bf0863a@pengutronix.de>
Date: Thu, 11 Jan 2024 08:05:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
 <20230221080524.607241-10-a.fatoum@pengutronix.de>
 <20230227104116.GL32097@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230227104116.GL32097@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_230529_630959_5E4DC785 
X-CRM114-Status: GOOD (  26.39  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFC 09/12] of: populate new device_d::dma_coherent
 attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

(apologies for the late answer. Device was only debricked recently).

On 27.02.23 11:41, Sascha Hauer wrote:
>> +		coherent = dev_is_dma_coherent(dev);
>> +		if (coherent >= 0)
>> +			printf("DMA Coherent: %s\n", coherent ? "true" : "false");
> 
> '>=' doesn't seem to be quite right here.

Negative error code means here that it's unknown whether device is coherent or not.
I have reworked this for v2 to make dev_is_dma_coherent return a boolean.

>> +	/*! This particular device is dma coherent, even if the
>> +         * architecture supports non-coherent devices.
>> +	 */
>> +#ifdef CONFIG_OF_DMA_COHERENCY
>> +	bool dma_coherent:1;
>> +#endif
> 
> I think this patch could be easier when we add the dma_coherent field
> unconditionally.

There's an overhead to determining coherency from the DT, which I would like to
skip if we don't require that support, because all devices are either coherent
or aren't. This is still the case in v2, but dma_coherent is now defined
unconditionally with a DEV_DMA_COHERENCY_DEFAULT value if no OF walk happens.

>> +static inline int dev_is_dma_coherent(struct device *dev)
>> +{
>> +	if (!dev_of_node(dev))
>> +		return -EINVAL;
>> +
>> +	return __dev_is_dma_coherent(dev);
>> +}
> 
> This should return bool. Either a device is DMA coherent or not.

Or we don't know, but in that case we can fall back to the architecture
default. Fixed in v2.

> 
> You seem to assume that a device is not cache coherent when you don't
> know:
> 
> -       dma_sync_single_for_device(addr, size, dir);
> +       if (dev_is_dma_coherent(dev) <= 0)
> +               dma_sync_single_for_device(addr, size, dir);

Yes, but when printing the attribute in devinfo, I didn't want to print

DMA-Coherent: false

when actually we don't know. For v2, I only print it now when the value
differs from the default for non-OF devices.

> This assumption seems to make sense as an unnecessary cache synchronisation
> shouldn't hurt, right?

It hurts when the device turns out to be coherent. In that case, the device
may have written to the cache and we invalidate the cache thinking that
the device has written to memory. With v2 and dev_is_dma_coherent becoming
a boolean, the code is now much more readable IMO.

Thanks for the review.

Cheers,
Ahmad



> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



