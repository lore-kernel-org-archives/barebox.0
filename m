Delivery-date: Thu, 22 Jan 2026 15:15:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivSh-0049Iw-0H
	for lore@lore.pengutronix.de;
	Thu, 22 Jan 2026 15:15:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivSg-0002cu-73
	for lore@pengutronix.de; Thu, 22 Jan 2026 15:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5nAKPhaJuD0Bau+y6DxL8sAm+7ur0tB8krJcUXAmqLc=; b=AQl0Y0l+HoK3CPGd5aCjaQ2R4m
	euDgIybQc83oKAJaH7FYFA4rhdI7TbIuf3bzR5tXnntUUw4Z6EVPVfWJJQtmqfCNiPryPepWqar2y
	/KkICSr2y99OnkM+i1d5QvWiG7ec+XIx4pP3e8BfyaZNIpJHvBHboGpEFmcCe69AxXuY9/m6C+Yhj
	gR4yr5SBGZ78FHq/o9HiWmeD98f29isxnRh5DaGied6THN7qN9Wn38X+GKOreu0z+Lbh+7kyIUOaw
	bmRX3QWExgqKQw1u5bj5ftJRevCPZ3bIMRWfTufEw8TszyyBo2YvplyMbZ4DJiWFFK0JOuir0SdY5
	ldcEEj+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivRz-00000007DLQ-3GBh;
	Thu, 22 Jan 2026 14:14:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivRw-00000007DK6-2Aa9
	for barebox@lists.infradead.org;
	Thu, 22 Jan 2026 14:14:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vivRt-0002Sl-Dr; Thu, 22 Jan 2026 15:14:13 +0100
Message-ID: <44808e88-0688-4e56-a9e8-7f1f7227fa7a@pengutronix.de>
Date: Thu, 22 Jan 2026 15:14:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-4-8f0625ac5471@pengutronix.de>
 <df2aa615-ac27-42d9-a1f2-38d0d6dd5b50@pengutronix.de>
 <20260115132628.6ot2ph7auhq3ezfw@pengutronix.de>
 <2c560076-4767-4bd1-b420-8f1d4c505a20@pengutronix.de>
 <50ee3a64-a59f-42fc-a26b-cf8ff3176142@pengutronix.de>
 <20260118190910.kz45bwlaujcq6bxz@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260118190910.kz45bwlaujcq6bxz@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_061416_562534_A5D8B20E 
X-CRM114-Status: GOOD (  28.96  )
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
Subject: Re: [PATCH 04/23] ARM: i.MX8M: add support to pass DT via
 imx8m{m,n,q,p}_load_and_start_image_via_tfa()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); Unknown failure

Hello Marco,

On 1/18/26 8:09 PM, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 26-01-15, Ahmad Fatoum wrote:
> I get your point regarding the unnecessary breakage. It would have been
> nice if we could have a TF-A loading abstraction within the PBL since
> loading the TF-A and (opt. OP-TEE OS) is mostly the same on each and
> every ARMv8-A SoC and we tend to adapt barebox rather than adapting the
> TF-A binary.

Sure, I would also love to have a generic flow for that and that's one
reason, why I want to restructure our early PBL code and want to avoid
extra API breakage till then.

> However I would like to mention that handover data was meant to be
> passing data between the PBL and barebox. We would repurpose the
> handover mechanism if we would use the handover data. In this case it
> could be re-used in several other places. Therefore I'm not a fan of
> this idea.

My original thought is that we could use the same DT later for passing
to barebox proper as well, so we are really just moving the addition of
the handoff entry earlier.

I see now that this doesn't really work as barebox can be chainloaded at
EL2/1 and in that case, the initial setting of the oftree handoff data
would've been lost.

> What do you think about adding the 'fdt' support only to the 'lowlevel'
> APIs:
>   - __imx8mp_load_and_start_image_via_tfa()
>   - __imx8mm_load_and_start_image_via_tfa()
>   - __imx8mn_load_and_start_image_via_tfa()
> ?

Sure, I can live with that.

> These APIs are most certainly not used by anyone who is using the
> current standard way of booting OP-TEE for these platforms. Of course we
> could also add helpers like:
> 
> imx8mn_load_and_start_image_via_tfa_with_fdt()
> 
> but the naming is becoming very clunky.
> 
>> if it turns out to not work out of the box or complicate things in an
>> disproportionate manner, please let me know and we can re-evaluate.
> 
> Please see my above points.

Sounds good. I am not insistent on using handoff, using a different
function for me works too.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>
>> Thanks,
>> Ahmad
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



