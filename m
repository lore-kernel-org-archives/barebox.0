Delivery-date: Mon, 20 Oct 2025 14:58:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTV-009tmN-2y
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTM-0000bi-Ve
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YjhhV2L57niCS+eztAytAxIw5Xflh5tdrgqTWyNmJEw=; b=VHEIMZhFRyeeXQquXXGRKACb9H
	6yMY+oVeJPGBOrJ95YSLvCzmFjUhbx1zuQiMnE454rPXzMYi/JcLU4elkYbQWbOTWvZazxDGIRssY
	5MeBtoj1VHHa8txKcShR2mjm7c00xMmlRPih2peDJAb5ZSxxR/UY4Znomkp2aKFcHab2YfKZQAKJN
	NxxQ31pobpDJiRdkNCDV96b+dWwtUVxmrwRtFCqYTFMnFfSQ+wPYznea8JeAp23izG9vbvk6dOdNG
	kmYBZtupdVW3pQsjRtzdnml/C0mvLe+5ae76VX3TkuouDUqKB4QynMw+P30laulPEW1kQBjaCLuSK
	a3siq6JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSj-0000000DfDc-3hQx;
	Mon, 20 Oct 2025 12:58:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSd-0000000Df4Z-3U2S
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vApSb-0008Bz-4N
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAl43-004Vvx-37;
	Mon, 20 Oct 2025 10:16:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAl43-007GJv-2m;
	Mon, 20 Oct 2025 10:16:23 +0200
Date: Mon, 20 Oct 2025 10:16:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Maud Spierings <maud_spierings@hotmail.com>
Message-ID: <aPXv11IxywXgokOk@pengutronix.de>
References: <20251019-parted-v1-1-93b0501b40d9@hotmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251019-parted-v1-1-93b0501b40d9@hotmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055803_877310_CA971B56 
X-CRM114-Status: GOOD (  29.35  )
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
Subject: Re: [PATCH] parted: add max option to mkpart <end>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Maud,

On Sun, Oct 19, 2025 at 05:07:06PM +0200, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Add the option to specify "max" as the end location, this will fill the
> block device up to the end of its available space.
> 
> A secondary effect is that it is now possible to use two different size
> units for start and end
> 
> mkpart root ext4 66MiB 3866111KiB
> 
> previously it would read 66MiB as 66KiB as it only used the last read
> unit.

Uh, yes, that's a bug. Thanks for fixing this.

> diff --git a/commands/parted.c b/commands/parted.c
> index 7ec56da4c15f..0e858eb881ba 100644
> --- a/commands/parted.c
> +++ b/commands/parted.c
> @@ -138,6 +138,10 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
>  	int ret;
>  	uint64_t mult;
>  
> +	pdesc = pdesc_get(blk);
> +	if (!pdesc)
> +		return -EINVAL;
> +
>  	if (argc < 5) {
>  		printf("Error: Missing required arguments\n");
>  		return -EINVAL;
> @@ -150,40 +154,51 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
>  	if (ret)
>  		return ret;
>  
> -	ret = parted_strtoull(argv[4], &end, &mult);
> -	if (ret)
> -		return ret;
> -
>  	if (!mult)
>  		mult = gunit;
> -
>  	start *= mult;
> -	end *= mult;
>  
> -	/* If not on sector boundaries move start up and end down */
> +	/* If not on sector boundaries round start up */
>  	start = ALIGN(start, SZ_1M);
> -	end = ALIGN_DOWN(end, SZ_1M);

I am not sure we need the alignment of the end at all. I can imagine
that it helps the storage device to align the start of a partition, but
the end shouldn't really matter.

Maybe we should remove the end alignment because with this patch the
ending becomes inconsistent. It will align down to 1MiB boundary when
the size is specified, but will use an unaligned ending with size =
"max".

Better drop the end alignment entirely for more consistency.

>  
>  	/* convert to LBA */
>  	start >>= SECTOR_SHIFT;
> -	end >>= SECTOR_SHIFT;
> +
> +	if (!strcmp(argv[4], "max")) {
> +		/* gpt requires 34 blocks at the end */
> +		if (pdesc->parser->type == filetype_gpt)
> +			end = blk->num_blocks - 35;
> +		else if (pdesc->parser->type == filetype_mbr)
> +			end = blk->num_blocks - 1;
> +		else
> +			return -ENOSYS;
> +	} else if (!(ret = parted_strtoull(argv[4], &end, &mult))) {

Rewrite to:

	} else {
		ret = parted_strtoull(argv[4], &end, &mult);
		if (ret)
			return ret;
		...
	}

It solves the checkpatch warning and is easier to read IMO.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


