Delivery-date: Tue, 25 May 2021 09:18:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRKx-0008BL-DX
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:18:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRKw-0002zG-Ip
	for lore@pengutronix.de; Tue, 25 May 2021 09:18:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0dq2oROAd9P+LKr1H4AKkgGvtbFxrkV7ak0NcJmxhsI=; b=qRYzW0ZKZkC72kbhxm7BtbVgX6
	cAX1MGFAQotkFkX6514+6h2qCqVgwLv6NgPdi+zMoU7Hkg/q1mFUueglNWmgs5hfJq/haEh166j/j
	dbS7liT3RHT04avP0Pgtu2yH+9Rb9pS+SlqeAxNjXzk5RlASF/eI6FL6dg4Ko6YuU5E80QhJu9Uuq
	+9uNBGKgrr0bbyLK5W8gQ3bj2acBP7y4CZRe6mYOaxEoB6ppndpQ4//rcw8FnEj3I7cvuTedcLnAY
	1e+XMITY5nlKpgthQf0657aVM4yIQIlkYgN3D/Ap222flQCEvjHjLxLmipvsVbkNcy7qAwR9kSy8p
	K7mpBUpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRJm-003p2K-DM; Tue, 25 May 2021 07:17:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRJh-003p1S-Qd
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:17:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llRJg-0002ss-IR; Tue, 25 May 2021 09:17:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llRJf-0006Cs-Vm; Tue, 25 May 2021 09:17:27 +0200
Date: Tue, 25 May 2021 09:17:27 +0200
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Michael Graichen <michael.graichen@hotmail.com>,
 barebox@lists.infradead.org
Message-ID: <20210525071727.GQ19819@pengutronix.de>
References: <AM9P192MB0870DC1573A4088BB839A208AB2C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <20210519073855.2748231-1-m.tretter@pengutronix.de>
 <20210519073855.2748231-2-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519073855.2748231-2-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:17:00 up 96 days, 10:40, 105 users,  load average: 1.49, 0.54,
 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_001729_883412_297240D8 
X-CRM114-Status: GOOD (  23.76  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] mci: arasan: configure data transfer only if we
 actually have data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 19, 2021 at 09:38:55AM +0200, Michael Tretter wrote:
> If we don't have any data to transfer, we must not set the block size
> and block count.
> 
> If data is NULL, accessing data to get the block size and block count is
> a NULL pointer dereference.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/mci/arasan-sdhci.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index 399966e8cf10..3d738774e825 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -283,10 +283,12 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);
>  
>  	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
> -	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
> -	sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
> -			    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
> -	sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
> +	if (data) {
> +		sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
> +		sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE,
> +			      SDHCI_DMA_BOUNDARY_512K | SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
> +		sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
> +	}

I also stumbled upon this already. Applied, thanks

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

