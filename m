Delivery-date: Wed, 22 Oct 2025 13:12:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWlx-00AaWZ-2x
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 13:12:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWlx-0007hA-Ad
	for lore@pengutronix.de; Wed, 22 Oct 2025 13:12:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3dlgCZIDRk4MEFSAhMP9WQ6NKPMZv48R8rmBy0HqeRU=; b=p1tW1/8mqirLeBWKHOphSzeggR
	mur6CQISE43OzqqHU3x/NS1xGaBMUoWe+IXQyScS6k+QZJ/rT13L5XQGD/A8RJdKdMFS2oSYqau+E
	kWOdgYxXxlV3Pzxv/z0QDP6WLKnTEcTAC+C1mdUpFkI6DOP1DcfcaJ4tHxAyfYjU0DxPcZf9NZgjU
	zvaBIineZ1V4kzHYrHYETKeZuhVNku0mpS5uNzPyknLt369T5TLF6CcJYt6y36UJiuPnT5DU9jfIg
	CcVR8ymfa9wAfKkYalPwIVstOiwM7HR3SQFVX/Gv2oEhpDvVXqOIIOG3VkojcK4NhTulUxoUgOLa7
	BR4jz7Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWlW-00000002b8S-1I7D;
	Wed, 22 Oct 2025 11:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWlU-00000002b7p-0ACD
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 11:12:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBWlS-0007bg-I9; Wed, 22 Oct 2025 13:12:22 +0200
Message-ID: <d47ceb4f-9476-4e20-a61d-ed6d0cdc844c@pengutronix.de>
Date: Wed, 22 Oct 2025 13:12:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-12-7a8aaf95081c@pengutronix.de>
 <703f28ed-2d8a-4784-a850-ae577119f56e@pengutronix.de>
 <b7970e33-0443-41f5-9faa-5dec98a176cb@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <b7970e33-0443-41f5-9faa-5dec98a176cb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_041224_097009_A9AC302D 
X-CRM114-Status: GOOD (  15.03  )
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
Subject: Re: [PATCH 12/15] test: py: add signature to TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/22/25 1:08 PM, Jonas Rebmann wrote:
> Hi,
> 
> On 2025-10-22 12:04, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 10/14/25 1:03 PM, Jonas Rebmann wrote:
>>> Add TLV signature to TLV integration tests:
>>>   - Signed TLV using development RSA key
>>>   - Modify payload and fix CRC for a "tampered" tlv
>>>   - Include both cases in generator and tlv-command tests.
>>>
>>> Use the keys selected by CRYPTO_BUILTIN_DEVELOPMENT_KEYS for all TLV
>>> testing. Consequentially add the matching private keys from the public
>>> repository at [1].
>>>
>>> [1]: https://git.pengutronix.de/cgit/ptx-code-signing-dev/
>>>
>>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>>> ---
>>>   crypto/fit-4096-development.key  |  51 ++++++++++
>>>   crypto/fit-ecdsa-development.key |   5 +
>>
>> Move this into test/?
> 
> I chose to move the keys in with their certificates:
> crypto/fit-4096-development.crt
> crypto/fit-ecdsa-development.crt
> 
> Should I separate them, or move the certificates too (and adjust all
> references such as for CONFIG_CRYPTO_PUBLIC_KEYS)?

I am not sure crypto/ is the best place for this, but given that you
aren't introducing them there, just leave it in crypto/ for now.

I think it would be best to combine crt and key into a single pem file
and adjust the Makefile, so we don't have loose files.

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



