Delivery-date: Thu, 20 Feb 2025 07:40:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl0EN-004c5z-2O
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 07:40:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl0EM-0003Xv-Hu
	for lore@pengutronix.de; Thu, 20 Feb 2025 07:40:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ayUoBod58F/K9AwNb+f/uL9fY1xNx8Umam/q9u2cZI8=; b=T+zY+TUuzQfiX74qMJQD0kqsk1
	VSLD7BDMVb1XyRjCWX1WqAZDKHT9f+lawDxpngvhXBVzEaFDgJXG/wMxkZ48ZaqMbWqBpjx9bazFf
	gms00JXoENSQfOXhcsU1lSRyCsylxceG8XFCUgaK34z4ZLYBO63AN5UDCuERNU400lHEAXu0KQ50F
	1nUqUYQp/1uHMknHu40HHA2YsKzpqp4o1b3MQtw2NW5QfXxVvpsvG1BjkOTt1eJIJo5m/5yW/vdGk
	7dZJ15FA/99dFs+oS6r16piTdLD007riq07rEfE4dfqreb53MjO4fG4qGEo02UWPrTngvnv/d2skY
	dmdS6KiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl0Dc-0000000GyW0-2k7f;
	Thu, 20 Feb 2025 06:39:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl0Cz-0000000GyP3-0Jg7
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 06:38:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tl0Cu-0003KF-P1; Thu, 20 Feb 2025 07:38:48 +0100
Message-ID: <ddc2507d-47e4-4cc0-98fe-ef85f34cbd98@pengutronix.de>
Date: Thu, 20 Feb 2025 07:38:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org,
 Jules Maselbas <jmaselbas@zdiv.net>
References: <20250205102549.27015-1-jmaselbas@zdiv.net>
 <173891686844.239361.18192152268825416500.b4-ty@pengutronix.de>
Content-Language: en-US
Cc: Enrico Joerns <ejo@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <173891686844.239361.18192152268825416500.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_223853_115681_64220F90 
X-CRM114-Status: GOOD (  12.95  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: include: rename printk.h to printf.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 07.02.25 09:27, Sascha Hauer wrote:
> 
> On Wed, 05 Feb 2025 11:25:49 +0100, Jules Maselbas wrote:
>> The include scripts/include/asm-generic/bug.h relied on a printk.h
>> compatible header which is located in the scripts/include/ and was
>> not updated when printk.h was renamed to printf.h.
>>
>>
> 
> Applied, thanks!

Please apply this patch to master as the musl build is otherwise broken
(glibc provides a <printf.h> header).

Thanks,
Ahmad

> 
> [1/1] scripts: include: rename printk.h to printf.h
>       https://git.pengutronix.de/cgit/barebox/commit/?id=f7a4435177aa (link may not be stable)
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


