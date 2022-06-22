Delivery-date: Wed, 22 Jun 2022 09:52:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3vAG-00AGj5-Vh
	for lore@lore.pengutronix.de; Wed, 22 Jun 2022 09:52:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3vAG-0001U7-W3
	for lore@pengutronix.de; Wed, 22 Jun 2022 09:52:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lN7l7YR3OvDnK55bGis8Rjq+IH+7r8KQCxnKmKG0Wmw=; b=sreVMYJu82Z+txCp/CLiumPDhT
	OPnDJyXY9pd7YEzEg3JonWrmA59FsA5bCDTIabv+z/WfE517xlMwgm3v3NxeYV5Hr8zRhw7yn7VLB
	gDCnjrMz8tlF4ULUC5uGRMC5NtG/VMKdir7Bc6SB6q4ipQd2WZ0EVqk3LzZ2KqLCKCDeE/58uSvMx
	OjwlU3smYTIr+GT3T4t+5yT2noG3xrlfTu5VbUDxGVLMFjCVcAR4NrhEP9l5csjTSVvgWD6qsVtR1
	D8pmpZUWnUbSBfJsspOHkkjDV9SYyS/34AkLq3bcTqP0pMYoYA2/eWlQ/sGZSogf0+7qYAPa3T8OQ
	otUrsydA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3v8p-0097Xb-4J; Wed, 22 Jun 2022 07:51:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3v8k-0097Wp-HE
	for barebox@lists.infradead.org; Wed, 22 Jun 2022 07:51:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3v8i-0001GJ-7F; Wed, 22 Jun 2022 09:51:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3v8h-000177-Jj; Wed, 22 Jun 2022 09:51:03 +0200
Date: Wed, 22 Jun 2022 09:51:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: Barebox <barebox@lists.infradead.org>,
	Andrey Smirnov <andrew.smirnov@gmail.com>
Message-ID: <20220622075103.GV1615@pengutronix.de>
References: <20220621101529.554322-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220621101529.554322-1-robin@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_005106_611309_6576F1C9 
X-CRM114-Status: GOOD (  23.33  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: imx-esdhc-common: Don't clear unhandled status bits
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 21, 2022 at 12:15:29PM +0200, Robin van der Gracht wrote:
> A DMA cmd + data transfer can finish or stop (i.e. on a block gap) before
> the status register is cleared. In that case we'll lose track of state
> causing sdhci_transfer_data_dma() to loop forever waiting for status bits
> that are already cleared.
> 
> Clearing SDHCI_INT_CMD_COMPLETE should suffice here. Since it's not
> evaluated a second time, clearing it at the start of the function is
> sufficient so we can just remove the erroneous status write.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  drivers/mci/imx-esdhc-common.c | 1 -
>  1 file changed, 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
> index a12db43c88..27293e44b7 100644
> --- a/drivers/mci/imx-esdhc-common.c
> +++ b/drivers/mci/imx-esdhc-common.c
> @@ -176,7 +176,6 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
>  	}
>  
>  	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
> -	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, irqstat);
>  
>  	if (irqstat & CMD_ERR)
>  		return -EIO;
> -- 
> 2.34.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


