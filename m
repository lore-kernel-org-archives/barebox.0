Delivery-date: Fri, 03 May 2024 09:45:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2nbM-00Gqab-0C
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 09:45:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2nbL-0003xN-Ag
	for lore@pengutronix.de; Fri, 03 May 2024 09:45:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jX82GezHj5iyWCCbhnWZHuYa1vY9za5edUSXKnOJCEo=; b=iDzM3gbIxp6YbQECZ5Izh5bhGn
	4oDJYBf7AyoM2pzropH+lou0WBqOVNIvPvL62z4AXaTGJ9EIfrV4pEf1sa7atExmVpa0CbH9nUzhF
	fw5spT4PuK90ybdu/a4PlEhRoai0o3bAZZWu2AjWfYG2andU+sDM3fdUohpfQSK74Sn/mESP188qt
	B1RLA0wX9RY1FerQyntNXaOUJI89e9XugdUsMGDcaOaRNV62cfaStv7OQ6obwSeF6U3D1Cl+/cC4i
	lFt/1XqNYq2BWS4EaArwOlL+ClEKd0y6yd6hLEtUgt0hJYeGNenWZ/LNC0kl1IeLHqr3JBwD4hwKW
	9ku4E1oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nao-0000000FWEM-1Kh5;
	Fri, 03 May 2024 07:44:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nal-0000000FWCp-06JV
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 07:44:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s2naj-0003ow-Bo; Fri, 03 May 2024 09:44:25 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s2nai-00Ff7p-UH; Fri, 03 May 2024 09:44:24 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s2nai-009Hfx-2i;
	Fri, 03 May 2024 09:44:24 +0200
Date: Fri, 3 May 2024 09:44:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZjSV2G-NZ30WAeF8@pengutronix.de>
References: <20240430094451.1038256-4-u.kleine-koenig@pengutronix.de>
 <20240430094451.1038256-6-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240430094451.1038256-6-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_004427_093834_0D9E217D 
X-CRM114-Status: GOOD (  38.84  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] mtd: mxc-nand: Only automatically create BBT if NAND
 seems to be pristine
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 30, 2024 at 11:44:54AM +0200, Uwe Kleine-König wrote:
> Automatically creating a BBT is the right thing to do if the NAND is
> factory new. However when migrating from a barebox older than commit
> v2020.03.0~28^2~1 ("mtd: nand-imx: Create BBT automatically when
> necessary") on a used machine, this automatism is really bad because it
> most likely marks the blocks containing the barebox image (and possibly
> more) as bad. On such a system the vendor BBMs are gone, but it was
> operated without that information before, so continuing to do so is a
> sane option.
> 
> Add a light check for the NAND to be really pristine: If the first block
> looks like containing a barebox image or a UBI refuse to create a BBT.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mtd/nand/raw/mxc_nand.c | 58 ++++++++++++++++++---------------
>  1 file changed, 31 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
> index a72275480144..fd5ae447a198 100644
> --- a/drivers/mtd/nand/raw/mxc_nand.c
> +++ b/drivers/mtd/nand/raw/mxc_nand.c
> @@ -1555,30 +1555,6 @@ static const struct nand_controller_ops mxcnd_controller_ops = {
>   * From this point on we can forget about the BBMs and rely completely
>   * on the flash BBT.
>   */
> -static int checkbad(struct nand_chip *chip, loff_t ofs)
> -{
> -	struct mtd_info *mtd = nand_to_mtd(chip);
> -	int ret;
> -	uint8_t buf[mtd->writesize + mtd->oobsize];
> -	struct mtd_oob_ops ops;
> -
> -	ops.mode = MTD_OPS_RAW;
> -	ops.ooboffs = 0;
> -	ops.datbuf = buf;
> -	ops.len = mtd->writesize;
> -	ops.oobbuf = buf + mtd->writesize;
> -	ops.ooblen = mtd->oobsize;
> -
> -	ret = mtd_read_oob(mtd, ofs, &ops);
> -	if (ret < 0)
> -		return ret;
> -
> -	if (buf[2000] != 0xff)
> -		return 1;
> -
> -	return 0;
> -}
> -
>  static int imxnd_create_bbt(struct nand_chip *chip)
>  {
>  	struct mtd_info *mtd = nand_to_mtd(chip);
> @@ -1598,12 +1574,40 @@ static int imxnd_create_bbt(struct nand_chip *chip)
>  
>  	for (i = 0; i < numblocks; ++i) {
>  		loff_t ofs = i << chip->bbt_erase_shift;
> +		uint8_t buf[mtd->writesize + mtd->oobsize];
> +		struct mtd_oob_ops ops = {
> +			.mode = MTD_OPS_RAW,
> +			.ooboffs = 0,
> +			.datbuf = buf,
> +			.len = mtd->writesize,
> +			.oobbuf = buf + mtd->writesize,
> +			.ooblen = mtd->oobsize,
> +		};
>  
> -		ret = checkbad(chip, ofs);
> -		if (ret < 0)
> +		ret = mtd_read_oob(mtd, ofs, &ops);
> +		if (ret < 0) {
> +			dev_err(mtd->dev.parent, "Failed to read page at 0x%08x\n", (unsigned int)ofs);
>  			goto out;
> +		}
>  
> -		if (ret) {
> +		/*
> +		 * Automatically adding a BBT based on factory BBTs is only
> +		 * sensible if the NAND is pristine. Abort if the first page
> +		 * looks like a bootloader or UBI block.
> +		 */
> +		if (ofs == 0 && is_barebox_arm_head(buf)) {
> +			dev_err(mtd->dev.parent, "Flash seems to contain a barebox image, refusing\n");
> +			ret = -EINVAL;
> +			goto out;
> +		}
> +
> +		if (ofs == 0 && !memcmp(buf, "UBI#", 4)) {
> +			dev_err(mtd->dev.parent, "Flash seems to contain a UBI, refusing\n");
> +			ret = -EINVAL;
> +			goto out;
> +		}
> +
> +		if (buf[2000] != 0xff) {
>  			bbt[i >> 2] |= 0x03 << (2 * (i & 0x3));
>  			dev_info(mtd->dev.parent, "Bad eraseblock %d at 0x%08x\n",
>  				 i, (unsigned int)ofs);

Could you add the new code to checkbad() instead of inlining it? That
way it seems easier to adjust the code in case we have to change the way
how we detect useful data on a page. Rename checkbad() in case the name
doesn't feel appropriate anymore.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


