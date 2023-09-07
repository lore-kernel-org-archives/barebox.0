Delivery-date: Thu, 07 Sep 2023 12:47:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeCXp-00722k-4G
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 12:47:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeCXn-0003oC-2E
	for lore@pengutronix.de; Thu, 07 Sep 2023 12:47:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5kYUKcP3F9CBfmUnx330N/u9Yq8GPm0tib6s6vylv54=; b=pHkLsjMTEGkekKbHoObJum7kWe
	qaH9N7SbaSLY2enJ7YctsW6b4N6nRLJvzyKqRNX4m2F3MRzG1jZXIUHF3s6VhXk1JGlxbIXg7hDcz
	bTOKBl9hexGdBXZ327LCOeN9eWsQPW5LH/mkXL5qcqwXl3Nj1fHii4t+iKfJmxqSNs0Xs/agRsFEr
	bBwEZlZSOYCj++nylYO+uhytPUeWokQy/Ewn53RB7OteskUSi5ZiweJGMF2CAzK/gvnK2D4IPv15a
	qgYNCaHk2o7+x3QP7s9gVC5ODa4v780lZSBhopqQKL56dBKsAsb2ztxks66gkfIe6C+wUi/q45vTX
	DfKCmkog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeCWj-00BotL-0i;
	Thu, 07 Sep 2023 10:46:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeCWg-00BoqV-1f
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 10:46:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qeCWe-0003GA-BJ; Thu, 07 Sep 2023 12:46:16 +0200
Message-ID: <69b86363-61a3-7ccd-6bb4-5e755f04143b@pengutronix.de>
Date: Thu, 7 Sep 2023 12:46:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
 <393f8933-d264-e4a2-4497-39c8240796e7@pengutronix.de> <ZPmem2k04HWDFbAz@tour>
 <6e500781-d330-aa07-7c29-ec49b86ec8bd@pengutronix.de> <ZPmpJknjZd3r6udX@tour>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZPmpJknjZd3r6udX@tour>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_034618_553649_423BDCE8 
X-CRM114-Status: GOOD (  26.61  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] decompressors: Update xz to include ARM64 BCJ decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jules,

On 07.09.23 12:42, Jules Maselbas wrote:
> Hi Ahmad,
> 
> On Thu, Sep 07, 2023 at 12:08:34PM +0200, Ahmad Fatoum wrote:
>> Hello Jules,
>>
>> On 07.09.23 11:57, Jules Maselbas wrote:
>>> On Thu, Sep 07, 2023 at 11:00:05AM +0200, Ahmad Fatoum wrote:
>>>> On 06.09.23 17:08, Jules Maselbas wrote:
>>>>> Update lib/xz/xz_dec_bcj.c and lib/xz/xz_private.h files from xz-embedded [1],
>>>>> which include spelling fixes and the new ARM64 BCJ decoder which was recently
>>>>> introduced into .xz file format version 1.1.0 (2022-12-11) [2].
>>>>>
>>>>> [1] https://git.tukaani.org/?p=xz-embedded.git
>>>>> [2] https://tukaani.org/xz/xz-file-format-1.1.0.txt
>>>>>
>>>>> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
>>>>> ---
>>>>>  lib/Kconfig           |  4 ++++
>>>>>  lib/decompress_unxz.c |  3 +++
>>>>>  lib/xz/xz_dec_bcj.c   | 54 ++++++++++++++++++++++++++++++++++++++++---
>>>>>  lib/xz/xz_private.h   |  3 +++
>>>>>  4 files changed, 61 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/lib/Kconfig b/lib/Kconfig
>>>>> index 758197b608..9291e5a8ff 100644
>>>>> --- a/lib/Kconfig
>>>>> +++ b/lib/Kconfig
>>>>> @@ -42,6 +42,7 @@ config XZ_DECOMPRESS
>>>>>  	select XZ_DEC_ARM
>>>>>  	select XZ_DEC_ARMTHUMB
>>>>>  	select XZ_DEC_SPARC
>>>>> +	select XZ_DEC_ARM64
>>>>
>>>> Hmm, maybe for PBL, we should only support the XZ BCJ filter that is chosen
>>>> for barebox proper? If you are trying to get barebox binary size down,
>>>> maybe you are inclined to check? :-)
>>>
>>> indeed, i thought it was already the case. How would do that ? have two version
>>> of the unxz binary object ? one for pbl and the other for barebox proper ?
>>> Or maybe only select the relevent decoder ?
>>
>> You already have two objects (.o and .o.pbl). What you'd do is ignore the Kconfig
>> option in the PBL case. Looking into the code, that's indeed happening
>> CONFIG_XZ_DEC_ARM is only consulted when !defined(XZ_PREBOOT) and that symbol
>> is only defined for PBL. This has one small implication for your code though:
> 
> I didn't found the .o.pbl, but this seems to be compiled in pbl/decompress.o,
> which directly includes decompress_unxz.c after defining STATIC (which will makes
> XZ_PREBOOT being defined).

Ah, right. The decompressors are a bit "special" in that regard.

> 
> After digging a bit, it seems that pbl already only contains the relevent decoder.
> 
>>>
>>> snip
>>>
>>>>> diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
>>>>> index a7e2d331ab..5c906932f8 100644
>>>>> --- a/lib/decompress_unxz.c
>>>>> +++ b/lib/decompress_unxz.c
>>>>> @@ -132,6 +132,9 @@
>>>>>  #endif
>>>>>  #ifdef CONFIG_ARM
>>>>>  #	define XZ_DEC_ARM
>>>>> +#	ifdef CONFIG_CPU_64
>>>>> +#		define XZ_DEC_ARM64
>>
>> You define XZ_DEC_ARM in the aarch64 case, which wastes space unnecessarily.
> Yeah, i was just a bit worried about "backward" compatibility where a newer pbl
> would be used to boot an older barebox proper... compressed with the arm BCJ.
> On a second thought, this doesn't makes much sens, barebox proper and pbl are
> tightly integrated, so this should not be an issue.

Ye, booting mismatched barebox PBLs and proper binaries isn't something
that we guarantee to work. For this reason, e.g. i.MX8M enters PBL twice:
Once while running in SRAM and once after relocating whole barebox binary
(including PBL) to DRAM.

Cheers,
Ahmad

> 
> Thanks for pointing this out!
> 
> Cheers,
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



