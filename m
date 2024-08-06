Delivery-date: Tue, 06 Aug 2024 11:14:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbGGk-006mPw-2k
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 11:14:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbGGk-0006JV-4c
	for lore@pengutronix.de; Tue, 06 Aug 2024 11:14:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gd8alRq+uGBrAuC3oGJOlq8mroGIbX8YOus0y+EBgYk=; b=l/otTGxO+WFnLU/cm0CDLmFfWM
	WD8oshiHFU4ebRB886XwKVRdfOzeaHL5FpBWsfPBmest9f7pXpv1HM86NHDA7rJ5hPqedPFJiWu9V
	UI0BUFprEvBpxPTBUXsqY28GsctZk7pfFjISX8Hqr9jmPCJY2VROfGUVdJiqrMgBWJYactV0RotQN
	xTK/3FDebBv/WCthkY5xqqSrgmZyeqNTrHp6NjH+zhj4ZVKFT6E07ufHheH1KuAFd+41GJW0AqSkq
	fUThtqf5ngmi04weN4qWeQAHP0fL0MK0VJGe0WVGhbd1kb3hwJk8OxO4ccgrPKKLN82nj5Yxa9Z+R
	w9m6gIGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbGG2-000000013rj-3v9n;
	Tue, 06 Aug 2024 09:13:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbGFd-000000013nq-2V2S
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 09:13:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sbGFb-0006GW-Ll; Tue, 06 Aug 2024 11:13:03 +0200
Message-ID: <8ddaa2c1-6a5f-4d1f-b8b3-dd59d36da765@pengutronix.de>
Date: Tue, 6 Aug 2024 11:13:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-18-s.hauer@pengutronix.de>
 <3fe60919-c7f4-40cf-8bb5-d4b1d375e116@pengutronix.de>
 <ZrDJLzCw4VOOBAwc@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZrDJLzCw4VOOBAwc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_021305_670009_3A9C3509 
X-CRM114-Status: GOOD (  27.67  )
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
Subject: Re: [PATCH v2 17/19] crypto: add ECDSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 05.08.24 14:44, Sascha Hauer wrote:
> On Mon, Aug 05, 2024 at 01:57:36PM +0200, Ahmad Fatoum wrote:
>> On 01.08.24 07:57, Sascha Hauer wrote:
>>> This adds ECDSA signature verification support. The code is based on the
>>> Linux code as of Linux-6.10. The Linux code expects the key to be in
>>> ASN.1 encoded format. We don't need this in barebox as directly compile
>>> the x and y key values into the binary, so this is left out.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  crypto/Kconfig                    |  20 ++++
>>>  crypto/Makefile                   |  19 ++++
>>>  crypto/ecdsa.c                    | 169 ++++++++++++++++++++++++++++++
>>>  include/asm-generic/barebox.lds.h |   7 ++
>>>  include/ecdsa.h                   |  21 ++++
>>>  5 files changed, 236 insertions(+)
>>>  create mode 100644 crypto/ecdsa.c
>>>  create mode 100644 include/ecdsa.h
>>>
>>> diff --git a/crypto/Kconfig b/crypto/Kconfig
>>> index e953ef5e15..eeacd9ffb7 100644
>>> --- a/crypto/Kconfig
>>> +++ b/crypto/Kconfig
>>> @@ -156,4 +156,24 @@ config JWT
>>>  config CRYPTO_ECC
>>>  	bool
>>>  
>>> +config CRYPTO_ECDSA
>>> +	bool "ECDSA support"
>>> +	select CRYPTO_ECC
>>> +
>>> +config CRYPTO_ECDSA_BUILTIN_KEYS
>>> +	bool
>>> +	default y if CRYPTO_ECDSA_KEY != ""
>>> +	select KEYTOC
>>> +
>>> +config CRYPTO_ECDSA_KEY
>>> +	depends on CRYPTO_ECDSA
>>> +	string "ECDSA key to compile in"
>>> +	help
>>> +	  This option should be a filename of a PEM-formatted file containing
>>> +	  X.509 certificates to be included into barebox. If the string starts
>>> +	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
>>> +
>>> +	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
>>> +	  at the cost of an openssl build-time dependency.
>>
>> Why can't this option take multiple space-separated paths?
> 
> The code added for ECDSA is mostly a copy from the existing RSA code.
> 
> It's less than ideal. What I'd really like to have is a single list of
> keys which can include both RSA and ECDSA keys instead of maintaining
> multiple lists. Likewise for the Kconfig options, it would be better to
> have a CRYPTO_PUBLIC_KEYS option which holds multiple RSA and/or
> ECDSA keys. Unfortunately my time budget for this task is over, so I
> think we'll have to stick with this until the next cleanup round.

Ok, let's leave it to behave like the RSA options then.

>>> +#define _ECDSA_H
>>> +
>>> +struct ecdsa_public_key {
>>> +	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
>>> +	const void *x;		/* x coordinate of public key */
>>> +	const void *y;		/* y coordinate of public key */
>>
>> Why void and not a specific type?
> 
> No specific reason, it's copied from U-Boot. One reason might be that
> keytoc prints the values as array of uint32_t whereas the values in
> barebox are interpreted as array of uint64_t. Using void * avoids casts
> and covers some interesting endianess problems when the barebox
> endianess differs from the endianess of the build machine.

This looks certainly odd. It's probably worth looking into.

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



