Delivery-date: Wed, 22 Oct 2025 14:29:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBXyB-00Abcf-2E
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 14:29:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBXyB-0001cr-45
	for lore@pengutronix.de; Wed, 22 Oct 2025 14:29:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mLuKzUCApebWctU9XOE4OrpmYi0mBqcWMeoEMJhmTdk=; b=bwjrYqpAsSMoKUyPfrUsF5ZAOj
	e7UdNbwZAlHxlrnwW5pVDIWUStWAJvmxlBg74GIOQG2ZiQjnEfJhYQi6BQr+cBbI8LTInlEJcC5dg
	HAW6UXtUSq2k44WgzbhSGCG08fHVTJtapX3EUSC1f5sx9FDkQPYlFISPh3zV/DQmPRIK7AQFFVJuZ
	W2BmyNI7MoqYbmVbLh7DaCZ9OLDx5jGcfok9K/1/LPt0zIRCVFRHDEbAq0yx7WpdUOnosdT7Up/UO
	DOEMnmudPId1Srl3v50ZqxYAkRwVq3S6XQc4lmkUzCDM8EFBAaXnshERGU+osGttK6q28OslM8JYh
	nnCdRGPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBXxg-00000002nXj-1Zri;
	Wed, 22 Oct 2025 12:29:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBXxY-00000002nXG-1OIx
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 12:28:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vBXxW-0001Nm-HH; Wed, 22 Oct 2025 14:28:54 +0200
Message-ID: <f0f65056-ef7a-4544-b98a-fa95d4674a1f@pengutronix.de>
Date: Wed, 22 Oct 2025 14:28:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-12-7a8aaf95081c@pengutronix.de>
 <703f28ed-2d8a-4784-a850-ae577119f56e@pengutronix.de>
 <f2e96d72-3d01-4845-a997-4926ea4bdee0@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <f2e96d72-3d01-4845-a997-4926ea4bdee0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_052856_875387_2560ABBB 
X-CRM114-Status: GOOD (  16.46  )
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

On 2025-10-22 12:11, Ahmad Fatoum wrote:
> 
> 
> On 10/22/25 12:04 PM, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 10/14/25 1:03 PM, Jonas Rebmann wrote:
>>> Add TLV signature to TLV integration tests:
>>>   - Signed TLV using development RSA key
>>>   - Modify payload and fix CRC for a "tampered" tlv
>>>   - Include both cases in generator and tlv-command tests.
>>>
>>> Use the keys selected by CRYPTO_BUILTIN_DEVELOPMENT_KEYS for all TLV
>>> testing. Consequentially add the matching private keys from the public
>>> repository at [1].
>>>
>>> [1]: https://git.pengutronix.de/cgit/ptx-code-signing-dev/
>>>
>>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>>> ---
>>>   crypto/fit-4096-development.key  |  51 ++++++++++
>>>   crypto/fit-ecdsa-development.key |   5 +
>>
>> Move this into test/?
> 
> Ah, I see the *.crt files are already in crypto...
> Can't you concatenate the *.key and *.crt files into a single pem file?
> 
> That's what we do for test/self/development_rsa2048.pem and it works
> there. Removes clutter a bit.

I'd prefer not to. I suppose our tooling supports this, users that
utilize CRYPTO_BUILTIN_DEVELOPMENT_KEYS for testing may not; and they
should not have to pick apart private and public key again.

I'd consider concatenating them most of the time not the best practice.
You'll have a file of which `file` tells you it's an "OpenSSH public
key", but if you open it and then scroll down, you realize it's a
private key.

Yes this particular private key is all but private but lets not endorse
this practice.

Keeping them separates also makes it visible where we use the private
key: We need it when creating the signed TLVs in test/py/test_tlv.py and
only there.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


