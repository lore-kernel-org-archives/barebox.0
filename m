Delivery-date: Mon, 14 Apr 2025 12:36:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HBN-000bVA-1J
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:36:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HBM-00067K-Rj
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:36:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TKrsJnmO6Dq39hBTh0lHt52wogIOl/twc0CbY4xhc98=; b=u21RSeivf7w4pIRrCUR4HdH2D+
	DHzPN3qUy/7nZj+MdzgQ67OkGZmk+xM2cjszyQTjK7Xq3n06YZl8CjCE1Njj7/lRIYKeifTxzB3OK
	KV7VdGhedCzgxXEPOz6IOKY4yQV3oviC0rWfqYW/vjY3mUEsDmsbujCxLqbA9Ajd6r3jVvGDrhih6
	5LUS/95nervwP2VxjqUcWdrE3C6kfF5Bbmo8ZdZM6TAAcxE365vdFinJ0Ima16SHiUdUcYhzqahVP
	SzcnyQZg024JLsHFRQ2bbMzh0OdS72DBbdcLIUC5yJkEWzG4NcoxrEnUYIHe9TuVnAI3K/1S5guJu
	tTE3t1nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HAy-00000001ZLm-0zfN;
	Mon, 14 Apr 2025 10:36:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4GuI-00000001UEM-0F1z
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:19:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4GuG-0000AH-Rs; Mon, 14 Apr 2025 12:19:12 +0200
Message-ID: <d99a59d7-062c-4578-92c3-914dc2bfa61a@pengutronix.de>
Date: Mon, 14 Apr 2025 12:19:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-7-a.fatoum@pengutronix.de>
 <20250414101405.hplqfnnk7mmzzukx@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250414101405.hplqfnnk7mmzzukx@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_031914_104493_73A2E744 
X-CRM114-Status: GOOD (  18.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/18] blspec: collect bootloader spec entries from ESP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 4/14/25 12:14, Marco Felsch wrote:
> On 25-04-14, Ahmad Fatoum wrote:
>> +	if (!have_esp)
>> +		goto out;
>> +
>> +	for_each_cdev_partition(partcdev, cdev) {
>> +		if (!(partcdev->flags & DEVFS_PARTITION_BOOTABLE_ESP))
>> +			continue;
>> +
>> +		/*
>> +		 * ESP is only a fallback. If we have an ESP, but no bootloader spec
>> +		 * files inside, this is not an error.
>> +		 */
>> +		ret = boot_scan_cdev(scanner, bootentries, partcdev, true);
>> +		if (ret >= 0)
>> +			found += ret;
>> +		else
>> +			err = ret;
>> +	}
> 
> Is it allowed to have multiple ESP partitions? If not we could save us
> the additional loop and just store the ESP directly and make use of it.

It may make sense to have multiple ESPs on the same medium, as long as
some of them set DPS_TYPE_FLAG_NO_AUTO in the upper bits of the Type
UUID. I didn't want to preclude such a configuration, hence the loop.

Thanks,
Ahmad

> 
> Regards,
>   Marco
> 
> 
>> +
>> +out:
>>  	return found ?: err;
>>  }
>>  
>> -- 
>> 2.39.5
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



