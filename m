Delivery-date: Wed, 17 Mar 2021 10:42:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMSh8-00048C-Qh
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 10:42:26 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMSh6-0000Qx-UD
	for lore@pengutronix.de; Wed, 17 Mar 2021 10:42:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jh95uaN0dZs1vKz56e57XZHiKu1uN/OHdETo3LU6skY=; b=FEjuncHmayiOEpKRrVCYrLoKa
	sK/61IXRjZeCBBk7YRj6Rpg7sKLIkNnIgi4bA5qJHbTJvudCVd6QzQCxIpbu+yb3uu2EyAdtdY4XR
	Bi69yanQHDNVnqm7DsTWketQKlOFHVqoeo+CnojRuerExsw3iJDKH12pN2RdG7OX04s3ayoAe/EN7
	U7txWkdtjxdJ6n3fiRgeyOxJgXmGKZADw/m8F10YlgkfuvdcNZGMUvJuc+KYy62jHIN4CKYifMqEM
	syNRxGQLdXa1EUbeMOVgFCs0Jr/AUqVgZmnsFYtl9yLNg6E72Yr1GaWL6oK0lCnP0WKjV2gb7dQ8K
	/gjHobcwA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMSg0-002sAh-OE; Wed, 17 Mar 2021 09:41:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMSfr-002sAF-UF
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 09:41:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMSfr-0000DT-AF; Wed, 17 Mar 2021 10:41:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMSfr-0002vj-0m; Wed, 17 Mar 2021 10:41:07 +0100
Date: Wed, 17 Mar 2021 10:41:07 +0100
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210317094106.GZ23724@pengutronix.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
 <20210316123626.25872-2-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316123626.25872-2-s.riedmueller@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:40:02 up 27 days, 13:03, 83 users,  load average: 0.06, 0.11, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_094108_369292_FEE49F4F 
X-CRM114-Status: GOOD (  26.38  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for
 the BBT in NAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Stefan,

On Tue, Mar 16, 2021 at 01:36:26PM +0100, Stefan Riedmueller wrote:
> The blocks containing the bad block table can become bad as well. So
> make sure to skip any blocks that are marked bad when searching for the
> bad block table.

The file is a more or less direct copy from the kernel. Does the problem
exist in the kernel as well?

Sascha

> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  drivers/mtd/nand/nand_bbt.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
> index a86b5b2da38e..0b48373e6a0b 100644
> --- a/drivers/mtd/nand/nand_bbt.c
> +++ b/drivers/mtd/nand/nand_bbt.c
> @@ -528,6 +528,7 @@ static int search_bbt(struct nand_chip *this, uint8_t *buf,
>  {
>  	u64 targetsize = nanddev_target_size(&this->base);
>  	struct mtd_info *mtd = nand_to_mtd(this);
> +	struct nand_bbt_descr *bd = this->badblock_pattern;
>  	int i, chips;
>  	int startblock, block, dir;
>  	int scanlen = mtd->writesize + mtd->oobsize;
> @@ -563,6 +564,9 @@ static int search_bbt(struct nand_chip *this, uint8_t *buf,
>  			int actblock = startblock + dir * block;
>  			loff_t offs = (loff_t)actblock << this->bbt_erase_shift;
>  
> +			/* Check if block is marked bad */
> +			if (scan_block_fast(this, bd, offs, buf))
> +				continue;
>  			/* Read first page */
>  			scan_read(this, buf, offs, mtd->writesize, td);
>  			if (!check_pattern(buf, scanlen, mtd->writesize, td)) {
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

