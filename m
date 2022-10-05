Delivery-date: Wed, 05 Oct 2022 08:59:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofyMu-006U0P-7T
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 08:59:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofyMs-0007eB-V1
	for lore@pengutronix.de; Wed, 05 Oct 2022 08:58:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8nV+q+YtYHfuoITuOPqtzGVzpE/AgA2d39HOlTcRKn8=; b=IDx3/NxAkTS0DLj1jlly9lSigl
	MD+0ttPJXmpijKQ/fFntHeWj3qevu1mcRJ6XUNfQr0kaLNcwYjHBJjIW7JYPwa5IADBlRIyt6pPja
	EeT701BEADIul5q1ZDf9NwlODGSNFYK8syJTeP076ppmjQN+UgOtuQG3mN41vu8eqHKD2nIy4vv9S
	lw86pGqsXXdBV66oZE2fESAkQ7sLtytj4mJ1KCfbD5S3JN9ClrhPDKqYGMdNARBu7ARUOVRY7beAs
	4p0Oudqsx8szob33IkulG7t3QgDOfOz2WMpQYGqPdnnKDmgTTU2Yz35dFIszGGMKesnJJidVm+3OX
	v7Su/Bhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofyLT-00Cjgb-3a; Wed, 05 Oct 2022 06:57:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofyLO-00CjfO-H2
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 06:57:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofyLN-0007a4-2n; Wed, 05 Oct 2022 08:57:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofyLM-0005yc-Rs; Wed, 05 Oct 2022 08:57:24 +0200
Date: Wed, 5 Oct 2022 08:57:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221005065724.GQ986@pengutronix.de>
References: <20221004160112.183814-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221004160112.183814-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_235726_580535_1F67A0B7 
X-CRM114-Status: GOOD (  22.88  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Revert "mci: bcm2835: reset host controller on
 barebox shutdown"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 04, 2022 at 06:01:12PM +0200, Ahmad Fatoum wrote:
> The patch is wrong and issue is still reproducible with it. We have no
> alternate fix yet, but drop the non-functional fix until we do.
> 
> This reverts commit c7428c02d72d1c74295226e7c9483e0f62f6a2aa.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Issue is spurious, which suggests to me that it's related to:
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/1495126660-25044-1-git-send-email-srinath.mannam@broadcom.com/#20487621
> 
> Haven't found a proper solution yet though.
> ---
>  drivers/mci/mci-bcm2835.c | 12 ------------
>  1 file changed, 12 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index c5b226ba033c..f092156f9a83 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -385,8 +385,6 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
>  	host->sdhci.read32 = bcm2835_sdhci_read32;
>  	host->sdhci.write32 = bcm2835_sdhci_write32;
>  
> -	hw_dev->priv = host;
> -
>  	mci_of_parse(&host->mci);
>  
>  	iores = dev_request_mem_resource(hw_dev, 0);
> @@ -422,15 +420,6 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
>  	return mci_register(&host->mci);
>  }
>  
> -static void bcm2835_mci_remove(struct device_d *dev)
> -{
> -	struct bcm2835_mci_host *host = dev->priv;
> -
> -	sdhci_write32(&host->sdhci,
> -		      SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
> -		      0x00);
> -}
> -
>  static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
>  	{
>  		.compatible = "brcm,bcm2835-sdhci",
> @@ -444,7 +433,6 @@ static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
>  static struct driver_d bcm2835_mci_driver = {
>  	.name = "bcm2835_mci",
>  	.probe = bcm2835_mci_probe,
> -	.remove = bcm2835_mci_remove,
>  	.of_compatible = DRV_OF_COMPAT(bcm2835_mci_compatible),
>  };
>  
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


