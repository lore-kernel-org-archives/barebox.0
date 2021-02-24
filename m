Delivery-date: Wed, 24 Feb 2021 09:55:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpwq-0004gz-9k
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:55:08 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpwp-0008R7-CX
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:55:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bmykVSmJfcmvGA5rcUu04z8Ph814c3ScehxWA1IL1ms=; b=fN3FkJEd0n6bOmnTYhJh/sNYE
	+KYm0DpYGzUoEhRVy7RqRfYOrEnrumFY+TCZi+E6zPHZucorO+Bx3HJVRW0mIHMTxvdir8FG6Quq3
	p+4Lnnk/ESARljvZJDLqZjv6EPY6VnSZAzrK6pDyIicdhJI/F78xH238J4LHL9vyuNHL2G4pAELWn
	EeJxcSlFbgLDBs0W5g22UYPSn32PeNSFPQj66dnk9HH8JA/sfJTUahiJw7M93ljvuN3rTdjlwg96V
	vRm0Suym2ACmcoAhVpmgDp91BtCZWkH3/zg87ARMNdGgs49o1a6oS3mvxi7fLc7FQDgHbY6Tm6yZ1
	BRAR1HsoA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEpvi-0007Lj-DM; Wed, 24 Feb 2021 08:53:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEpve-0007Js-F8
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:53:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpvb-0008Is-Sl; Wed, 24 Feb 2021 09:53:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpvb-0006bi-GH; Wed, 24 Feb 2021 09:53:51 +0100
Date: Wed, 24 Feb 2021 09:53:51 +0100
To: Edoardo Scaglia <scaglia@amelchem.com>
Message-ID: <20210224085351.GJ5549@pengutronix.de>
References: <20210223112253.5468-1-scaglia@amelchem.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210223112253.5468-1-scaglia@amelchem.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:41 up 6 days, 12:15, 61 users, load average: 0.08, 0.15, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_035354_700261_823E81E0 
X-CRM114-Status: GOOD (  21.82  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: nand: fix hardware ECC support in atmel_nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 23, 2021 at 12:22:53PM +0100, Edoardo Scaglia wrote:
> When using a NAND memory with hardware ECC enabled on a Atmel SoC
> probing fails during barebox boot with following error:
> 
> nand_base: device found, Manufacturer ID: 0x2c, Chip ID: 0xdc
> nand_base: Micron MT29F4G08ABAEAWP
> nand_base: 512 MiB, SLC, erase size: 256 KiB, page size: 4096, OOB size: 224
> WARNING: at drivers/mtd/nand/nand_base.c:5594/nand_scan_tail()!
> WARNING: No oob scheme defined for oobsize 224
> atmel_nand atmel_nand0: probe failed: No such device or address
> 
> The problem arises from commit b6bcd96de5a75bdc5d06a06f2efffc2d89e346ec
> which among several changes dropped CONFIG_NAND_ECC_HW symbol, however
> two references remained in atmel_nand driver causing the failure of NAND
> probing when hardware ECC is configured in a Atmel SoC.
> 
> Signed-off-by: Edoardo Scaglia <scaglia@amelchem.com>
> ---
>  drivers/mtd/nand/atmel_nand.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Applied to master. Sorry for breaking it, it seems I only tested it with
software ecc.

Sascha

> 
> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index db13f5b7e4..58d53b7a78 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -1351,8 +1351,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
>  	nand_chip->ecc.strength = pdata->ecc_strength ? : 1;
>  	nand_chip->ecc.size = 1 << pdata->ecc_size_shift ? : 512;
>  
> -	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
> -	    pdata->ecc_mode == NAND_ECC_HW) {
> +	if (pdata->ecc_mode == NAND_ECC_HW) {
>  		nand_chip->ecc.mode = NAND_ECC_HW;
>  	}
>  
> @@ -1411,8 +1410,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
>  
>  	host->ecc_code = xmalloc(mtd->oobsize);
>  
> -	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
> -	    nand_chip->ecc.mode == NAND_ECC_HW) {
> +	if (nand_chip->ecc.mode == NAND_ECC_HW) {
>  		if (IS_ENABLED(CONFIG_NAND_ATMEL_PMECC) && pdata->has_pmecc)
>  			res = atmel_pmecc_nand_init_params(dev, host);
>  		else
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

