Delivery-date: Wed, 22 Oct 2025 14:04:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBXaM-00Ab6J-1K
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 14:04:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBXaL-0006cl-Pz
	for lore@pengutronix.de; Wed, 22 Oct 2025 14:04:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v/ktIJROcdLw33qKehXBEHLe/zUmoXkxnWsf956Xees=; b=EifG0fJjptLpskPnw2E9zv6FR8
	NcmwPdNOQ1jeOtWOmchBTPBoYCNige+PYsmQ8ZYDLWu82TsixlevM0Sm0iBUY6IBOugG15qjHjqjZ
	0tDDPZOywU3okfpZJjfDWKNy9FRtkKZi1a7ozhWt0fx2BoJFYWay71DpljP6bc9NrBLKgytk+nKlK
	VhJ9YdJODpIgoAuy5fpYdvzQY1/XPqr0URCYiTCLtspWTGkDEjUNxQ6+H8qO0M5bomB4b0CtwQtGC
	9/ioXZculcuIfNF4QCYPwr6ap9b/NeATAu45yS9+sdK96oREFalUH7sNPGhNqObSx0b/WNb5taOnh
	DkuieyMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBXZp-00000002kIz-2D1r;
	Wed, 22 Oct 2025 12:04:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBXZn-00000002kIJ-1c3M
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 12:04:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBXZl-0006QB-P5; Wed, 22 Oct 2025 14:04:21 +0200
Message-ID: <7fc449c5-31d5-476b-a7f6-fa2e313d9dd1@pengutronix.de>
Date: Wed, 22 Oct 2025 14:04:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-11-7a8aaf95081c@pengutronix.de>
 <d97460e6-e4f3-4222-804b-165ffe7f870d@pengutronix.de>
 <fce2d377-cab6-4b08-920e-1523f648682b@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <fce2d377-cab6-4b08-920e-1523f648682b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_050423_421448_ED032817 
X-CRM114-Status: GOOD (  25.76  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/15] crypto: Use "development" keys for "fit" and "tlv"
 keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/22/25 1:17 PM, Jonas Rebmann wrote:
> Hi,
> 
> On 2025-10-22 12:02, Ahmad Fatoum wrote:
>>
>>
>> On 10/14/25 1:03 PM, Jonas Rebmann wrote:
>>> All users of the CONFIG_CRYPTO_PUBLIC_KEYS feature should update to the
>>> new syntax making keyring selection mandatory.
>>>
>>> Instead of just making the addition of the builtin snakeoil keys
>>> explicit for the "fit" key, also add them to the "tlv" key to use them
>>> as a testing set for TLV keys too.
>>>
>>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>>> ---
>>>   crypto/Makefile | 6 ++++--
>>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/crypto/Makefile b/crypto/Makefile
>>> index 08b9a46e4c..076ba4f686 100644
>>> --- a/crypto/Makefile
>>> +++ b/crypto/Makefile
>>> @@ -33,10 +33,12 @@ CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,
>>> $(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")
>>>     ifdef CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS
>>>   ifdef CONFIG_CRYPTO_RSA
>>> -CONFIG_CRYPTO_PUBLIC_KEYS += rsa-devel:$(srctree)/crypto/fit-4096-
>>> development.crt
>>> +CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=rsa-devel:
>>> $(srctree)/crypto/fit-4096-development.crt
>>> +CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv:$(srctree)/crypto/fit-4096-
>>> development.crt
>>>   endif
>>>   ifdef CONFIG_CRYPTO_ECDSA
>>> -CONFIG_CRYPTO_PUBLIC_KEYS += ecdsa-devel:$(srctree)/crypto/fit-
>>> ecdsa-development.crt
>>> +CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=ecdsa-devel:
>>> $(srctree)/crypto/fit-ecdsa-development.crt
>>> +CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv:$(srctree)/crypto/fit-
>>> ecdsa-development.crt
>>
>> We don't want people to overload tlv and instead use their own keyring
>> names. This is already too late for fit, but for this, let's call it
>> tlv-example?
> 
> This would mean in the previous patch for `struct tlv_decoder
> barebox_tlv_v1_signed` to also set the keyring to "tlv-example". My
> understanding of the decoders in common/tlv/barebox.c is that they are
> more than an example, rather an offer that for somewhat generic use,
> somewhat generic decoders are provided. Hence the very generic keyring
> name "tlv".
> 
> I need to use the barebox_tlv_v1_signed in the tests and I want to make
> use of CONFIG_CRYPTO_PUBLIC_KEYS for that. I'm not sure if I understand
> the role of CONFIG_CRYPTO_PUBLIC_KEYS and the decoders in
> common/tlv/barebox.c correctly though.
> 
> Maybe we rename this keyring to "tlv-generic"?

Ok.

> If it helps, I could update the commit message to discourage use of a
> catchall keyring in more sophisticated setups.

You can do that, but it probably should be in the docs or in the Kconfig
help text to have a chance of being read.

Cheers,
Ahmad

> 
> Regards,
> Jonas
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



