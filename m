Delivery-date: Mon, 17 May 2021 08:41:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liWwb-0000H2-JF
	for lore@lore.pengutronix.de; Mon, 17 May 2021 08:41:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liWwa-0007dO-SE
	for lore@pengutronix.de; Mon, 17 May 2021 08:41:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IppKSsqlHg1pDmBC1GB3zXg8JaUN0B9eyOnZ3Vhughg=; b=NaMjiTXwhU/eGoEDESCFmlLFc
	BIxLED2dcVlHxh6MjVltbFwk2YZ7Du63sLbEhy3/owsjKf0p5QpAhPBK2s6jlbiP9CBrPeDj6vVuy
	0O5VrSxWKZGxEI1ctHQl9zSYjISn5XsQaFLv9gCINAnjodW3JalQPQDS5saXdTwo17BL1DpiW+zBE
	MaSat4JYe0VL1jc16oJ5qv7ADFUKweSEu38/5ZDrB3eFUrLI+rmDsBpFWfLphOzFYzJkWweVnTAzb
	oz/ORRdxk2jEELJP2xCD8tAhu4AmzFtIjUOHP1EheYPImERE1xKZXm8W9RDmePmh23QDbkWuA9HAi
	Zd4m+1cwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liWuh-00Dvhu-VX; Mon, 17 May 2021 06:39:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liWuZ-00Dvgm-6F
 for barebox@desiato.infradead.org; Mon, 17 May 2021 06:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QkQDxKaxVA+aGkQyoViQZt1k62LHGcW/0vZjiF0LPfc=; b=JlUeVS6zpnylCD9ZHyFEg3Se/X
 Rg1Ul9WlgvhBspK+1RUgZhRUWd2FdjNm9yzT/GDf7g4xENPEDkpqPD1HKpVt676sI8HHwqzj+vQhj
 Bei80x7lNcw1OIJPM5o+kq4pS+OZ7oq2T4haFHNDoQnqqTyEv1zXDCzLpGNATYCrFTfwMUF0ppoXi
 wAOZWI+LNJG/fC6y+FFuykkedeo3hCkQnDOlq5If8pwaD9yRyHa1sx16y4sco5X9ttKzdjM+1isKs
 2cRgC/fVHVeQyuJdW+kqGV0kyDpx808+wT5OXfibdDwkSBWSvBLXNtuR4pTVj11m9mVSIGkS3fn29
 i/8QHmtA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liWuV-00DWFo-VU
 for barebox@lists.infradead.org; Mon, 17 May 2021 06:39:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liWuS-0007FQ-Uy; Mon, 17 May 2021 08:39:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liWuS-00014B-Ls; Mon, 17 May 2021 08:39:24 +0200
Date: Mon, 17 May 2021 08:39:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20210517063924.GE31738@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
 <20210427202309.32077-11-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427202309.32077-11-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:37:17 up 88 days, 10:01, 88 users,  load average: 0.41, 0.24, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_233928_037340_EFA9FF29 
X-CRM114-Status: GOOD (  26.44  )
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
Subject: Re: [PATCH 11/12] net: macb: add SiFive support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 27, 2021 at 10:23:08PM +0200, Ahmad Fatoum wrote:
> The Ethernet controller on the SiFive SoCs needs some special TX clock
> setup. Port the relevant Linux v5.12 bits to enable it.
> 
> Tested on qemu-system-riscv64 -M sifive_u with dhcp.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/macb.c | 113 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 113 insertions(+)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 14a0b45322bf..9c4fdbd5bc4f 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -52,6 +52,17 @@
>  #define TX_RING_BYTES		(sizeof(struct macb_dma_desc) * TX_RING_SIZE)
>  #define GEM_Q1_DESC_BYTES	(sizeof(struct macb_dma_desc) * GEM_Q1_DESCS)
>  
> +/* This structure is only used for MACB on SiFive FU540 devices */
> +struct sifive_fu540_macb_mgmt {
> +	void __iomem *reg;
> +	unsigned long rate;
> +	struct clk clk;
> +};
> +
> +struct macb_config {
> +	int (*txclk_init)(struct device_d *dev, struct clk **tx_clk);
> +};
> +
>  struct macb_device {
>  	void			__iomem *regs;
>  
> @@ -666,12 +677,101 @@ static void macb_init_rx_buffer_size(struct macb_device *bp, size_t size)
>  		   size, bp->rx_buffer_size);
>  }
>  
> +static struct sifive_fu540_macb_mgmt *mgmt;
> +
> +static unsigned long fu540_macb_tx_recalc_rate(struct clk *clk,
> +					       unsigned long parent_rate)
> +{
> +	return mgmt->rate;
> +}

Unfortunately I had to drop this one. The macb driver is used by some of
the old at91 configs which have their own clk implementation. Among
other things there is no recalc_rate hook.

Can we place the clk code inside a #ifdef CONFIG_COMMON_CLK?

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

