Delivery-date: Tue, 18 Oct 2022 11:08:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okia7-00CTRY-Er
	for lore@lore.pengutronix.de; Tue, 18 Oct 2022 11:08:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okia5-00066T-Fv
	for lore@pengutronix.de; Tue, 18 Oct 2022 11:08:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6JqlxsGJRL3+Tm9M6IoMMaYSOsKJdpN/n6F/bHV3rOg=; b=lOhjpTiRPcilZYpHx4l9OCXO5n
	43Zt5WZX2A+TDj5ESDI7JOEqIEUtVgyRbOanJXPQ73058OmOGYCkNfBvV2gBtX8A9AR+uWffLI5iX
	xDjuiL1l6+Xi1D4h38PW/NbVoMvsy+RM0P+3nJxPmIIwPx1GshxelZk5Xn7/f4hwuv8S2K5qpNqAX
	V2OlqhLYClPkqmgxOmIhA2te9mxQswEpoHFjS0Z0DTXhU9DCOzjThu9Y1CR5rol9XRY39zTDkXryj
	sCJpjJ8ujhf1NgOj+tEU7rVZL7aSfLgdX9D0S+w/GccoNis8gIrYn5Vpwab6JmbbLouFdwHZnfUfx
	YyrBqHhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiYm-004iTv-Nz; Tue, 18 Oct 2022 09:06:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiYa-004iOZ-Nz
	for barebox@lists.infradead.org; Tue, 18 Oct 2022 09:06:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiYZ-0005s2-Bn; Tue, 18 Oct 2022 11:06:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiYZ-0007j7-4M; Tue, 18 Oct 2022 11:06:39 +0200
Date: Tue, 18 Oct 2022 11:06:39 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221018090639.GQ6702@pengutronix.de>
References: <20221017071036.1458761-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017071036.1458761-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_020640_841464_C6D76D50 
X-CRM114-Status: GOOD (  19.16  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: gadget: fsl_udc: add imx7_barebox_(load/start)_usb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 17, 2022 at 09:10:36AM +0200, Ahmad Fatoum wrote:
> These can be called from barebox PBL when booted from USB to continue
> USB boot. This isn't necessary in the general case when RAM setup is
> done via DCD, but for cases where setup is done in PBL, these helpers
> come in handy. Tested on i.MX7D revision 1.2.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/gadget/fsl_udc_pbl.c | 11 +++++++++++
>  include/soc/fsl/fsl_udc.h        |  3 +++
>  2 files changed, 14 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/gadget/fsl_udc_pbl.c b/drivers/usb/gadget/fsl_udc_pbl.c
> index 8b714d4c8b02..d2f2b9e1959e 100644
> --- a/drivers/usb/gadget/fsl_udc_pbl.c
> +++ b/drivers/usb/gadget/fsl_udc_pbl.c
> @@ -5,6 +5,7 @@
>  #include <soc/fsl/fsl_udc.h>
>  #include <mach/imx8mm-regs.h>
>  #include <mach/imx6-regs.h>
> +#include <mach/imx7-regs.h>
>  
>  static void fsl_queue_td(struct usb_dr_device *dr, struct ep_td_struct *dtd,
>  			 int ep_is_in)
> @@ -210,6 +211,16 @@ int imx6_barebox_start_usb(void *dest)
>  	return imx_barebox_start_usb(IOMEM(MX6_OTG_BASE_ADDR), dest);
>  }
>  
> +int imx7_barebox_load_usb(void *dest)
> +{
> +	return imx_barebox_load_usb(IOMEM(MX7_OTG1_BASE_ADDR), dest);
> +}
> +
> +int imx7_barebox_start_usb(void *dest)
> +{
> +	return imx_barebox_start_usb(IOMEM(MX7_OTG1_BASE_ADDR), dest);
> +}
> +
>  int imx8mm_barebox_load_usb(void *dest)
>  {
>  	return imx_barebox_load_usb(IOMEM(MX8MM_USB1_BASE_ADDR), dest);
> diff --git a/include/soc/fsl/fsl_udc.h b/include/soc/fsl/fsl_udc.h
> index aa1db2fb3816..c1abe222ba2a 100644
> --- a/include/soc/fsl/fsl_udc.h
> +++ b/include/soc/fsl/fsl_udc.h
> @@ -385,6 +385,9 @@ int imx_barebox_start_usb(void __iomem *dr, void *dest);
>  int imx6_barebox_load_usb(void *dest);
>  int imx6_barebox_start_usb(void *dest);
>  
> +int imx7_barebox_load_usb(void *dest);
> +int imx7_barebox_start_usb(void *dest);
> +
>  int imx8mm_barebox_load_usb(void *dest);
>  int imx8mm_barebox_start_usb(void *dest);
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


