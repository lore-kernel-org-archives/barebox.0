Delivery-date: Wed, 11 May 2022 08:47:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nog8T-009K19-94
	for lore@lore.pengutronix.de; Wed, 11 May 2022 08:47:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nog8R-0006Gm-N7
	for lore@pengutronix.de; Wed, 11 May 2022 08:47:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQCMjFkH0HCDiKBW4lL5nkRvxQdqPNjIiYogk6j93SM=; b=FzV1jEkOUdLOT2
	Gj31omKwywDdUwGL51OJJfSJKi7cioWPEzoaUbEu9tSnUZqRSbcnRs80emL5/BcmmciWZpRlaLBIH
	1a9/zYk8q9gZXjcSWHfnAdoBIYMP8H6gsPfDMtvyzb2zlEre4n4wTM1nrPoz4+VcrbpTHo5ffyVgw
	St+xzzXMyIwp+koCd6+BdIDyAQbPZ/SQ/jQAwPV3A500IFxT/0G8Xq2MXAc1NKckYryVVih54uMcG
	o6+t1dtsO/7XTG1G9ACpSVgzKiee/LI4WZ10FpO09CSOV1VIvCH0+3J0EwPWN7eVn3ZXioq8+G5HX
	l7UOedx+JaPuh5+JzWGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nog7E-005WtU-2c; Wed, 11 May 2022 06:46:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nog78-005Ws3-R7
 for barebox@lists.infradead.org; Wed, 11 May 2022 06:46:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nog77-0005wt-Gz; Wed, 11 May 2022 08:46:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nog77-0007HU-80; Wed, 11 May 2022 08:46:25 +0200
Date: Wed, 11 May 2022 08:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220511064625.GK4012@pengutronix.de>
References: <20220505144440.29188-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220505144440.29188-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:46:16 up 41 days, 19:15, 68 users,  load average: 0.10, 0.12, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_234626_910543_E1B59AB3 
X-CRM114-Status: GOOD (  23.65  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ata: ahci: use correct macro when calculating offsets in
 dma memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 05, 2022 at 05:44:40PM +0300, Denis Orlov wrote:
> The macro that indicates the size of a single element in the command
> list was incorrectly used instead of the macro that stands for the size
> of the whole list.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/ata/ahci.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index f707efb50f..eb9e1bd133 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -310,15 +310,15 @@ static int ahci_init_port(struct ahci_port *ahci_port)
>  	/*
>  	 * Second item: Received-FIS area
>  	 */
> -	ahci_port->rx_fis = mem + AHCI_CMD_SLOT_SZ;
> -	ahci_port->rx_fis_dma = mem_dma + AHCI_CMD_SLOT_SZ;
> +	ahci_port->rx_fis = mem + AHCI_CMD_LIST_SZ;
> +	ahci_port->rx_fis_dma = mem_dma + AHCI_CMD_LIST_SZ;
>  
>  	/*
>  	 * Third item: data area for storing a single command
>  	 * and its scatter-gather table
>  	 */
> -	ahci_port->cmd_tbl = mem + AHCI_CMD_SLOT_SZ + AHCI_RX_FIS_SZ;
> -	ahci_port->cmd_tbl_dma = mem_dma + AHCI_CMD_SLOT_SZ + AHCI_RX_FIS_SZ;
> +	ahci_port->cmd_tbl = mem + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
> +	ahci_port->cmd_tbl_dma = mem_dma + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
>  
>  	ahci_port_debug(ahci_port, "cmd_tbl = 0x%p (0x%pa)\n",
>  			ahci_port->cmd_tbl, ahci_port->cmd_tbl_dma);
> -- 
> 2.20.1
> 
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

