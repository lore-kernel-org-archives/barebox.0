Delivery-date: Tue, 21 Jun 2022 09:48:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Ycb-0091Ck-JB
	for lore@lore.pengutronix.de; Tue, 21 Jun 2022 09:48:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Ycb-000392-Bn
	for lore@pengutronix.de; Tue, 21 Jun 2022 09:48:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hZR+z/ahk9mfFtJOfaiW896zCIclVNxAQNVXlxyZK2I=; b=e1RlYbLW2afaRr4R5bEVP7e992
	ItCldTDeh8THOTAhz+f+JKoCft9CmjxYoAJHQPdUgYBzdgmGQCL5on2zpUzAE5Q3L6LEQCM06Dq3L
	mb/B85/gjF+q4iKxmWKGgM/djsPtzaxa9ZTpruxjhKYKfw++y9OSsySaNWz/lLfTh0BD6HSoQfiPe
	MEDGtVPcbJCDx5RsgfjX1d5D42qpjw2UqOOAsrwC5YVhCKmdjKdhExzCGqDja2GWq6VCCz3yk2IKT
	KHo5cdAXoVjvV03GtPrL18it9ussG/Z9zD0kpesLYCC7Hu+0vsbAhUCp2vnL6bdRL9+QO+xkySE4i
	lBAMrH/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Yb8-004BTe-DI; Tue, 21 Jun 2022 07:46:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Yb3-004BPz-JB
	for barebox@lists.infradead.org; Tue, 21 Jun 2022 07:46:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Yb0-00035d-1H; Tue, 21 Jun 2022 09:46:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Yaz-0003uo-Bs; Tue, 21 Jun 2022 09:46:45 +0200
Date: Tue, 21 Jun 2022 09:46:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: Barebox <barebox@lists.infradead.org>,
	Andrey Smirnov <andrew.smirnov@gmail.com>
Message-ID: <20220621074645.GS1615@pengutronix.de>
References: <28eba28ad8f42919edb1aee4e4303a96@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <28eba28ad8f42919edb1aee4e4303a96@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_004649_680419_A749C925 
X-CRM114-Status: GOOD (  28.45  )
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
Subject: Re: Boot hangs during sdhci_transfer_data_dma
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Robin,

On Mon, Jun 20, 2022 at 04:33:02PM +0200, Robin van der Gracht wrote:
> Hi,
> 
> Today I tried to run barebox with CONFIG_KEYBOARD_GPIO=y added to my config.
> and noticed my board hangs during boot. When I modify the probe function to
> run without registering the poller[1] it boots as expected.
> 
> I started digging into the code to see how far the boot gets when I do
> register the poller. I found that Barebox hangs in a do/while loop in
> sdhci_transfer_data_dma[2].
> 
> The contents of the interrupt status (SDHCI_INT_STATUS) is 0 and stays that
> way forever trapping the process in the loop.
> 
> Call stack:
> 
> initcall -> barebox_of_populate
>   state_probe                                          drivers/misc/state.c
>     state_new_from_node                                common/state/state.c
>       of_find_path_by_node                             drivers/of/of_path.c
>         __of_find_path                                 drivers/of/of_path.c
>           device_detect                                drivers/base/driver.c
>             mci_detect_card                            drivers/mci/mci-core.c
>               mci_card_probe                           drivers/mci/mci-core.c
>                 mci_startup                            drivers/mci/mci-core.c
>                   mci_startup_mmc                      drivers/mci/mci-core.c
>                     mmc_compare_ext_csds               drivers/mci/mci-core.c
>                       mci_send_ext_csd                 drivers/mci/mci-core.c
>                         mci_send_cmd                   drivers/mci/mci-core.c
>                           esdhc_send_cmd
> drivers/mci/imx-esdhc.c
>                             __esdhc_send_cmd
> drivers/mci/imx-esdhc-common.c
>                               sdhci_transfer_data_dma  drivers/mci/sdhci.c
> 
> 
> I'm not sure how this happens. It's not the first transfer taking place. I
> figured that mayby the poller[1] just adds some cpu load that opens up a
> window for this to occur.
> 
> Maybe something else cleared the status register right before we entered the
> loop. Thats when I spotted this read/write construction[3]. It's executed
> right before we enter the do/while loop and (over)writes to the irq status
> register.
> 
> I removed the line with the write command[3] and my board boots as expected.
> Why are we (over)writing the status register right after reading it?

The idea is likely that we clear the interrupts that we just handled. It
seems by the time the status register is overwritten the DMA transfer is
already ongoing, and in your case even already done. We should only ever
clear the bits we have handled, like sdhci_transfer_data_dma() does with

	sdhci_write32(sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);

Apart from this line the code never checks the same bit twice, so
clearing anything shoudn't be necessary. Clearing the status register
once either at the start or the end of the function should be enough.

I think the right thing to do is just to remove the erroneous status
register write like you already did.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


