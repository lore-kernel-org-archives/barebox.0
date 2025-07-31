Delivery-date: Thu, 31 Jul 2025 11:36:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPiN-005YoC-2n
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 11:36:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPiN-0006eR-Az
	for lore@pengutronix.de; Thu, 31 Jul 2025 11:36:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xJKN5y1fUAiBeuUiw7r2PDTPSQ+pAs4EouzoB6qL5dU=; b=qkjbozHbfdtCVVVv7Uk5BDRFLB
	aAKunxLRnHhY8cgdcZLUT8BJV7oJtToJSki8pgfyXaIstIGox3Kn8B8HolaFUR3txjD71xZBWEqlC
	iGedwj3Z4wrm/Py0nncgQ0d4WJsMS5cIfCdy6eU/IA6NI+esLrZEB8r5jSCe37rd1omMPqr+3RRwT
	k5IL9cLqY1hiim89CEg3i8XdiQkQdUzMduYey695Y+b6B6qMqCtKRKNZuGzYwsxljV5EulJqEHfXp
	JpM0BlgnNpIQl/J893ZR+gJd0Cd8OGBxdiI9m1S5AIdsFzmQyJ/m18jJHcAWRq+2NQ9qtkNKiWlGe
	w3El2BWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPht-00000003IQA-0Cjf;
	Thu, 31 Jul 2025 09:36:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPhq-00000003IPj-11fI
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 09:36:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1uhPhn-0006Yz-Fg; Thu, 31 Jul 2025 11:36:07 +0200
Message-ID: <b7065b4e-aa25-481e-9cb4-95fdeb07fd79@pengutronix.de>
Date: Thu, 31 Jul 2025 11:36:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20250710090644.280957-1-bst@pengutronix.de>
 <9aa2f3c3-0c82-4dfa-94b9-226e696a433a@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <9aa2f3c3-0c82-4dfa-94b9-226e696a433a@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_023610_289751_827B97D8 
X-CRM114-Status: GOOD (  17.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: riotboard: add habv4-imx6-gencsf.h to flash header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/31/25 11:08 AM, Ahmad Fatoum wrote:
> Hi Bastian,
> 
> On 7/10/25 11:06, Bastian Krause wrote:
>> The header is necessary to add CSF data for signed barebox images in
>> case HABV4_IMAGE_SIGNED=y is set. It should not hurt otherwise.
> 
> If it doesn't hurt, what do you think of having the build system include
> it everywhere unconditionally?

That's exactly what I thought when I stumbled upon the missing include,
but I did not look into it.

> 
>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks!

Regards,
Bastian

> 
> Cheers,
> Ahmad
> 
>> ---
>>   .../embest-riotboard/flash-header-embest-riotboard.imxcfg       | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
>> index 5464e2461d0..1f27163417f 100644
>> --- a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
>> +++ b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
>> @@ -66,3 +66,5 @@ wm 32 MX6_MMDC_P0_MPODTCTRL 0x00011117
>>   wm 32 MX6_MMDC_P0_MDPDC 0x00025565
>>   wm 32 MX6_MMDC_P0_MAPSR 0x00011006
>>   wm 32 MX6_MMDC_P0_MDSCR 0x00000000
>> +
>> +#include <mach/imx/habv4-imx6-gencsf.h>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


