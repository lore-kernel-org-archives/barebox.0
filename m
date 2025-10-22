Delivery-date: Wed, 22 Oct 2025 13:09:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWiY-00AaDy-1j
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 13:09:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWiY-0007AK-0S
	for lore@pengutronix.de; Wed, 22 Oct 2025 13:09:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RXh/lBIFI13CruySDpWMpfhMMTxxnqJ8O3dzMQxqqAE=; b=JUJxw23oy6EBy0PbtPYIKahZQ6
	UjiToRxtzImw0BycB2TnkHyjIkd9kEEK6PuNBy5rz+83os4SgpuxabS/yaBZ2Q0JjOvcCbhV/tSEz
	ejeNQ2SRN1EXdVD02fnzNIiRv2nf1sg2YCh2oUSdgu1rWmiIOAxkZIxDXXoj53Pk8mJHVikCA6DX2
	Wer0AIQ7ibXlF61/05yGMZZumhfgANyy6nxLF9wJ7WbwmhRztPKcFZQIVXU5J5c+SGFMtYZv5Z9T2
	U2JZK29F1bEDcEsUCrMcOYM+23/c0FcIdVj98wuAgNN//beRF/Lt453gjeIl85B0JVYMM7kz7syHk
	eEM3fVnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWi7-00000002aLU-47H7;
	Wed, 22 Oct 2025 11:08:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWi4-00000002aKw-3JaS
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 11:08:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vBWi2-00072F-W9; Wed, 22 Oct 2025 13:08:51 +0200
Message-ID: <b7970e33-0443-41f5-9faa-5dec98a176cb@pengutronix.de>
Date: Wed, 22 Oct 2025 13:08:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-12-7a8aaf95081c@pengutronix.de>
 <703f28ed-2d8a-4784-a850-ae577119f56e@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <703f28ed-2d8a-4784-a850-ae577119f56e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_040852_852844_665000DE 
X-CRM114-Status: GOOD (  12.47  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 12/15] test: py: add signature to TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2025-10-22 12:04, Ahmad Fatoum wrote:
> Hi,
> 
> On 10/14/25 1:03 PM, Jonas Rebmann wrote:
>> Add TLV signature to TLV integration tests:
>>   - Signed TLV using development RSA key
>>   - Modify payload and fix CRC for a "tampered" tlv
>>   - Include both cases in generator and tlv-command tests.
>>
>> Use the keys selected by CRYPTO_BUILTIN_DEVELOPMENT_KEYS for all TLV
>> testing. Consequentially add the matching private keys from the public
>> repository at [1].
>>
>> [1]: https://git.pengutronix.de/cgit/ptx-code-signing-dev/
>>
>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>> ---
>>   crypto/fit-4096-development.key  |  51 ++++++++++
>>   crypto/fit-ecdsa-development.key |   5 +
> 
> Move this into test/?

I chose to move the keys in with their certificates:
crypto/fit-4096-development.crt
crypto/fit-ecdsa-development.crt

Should I separate them, or move the certificates too (and adjust all
references such as for CONFIG_CRYPTO_PUBLIC_KEYS)?

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


