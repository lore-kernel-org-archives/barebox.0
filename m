Delivery-date: Mon, 22 Mar 2021 06:58:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lODaY-000348-N1
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 06:58:54 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lODaX-0000ql-EU
	for lore@pengutronix.de; Mon, 22 Mar 2021 06:58:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AOkrTLnMhKtOQTxcHJ4Ur/QqFm52S8Y3XP5fc2LP4Bs=; b=ouh6xh92NgSCF9NVNzTnXZSnz
	BcMqXAOR1YmJdipfsAolyY/qD2MjBluYQ/4B4taP/VAvUoWCgVihLRlPLoq2pJwsZurbL8icPDWiO
	pr0JCZt2EWCqsXyKHa30tIG7ykkma19dSQv/iQ+CkWVRdIWvudL/b8XQpWYgEvNiOS+uXSObJGwP4
	5sSvfyR+956nBe2hq5e6euzb+G9H0yz+E4OkQOaXy93jrouXDCRSWwZHC3avVtBE2yaivlB8ttWt7
	HcVfsvOki7HMVEGcZ/Spsj7kkTtfWu72rygm7iBSYFFPKmd/7aOf9Bj3ivaOAqQgPgbdZXMBW6abg
	SB8hyE4yQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lODZQ-00AxPr-5O; Mon, 22 Mar 2021 05:57:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lODZF-00AxOi-Mj
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 05:57:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lODZF-0000ey-3h; Mon, 22 Mar 2021 06:57:33 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lODZE-0007hX-Md; Mon, 22 Mar 2021 06:57:32 +0100
Date: Mon, 22 Mar 2021 06:57:32 +0100
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210322055732.GN23724@pengutronix.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316123626.25872-1-s.riedmueller@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:57:19 up 32 days,  9:21, 62 users,  load average: 0.03, 0.05, 0.02
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_055736_531072_97269978 
X-CRM114-Status: GOOD (  48.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] nand: nand-mxs: Fix marking BBT blocks as bad
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 16, 2021 at 01:36:25PM +0100, Stefan Riedmueller wrote:
> Currently the nand-mxs driver uses a hook function to the
> mtd->_block_markbad function to allow write access to the OOB bytes only
> if it is to mark a block as bad.
> 
> This hook is not called when a Bad Block Table block is marked bad since
> this routine directly calls nand_markbad_bbm.
> 
> The chip->legacy.block_markbad hook gives a driver the ability to
> implement a custom block_markbad function. Since this is used by
> nand_markbad_bbm, if it exists, replace the mtd->_block_markbad hook by
> a chip->legacy.block_markbad function. The gpmi-nand Linux implementation
> of this driver uses the same mechanism.
> 
> This fixes an issue where marking Bad Block Table blocks as bad fails
> with:
> 	NXS NAND: Writing OOB isn't supported
> 
> Tested on PHYTEC phyCORE-i.MX 6Q.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  drivers/mtd/nand/nand_mxs.c | 87 +++++++++++++++----------------------
>  1 file changed, 34 insertions(+), 53 deletions(-)

Applied this one, thanks

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index 434da49d3ea9..96ae71364efb 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -215,7 +215,6 @@ struct mxs_nand_info {
>  	uint8_t		*data_buf;
>  	uint8_t		*oob_buf;
>  
> -	uint8_t		marking_block_bad;
>  	uint8_t		raw_oob_mode;
>  
>  	/* Functions with altered behaviour */
> @@ -223,8 +222,6 @@ struct mxs_nand_info {
>  				loff_t from, struct mtd_oob_ops *ops);
>  	int		(*hooked_write_oob)(struct mtd_info *mtd,
>  				loff_t to, struct mtd_oob_ops *ops);
> -	int		(*hooked_block_markbad)(struct mtd_info *mtd,
> -				loff_t ofs);
>  
>  	/* DMA descriptors */
>  	struct mxs_dma_desc	**desc;
> @@ -1073,27 +1070,6 @@ static int mxs_nand_hook_write_oob(struct mtd_info *mtd, loff_t to,
>  	return ret;
>  }
>  
> -/*
> - * Mark a block bad in NAND.
> - *
> - * This function is a veneer that replaces the function originally installed by
> - * the NAND Flash MTD code.
> - */
> -static int mxs_nand_hook_block_markbad(struct mtd_info *mtd, loff_t ofs)
> -{
> -	struct nand_chip *chip = mtd_to_nand(mtd);
> -	struct mxs_nand_info *nand_info = chip->priv;
> -	int ret;
> -
> -	nand_info->marking_block_bad = 1;
> -
> -	ret = nand_info->hooked_block_markbad(mtd, ofs);
> -
> -	nand_info->marking_block_bad = 0;
> -
> -	return ret;
> -}
> -
>  /*
>   * There are several places in this driver where we have to handle the OOB and
>   * block marks. This is the function where things are the most complicated, so
> @@ -1177,36 +1153,14 @@ static int mxs_nand_ecc_read_oob(struct nand_chip *chip, int page)
>   */
>  static int mxs_nand_ecc_write_oob(struct nand_chip *chip, int page)
>  {
> -	struct mtd_info *mtd = nand_to_mtd(chip);
> -	struct mxs_nand_info *nand_info = chip->priv;
> -	int column;
> -	uint8_t block_mark = 0;
> -
>  	/*
>  	 * There are fundamental incompatibilities between the i.MX GPMI NFC and
>  	 * the NAND Flash MTD model that make it essentially impossible to write
>  	 * the out-of-band bytes.
> -	 *
> -	 * We permit *ONE* exception. If the *intent* of writing the OOB is to
> -	 * mark a block bad, we can do that.
>  	 */
>  
> -	if (!nand_info->marking_block_bad) {
> -		printf("NXS NAND: Writing OOB isn't supported\n");
> -		return -EIO;
> -	}
> -
> -	column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
> -	/* Write the block mark. */
> -	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, column, page);
> -	chip->legacy.write_buf(chip, &block_mark, 1);
> -	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
> -
> -	/* Check if it worked. */
> -	if (chip->legacy.waitfunc(chip) & NAND_STATUS_FAIL)
> -		return -EIO;
> -
> -	return 0;
> +	printf("MXS NAND: Writing OOB isn't supported\n");
> +	return -EIO;
>  }
>  
>  /*
> @@ -1227,6 +1181,37 @@ static int mxs_nand_block_bad(struct nand_chip *chip , loff_t ofs)
>  	return 0;
>  }
>  
> +/*
> + * Mark a block as bad in NAND.
> + */
> +static int mxs_nand_block_markbad(struct nand_chip *chip , loff_t ofs)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	struct mxs_nand_info *nand_info = chip->priv;
> +	int column, page, chipnr, status;
> +	uint8_t block_mark = 0;
> +
> +	chipnr = (int)(ofs >> chip->chip_shift);
> +	nand_select_target(chip, chipnr);
> +
> +	column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
> +	page = (int)(ofs >> chip->page_shift);
> +	/* Write the block mark. */
> +	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, column, page);
> +	chip->legacy.write_buf(chip, &block_mark, 1);
> +	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
> +
> +	/* Check if it worked. */
> +	status = chip->legacy.waitfunc(chip);
> +
> +	nand_deselect_target(chip);
> +
> +	if (status & NAND_STATUS_FAIL)
> +		return -EIO;
> +
> +	return 0;
> +}
> +
>  /*
>   * Nominally, the purpose of this function is to look for or create the bad
>   * block table. In fact, since the we call this function at the very end of
> @@ -1273,11 +1258,6 @@ static int mxs_nand_scan_bbt(struct nand_chip *chip)
>  		mtd->_write_oob = mxs_nand_hook_write_oob;
>  	}
>  
> -	if (mtd->_block_markbad != mxs_nand_hook_block_markbad) {
> -		nand_info->hooked_block_markbad = mtd->_block_markbad;
> -		mtd->_block_markbad = mxs_nand_hook_block_markbad;
> -	}
> -
>  	/* We use the reference implementation for bad block management. */
>  	return nand_create_bbt(chip);
>  }
> @@ -2201,6 +2181,7 @@ static int mxs_nand_probe(struct device_d *dev)
>  	chip->legacy.dev_ready		= mxs_nand_device_ready;
>  	chip->legacy.select_chip	= mxs_nand_select_chip;
>  	chip->legacy.block_bad		= mxs_nand_block_bad;
> +	chip->legacy.block_markbad	= mxs_nand_block_markbad;
>  
>  	chip->legacy.read_byte		= mxs_nand_read_byte;
>  
> -- 
> 2.25.1
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

