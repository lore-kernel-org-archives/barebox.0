Delivery-date: Mon, 04 Oct 2021 13:06:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLnx-0005Xm-9v
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:06:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLnw-0007PQ-95
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:06:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kQWXB9RJtq9ntIGPOlyMmgDxT8akjPgGhmRU5NeCQ4c=; b=ZO2tI5QWUg3UF/If4dwUNY+6fG
	kx5AapWSG/y3akiJu07zrlEZYVKCzjZ92lo8t5su9moyMKO/B52S7113fFkO+AEfS2F43cPdGskM3
	dGhnSTPFlv+HQn3er6qeNTBA5MbXGN612HgDdj2ZiMUdls2h7KOcNJzuBOOlf64XdTRPSofFDVhik
	QJlq+AbxVTgdUyX1G4HFTNxxvVLnw9Rd5BGMAeU0iC/bz5EBADexvNA+d74jG0maxPPRyg9imjyiz
	KJxsvG53q0YMCn3GOkmx0R7EekM+5B+ymQKsBs4qSSwHPPrY8IVIVMAhYXNQ9yiZy95onj+ScUQVc
	DYUPA68A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXLmc-0064T0-P6; Mon, 04 Oct 2021 11:05:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXLmY-0064SH-0z
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:05:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXLmW-0007D4-Jm; Mon, 04 Oct 2021 13:05:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXLmW-0002KH-As; Mon, 04 Oct 2021 13:05:16 +0200
Date: Mon, 4 Oct 2021 13:05:16 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211004110516.GV28453@pengutronix.de>
References: <20210831064715.8392-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210831064715.8392-1-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:05:04 up 228 days, 14:28, 143 users,  load average: 0.13, 0.36,
 0.32
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_040518_091698_5DF55C76 
X-CRM114-Status: GOOD (  26.96  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] mci: sdhci: fix big-endian write for blockcount/size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 31, 2021 at 08:47:15AM +0200, Steffen Trumtrar wrote:
> From: Steffen Trumtrar <str@pengutronix.de>
> 
> The patch
> 
>     0a47bce1b03fd236384e904dca005c0870ce8684
>     mci: imx-esdhc: Use common DMA helpers
> 
> converted the imx-esdhc driver to use the DMA helpers introduced with
> 
>     60b608b2714472aa22862a20d04f267cbbac0863
>     mci: sdhci: Add DMA transfer helpers
> 
> The common DMA helpers however break support for BE-variants (e.g.
> Layerscape) as the BLKATTR register seems to be a 32-bit register which
> internally switches bytes when used with two 16-bit write accesses.
> As the alignment should also work for LE-SDHCI-variants convert the two
> 16-bit accesses to one 32-bit access.
> 
> Signed-off-by: Steffen Trumtrar <str@pengutronix.de>
> ---
>  drivers/mci/sdhci.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index aca4a5a6f911..8b5520d6827a 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -129,9 +129,8 @@ void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data)
>  	if (!data)
>  		return;
>  
> -	sdhci_write16(sdhci, SDHCI_BLOCK_SIZE, sdhci->sdma_boundary |
> -		    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
> -	sdhci_write16(sdhci, SDHCI_BLOCK_COUNT, data->blocks);
> +	sdhci_write32(sdhci, SDHCI_BLOCK_SIZE, sdhci->sdma_boundary |
> +		      SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize) | data->blocks << 16);
>  }
>  
>  void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
> -- 
> 2.30.2
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

