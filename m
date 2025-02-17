Delivery-date: Mon, 17 Feb 2025 12:37:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjzRK-003SqQ-2J
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 12:37:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjzRJ-0000Al-Bq
	for lore@pengutronix.de; Mon, 17 Feb 2025 12:37:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HXtvOBuVm3yV1k+oNRTEaX5rmTVaaCRdK1lk1gEGN3w=; b=frWB+eZ4Bn8BpzZwLVTzhFRC3o
	Xi7pT0QkZ9bOCB9rdv8w/cWFHUYME6ishu4fz4Buksov+TyIkWFTRP6qkCsgtsJs55TDXi0gNxasD
	asg48ltJrF72dJgiJrq68W2NvWwNhKhj2QZvGIjDM8efOuZmPaiK33EndOeh2uQVe+QzxLlRe5c+b
	v70imVFp2KHI+jbfUTU8LZuiqv7KPw1NqnLrUGAphtbejE7Ycmx3eKqWQaRvXxWIRwjmorwRH99IS
	qriiffs71D05xrfjuiyFuxWg0KSVaVDjamkZCYPdzkHEnBh3Dd25Ynk3f/FLQjAldtctQ+LcU/RB3
	ECPDwQIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzQo-00000004KVt-2lTD;
	Mon, 17 Feb 2025 11:36:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzQn-00000004KVe-036U
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 11:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HXtvOBuVm3yV1k+oNRTEaX5rmTVaaCRdK1lk1gEGN3w=; b=lGwfWl/biaoomuqKo1/H48ep/2
	3anv8Elok+63dI7Au4PSV8pufVseKBbI/S6NBKwYkD7/T38YubckFfdVC/TMwMLI4BrGIU+uZgQay
	B8fM1La3zgYC5HVzVJlb3I3YCOvSXRnbXyUlVzWbYxxfVwIst+Fe4p9TCwHAR2afyYrJFf7+8T+RZ
	o5EqHukckZsOB+oymb/xCVynRnuH36881WlrtFI2bymSWG8LWiHNI4PzG5o90nzgvSUgp1D0hIAVT
	HtZT5m71yhDgw+ZDG7f2pOTlmNjHumbC1W6JZgwxWgqf3rRPvGHiHA7WvrKTrYjAbGr+Vg+LwmzT3
	RAuhlA6g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzQj-00000001nkh-3d4N
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 11:36:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjzQj-0008SB-FM; Mon, 17 Feb 2025 12:36:53 +0100
Message-ID: <6d8c8fb9-128b-475b-9ae1-7dc5d943b22e@pengutronix.de>
Date: Mon, 17 Feb 2025 12:36:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250214094850.2847143-1-a.fatoum@pengutronix.de>
 <Z7MVNjkJiDazmLpc@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z7MVNjkJiDazmLpc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_113654_104922_3E3C84D5 
X-CRM114-Status: GOOD (  30.60  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mci: core: import Linux logic for higher preferred
 erase size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 17.02.25 11:53, Sascha Hauer wrote:
> On Fri, Feb 14, 2025 at 10:48:49AM +0100, Ahmad Fatoum wrote:
>> As a comment in the file notes, doing too small a granularity for erases
>> has considerable effect on performance:
>>
>>   > Example Samsung eMMC 8GTF4:
>>   >
>>   >   time erase /dev/mmc2.part_of_512m # 1024 trims
>>   >   time: 2849ms
>>   >
>>   >   time erase /dev/mmc2.part_of_512m # single trim
>>   >   time: 56ms
>>
>> This was deemed acceptable at first, because 3 seconds is still
>> tolerable.
>>
>> On a SkyHigh S40004, an erase of the whole 3728 MiB ended up
>> taking longer than 400s in barebox, but only 4s in Linux, which
>> dwarfs the time actually needed for writing.
>>
>> Linux has some rather complicated logic to compute a higher erase size
>> granularity, which still fits in the max busy timeout that a controller
>> may require. Until that's support in barebox, we import a simpler
>> heuristic that Linux uses to compute
>>
>>   /sys/class/mmc_host/*/*/preferred_erase_size
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mci/mci-core.c | 105 ++++++++++++++++++++++++++---------------
>>  include/mci.h          |   1 +
>>  2 files changed, 69 insertions(+), 37 deletions(-)
>>
>> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
>> index cc3c6fba3653..6d55eb8305b9 100644
>> --- a/drivers/mci/mci-core.c
>> +++ b/drivers/mci/mci-core.c
>> @@ -1774,6 +1774,70 @@ static int mci_startup_mmc(struct mci *mci)
>>  	return ret >= MMC_BUS_WIDTH_1 ? 0 : ret;
>>  }
>>  
>> +static void mci_init_erase(struct mci *card)
>> +{
>> +	unsigned int sz;
>> +
>> +	if (!IS_ENABLED(CONFIG_MCI_ERASE))
>> +		return;
>> +
>> +	/* TODO: While it's possible to clear many erase groups at once
>> +	 * and it greatly improves throughput, drivers need adjustment:
>> +	 *
>> +	 * Many drivers hardcode a maximal wait time before aborting
>> +	 * the wait for R1b and returning -ETIMEDOUT. With long
>> +	 * erases/trims, we are bound to run into this timeout, so for now
>> +	 * we just split into sufficiently small erases that are unlikely
>> +	 * to trigger the timeout.
>> +	 *
>> +	 * What Linux does and what we should be doing in barebox is:
>> +	 *
>> +	 *  - add a struct mci_cmd::busy_timeout member that drivers should
>> +	 *    use instead of hardcoding their own timeout delay. The busy
>> +	 *    timeout length can be calculated by the MCI core after
>> +	 *    consulting the appropriate CSD/EXT_CSD/SSR registers.
>> +	 *
>> +	 *  - add a struct mci_host::max_busy_timeout member, where drivers
>> +	 *    can indicate the maximum timeout they are able to support.
>> +	 *    The MCI core will never set a busy_timeout that exceeds this
>> +	 *    value.
>> +	 *
>> +	 *  Example Samsung eMMC 8GTF4:
>> +	 *
>> +	 *    time erase /dev/mmc2.part_of_512m # 1024 trims
>> +	 *    time: 2849ms
>> +	 *
>> +	 *    time erase /dev/mmc2.part_of_512m # single trim
>> +	 *    time: 56ms
>> +	 */
>> +	if (IS_SD(card) && card->ssr.au) {
>> +		card->pref_erase = card->ssr.au;
>> +	} else if (card->erase_grp_size) {
>> +		sz = card->capacity >> 11;
>> +		if (sz < 128)
>> +			card->pref_erase = 512 * 1024 / 512;
>> +		else if (sz < 512)
>> +			card->pref_erase = 1024 * 1024 / 512;
>> +		else if (sz < 1024)
>> +			card->pref_erase = 2 * 1024 * 1024 / 512;
>> +		else
>> +			card->pref_erase = 4 * 1024 * 1024 / 512;
> 
> card->capacity is in bytes, so you are falling into the last case for
> cards bigger than 512Kib. Did you mean to right shift by 21 or even 31
> instead?

Yes, this was indeed wrong. csd.capacity in Linux is in units of sectors.

(x / SECTOR_SHIFT) >> 11 -> x / SZ_1M.

I fixed that in v2.

> I would prefer using SZ_* and SECTOR_SIZE/SHIFT defines to make this more
> readable.

I'd prefer to keep the rest as-is as it's a verbatim copy from Linux
mmc_init_erase() in drivers/mmc/core/core.c.

Thanks,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


