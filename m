Delivery-date: Tue, 04 Oct 2022 09:56:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofcnM-005Kyi-0H
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 09:56:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofcnK-0006ej-SG
	for lore@pengutronix.de; Tue, 04 Oct 2022 09:56:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LApcZQQ3beRV4ru8gaufyvKN8mJ6GbZb2n+j/CaDLhE=; b=ebtadfOGnkvRqHcqNvZUkvuelW
	e2oWj0/YnEpFLEoYdblNJSB9v9fSN6py0bcy50/K0/J3RHPm8WbOzVwOUu4+DZpYPv+vhpNXWLX2a
	dn8c0QyPI7cSI3mLDS4PwaLFGG3L9s8QrxyMjYGQI0EGF1H6MFvJBcLARJiFrBRL2uK/oEGH1g1UB
	f49D74RVGerDK8rKfvBpslFEjHhUl3A2uxo2eSoiBnIzLzFbAn6Cs5l0kzLwm/s/89G+RxQS2RNXn
	nm490hORwi/cCZUzxB4dPlGc/c0WRtN830pawBXLFtDLSnWsv9ib0SwYEcvDnQZbDR8JumTiPy9dw
	4QJ7myag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcm2-008piy-45; Tue, 04 Oct 2022 07:55:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofclx-008phv-8Y
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 07:55:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofclv-0006GB-Lr; Tue, 04 Oct 2022 09:55:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofclv-0005In-FM; Tue, 04 Oct 2022 09:55:23 +0200
Date: Tue, 4 Oct 2022 09:55:23 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221004075523.GI986@pengutronix.de>
References: <20220930111940.1323140-1-a.fatoum@pengutronix.de>
 <20220930122414.GZ986@pengutronix.de>
 <e6743279-3842-5595-66bc-4b2d793ab8ba@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6743279-3842-5595-66bc-4b2d793ab8ba@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_005525_350350_2EE05775 
X-CRM114-Status: GOOD (  29.62  )
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
Subject: Re: [PATCH master] mci: bcm2835: reset host controller on barebox
 shutdown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 30, 2022 at 03:18:29PM +0100, Ahmad Fatoum wrote:
> On 30.09.22 13:24, Sascha Hauer wrote:
> > On Fri, Sep 30, 2022 at 01:19:40PM +0200, Ahmad Fatoum wrote:
> >> We don't usually disable MMC controllers on barebox shutdown, because
> >> they don't DMA on their own, unlike e.g. network controllers.
> >>
> >> Booting Linux v5.17.0 on a Raspberry Pi 4 in 32-bit mode still has the
> >> MMC host controller driver complain:
> >>
> >>   [   22.464887] mmc1: Got data interrupt 0x00000002 even though no
> >>   			data operation was in progress.
> >>
> >> Fix this by resetting the SDHCI once barebox is done with it.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  drivers/mci/mci-bcm2835.c | 12 ++++++++++++
> >>  1 file changed, 12 insertions(+)
> > 
> > Applied, thanks
> 
> Please drop again. The warning is spurious and it just happened to not
> show up in my testing runs afterwards. I am looking into a proper fix
> and will let it do more reboot cycles to make sure issue is indeed
> resolved.

It's already pushed to master, I can't drop it. I could revert it.
Should I do that?

Sascha

> 
> > 
> > Sascha
> > 
> >>
> >> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> >> index f092156f9a83..c5b226ba033c 100644
> >> --- a/drivers/mci/mci-bcm2835.c
> >> +++ b/drivers/mci/mci-bcm2835.c
> >> @@ -385,6 +385,8 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
> >>  	host->sdhci.read32 = bcm2835_sdhci_read32;
> >>  	host->sdhci.write32 = bcm2835_sdhci_write32;
> >>  
> >> +	hw_dev->priv = host;
> >> +
> >>  	mci_of_parse(&host->mci);
> >>  
> >>  	iores = dev_request_mem_resource(hw_dev, 0);
> >> @@ -420,6 +422,15 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
> >>  	return mci_register(&host->mci);
> >>  }
> >>  
> >> +static void bcm2835_mci_remove(struct device_d *dev)
> >> +{
> >> +	struct bcm2835_mci_host *host = dev->priv;
> >> +
> >> +	sdhci_write32(&host->sdhci,
> >> +		      SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
> >> +		      0x00);
> >> +}
> >> +
> >>  static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
> >>  	{
> >>  		.compatible = "brcm,bcm2835-sdhci",
> >> @@ -433,6 +444,7 @@ static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
> >>  static struct driver_d bcm2835_mci_driver = {
> >>  	.name = "bcm2835_mci",
> >>  	.probe = bcm2835_mci_probe,
> >> +	.remove = bcm2835_mci_remove,
> >>  	.of_compatible = DRV_OF_COMPAT(bcm2835_mci_compatible),
> >>  };
> >>  
> >> -- 
> >> 2.30.2
> >>
> >>
> >>
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


