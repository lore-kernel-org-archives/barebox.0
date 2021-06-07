Delivery-date: Mon, 07 Jun 2021 08:53:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq98e-0000OI-EZ
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 08:53:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq98Z-0007aL-U2
	for lore@pengutronix.de; Mon, 07 Jun 2021 08:53:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VFDJ+hH+edeY4Y+poVvkHMDS0PFTagsuPh3KOwmIQI4=; b=rtea4BtWxhhOWRBNyJWqrG5hPW
	e+sYGWCarEA8HNU7YZ5Z/aoEYRv40cqwk/UdcgdAwQ1YKi1f3vTTJnfRTEZDsdM32ZqQgArVIOsXg
	TGPDwsBfjJW+MZvlUGJDjm01UNHaad+6Nyken8HRaoBATxCQJ/mPqSz1Fq/Nl/H44KKZNb6wtjWUM
	a9ydE92EVQOyXQJHZE1I3XvNz7arSJu3rbAAosYwu2PG/H23Debt6ilrHZF8hPKXm+4MISd/t6m83
	bstj2x6YHU5O5Kj1ykFewLMhgK4Q20oGp0137ehHoCjRkcTS44N9nhz3ZoWECe0uUVVKFvcgwRf24
	59dZ+c4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq972-001onW-Gt; Mon, 07 Jun 2021 06:51:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq96v-001om1-1y
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 06:51:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lq96s-0007Uu-Sy; Mon, 07 Jun 2021 08:51:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lq96s-0003J5-JF; Mon, 07 Jun 2021 08:51:42 +0200
Date: Mon, 7 Jun 2021 08:51:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210607065142.GD26174@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
 <20210531073821.15257-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531073821.15257-5-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:48:19 up 109 days, 10:12, 89 users,  load average: 0.07, 0.10,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_235145_129827_A6DE7CED 
X-CRM114-Status: GOOD (  24.58  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/20] mtd: spi-nor: cadence: fix 64-bit issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 09:38:05AM +0200, Ahmad Fatoum wrote:
> Pointers are being cast to unsigned int, which will truncate the address
> on 64-bit systems. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mtd/spi-nor/cadence-quadspi.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
> index ea53d2cd847a..09015aad43f1 100644
> --- a/drivers/mtd/spi-nor/cadence-quadspi.c
> +++ b/drivers/mtd/spi-nor/cadence-quadspi.c
> @@ -347,8 +347,8 @@ static int cqspi_command_read(struct spi_nor *nor,
>  
>  	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || rxbuf == NULL) {
>  		dev_err(nor->dev,
> -			"Invalid input argument, len %d rxbuf 0x%08x\n", n_rx,
> -			(unsigned int)rxbuf);
> +			"Invalid input argument, len %d rxbuf %p\n", n_rx,
> +			rxbuf);
>  		return -EINVAL;
>  	}
>  
> @@ -393,8 +393,8 @@ static __maybe_unused int cqspi_command_write(struct spi_nor *nor,
>  
>  	if (n_tx > 4 || (n_tx && txbuf == NULL)) {
>  		dev_err(nor->dev,
> -			"Invalid input argument, cmdlen %d txbuf 0x%08x\n",
> -			n_tx, (unsigned int)txbuf);
> +			"Invalid input argument, cmdlen %d txbuf %p\n",
> +			n_tx, txbuf);
>  		return -EINVAL;
>  	}
>  
> @@ -433,7 +433,7 @@ static int cqspi_indirect_read_setup(struct spi_nor *nor,
>  {
>  	struct cqspi_flash_pdata *f_pdata;
>  	struct cqspi_st *cqspi = nor->priv;
> -	unsigned int ahb_base = (unsigned int) cqspi->ahb_base;
> +	unsigned long ahb_base = (unsigned long) cqspi->ahb_base;

This makes the warning disappear, but not the underlying problem. The
ahb_base is written to a 32bit register later, so this won't work on
machines which have memory outside the 32bit range.
We had this problem earlier. What did we do there? I think we should
warn when this happens.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

