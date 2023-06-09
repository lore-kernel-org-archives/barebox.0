Delivery-date: Fri, 09 Jun 2023 08:41:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VoI-00GqN6-Lr
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:41:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VoG-000327-1O
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:41:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sw3rnIEImqOKbayRSoaaOGnz8/YfxhW3J4LiE//JipE=; b=EvOQ210eSZZkLvgUzVxq5C8stc
	YBJwGs1FXa5xE6OA7U+UzOVuIMwJ4Hp/ZGyZvPab0uj/SIsUIGDR+SarzZ/YJw/hbYatYluiQvyTC
	dJ9QIv8Apb3T6+UnBExxyT+kzpmDwtlyqfx3P/bijBkeAYqfyOy+dEQbtv8KXyrly+Ab74s1agcEa
	inQ8CNRsmrhv7oBiUdxeWhplb36NiSGFdE7GO23Sxr7wBOxq+GOMburJr531UZZe7yQ+YWI2G4ryb
	xtedyrVcYBd6QfFfZXPmX4PIGbqRBQhihqTI82AoaLhrDVpRC7JzrtdnpXErVZGIOK7NFkuOsa7h2
	CM+2Guww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VnA-00Bu9F-1g;
	Fri, 09 Jun 2023 06:40:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Vn7-00Bu8D-1w
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:40:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q7Vn6-0002ax-CM; Fri, 09 Jun 2023 08:40:08 +0200
Message-ID: <0f7d75ec-a85c-7b80-7a42-a8b76d138ffe@pengutronix.de>
Date: Fri, 9 Jun 2023 08:40:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-12-denorl2009@gmail.com>
 <bb708297-3966-59ce-0366-3d29a8175923@pengutronix.de>
 <CALHb5ujFX=0QUsdeFDNmvoL6W4+79aXwnsn0j4+hnWOVQ6P=aQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CALHb5ujFX=0QUsdeFDNmvoL6W4+79aXwnsn0j4+hnWOVQ6P=aQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_234009_638037_41D134A8 
X-CRM114-Status: GOOD (  18.46  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 11/17] MIPS: Makefile: sign-extend TEXT_BASE value on
 CONFIG_64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 06.06.23 11:23, Denis Orlov wrote:
> On Tue, 6 Jun 2023 at 12:04, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> On 05.06.23 22:10, Denis Orlov wrote:
>>> The code that uses TEXT_BASE will fail on reading truncated 32-bit
>>> address if running with 64BIT enabled. As we only support running from
>>> compatibility segments (i.e. no 'proper' 64-bit base addresses), simply
>>> make sure the value is sign-extended when passing it as a define.
>>
>> Below is not really a sign extension. e.g. 0x0000_0000 would be turned
>> into 0xffff_ffff_0000_0000. Is that ok?
> 
> Yeah, we can only handle KSEG0/KSEG1 segments, i.e. text base should be
> somewhere in 0x8000_0000/0xa000_0000. So for those, this might be
> considered a sign extension, I guess.

Hmm, ok.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Regards,
> Denis
> 
>>
>>>
>>> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
>>> ---
>>>  arch/mips/Makefile | 8 +++++++-
>>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
>>> index bad6e574c4..65a00379ab 100644
>>> --- a/arch/mips/Makefile
>>> +++ b/arch/mips/Makefile
>>> @@ -57,7 +57,13 @@ cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS
>>>  cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
>>>  cflags-$(CONFIG_CPU_GS232)     += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
>>>
>>> -KBUILD_CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
>>> +ifdef CONFIG_64BIT
>>> +MIPS_TEXT_BASE = $(subst 0x,0xffffffff,$(CONFIG_TEXT_BASE))
>>> +else
>>> +MIPS_TEXT_BASE = $(CONFIG_TEXT_BASE)
>>> +endif
>>> +
>>> +KBUILD_CPPFLAGS += -DTEXT_BASE=$(MIPS_TEXT_BASE)
>>>
>>>  ifndef CONFIG_MODULES
>>>  # Add cleanup flags
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



