Delivery-date: Thu, 30 Mar 2023 16:54:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phtfd-002pMt-Pt
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 16:54:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phtfd-0004kl-8y
	for lore@pengutronix.de; Thu, 30 Mar 2023 16:54:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0h6BSltP5/7iXk22oxpyhHhHo9zSiqXxoOLmq9lYWvg=; b=AGN6AQdQOk+J3jzib55pHn7rJ8
	QQR5wk3stNCwuKhIyRwidY1Nmvso28LQEiE70TeS6Gx3X/bIS836sSqCOHbH/6c4290CxfBqE10C6
	Ww7LEkTgOiMrZyD0dT1JWVFudj+uXwYCFj9s5++uZk63bA5SSFLOJYstXIksxmsvYQjID3puVnj0J
	vhNvYvCpPEoSvXiLqe71RXJNgEZ9UST2F4dkHZibHtNbwHLPZNFdi1cUEgNxj2X4cja7QxNLX3/YK
	o2V81nbtGIe3kEBOkNzq6z9gG+mdB7mEpzSvdVq8L+d72yg8anPn7OTVVXSahAHgUAa8UwIAUu1vJ
	JnxsLEng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phteP-0048qv-0f;
	Thu, 30 Mar 2023 14:53:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phteK-0048qY-2A
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 14:53:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <pza@pengutronix.de>)
	id 1phteI-0004gB-5w
	for barebox@lists.infradead.org; Thu, 30 Mar 2023 16:53:10 +0200
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <pza@pengutronix.de>)
	id 1phteH-00024v-V2
	for barebox@lists.infradead.org; Thu, 30 Mar 2023 16:53:09 +0200
Date: Thu, 30 Mar 2023 16:53:09 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20230330145309.GA7856@pengutronix.de>
References: <20230330103359.2751080-1-p.zabel@pengutronix.de>
 <20230330103359.2751080-2-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230330103359.2751080-2-p.zabel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_075313_057776_C25BC1FA 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] spi: stm32: support per-transfer bits per word
 switching
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 30, 2023 at 12:33:57PM +0200, Philipp Zabel wrote:
> Allow dynamically switching data size between transfers.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/spi/stm32_spi.c | 50 ++++++++++++++++++++++++++++++++---------
>  1 file changed, 39 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
> index 0d7407c279a2..1ac86fbe11e6 100644
> --- a/drivers/spi/stm32_spi.c
> +++ b/drivers/spi/stm32_spi.c
[...]
> @@ -543,6 +570,7 @@ static int stm32_spi_probe(struct device *dev)
>  	master->transfer = stm32_spi_transfer;
>  	master->mem_ops = &stm32_spi_mem_ops;
>  
> +	master->bits_per_word_mask = stm32_spi_get_bpw_mask(priv);

This has to be moved down a few lines, after the clock is enabled and
the device is reset. I'll fix this in v2.

regards
Philipp


