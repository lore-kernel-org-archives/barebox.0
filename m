Delivery-date: Mon, 14 Aug 2023 14:59:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVXAC-003lcy-DU
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 14:59:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVXAA-0003z5-ID
	for lore@pengutronix.de; Mon, 14 Aug 2023 14:59:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EgMUN/2NNlrdda6yCV1EG4q24Zi+pSJgPFlgJTbEfSM=; b=apJLEjzSx/2S8Z9CfDsWyTQuEA
	SqSzvJPMiZh5LoLdov0so3cZr0qHfD/nutR6mfIbU/LEADMDaX9A9SuRDqche4gE1k7VNe8PnKTQE
	EKSCFAO2xhwzPtimoRNcxuslNU2K2qkMhXOl81L0P0ZBdiwleiTuk/TIaazCXJOC/QMa02xqWi1Dx
	UyFNzKpBin3qgEQNrWMNoGO/0dmxbsMCyukr9M3cR30dwnCzBscmU5TOGGd4hGa/kb6Csh5xI7vjv
	AWF+IdTd3/kgHMouefG7w6gCtzWgVfOCNC5d0gdp+cRJ5tv8D5b2wW9mFMvkFNW40K9OcHI6wjZyK
	vvjdcohA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVX8y-00H5hB-2Z;
	Mon, 14 Aug 2023 12:58:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVX8v-00H5gr-2n
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 12:57:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVX8u-0003q2-Ez; Mon, 14 Aug 2023 14:57:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVX8t-0000CL-RC; Mon, 14 Aug 2023 14:57:55 +0200
Date: Mon, 14 Aug 2023 14:57:55 +0200
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20230814125755.GC26314@pengutronix.de>
References: <20230812074859.1755-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230812074859.1755-1-jmaselbas@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_055757_902735_5AAAD233 
X-CRM114-Status: GOOD (  19.75  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/5] mtd: spi-nor: Add SPI_NOR_QUAD_WRITE hwcap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Aug 12, 2023 at 09:48:20AM +0200, Jules Maselbas wrote:
> From: Jules Maselbas <jmaselbas@kalray.eu>
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 8f6726ca4b..2c46bb2b10 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -83,6 +83,7 @@ struct flash_info {
>  #define USE_CLSR		BIT(14)	/* use CLSR command */
>  #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
>  #define UNLOCK_GLOBAL_BLOCK	BIT(16)	/* Unlock global block protection */
> +#define SPI_NOR_QUAD_WRITE	BIT(17)	/* Flash supports Quad Write */
>  };
>  
>  enum spi_nor_read_command_index {
> @@ -1166,6 +1167,13 @@ static int spi_nor_init_params(struct spi_nor *nor,
>  	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP],
>  				SPINOR_OP_PP, SNOR_PROTO_1_1_1);
>  
> +	if (info->flags & SPI_NOR_QUAD_WRITE) {
> +		params->hwcaps.mask |= SNOR_HWCAPS_PP_1_1_4;
> +		spi_nor_set_pp_settings(
> +				&params->page_programs[SNOR_CMD_PP_1_1_4],
> +				SPINOR_OP_PP_1_1_4, SNOR_PROTO_1_1_4);
> +	}
> +
>  	if (info->flags & UNLOCK_GLOBAL_BLOCK) {
>  		int err;
>  
> -- 
> 2.41.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


