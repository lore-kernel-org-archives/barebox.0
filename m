Delivery-date: Tue, 22 Jul 2025 18:32:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueFus-002cKb-0N
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 18:32:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueFur-0005MY-IY
	for lore@pengutronix.de; Tue, 22 Jul 2025 18:32:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0l2nJhGRpLq9Me4rhO3OlsvmrTjR2EB2lLc2PPHIBaA=; b=UjZXgY2aBCcb6+MXgSovgcQbOa
	1y7C8gb9Msb8Zj7FCWlDYF5TTxZYiMO6WFWgVd8nvcOHXw2S4Cgua+3W+4x9IJdQXQmtJokSXvkuK
	jcx8VhhjvTg1cQJbGpWG6xZ1CWtB01GLEidlZWJGbjoQl+tMumPwrNLwi2RSGF+j0xmwORZDJtXoH
	PrbhsUEcKcrBAYKmdfzCZzNAnnsMSYW5C/X64aLCVik3PPbD0YJUogYEKJCto8chDXZqNe/aWULMu
	ELRv84QKaKLjzOkwipZWwCFocGYOSF8aCF8O9natKX0CnNb17o7HtOIiN+GYmi+d++3OpwLuwRmaI
	Th4Hmt4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFuI-000000031uR-295c;
	Tue, 22 Jul 2025 16:31:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFUv-00000002yGG-2TQ6
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 16:05:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueFUu-0004Zw-Am; Tue, 22 Jul 2025 18:05:44 +0200
Message-ID: <663fda8e-6e09-4a24-9038-8da158cfeaab@pengutronix.de>
Date: Tue, 22 Jul 2025 18:05:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB35323F18EB9CB31A85BCEEF0EC5CA@DM5PR07MB3532.namprd07.prod.outlook.com>
 <15ecd1db-7a4f-4ba4-9ddd-27e4391ceee9@pengutronix.de>
 <DM5PR07MB353236A680007CD791A00D95EC5CA@DM5PR07MB3532.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <DM5PR07MB353236A680007CD791A00D95EC5CA@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_090545_632797_5CA2A23A 
X-CRM114-Status: GOOD (  12.98  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: handoff data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 7/22/25 17:46, Renaud Barbier wrote:
> Board: owc-swe550s
> RENAUD: handoff_data_get_entry hd = 0x00000000fbefc5c8, cookie = 0x28061971
> ...
> handoff 0x28061971 at 0x00000000fbefc600 (size 27560)
> handoff 0x28061974 at 0x00000000fbf031d0 (size 4)
> 
> From device_initcall:
>  handoff_data_get_entry hd = 0x00000000fbefc5c8, cookie = 0x951726fb
>  baudrate = 0, 0000000000000000 =====> 			Obviously, no copied from OCRAM
>  handoff_data_get_entry hd = 0x00000000fbefc5c8, cookie = 0x28061974
>  machine = 4, 00000000fbf031d0, 0x12345678 ==> MACHINE data is correct
> 
> So, there is a need to copy the data from OCRAM to when the memory is available.

Yes. You can see how it's done for i.MX8M by grepping for
handoff_data_move().

What we do there is passing handoff_data_move() an address in DRAM and
then we memcpy the active PBL at the start of the chainloaded image.

The active PBL has set the handoff data base pointer in the data section
and thus it just works.

Cheers,
Ahmad

> 
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Cheers,
>>> Renaud
>>>
>>>
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              |
>> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!HR
>> UHvAKHu8BujxVw_027NrNyWR1gCzuOAqRxHitCLcKK7_3GAlFYC1T3Ybcg07
>> WVj9r_PsvGrn9utecIX6xw5yiaxC4$   |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



