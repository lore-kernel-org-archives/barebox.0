Delivery-date: Thu, 24 Apr 2025 18:04:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7z3U-004vyy-1V
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 18:04:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7z3T-0007u7-Q6
	for lore@pengutronix.de; Thu, 24 Apr 2025 18:04:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kx+ayy2NcVKNkkJS2ycjqGZ3L2dCQX/eMjR4oNzNI9w=; b=znqV5GbzOQiuHhcdw7nGQkzT6w
	+ITEYoCGwayQbczYYIWCqh2egtmz3w+Q74nlFfv0Y8oDoQ2djqdZ4kJ4YNjLWli1ZC0KZOsjvLzn1
	LRpwQxIez5HjiHkh7BSXVbXnnHAD9f4ZyXbhmto+GQIJheiKKB69WOEH4waIlWwnzBHLuwPnJqqoC
	UoOYqyn00sUkLzXApJItEB4b/n7yJDjTKP+pBaaIavKbJyetzfZuv1SOYGpt+xpFmGflrtyDexZSU
	67NzGUMkrAo8xkMy9D/Brio9UzVcYonQmVA+lZ3JxjC1sukR0K4mnmFRBPPK0km9bX/bfZKZcYrvA
	mptoGeyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7z3L-0000000EaBp-1NpF;
	Thu, 24 Apr 2025 16:03:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7vG8-0000000Dwqk-2lGO
	for barebox@bombadil.infradead.org;
	Thu, 24 Apr 2025 12:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Kx+ayy2NcVKNkkJS2ycjqGZ3L2dCQX/eMjR4oNzNI9w=; b=nF/k6U3bq1h29rJHUN1tV3+Dcw
	3Su6aEtYe4DpRz5gznDx2Fwmz1fQZZIgE7T9R8Xyu9Deq3vEom1JTsvOTccvl6VLowANwatc1PzHE
	C+wOwgQwa+D+mHsI1cUPNRR8/hgYbN0wTCfb8hmFKQGRlWprxFQKblXee8KJ4ttW30hCSsJW67G2A
	i8P/3c5dwr9ewjopL/IWGllO5XQ4pB+9FRhXQ+j6c8fwCrq+bdW61Gy/nNsZmiZ0wf/inpvYVwtcX
	ZBkOQlLToeNemcZQJyvC6cFFHreZ6ll3aMuSCfhBgltOuctTtE3fXFsb6bT8s6Xgbd9cnxFJhUMhH
	pdVBBnzA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7vG5-0000000BmTN-2J00
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 12:00:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7vG4-0003pZ-OQ; Thu, 24 Apr 2025 14:00:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7vG4-001sKh-1p;
	Thu, 24 Apr 2025 14:00:48 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7vG4-001LIZ-1U;
	Thu, 24 Apr 2025 14:00:48 +0200
Date: Thu, 24 Apr 2025 14:00:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aAon8N28ujN0YTaL@pengutronix.de>
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
 <20250423140913.1530237-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423140913.1530237-2-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_130049_857943_008291F9 
X-CRM114-Status: GOOD (  24.41  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] parted: add support for gpt-location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 23, 2025 at 04:09:11PM +0200, Marco Felsch wrote:
> Add support to place the GPT partition entries to random places instead
> of LBA2.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - new
> 
>  commands/parted.c | 29 +++++++++++++++++++++++++++--
>  1 file changed, 27 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/parted.c b/commands/parted.c
> index 90cee1ede10e..895c06524d4c 100644
> --- a/commands/parted.c
> +++ b/commands/parted.c
> @@ -224,6 +224,30 @@ static int do_mklabel(struct block_device *blk, int argc, char *argv[])
>  		return -EINVAL;
>  	}
>  
> +	if (argc == 3) {
> +		uint64_t mult;
> +		int ret;
> +
> +		if (!strcmp(argv[1], "msdos")) {
> +			printf("gpt-location not supported for msdos partitions\n");
> +			return -EINVAL;
> +		}
> +
> +		ret = parted_strtoull(argv[2], &gpt_location, &mult);
> +		if (ret)
> +			return ret;
> +
> +		if (!mult)
> +			mult = gunit;
> +
> +		gpt_location *= mult;
> +
> +		/* Ensure alignment */
> +		gpt_location = ALIGN(gpt_location, SECTOR_SIZE);
> +		/* convert to LBA */
> +		gpt_location >>= SECTOR_SHIFT;
> +	}
> +
>  	pdesc = partition_table_new(blk, argv[1], gpt_location);
>  	if (IS_ERR(pdesc)) {
>  		printf("Error: Cannot create partition table: %pe\n", pdesc);
> @@ -236,7 +260,7 @@ static int do_mklabel(struct block_device *blk, int argc, char *argv[])
>  		partition_table_free(gpdesc);
>  	gpdesc = pdesc;
>  
> -	return 2;
> +	return argc > 2 ? 3 : 2;

Optional arguments are not supported by parted. You can pass multiple
commands to parted, e.g.

parted /dev/mmc0 mklabel gpt mkpart foo ext4 4MiB 1024MiB

argc will contain the remaining arguments, when another command follows
it won't be exactly three and you can't tell if the argument belongs to
this command or is the start of the next one.

You could implement it as an option.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


