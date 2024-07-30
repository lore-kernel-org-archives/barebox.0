Delivery-date: Tue, 30 Jul 2024 12:05:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjjj-004QPG-28
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 12:05:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjji-0007cG-FM
	for lore@pengutronix.de; Tue, 30 Jul 2024 12:05:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XYxUjF/Lo6UhiCzmTRjkXLHPGX+xYNSK9/iPnTuO+aM=; b=XXywQNjvdBbAxY/sGi7kBhxiLi
	eJ4a2hq2ZEvrk6VUffhXjfe5xR00PkxKBnmySCnplDjn8rrllPQQOIvRl79ASV52jWaU3dvsTJyGf
	1MV4YnKssSyHQilaTJEOLpQ+COtJU/EPxA+zKNEUdVhrDXVNBFcullDzJ7rvHjgcgPZW8Uo7c6ize
	qWfXrI2lKbAgJWbFrl1qG4EsMOAmDBcZ1VHgdLpf3COxSb2eOeuP5+O2xvDGdcZP4yMty3i5V6lRC
	eNUUPM2RzCp/H1nMORD0/uqh7xhQ7XTMbi/4w+A0MpT2Qu6sDVliU0nsIzsY+zmT4rw2ocHAv72WV
	r5TKskDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjj8-0000000EemU-1SEy;
	Tue, 30 Jul 2024 10:05:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjj4-0000000Eelu-3ola
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 10:05:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sYjj3-0007Yu-3H; Tue, 30 Jul 2024 12:05:01 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sYjj2-003FxX-MD; Tue, 30 Jul 2024 12:05:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sYjj2-0096ON-1u;
	Tue, 30 Jul 2024 12:05:00 +0200
Date: Tue, 30 Jul 2024 12:05:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zqi6zHop6xz7jMvo@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730071929.2016537-8-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_030502_982398_118DAE3C 
X-CRM114-Status: GOOD (  35.76  )
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

On Tue, Jul 30, 2024 at 09:19:26AM +0200, Ahmad Fatoum wrote:
>  /**
>   * Read one or several block(s) of data from the card
>   * @param mci MCI instance
> @@ -773,6 +850,49 @@ static int sd_switch(struct mci *mci, unsigned mode, unsigned group,
>  	return mci_send_cmd(mci, &cmd, &data);
>  }
>  
> +static int sd_read_ssr(struct mci *mci)
> +{
> +	static const unsigned int sd_au_size[] = {
> +		0,		SZ_16K / 512,		SZ_32K / 512,
> +		SZ_64K / 512,	SZ_128K / 512,		SZ_256K / 512,
> +		SZ_512K / 512,	SZ_1M / 512,		SZ_2M / 512,
> +		SZ_4M / 512,	SZ_8M / 512,		(SZ_8M + SZ_4M) / 512,
> +		SZ_16M / 512,	(SZ_16M + SZ_8M) / 512,	SZ_32M / 512,
> +		SZ_64M / 512,
> +	};
> +	__be32 *ssr;
> +	int err;
> +	unsigned int au, eo, et, es;
> +
> +	if (!IS_ENABLED(CONFIG_MCI_ERASE))
> +		return -ENOSYS;

I think we settled on using -EOPNOTSUPP in this case.

> +static unsigned int mmc_align_erase_size(struct mci *card,
> +					 sector_t *from,
> +					 sector_t *to,
> +					 blkcnt_t nr)
> +{
> +	unsigned int from_new = *from, to_new, nr_new = nr, rem;
> +
> +	/*
> +	 * When the 'card->erase_size' is power of 2, we can use round_up/down()
> +	 * to align the erase size efficiently.
> +	 */
> +	if (is_power_of_2(card->erase_grp_size)) {
> +		unsigned int temp = from_new;
> +
> +		from_new = round_up(temp, card->erase_grp_size);
> +		rem = from_new - temp;
> +
> +		if (nr_new > rem)
> +			nr_new -= rem;
> +		else
> +			return 0;
> +
> +		nr_new = round_down(nr_new, card->erase_grp_size);
> +	} else {
> +		rem = from_new % card->erase_grp_size;
> +		if (rem) {
> +			rem = card->erase_grp_size - rem;
> +			from_new += rem;
> +			if (nr_new > rem)
> +				nr_new -= rem;
> +			else
> +				return 0;
> +		}
> +
> +		rem = nr_new % card->erase_grp_size;
> +		if (rem)
> +			nr_new -= rem;
> +	}
> +
> +	if (nr_new == 0)
> +		return 0;
> +
> +	to_new = from_new + nr_new;
> +
> +	if (*to != to_new || *from != from_new)
> +		dev_warn(&card->dev, "Erase range changed to [0x%x-0x%x] because of %u sector erase group\n",
> +			 from_new, to_new, card->erase_grp_size);
> +
> +	*to = to_new;
> +	*from = from_new;
> +
> +	return nr_new;
> +}
> +
> +/**
> + * Erase a memory region
> + * @param blk All info about the block device we need
> + * @param block first block to erase
> + * @param num_blocks Number of blocks to erase
> + * @return 0 on success, anything else on failure
> + *
> + */
> +static int mci_sd_erase(struct block_device *blk, sector_t from,
> +			blkcnt_t blkcnt)
> +{
> +	struct mci_part *part = container_of(blk, struct mci_part, blk);
> +	struct mci *mci = part->mci;
> +	sector_t i = 0;
> +	unsigned arg;
> +	sector_t to = from + blkcnt;
> +	int rc;
> +
> +	mci_blk_part_switch(part);
> +
> +	rc = mci_sd_check_write(mci, "Erase", from, blkcnt);
> +	if (rc)
> +		return rc;
> +
> +	if (!mci->erase_grp_size)
> +		return -EOPNOTSUPP;
> +
> +	if (mci->can_trim) {
> +		arg = MMC_TRIM_ARG;
> +	} else {
> +		/* We don't use discard, as it doesn't guarantee a fixed value */
> +		arg = MMC_ERASE_ARG;
> +		blkcnt = mmc_align_erase_size(mci, &from, &to, blkcnt);
> +	}
> +
> +	if (blkcnt == 0)
> +		return 0;
> +
> +	if (to <= from)
> +		return -EINVAL;

When mmc_align_erase_size() is not called then we cannot arrive here
as we already returned in the if (blkcnt == 0) check above.
When mmc_align_erase_size() is called and this test triggers then it
only reveals a bug in mmc_align_erase_size().

I think this test should go away.

> +
> +	/* 'from' and 'to' are inclusive */
> +	to -= 1;
> +
> +	while (i < blkcnt) {
> +		sector_t blk_r;
> +
> +		/* TODO: While it's possible to clear many erase groups at once
> +		 * and it greatly improves throughput, drivers need adjustment:
> +		 *
> +		 * Many drivers hardcode a maximal wait time before aborting
> +		 * the wait for R1b and returning -ETIMEDOUT. With long
> +		 * erases/trims, we are bound to run into this timeout, so for now
> +		 * we just split into suifficiently small erases that are unlikely
> +		 * to trigger the time.
> +		 *
> +		 * What Linux does and what we should be doing in barebox is:
> +		 *
> +		 *  - add a struct mci_cmd::busy_timeout member that drivers should
> +		 *    use instead of hardcoding their own timeout delay. The busy
> +		 *    timeout length can be calculated by the MCI core after
> +		 *    consulting the appropriate CSD/EXT_CSD/SSR registers.
> +		 *
> +		 *  - add a struct mci_host::max_busy_timeout member, where drivers
> +		 *    can indicate the maximum timeout they are able to support.
> +		 *    The MCI core will never set a busy_timeout that exceeds this
> +		 *    value.
> +		 *
> +		 *  Example Samsung eMMC 8GTF4:
> +		 *
> +		 *    time erase /dev/mmc2.part_of_512m # 1024 trims
> +		 *    time: 2849ms
> +		 *
> +		 *    time erase /dev/mmc2.part_of_512m # single trim
> +		 *    time: 56ms
> +		 */
> +
> +		if (IS_SD(mci) && mci->ssr.au) {
> +			blk_r = ((blkcnt - i) > mci->ssr.au) ?
> +				mci->ssr.au : (blkcnt - i);
> +		} else {
> +			blk_r = ((blkcnt - i) > mci->erase_grp_size) ?
> +				mci->erase_grp_size : (blkcnt - i);
> +		}
> +
> +		rc =  mci_block_erase(mci, from, to, arg);

You say you split up the whole erase into sufficiently small erases, but
'from' and 'to' are never changed in this loop and you seem to erase
the whole area multiple times.

> +		if (rc)
> +			break;
> +
> +		/* Waiting for the ready status */
> +		rc = mci_poll_until_ready(mci, 1000 /* ms */);
> +		if (rc)
> +			break;
> +
> +		i += blk_r;
> +	}
> +
> +	return i == blkcnt ? 0 : rc;
> +}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


