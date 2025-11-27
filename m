Delivery-date: Thu, 27 Nov 2025 12:43:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaPk-005Pky-2n
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 12:43:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaPk-00032T-73
	for lore@pengutronix.de; Thu, 27 Nov 2025 12:43:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wobWk62V/p0jw5tWtnhEYRGR0Qs192DbZZ0c0qmdFcY=; b=rdvjF4eZ2KDsn8iZtwiDt/5MHV
	t/Y+MT5TfhTILiOuGVm8xRIYek+Owf7u8x15CAx8JUv3JYAx1vf8Yz46iLQUiRVC45sWGbUiOfua4
	TF66vjVVdIYNi4GkWlPVsEsRYE3QMpfQKxu5/E+yZV/fFaBUMwecUQikqML05Iwr0PGyhRRC1yRbp
	oxO/sj2ypUbNjmOwJqnQA2+sPAGmVr2AW0R7K89vP4kTVJaintVqOT/IFszfZi5lXrUUhLrxAg/zJ
	XSucxkRvtEGAVlwrZasCt0t93ALLhB9awRWJraawVufF1uM90/PplXwpKNa0gJithRrVW8D5jC9l6
	XJKs9niQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaPO-0000000GTiB-0bY4;
	Thu, 27 Nov 2025 11:43:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaPK-0000000GThi-3mvc
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 11:43:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaPJ-0002yR-EQ; Thu, 27 Nov 2025 12:43:29 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaPJ-002mUm-0o;
	Thu, 27 Nov 2025 12:43:29 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaPJ-009gqU-0W;
	Thu, 27 Nov 2025 12:43:29 +0100
Date: Thu, 27 Nov 2025 12:43:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
Message-ID: <aSg5YTHhRYZZnPBa@pengutronix.de>
References: <20251127045417.3490877-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251127045417.3490877-1-chalianis1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_034330_939480_78284F24 
X-CRM114-Status: GOOD (  20.59  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ehci-zynq: variscite: tee: fix many typos struct device.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reworded while applying:

treewide: rename remnants of struct device_d

struct device_d has been renamed to struct device 3 years ago. Rename
remnants of struct device_d to device. This was unnoticed so far as we
have a #define device_d device in driver.h.

Sascha

On Wed, Nov 26, 2025 at 11:54:17PM -0500, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> fix struct device_d to struct device.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  arch/arm/boards/variscite-som-mx7/board.c | 2 +-
>  drivers/usb/host/ehci-zynq.c              | 2 +-
>  include/linux/tee_drv.h                   | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/variscite-som-mx7/board.c b/arch/arm/boards/variscite-som-mx7/board.c
> index 005228d107af..8bce4ec8616d 100644
> --- a/arch/arm/boards/variscite-som-mx7/board.c
> +++ b/arch/arm/boards/variscite-som-mx7/board.c
> @@ -5,7 +5,7 @@
>  #include <deep-probe.h>
>  #include <mach/imx/bbu.h>
>  
> -static int var_som_mx7_probe(struct device_d *dev)
> +static int var_som_mx7_probe(struct device *dev)
>  {
>  	imx7_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", BBU_HANDLER_FLAG_DEFAULT);
>  	return 0;
> diff --git a/drivers/usb/host/ehci-zynq.c b/drivers/usb/host/ehci-zynq.c
> index 13b551d09156..b4b0e0f89100 100644
> --- a/drivers/usb/host/ehci-zynq.c
> +++ b/drivers/usb/host/ehci-zynq.c
> @@ -6,7 +6,7 @@
>  #include <common.h>
>  #include <linux/usb/ulpi.h>
>  
> -static int zynq_ehci_probe(struct device_d *dev)
> +static int zynq_ehci_probe(struct device *dev)
>  {
>  	struct resource *res;
>  	void __iomem *base;
> diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
> index e2c1042debce..6a8e19459f47 100644
> --- a/include/linux/tee_drv.h
> +++ b/include/linux/tee_drv.h
> @@ -201,7 +201,7 @@ struct tee_shm {
>  	struct list_head link;
>  
>  	int fd;
> -	struct device_d dev;
> +	struct device dev;
>  	struct cdev cdev;
>  	struct resource res;
>  };
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


