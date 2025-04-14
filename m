Delivery-date: Mon, 14 Apr 2025 12:33:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4H7g-000bSK-1A
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:33:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4H7f-0004pQ-Mw
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:33:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RDmFqg/fG21ypK/KK1+NNV0B1ladd5l0xCPgwGVVcIM=; b=YqBujePdJ6HJZF+HiIAaVXEx0o
	iSn2HzeQWMj99gmvDLS2Ga9DAeH903Z5cJD4YzukoKjPKTuJBRCz07x8GV0BoyvWLHf/LhMOT4Vf6
	ma/g0l414T2IWm2ATM7kSAgwkTogWPMELSCGdbvnKsgMswFa5SjxxPvICBS8gez5ckzS48oyMF7eT
	FCpcRMTid5Bb75mcwHbikDSoHNeHcdSzjADM2UwBfdeRfOnmgQzyyCZfzOTRv5hHMgRWgxH8DkA6O
	DG38CLkq3JJP4gkIpRpHn3/Jdyol7+LEozrrzh+nk2zuXiW1GLzNi+saiDOA0Eg67j3X3IOau7pw+
	tFEGcGow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4H7E-00000001YH3-0AON;
	Mon, 14 Apr 2025 10:32:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4GpL-00000001SQs-3YAI
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:14:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4GpK-0006gr-5I; Mon, 14 Apr 2025 12:14:06 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4GpJ-000EWv-39;
	Mon, 14 Apr 2025 12:14:05 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4GpJ-000Fn3-2p;
	Mon, 14 Apr 2025 12:14:05 +0200
Date: Mon, 14 Apr 2025 12:14:05 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250414101405.hplqfnnk7mmzzukx@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414063152.2736649-7-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_031407_883508_1C1E4E45 
X-CRM114-Status: GOOD (  26.56  )
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
Subject: Re: [PATCH 06/18] blspec: collect bootloader spec entries from ESP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-04-14, Ahmad Fatoum wrote:
> The spec points out that spec entries should be collected from ESP, even
> when XBOOTLDR partitions exist, but at a lower priority.
> 
> Implement this logic in barebox. As barebox as EFI payload systems have
> an ESP, but may have the bootloader spec files in a separate partition,
> we can't skip the walk through all partitions when we have an ESP like
> we do for XBOOTLDR partitions.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/blspec.c | 26 +++++++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index adc3fb2e2ea2..dd3bb1c167d7 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -504,6 +504,7 @@ static int blspec_scan_disk(struct bootscanner *scanner,
>  {
>  	struct cdev *partcdev;
>  	int ret, err = 0, found = 0;
> +	bool have_esp = false;
>  
>  	for_each_cdev_partition(partcdev, cdev) {
>  		struct cdev *match = NULL;
> @@ -517,9 +518,13 @@ static int blspec_scan_disk(struct bootscanner *scanner,
>  		 * - GPT disk label, and a partition with the GPT type GUID of
>  		 *   bc13c2ff-59e6-4262-a352-b275fd6f7172 already exists
>  		 *
> +		 * - an EFI System Partition and none of the above
> +		 *
>  		 * it should be used as $BOOT
>  		 */
> -		if (cdev_is_mbr_partitioned(cdev)) {
> +		if (partcdev->flags & DEVFS_PARTITION_BOOTABLE_ESP)
> +			have_esp = true;
> +		else if (cdev_is_mbr_partitioned(cdev)) {
>  			if (partcdev->dos_partition_type == 0xea)
>  				match = partcdev;
>  		} else if (cdev_is_gpt_partitioned(cdev)) {
> @@ -537,6 +542,25 @@ static int blspec_scan_disk(struct bootscanner *scanner,
>  			err = ret ?: -ENOENT;
>  	}
>  
> +	if (!have_esp)
> +		goto out;
> +
> +	for_each_cdev_partition(partcdev, cdev) {
> +		if (!(partcdev->flags & DEVFS_PARTITION_BOOTABLE_ESP))
> +			continue;
> +
> +		/*
> +		 * ESP is only a fallback. If we have an ESP, but no bootloader spec
> +		 * files inside, this is not an error.
> +		 */
> +		ret = boot_scan_cdev(scanner, bootentries, partcdev, true);
> +		if (ret >= 0)
> +			found += ret;
> +		else
> +			err = ret;
> +	}

Is it allowed to have multiple ESP partitions? If not we could save us
the additional loop and just store the ESP directly and make use of it.

Regards,
  Marco


> +
> +out:
>  	return found ?: err;
>  }
>  
> -- 
> 2.39.5
> 
> 
> 


