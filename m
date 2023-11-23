Delivery-date: Thu, 23 Nov 2023 15:55:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6B6e-005wtJ-37
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 15:55:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6B6e-0002i7-VK
	for lore@pengutronix.de; Thu, 23 Nov 2023 15:55:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zRZfmV+Oauj6bw/Gs5lVsR0MA2w32i9moh/0rGgYMA8=; b=UtKR6bA78gzLUNY9+AS/KhMz2r
	u8g5eAdMnTlOV/wpcFgKLmG7GRpWP4PaTP7ZYoxGFOhME6P/ucIM5rn+4FttHQtC7fRF7COdFFjEY
	hRdwA6pgZFjdPbPY5i1EGjsBA9zze+gOpqKwyqS9DKUDZYEskG2WjpasPAaer2iXWliz8nEnH/ttl
	PkyhUOKUiPInXCOhJMIUelAu6XtAoSdeoE91kqM8f+dao9hHV7T11Ye5j45PaBx6o45Shl48lVpJ8
	poSkWGr3GKHQTZegrn1atndEUEpT7tHIyuHhaxM8RniBBPVaz8Vh0CXT4oKwVOzhvmBuAp2Pi52eO
	g9O3u1yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6B5U-0054zK-0V;
	Thu, 23 Nov 2023 14:53:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6B5R-0054yv-0I
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 14:53:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r6B5P-0002M1-Sz; Thu, 23 Nov 2023 15:53:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r6B5P-00B3v1-Gc; Thu, 23 Nov 2023 15:53:47 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r6B5P-003TwR-EG; Thu, 23 Nov 2023 15:53:47 +0100
Date: Thu, 23 Nov 2023 15:53:47 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231123145347.GN3359458@pengutronix.de>
References: <20231123081427.1084418-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231123081427.1084418-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_065349_134380_CA78A1CE 
X-CRM114-Status: GOOD (  22.98  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] drivers: pxa: don't define clk_enable/clk_disable with
 different prototype
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 23, 2023 at 09:14:27AM +0100, Ahmad Fatoum wrote:
> Even on platforms without CCF support, clk_enable and clk_disable are
> defined as stubs. Defining functions with the same name can thus clash
> with these definitions, e.g. if <linux/clk.h> is included from a new
> header. Fix this by renaming the functions.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Please order before
> https://lore.barebox.org/barebox/20231122171320.1714868-1-a.fatoum@pengutronix.de/T/#t
> ---
>  drivers/mci/pxamci.c                | 4 ++--
>  drivers/usb/gadget/udc/pxa27x_udc.c | 8 ++++----
>  2 files changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
> index 8d8e9e88bb5c..5df1ef5cb6fb 100644
> --- a/drivers/mci/pxamci.c
> +++ b/drivers/mci/pxamci.c
> @@ -26,7 +26,7 @@
>  #define TX_TIMEOUT (250 * MSECOND)
>  #define CMD_TIMEOUT (100 * MSECOND)
>  
> -static void clk_enable(void)
> +static void mmc_clk_enable(void)
>  {
>  	CKEN |= CKEN_MMC;
>  }
> @@ -334,7 +334,7 @@ static int pxamci_probe(struct device *dev)
>  	struct pxamci_host *host;
>  	int gpio_power = -1;
>  
> -	clk_enable();
> +	mmc_clk_enable();
>  	host = xzalloc(sizeof(*host));
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
> diff --git a/drivers/usb/gadget/udc/pxa27x_udc.c b/drivers/usb/gadget/udc/pxa27x_udc.c
> index 67b7e28de9d2..20148f48783d 100644
> --- a/drivers/usb/gadget/udc/pxa27x_udc.c
> +++ b/drivers/usb/gadget/udc/pxa27x_udc.c
> @@ -882,12 +882,12 @@ static const struct usb_gadget_ops pxa_udc_ops = {
>  	.udc_poll	= pxa_udc_gadget_poll,
>  };
>  
> -static void clk_enable(void)
> +static void usb_clk_enable(void)
>  {
>  	CKEN |= CKEN_USB;
>  }
>  
> -static void clk_disable(void)
> +static void usb_clk_disable(void)
>  {
>  	CKEN &= ~CKEN_USB;
>  }
> @@ -901,7 +901,7 @@ static void udc_disable(struct pxa_udc *udc)
>  	udc_writel(udc, UDCICR1, 0);
>  
>  	udc_clear_mask_UDCCR(udc, UDCCR_UDE);
> -	clk_disable();
> +	usb_clk_disable();
>  
>  	ep0_idle(udc);
>  	udc->gadget.speed = USB_SPEED_UNKNOWN;
> @@ -946,7 +946,7 @@ static void udc_enable(struct pxa_udc *udc)
>  	udc_writel(udc, UDCICR1, 0);
>  	udc_clear_mask_UDCCR(udc, UDCCR_UDE);
>  
> -	clk_enable();
> +	usb_clk_enable();
>  
>  	ep0_idle(udc);
>  	udc->gadget.speed = USB_SPEED_FULL;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


