Delivery-date: Thu, 27 Nov 2025 10:24:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYEX-005Ncf-1z
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:24:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYEX-0004Qc-1J
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:24:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kb2F7PxyJ3PXbk/cdmJ6aMeykV0gxyjBOLHA8KtpsO4=; b=K9W1OKQ4Mcwp+siLNxNFDgznXi
	kCAk47yj+QZpgpd5Rrn5+5pBpaWLbJlNePpnZ36ARgabUYwaVTC8AzcbeJnRAd5gLaB/sHl1ZgGOC
	bNhyRa0poTRKE0SXNE9I8yHQp+IOhxdRNtO+8+wHTt3mFzDevuV9gCdXIrCBLnaPBtSAQlDs+SoHI
	+/whM/rLqtJR5pkUie3HaPFcWYZutTFnN63lc5cEyU8qWRFDPG3k1tDQnBJWEnJ7783h73lZ/Go+T
	3rcJHNbDF5yW6NcETiMt0PBV6wboiTCBppWXtkPIsgEDYwkExm3VTfTu8HWkA476BdPGJtQoZyklX
	2+fZTgBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYEC-0000000GIDg-11EM;
	Thu, 27 Nov 2025 09:23:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYE6-0000000GIAc-2anY
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:23:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1vOYE5-0004Jl-4f; Thu, 27 Nov 2025 10:23:45 +0100
Message-ID: <4f49a9b2737dae6f067e00ff1aa74d95a7f89e48.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
Date: Thu, 27 Nov 2025 10:23:44 +0100
In-Reply-To: <20251127045417.3490877-1-chalianis1@gmail.com>
References: <20251127045417.3490877-1-chalianis1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_012346_711234_2CA53F11 
X-CRM114-Status: GOOD (  16.19  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ehci-zynq: variscite: tee: fix many typos struct device.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Mittwoch, dem 26.11.2025 um 23:54 -0500 schrieb
chalianis1@gmail.com:
> From: Chali Anis <chalianis1@gmail.com>
>=20
> fix struct device_d to struct device.

It's not really a typo, as struct device was called struct device_d for
a long time in barebox. You are fixing the last remnants of that. I'm
not sure if it's a good idea to lump all those different sites into a
single patch. At least the subject doesn't really make sense, as zynq,
a board and tee are not one subsystem.

Also, now that you remove the last usages of the deprecated device_d
you can also remove the
#define device_d device in driver.h

Regards,
Lucas

>=20
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  arch/arm/boards/variscite-som-mx7/board.c | 2 +-
>  drivers/usb/host/ehci-zynq.c              | 2 +-
>  include/linux/tee_drv.h                   | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm/boards/variscite-som-mx7/board.c b/arch/arm/boards/=
variscite-som-mx7/board.c
> index 005228d107af..8bce4ec8616d 100644
> --- a/arch/arm/boards/variscite-som-mx7/board.c
> +++ b/arch/arm/boards/variscite-som-mx7/board.c
> @@ -5,7 +5,7 @@
>  #include <deep-probe.h>
>  #include <mach/imx/bbu.h>
> =20
> -static int var_som_mx7_probe(struct device_d *dev)
> +static int var_som_mx7_probe(struct device *dev)
>  {
>  	imx7_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", BBU_HAN=
DLER_FLAG_DEFAULT);
>  	return 0;
> diff --git a/drivers/usb/host/ehci-zynq.c b/drivers/usb/host/ehci-zynq.c
> index 13b551d09156..b4b0e0f89100 100644
> --- a/drivers/usb/host/ehci-zynq.c
> +++ b/drivers/usb/host/ehci-zynq.c
> @@ -6,7 +6,7 @@
>  #include <common.h>
>  #include <linux/usb/ulpi.h>
> =20
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
> =20
>  	int fd;
> -	struct device_d dev;
> +	struct device dev;
>  	struct cdev cdev;
>  	struct resource res;
>  };
>=20



