Delivery-date: Mon, 17 Feb 2025 11:55:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymc-003S1J-0n
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 11:55:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjyma-0000PN-Uo
	for lore@pengutronix.de; Mon, 17 Feb 2025 11:55:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nuKGZRNvkqhfmWWIiu9cy6rOhFyhxnI7p25a25L1/HI=; b=pRxC7rHGgC7bVmRYLkjBNtpNkx
	8qUmUue/1UL5HqanBehgRlUfUtZ/0nOZL7VtUbX7Eb3AFeN+U+Sh4SE6rz76XxEOPrLphuO5jR18U
	gse2Wqkt7Y85cv6SJuCcUnUXxFx6sOQbVaSPaLU7gVnEfSV8MdWr0CCRjE2iTNNhw7h/NiE2evx+h
	Jvky/AaQ6Tcj9o/80Ata0CmGNzElIh03RUMgYud8xbqPXbK5h7h/znyWt6zs2LIL9dVu3GTzMTjnk
	wKMIDb4AGekJIVTRdL0RWX1fL5qdOg+gYvE5cboD8SM2ArJSSyJS472/CXmPNiCzrnFYnE5QonOLQ
	FwY7ltfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjymA-00000004DHM-0irm;
	Mon, 17 Feb 2025 10:54:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjyky-00000004BJE-2bcv
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 10:53:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tjykx-0007gX-0u; Mon, 17 Feb 2025 11:53:43 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tjykw-001OPF-2i;
	Mon, 17 Feb 2025 11:53:42 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tjykw-002UNf-2Q;
	Mon, 17 Feb 2025 11:53:42 +0100
Date: Mon, 17 Feb 2025 11:53:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z7MVNjkJiDazmLpc@pengutronix.de>
References: <20250214094850.2847143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214094850.2847143-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_025344_741299_D71BC9CA 
X-CRM114-Status: GOOD (  35.84  )
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
Subject: Re: [PATCH 1/2] mci: core: import Linux logic for higher preferred
 erase size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Feb 14, 2025 at 10:48:49AM +0100, Ahmad Fatoum wrote:
> As a comment in the file notes, doing too small a granularity for erases
> has considerable effect on performance:
> 
>   > Example Samsung eMMC 8GTF4:
>   >
>   >   time erase /dev/mmc2.part_of_512m # 1024 trims
>   >   time: 2849ms
>   >
>   >   time erase /dev/mmc2.part_of_512m # single trim
>   >   time: 56ms
> 
> This was deemed acceptable at first, because 3 seconds is still
> tolerable.
> 
> On a SkyHigh S40004, an erase of the whole 3728 MiB ended up
> taking longer than 400s in barebox, but only 4s in Linux, which
> dwarfs the time actually needed for writing.
> 
> Linux has some rather complicated logic to compute a higher erase size
> granularity, which still fits in the max busy timeout that a controller
> may require. Until that's support in barebox, we import a simpler
> heuristic that Linux uses to compute
> 
>   /sys/class/mmc_host/*/*/preferred_erase_size
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 105 ++++++++++++++++++++++++++---------------
>  include/mci.h          |   1 +
>  2 files changed, 69 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index cc3c6fba3653..6d55eb8305b9 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1774,6 +1774,70 @@ static int mci_startup_mmc(struct mci *mci)
>  	return ret >= MMC_BUS_WIDTH_1 ? 0 : ret;
>  }
>  
> +static void mci_init_erase(struct mci *card)
> +{
> +	unsigned int sz;
> +
> +	if (!IS_ENABLED(CONFIG_MCI_ERASE))
> +		return;
> +
> +	/* TODO: While it's possible to clear many erase groups at once
> +	 * and it greatly improves throughput, drivers need adjustment:
> +	 *
> +	 * Many drivers hardcode a maximal wait time before aborting
> +	 * the wait for R1b and returning -ETIMEDOUT. With long
> +	 * erases/trims, we are bound to run into this timeout, so for now
> +	 * we just split into sufficiently small erases that are unlikely
> +	 * to trigger the timeout.
> +	 *
> +	 * What Linux does and what we should be doing in barebox is:
> +	 *
> +	 *  - add a struct mci_cmd::busy_timeout member that drivers should
> +	 *    use instead of hardcoding their own timeout delay. The busy
> +	 *    timeout length can be calculated by the MCI core after
> +	 *    consulting the appropriate CSD/EXT_CSD/SSR registers.
> +	 *
> +	 *  - add a struct mci_host::max_busy_timeout member, where drivers
> +	 *    can indicate the maximum timeout they are able to support.
> +	 *    The MCI core will never set a busy_timeout that exceeds this
> +	 *    value.
> +	 *
> +	 *  Example Samsung eMMC 8GTF4:
> +	 *
> +	 *    time erase /dev/mmc2.part_of_512m # 1024 trims
> +	 *    time: 2849ms
> +	 *
> +	 *    time erase /dev/mmc2.part_of_512m # single trim
> +	 *    time: 56ms
> +	 */
> +	if (IS_SD(card) && card->ssr.au) {
> +		card->pref_erase = card->ssr.au;
> +	} else if (card->erase_grp_size) {
> +		sz = card->capacity >> 11;
> +		if (sz < 128)
> +			card->pref_erase = 512 * 1024 / 512;
> +		else if (sz < 512)
> +			card->pref_erase = 1024 * 1024 / 512;
> +		else if (sz < 1024)
> +			card->pref_erase = 2 * 1024 * 1024 / 512;
> +		else
> +			card->pref_erase = 4 * 1024 * 1024 / 512;

card->capacity is in bytes, so you are falling into the last case for
cards bigger than 512Kib. Did you mean to right shift by 21 or even 31
instead?

I would prefer using SZ_* and SECTOR_SIZE/SHIFT defines to make this more
readable.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


