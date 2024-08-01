Delivery-date: Thu, 01 Aug 2024 13:30:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZU19-0057Ak-1z
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 13:30:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZU17-0003qq-Em
	for lore@pengutronix.de; Thu, 01 Aug 2024 13:30:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8AZE8jwJwm66LDSGU2MO0Zo455xBhnhgu3TiUslBU9A=; b=Nzkvk3Qb/ifmFFnoGgHAa29Thm
	cWofKlRXKQQCbPN2oqO8gFvaFLTGLRY6uNGLcvCBXn0URdDCX5Jy3uL/444F3RpC2z0PIfM0VFvp2
	ApjRDY6QNrir37z+9pLX+nQeoe5Rp4uz1j7j7RawQmAhtM8ZC0VK90aPlQevejUm6BvFlR/Zxv7pd
	e50/JrSFCMae/+FI0e634T46MceVAxF5maBuid8J0f0sjRPJi1vSBmvVks48bCg0h/oEQOH/ST0Ij
	bBWb6Et/g46nazbfEuzoTc67y3W3Pkww1EJyX/S6E4aik7Pfv/Q9K4LqEXaf0B0RbYE2SllendKdW
	bdl+JxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZU0W-00000004ufE-1ZQH;
	Thu, 01 Aug 2024 11:30:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTyL-00000004uIL-1zYw
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 11:29:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sZTyJ-0003aE-OD; Thu, 01 Aug 2024 13:27:51 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sZTyJ-003kxa-BH; Thu, 01 Aug 2024 13:27:51 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sZTyJ-00CxBK-0k;
	Thu, 01 Aug 2024 13:27:51 +0200
Date: Thu, 1 Aug 2024 13:27:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZqtxNwCHEdv5VIFP@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
 <20240731080510.364706-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731080510.364706-9-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_042753_535372_C51B5711 
X-CRM114-Status: GOOD (  30.03  )
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
Subject: Re: [PATCH v2 08/10] mci: add support for discarding write blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jul 31, 2024 at 10:05:08AM +0200, Ahmad Fatoum wrote:
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
> +		 * we just split into sufficiently small erases that are unlikely
> +		 * to trigger the timeout.
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

The number of blocks we can erase in one iteration is constant, I pulled
this out of the loop. Please check the result in -next.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


