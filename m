Delivery-date: Tue, 30 Jul 2024 13:19:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkt9-004Rgj-0s
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 13:19:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkt8-0004iU-33
	for lore@pengutronix.de; Tue, 30 Jul 2024 13:19:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vBl0A8PilugADzUOWk+vxMV9P8lLKPaZ9KD2FIVqPRY=; b=lJQ3ajYUq3T2eAaTXboT9ovjJ8
	OvpfD18qsU5kc/7DNCpYad4EzY8Ni10D5Mc/Z1BBqgOIIrbgGubH/iOirQLdEJvxXVNCQKuqV8n+i
	Ju9YofxYpYxV3BM+wc8OdqRCsQnfaw+FYjPrgPZV45ln9+8CZfw5I3FwAuU6AJ871t54uauI0QkHu
	mADTrxXYZuBFl0nx4jv5Ika0HyxKwH11sBxg24cU6rGACzE52BpPiLn67q8UwgKtzs1OjEw5ViZTI
	Bip9qL/UROs/Y4MY5isItNOap8FnfqqqqrV+hoHRZQVnSAGzySTmOcH6h+l1tmxfcRyPbzIsHnyQB
	4q/uhzZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYksa-0000000Erxq-3P4Z;
	Tue, 30 Jul 2024 11:18:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkqq-0000000ErTl-2mHK
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 11:17:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYkqp-0004UB-Bx; Tue, 30 Jul 2024 13:17:07 +0200
Message-ID: <7f0e6122-2a6f-4d88-88f6-17abebc4595a@pengutronix.de>
Date: Tue, 30 Jul 2024 13:17:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-8-a.fatoum@pengutronix.de>
 <Zqi6zHop6xz7jMvo@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zqi6zHop6xz7jMvo@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_041709_771399_11E6311B 
X-CRM114-Status: GOOD (  29.21  )
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
Subject: Re: [PATCH 07/10] mci: add support for discarding write blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 30.07.24 12:05, Sascha Hauer wrote:
> On Tue, Jul 30, 2024 at 09:19:26AM +0200, Ahmad Fatoum wrote:

>> +	__be32 *ssr;
>> +	int err;
>> +	unsigned int au, eo, et, es;
>> +
>> +	if (!IS_ENABLED(CONFIG_MCI_ERASE))
>> +		return -ENOSYS;
> 
> I think we settled on using -EOPNOTSUPP in this case.

I like -ENOSYS, because it indicates that supper is merely missing instead of not
being available in the first place.

>> +	if (mci->can_trim) {
>> +		arg = MMC_TRIM_ARG;
>> +	} else {
>> +		/* We don't use discard, as it doesn't guarantee a fixed value */
>> +		arg = MMC_ERASE_ARG;
>> +		blkcnt = mmc_align_erase_size(mci, &from, &to, blkcnt);
>> +	}
>> +
>> +	if (blkcnt == 0)
>> +		return 0;
>> +
>> +	if (to <= from)
>> +		return -EINVAL;
> 
> When mmc_align_erase_size() is not called then we cannot arrive here
> as we already returned in the if (blkcnt == 0) check above.
> When mmc_align_erase_size() is called and this test triggers then it
> only reveals a bug in mmc_align_erase_size().
> 
> I think this test should go away.



>> +	while (i < blkcnt) {
>> +		sector_t blk_r;
>> +
>> +		/* TODO: While it's possible to clear many erase groups at once
>> +		 * and it greatly improves throughput, drivers need adjustment:
>> +		 *
>> +		 * Many drivers hardcode a maximal wait time before aborting
>> +		 * the wait for R1b and returning -ETIMEDOUT. With long
>> +		 * erases/trims, we are bound to run into this timeout, so for now
>> +		 * we just split into suifficiently small erases that are unlikely
>> +		 * to trigger the time.
>> +		 *
>> +		 * What Linux does and what we should be doing in barebox is:
>> +		 *
>> +		 *  - add a struct mci_cmd::busy_timeout member that drivers should
>> +		 *    use instead of hardcoding their own timeout delay. The busy
>> +		 *    timeout length can be calculated by the MCI core after
>> +		 *    consulting the appropriate CSD/EXT_CSD/SSR registers.
>> +		 *
>> +		 *  - add a struct mci_host::max_busy_timeout member, where drivers
>> +		 *    can indicate the maximum timeout they are able to support.
>> +		 *    The MCI core will never set a busy_timeout that exceeds this
>> +		 *    value.
>> +		 *
>> +		 *  Example Samsung eMMC 8GTF4:
>> +		 *
>> +		 *    time erase /dev/mmc2.part_of_512m # 1024 trims
>> +		 *    time: 2849ms
>> +		 *
>> +		 *    time erase /dev/mmc2.part_of_512m # single trim
>> +		 *    time: 56ms
>> +		 */
>> +
>> +		if (IS_SD(mci) && mci->ssr.au) {
>> +			blk_r = ((blkcnt - i) > mci->ssr.au) ?
>> +				mci->ssr.au : (blkcnt - i);
>> +		} else {
>> +			blk_r = ((blkcnt - i) > mci->erase_grp_size) ?
>> +				mci->erase_grp_size : (blkcnt - i);
>> +		}
>> +
>> +		rc =  mci_block_erase(mci, from, to, arg);
> 
> You say you split up the whole erase into sufficiently small erases, but
> 'from' and 'to' are never changed in this loop and you seem to erase
> the whole area multiple times.


Ouch. Will revisit.

Thanks,
Ahmad

> 
>> +		if (rc)
>> +			break;
>> +
>> +		/* Waiting for the ready status */
>> +		rc = mci_poll_until_ready(mci, 1000 /* ms */);
>> +		if (rc)
>> +			break;
>> +
>> +		i += blk_r;
>> +	}
>> +
>> +	return i == blkcnt ? 0 : rc;
>> +}
> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



