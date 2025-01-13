Delivery-date: Mon, 13 Jan 2025 15:37:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXLZN-000dJa-1N
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 15:37:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXLZM-0007jd-Q7
	for lore@pengutronix.de; Mon, 13 Jan 2025 15:37:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WSKAlmQR74IWWa7AAv8jJZUErjdBvAuwp1fxMr+fSv8=; b=QbJ9vtcnFTJTfmpbxtm9Z9vBfE
	1K9muBKCY2WRii2Nb4PPQS80Ibn12VMyFlC/GbgnOEzG5Upf48gJf5AkjSdeobMg2cZTq0yFJHlPz
	IfZUOtij/vwb+LeI0s8qgkH9K05zjzJjX37YaX6xbMUaFSSe0tSCOzebCHp4nApi4eaG7ZKj960JJ
	/cdf4h65TbMolPDIdzNtZuvigoJb7P9mDiSiq9oQ7v8bQcALfB8Oj+UwbBRbZ06KHR6oT9rWquJ/A
	TtJbMPcq6DE2G4gwynCitkHEI2b93+QBVJ9KeJQ2GBNiPKnrco/eOZm88ddkeK0I89ZVsOM3LtJDK
	X0oB7b4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXLYo-00000005QtT-3P60;
	Mon, 13 Jan 2025 14:36:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXLYm-00000005Qst-0M75
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 14:36:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXLYk-0007f8-Rp; Mon, 13 Jan 2025 15:36:54 +0100
Message-ID: <757d7d40-a066-4dc7-80b0-b14dec016fbb@pengutronix.de>
Date: Mon, 13 Jan 2025 15:36:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB3532BD01391995069161C80BEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <28c492e7-028f-4247-be7f-3edf699578fa@pengutronix.de>
 <DM5PR07MB353218A5AE678C5F358831C5EC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <DM5PR07MB353218A5AE678C5F358831C5EC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_063656_126423_960F4920 
X-CRM114-Status: GOOD (  19.87  )
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
Subject: Re: nvme sanitize command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Renaud,

On 13.01.25 15:03, Renaud Barbier wrote:
>> We do have ioctls on cdev in barebox, but we also have an actual erase
>> operation, so I prefer we use that instead.
> 
> Below the option for sanitize command:
> # nvme sanitize --help
> Usage: nvme sanitize <device> [OPTIONS]
> 
> Send a sanitize command.
> 
> Options:
>   [  --no-dealloc, -d ]                 --- No deallocate after sanitize.
>   [  --oipbp, -i ]                      --- Overwrite invert pattern between
>                                             passes.
>   [  --owpass=<NUM>, -n <NUM> ]         --- Overwrite pass count.
>   [  --ause, -u ]                       --- Allow unrestricted sanitize exit.
>   [  --sanact=<NUM>, -a <NUM> ]         --- Sanitize action.
>   [  --ovrpat=<NUM>, -p <NUM> ]         --- Overwrite pattern.

Thanks, I had looked in nvme(1), but I should have looked in nvme-sanitize(1)
instead.

> Note I am talking about sanitize operation that is  the whole device being erased i.e there is no start and end block to be specified.

So this is a single command that erases the whole device, but doesn't take
block offsets/length as arguments? Do you know what value the erased
data can have afterwards?

> Using erase would limit sanitisation to erasing the whole media

Isn't this what you want? Erase the whole device at once?
Anyway, the erase command can be extended as needed to take offset/length
or to change erasure type.

Currently erasing only part of the device is possible by adding calling
erase on a partition (perhaps allocated via addpart). 

> and no possibility to use the other options such as overwrite where a pattern and a number of pass is specified. 

Generally, I prefer not to copy the Linux style of device-specific ioctl
codes unless necessary.

For such very specific use cases, ioctl makes sense, yes.

cdev already supports ioctl, but block device doesn't, so the
natural step would be to add struct block_device_ops::ioctl,
which is called from struct block_device::cdev::ioctl.

I think we don't need that yet though, see below.

> Unless a way can be added to set features for sanitize.
> At present, erase is all I need so I will add the erase entry point with the sanitisation action being NVME_SANITIZE_SANACT_START_BLOCK_ERASE as default.

How about you implement erase in nvme, but check that size arguments indeed describe
the whole device: If it does, you do your sanitize operation and if it doesn't,
return -ENOSYS.

Would that work for you?

Cheers,
Ahmad


> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


