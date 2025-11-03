Delivery-date: Mon, 03 Nov 2025 11:46:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFs4b-00EpM5-0v
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 11:46:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFs4a-0007Qo-MT
	for lore@pengutronix.de; Mon, 03 Nov 2025 11:46:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PzpJDUahXWTwb2TpsLIyyGWID2nr/RC1o5+fm07TzfA=; b=q8j8jYfxV0cUZVlgdvrk8ntmRf
	2yZIhaAoWARX/cg1ikwg1Jk+f8YbeSfQ/vcBaPED514cR2kOSAa4+pR01fLv8pawCke9YFMmhvKZC
	5NaV1c3E1hq/RUszSpR38ijwSz0gZ+oGphrSbIYeN8O1vckXidqS8PcmtWtkRACvik3dThYsIRt/v
	ecl2NX7DWw+UjSY7LMbXsWK/KL86rwFjZtJZ6JlcVqe7yasEo2lDmTeOP34+qWll3Bg0MDv6L1SDt
	8zKnFEY1j4Zfjd7kJAgJgFsQqW1BgtwmCt7V8oUvwRPtwsO0zEt5A74gR8cqrp6Ctyp8kvFBM3WZo
	pEUA1vjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFs4B-00000009ejx-3GaU;
	Mon, 03 Nov 2025 10:45:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFs49-00000009ejU-1dWl
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 10:45:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFs47-0007MG-Qn; Mon, 03 Nov 2025 11:45:35 +0100
Message-ID: <77a84791-acf5-4354-b9fa-bb3b80396f80@pengutronix.de>
Date: Mon, 3 Nov 2025 11:45:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-17-3bafce636ad7@pengutronix.de>
 <aQiA9D5s7gdR7ke5@pengutronix.de>
 <9bcaaf69-142e-446a-a30d-ba538e62097a@pengutronix.de>
 <aQiGzCPQkg70Q_Wx@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aQiGzCPQkg70Q_Wx@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_024537_440136_F6BADBE4 
X-CRM114-Status: GOOD (  21.04  )
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
Subject: Re: [PATCH v2 17/17] Documentation: migration-2025.11.0: List changes
 to CONFIG_CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/3/25 11:41 AM, Sascha Hauer wrote:
> On Mon, Nov 03, 2025 at 11:26:34AM +0100, Ahmad Fatoum wrote:
>>
>>
>> On 11/3/25 11:16 AM, Sascha Hauer wrote:
>>> On Tue, Oct 28, 2025 at 07:03:22PM +0100, Jonas Rebmann wrote:
>>>> As part of the introduction of TLV signature in public key keyrings,
>>>> there is a new interpreter for CONFIG_CRYPTO_PUBLIC_KEYS in
>>>> scripts/keytoc.c. All users should update to the new syntax and are
>>>> presented with a warning. Users with invalid characters in the legacy
>>>> syntax must change the fit-hint and will be presented with an error.
>>>>
>>>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>>>> ---
>>>>  Documentation/migration-guides/migration-2025.11.0.rst | 15 +++++++++++++++
>>>>  1 file changed, 15 insertions(+)
>>>>
>>>> diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
>>>> index a9c7abb66e..bd7fcf8126 100644
>>>> --- a/Documentation/migration-guides/migration-2025.11.0.rst
>>>> +++ b/Documentation/migration-guides/migration-2025.11.0.rst
>>>
>>> migration-2025.12.0.rst please.
>>
>> Should we rethink the scheme to avoid this in future?
> 
> Yes. The contributor shouldn't need to know which release a series
> targets and also not have to remember to move it to another migration
> guide when sending a new revision after a release.
> 
>>
>> Two suggestions come to mind:
>>
>> - We add migration-next.rst and migration-master.rst files, where stuff
>> can be added and then they are renamed before release:
>>
>> migration-master.rst -> migration-${version}.rst
>> migration-next.rst -> migration-master.rst
>> <empty file> -> migration-next.rst
> 
> No need to split this up into migration-master.rst and
> migration-next.rst. Let's just use migration.rst. I'll rename
> that to migration-20xx.yy right before a release.

I would still call it migration-upcoming.rst or migration-next.rst for
clarity. One file sounds workable.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



