Delivery-date: Fri, 23 Apr 2021 17:57:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZyBr-0006Yi-Bq
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 17:57:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZyBq-0001f6-BC
	for lore@pengutronix.de; Fri, 23 Apr 2021 17:57:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/NobnZQb4WGPGh1P76Ny1/UEA80UwuOBPjWv+D9Qpk4=; b=rR+p1MrveXg2KJq17bHgm7qu3
	zUxGyQkmpEx+ahT3M2m6C9d1aOZDE7NbgkuOqHENy8NE1bIatptNUXUcB3FDlgW6BvvnuaJZWW+1c
	15MCCmtjvQp4o1D5ytV+LoxIgMSofT5CwSYOw7DcHNgKKBoQ1MOXX575PmdZHRtnafXT3J7KoDmDU
	TrHKwKXRtSx0lw129B/wqP03YwYZdP/5VZ9Kc1xzRLmp6GEevWJXMid4HBP78Vlc/8PtcjCeUMuaJ
	5MNxTdcEoY5i44ueDPpHr/Q/6WbHaUnJuI5cxOC+BtJBmbCbLrB4d7436+9d+fikd6IfRcqVWlsw7
	P72ZXEkEw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZyAq-001pDd-Tu; Fri, 23 Apr 2021 15:56:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZyAh-001pD4-TG
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 15:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=IK1rQIX4tnX1JKNGBN+x9mipNT4UQKDXChYcOkU9DFI=; b=tdWE7awNBIqRyNOeBPx/4d/4Qz
 Bun1EUyTePuKREtGGVk8GFxU0yh18KOrj+7CWXDR6hPzL77xndbMP0eDH7GvH20QoavBNDCX6tmWH
 UPcVohBr1CKu0z7IJ6JJ6i+xD5iCGDZp1UM8gI7Ev+NxUDG35roKV8DwI3CziEs9+qp5CO8lM5zyC
 cPzIL86z0bonxq++8CmTcacwhpOHKvRjJls2wMG8f+5SXaLookXgHF9pE4Bb1BtJeha9swFdFNVoZ
 0SF9fne+bN4LA6PNmsJEIRBIn7F8ZuQfNiE0be7uPpmWLQhhzbcSXQXFROSnziNOZgbYtjt6UnxIh
 t5GihzAw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZyAe-00EWnG-RK
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 15:56:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lZyAd-0001Yi-6s; Fri, 23 Apr 2021 17:56:43 +0200
To: Oleksij Rempel <linux@rempel-privat.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
 <20210423142829.29468-3-o.rempel@pengutronix.de>
 <e2787ffc-cdcd-9b94-fd8e-2e64616f3c47@pengutronix.de>
 <b4c7ee6f-7ef1-1c6b-be6f-bc44b81ccfdf@rempel-privat.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <47f914b9-1764-f3c7-9bab-9203c387af25@pengutronix.de>
Date: Fri, 23 Apr 2021 17:56:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <b4c7ee6f-7ef1-1c6b-be6f-bc44b81ccfdf@rempel-privat.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_085644_914151_E0B2801A 
X-CRM114-Status: GOOD (  18.68  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/6] ARM: at91: xload-mmc: add
 sama5d3_atmci_start_image() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 23.04.21 17:54, Oleksij Rempel wrote:
> Am 23.04.21 um 17:26 schrieb Ahmad Fatoum:
>> Hello Oleksij,
>>
>> On 23.04.21 16:28, Oleksij Rempel wrote:
>>> +void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
>>> +					  unsigned int slot)
>>> +{
>>> +	void *buf = (void *)SAMA5_DDRCS;
>>> +	const struct atmci_instance *instance;
>>> +	struct pbl_bio bio;
>>> +	const s8 *pin;
>>> +	int ret;
>>> +
>>> +	ret = sama5_bootsource_instance(boot_src);
>>> +	if (ret > ARRAY_SIZE(atmci_instances) - 1)
>>> +		panic("Couldn't determine boot MCI instance\n");
>>> +
>>> +	instance = &atmci_instances[boot_src];
>>
>> What's the difference between slot and instance?
> 
> there are 3 MCI controllers (instances), each controller has multiple
> slots. Usually slots board specific and configured over devicetree.
> 
>> Looks to me like you could drop slot in favor of instance and support
>> booting from any controller with the same image?
> 
> Currently it is not supported. For some reasons i was not able to detect
> boot source. In any case, this can be investigated separately if some
> will need this functionality.

Ok.

> 
>>> +
>>> +	sama5d3_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
>>> +	for (pin = instance->pins; *pin >= 0; pin++) {
>>> +		at91_mux_pio3_pin(IOMEM(SAMA5D3_BASE_PIOD),
>>> +					 pin_to_mask(*pin), instance->periph, 0);
>>> +	}
>>> +
>>> +	sama5d3_pmc_enable_periph_clock(instance->id);
>>> +
>>> +	ret = at91_mci_bio_init(&bio, instance->base, clock, slot);
>>> +	if (ret)
>>> +		goto out_panic;
>>> +
>>> +	at91_fat_start_image(&bio, buf, SZ_16M, boot_src);
>>> +
>>> +out_panic:
>>> +	panic("FAT chainloading failed\n");
>>> +}
>>>
>>
> 
> 
> --
> Regards,
> Oleksij
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

