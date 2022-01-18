Delivery-date: Tue, 18 Jan 2022 16:20:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9qHs-005fyZ-H0
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 16:20:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9qHq-0007Jf-60
	for lore@pengutronix.de; Tue, 18 Jan 2022 16:20:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZT4y2XUjTnhpSv2PfOEBsjRCBHEFKLfrB8cyhlGHEc=; b=Y+MJgTGkWulTMc
	Lg0XHidXPjGvdF9m+ZbdvgrA3uVfdCw7axxes3eJu6qZyaQeu5oKtUku7w6QtFqO7GONUO5DhvOti
	xSl59X1eg6/u/1QPfKtGYViW9NkA7YoOda6FrDJ5pMoANLktfn15kHuM8//scFtDfCZ3nX4tOA2cc
	cDHCIRdQPp2zixPTcbmnI9Kr/BrrbcWq1JCNfwGy3owC+aJSrpIVfB7OeXC7vVMZJizZbBncQieKM
	UPzTAJkhnuMSGi37xUm1s6/7D8x48W9uGb5CZSHr4MkfxTAxThZySm1V4806tiWg2fqZ7HZj77nSb
	6XmPzIdg/7SXo7pwJo8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9qG3-0023Km-H8; Tue, 18 Jan 2022 15:18:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9qBV-00226s-Ci
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 15:14:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1n9qBR-0006TV-Or; Tue, 18 Jan 2022 16:14:05 +0100
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1n9qBP-0001OU-NO; Tue, 18 Jan 2022 16:14:03 +0100
Date: Tue, 18 Jan 2022 16:14:03 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220118151403.GI3897@pengutronix.de>
Mail-Followup-To: Philipp Zabel <p.zabel@pengutronix.de>,
 barebox@lists.infradead.org
References: <20220118134317.1686090-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220118134317.1686090-1-p.zabel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:13:35 up 38 days, 23:59, 86 users,  load average: 0.18, 0.22, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_071409_480117_5C60F467 
X-CRM114-Status: GOOD (  25.16  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: skip devices without driver in
 efi_pause/continue_devices()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 18, 2022 at 02:43:17PM +0100, Philipp Zabel wrote:
> Skip devices on the EFI bus that do not have a driver assigned.
> 
> Fixes: f68a547deebd ("efi: add efi_device hook to be called before an image is started")
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Tested-by: Michael Olbrich <m.olbrich@pengutronix.de>

Regards,
Michael

> ---
>  drivers/efi/efi-device.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
> index 39724ec2f431..f91d09e8eaa5 100644
> --- a/drivers/efi/efi-device.c
> +++ b/drivers/efi/efi-device.c
> @@ -473,7 +473,12 @@ void efi_pause_devices(void)
>  	bus_for_each_device(&efi_bus, dev) {
>  		struct driver_d *drv = dev->driver;
>  		struct efi_device *efidev = to_efi_device(dev);
> -		struct efi_driver *efidrv = to_efi_driver(drv);
> +		struct efi_driver *efidrv;
> +
> +		if (!drv)
> +			continue;
> +
> +		efidrv = to_efi_driver(drv);
>  
>  		if (efidrv->dev_pause)
>  			efidrv->dev_pause(efidev);
> @@ -487,7 +492,12 @@ void efi_continue_devices(void)
>  	bus_for_each_device(&efi_bus, dev) {
>  		struct driver_d *drv = dev->driver;
>  		struct efi_device *efidev = to_efi_device(dev);
> -		struct efi_driver *efidrv = to_efi_driver(drv);
> +		struct efi_driver *efidrv;
> +
> +		if (!drv)
> +			continue;
> +
> +		efidrv = to_efi_driver(drv);
>  
>  		if (efidrv->dev_continue)
>  			efidrv->dev_continue(efidev);
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

