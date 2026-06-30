Delivery-date: Tue, 30 Jun 2026 14:42:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXnT-00BT4E-0L
	for lore@lore.pengutronix.de;
	Tue, 30 Jun 2026 14:42:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXnS-0003TE-E2
	for lore@pengutronix.de; Tue, 30 Jun 2026 14:42:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=WlN0r4i1GnD4csg4tDZxJ8w+J0tN/tTrObh1E4q1eTg=; b=S2Nhwp6P4JN0atcp1D/1hxgP/W
	KANl7gqi2JQ8aP5z+hLcuaEOi4PqyBpc2v5oE1vxbWhWQxTyCm5NGyu2BAlfENYVy5nEQg7rjhqaw
	p3e/Q7xm4rRJ9B/CrxiJDwBk6wWsKoqJko5G21ZQq1RHErkDLzfJ8DQkINGhVXxFV/ko7zo0owQzy
	gmXFTmtdw9bcVL0yfrRSxrAIrRO4D4yE2xq9SrgjcR4NZ1DHnDsbblk3ZdDdrc1FCb3BVfSPbSQ+9
	h/X1Bwx8kBZtVBtALy7vw4DQsGa/HMxBOTaFN0J5QRVDtTkuwYCvXwliRXkIzLzCsGKDhI6ASc/iC
	rnxuKIGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXmV-0000000H19G-11im;
	Tue, 30 Jun 2026 12:41:39 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXmS-0000000H17z-3A0e
	for barebox@lists.infradead.org;
	Tue, 30 Jun 2026 12:41:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6F18220045F;
	Tue, 30 Jun 2026 14:41:33 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1weXmP-005Pn0-1B;
	Tue, 30 Jun 2026 14:41:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1weXmP-00000008Ed1-0ycK;
	Tue, 30 Jun 2026 14:41:33 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
In-Reply-To: <20260623142646.87173-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 12:41:33 +0000
Message-Id: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_054136_944732_8430BCB5 
X-CRM114-Status: GOOD (  17.01  )
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
Cc: barebox@lists.infradead.org, Anis Chali <anis.chali@ro-main.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: storage: make disk cdev name configurable via
 Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2026-06-23 10:26, chalianis1 wrote:
> From: Anis Chali <anis.chali@ro-main.com>
>=20
> Add USBDISK_NAME string option to allow customizing the USB storage
> device name, defaulting to "disk" to preserve existing behaviour.

I just sent a patch which registers USB storage devices with usbdiskx
which doesn't require compile time changes. I hope that suits your needs
as well.

Sascha

>=20
> Signed-off-by: Anis Chali <anis.chali@ro-main.com>
> ---
>  drivers/usb/storage/Kconfig | 5 +++++
>  drivers/usb/storage/usb.c   | 6 +++---
>  2 files changed, 8 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig
> index efca9874d5..90a62a9d24 100644
> --- a/drivers/usb/storage/Kconfig
> +++ b/drivers/usb/storage/Kconfig
> @@ -2,3 +2,8 @@
>  config USB_STORAGE
>  	tristate "USB Mass Storage support"
>  	select DISK
> +
> +config USBDISK_NAME
> +	string "USB storage disk name"
> +	depends on USB_STORAGE
> +	default "disk"
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index b3116dc6e6..b6944f531d 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -414,12 +414,12 @@ static int usb_stor_add_blkdev(struct us_data *us, =
unsigned char lun)
>  	if (result < 0)
>  		goto BadDevice;
> =20
> -	result =3D cdev_find_free_index("disk");
> +	result =3D cdev_find_free_index(CONFIG_USBDISK_NAME);
>  	if (result =3D=3D -1)
>  		pr_err("Cannot find a free number for the disk node\n");
> -	dev_info(dev, "registering as disk%d\n", result);
> +	dev_info(dev, "registering as %s%d\n", CONFIG_USBDISK_NAME, result);
> =20
> -	pblk_dev->blk.cdev.name =3D basprintf("disk%d", result);
> +	pblk_dev->blk.cdev.name =3D basprintf("%s%d", CONFIG_USBDISK_NAME, resu=
lt);
>  	pblk_dev->blk.blockbits =3D SECTOR_SHIFT;
>  	pblk_dev->blk.type =3D BLK_TYPE_USB;
>  	pblk_dev->blk.removable =3D true;
> --=20
> 2.54.0
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


