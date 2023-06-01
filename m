Delivery-date: Thu, 01 Jun 2023 10:27:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4deB-005XUl-FK
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:27:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4de8-0003H8-Fr
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:27:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BTrq9eW6g218XbRnwHuRBRTFgraatzUAs796PGBO0XA=; b=H3ojskvC0RQrcdiqtVFXurSOfx
	IcsRXWnTCS4UgjgVsNe2x+fRGRMN7iE6anP52h7vnWEEEdZZAqwDV6Uov1B0kG0PtiIlQLsLPHElg
	lHUg7eWc7TEbdzyUV/YcZqS5anMTahaIif+iJ4uL339YKSJJ89d7zkVxqPkfJD0O5HJF3GZKl/tgg
	4fd7YxJ0pFu0ym1E64OOcGaGjAurM7dmDJxzE4V5vyXbshrIIFf5qra57vcSQmPyr7xhetqUv4E1B
	1LX9BGMoXyjkRInr0rwDSsK9lpfGQnEgnVTNJKfNugJir4YigPZnEvEx5MJkHUYi/J0jiGiDxdOUY
	hNsJrYdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dd1-002Xjy-1e;
	Thu, 01 Jun 2023 08:25:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dcx-002Xit-1d
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:25:49 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q4dcw-0002pV-0u; Thu, 01 Jun 2023 10:25:46 +0200
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q4dcv-005vHf-Iq; Thu, 01 Jun 2023 10:25:45 +0200
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-12-a.fatoum@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Thu, 01 Jun 2023 10:24:15 +0200
In-reply-to: <20230531145927.1399282-12-a.fatoum@pengutronix.de>
Message-ID: <6r4jnr4mie.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_012548_105191_5F0CE315 
X-CRM114-Status: GOOD (  26.79  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/18] block: parse partition table on block device
 registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

again a small typo:

On Wed, May 31 2023 at 16:59 +0200, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> Every instance where we register a block device, it's followed by an

s/device, it's/device is/

Best regards
Ulrich


> attempt to parse the partition table, most often with a warning when
> it fails. Thus let's move partition table parsing into
> blockdevice_register.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/board/hostfile.c | 4 ----
>  common/block.c                | 6 ++++++
>  drivers/ata/disk_ata_drive.c  | 5 -----
>  drivers/block/efi-block-io.c  | 9 +--------
>  drivers/block/virtio_blk.c    | 8 +-------
>  drivers/mci/mci-core.c        | 6 ------
>  drivers/nvme/host/core.c      | 5 -----
>  drivers/usb/storage/usb.c     | 5 -----
>  8 files changed, 8 insertions(+), 40 deletions(-)
>
> diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
> index d0f400787d7a..a1ab06b87770 100644
> --- a/arch/sandbox/board/hostfile.c
> +++ b/arch/sandbox/board/hostfile.c
> @@ -166,10 +166,6 @@ static int hf_probe(struct device *dev)
>  		if (err)
>  			return err;
>=20=20
> -		err =3D parse_partition_table(&priv->blk);
> -		if (err)
> -			dev_warn(dev, "No partition table found\n");
> -
>  		dev_info(dev, "registered as block device\n");
>  	} else {
>  		cdev->name =3D np->name;
> diff --git a/common/block.c b/common/block.c
> index c39269d3a692..98adcfdf3dab 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -6,6 +6,7 @@
>   */
>  #include <common.h>
>  #include <block.h>
> +#include <disks.h>
>  #include <malloc.h>
>  #include <linux/err.h>
>  #include <linux/list.h>
> @@ -408,6 +409,11 @@ int blockdevice_register(struct block_device *blk)
>=20=20
>  	cdev_create_default_automount(&blk->cdev);
>=20=20
> +	/* Lack of partition table is unusual, but not a failure */
> +	ret =3D parse_partition_table(blk);
> +	if (ret)
> +		dev_warn(blk->dev, "No partition table found\n");
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
> index c1c736a0a88a..2d97710b827a 100644
> --- a/drivers/ata/disk_ata_drive.c
> +++ b/drivers/ata/disk_ata_drive.c
> @@ -254,11 +254,6 @@ static int ata_port_init(struct ata_port *port)
>=20=20
>  	dev_info(dev, "registered /dev/%s\n", port->blk.cdev.name);
>=20=20
> -	/* create partitions on demand */
> -	rc =3D parse_partition_table(&port->blk);
> -	if (rc !=3D 0)
> -		dev_warn(dev, "No partition table found\n");
> -
>  	return 0;
>=20=20
>  on_error:
> diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
> index eb4981e86298..7162106ab8ea 100644
> --- a/drivers/block/efi-block-io.c
> +++ b/drivers/block/efi-block-io.c
> @@ -12,7 +12,6 @@
>  #include <fcntl.h>
>  #include <efi.h>
>  #include <block.h>
> -#include <disks.h>
>  #include <efi/efi-payload.h>
>  #include <efi/efi-device.h>
>  #include <bootsource.h>
> @@ -184,16 +183,10 @@ static int efi_bio_probe(struct efi_device *efidev)
>=20=20
>  	priv->media_id =3D media->media_id;
>=20=20
> -	ret =3D blockdevice_register(&priv->blk);
> -	if (ret)
> -		return ret;
> -
>  	if (efi_get_bootsource() =3D=3D efidev)
>  		bootsource_set_raw_instance(instance);
>=20=20
> -	parse_partition_table(&priv->blk);
> -
> -	return 0;
> +	return blockdevice_register(&priv->blk);
>  }
>=20=20
>  static struct efi_driver efi_bio_driver =3D {
> diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
> index 660f3a7b6b9b..11e52d9e6457 100644
> --- a/drivers/block/virtio_blk.c
> +++ b/drivers/block/virtio_blk.c
> @@ -105,13 +105,7 @@ static int virtio_blk_probe(struct virtio_device *vd=
ev)
>  	priv->blk.num_blocks =3D cap;
>  	priv->blk.ops =3D &virtio_blk_ops;
>=20=20
> -	ret =3D blockdevice_register(&priv->blk);
> -	if (ret)
> -		return ret;
> -
> -	parse_partition_table(&priv->blk);
> -
> -	return 0;
> +	return blockdevice_register(&priv->blk);
>  }
>=20=20
>  static void virtio_blk_remove(struct virtio_device *vdev)
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 6d0d6473770c..32edd5382386 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1900,12 +1900,6 @@ static int mci_register_partition(struct mci_part =
*part)
>  		return 0;
>  	}
>=20=20
> -	rc =3D parse_partition_table(&part->blk);
> -	if (rc !=3D 0) {
> -		/* Lack of partition table is unusual, but not a failure */
> -		dev_warn(&mci->dev, "No partition table found\n");
> -	}
> -
>  	if (np) {
>  		of_parse_partitions(&part->blk.cdev, np);
>=20=20
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index bf9176ce0922..79a5f9325ef8 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1,6 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  #include <common.h>
> -#include <disks.h>
>=20=20
>  #include "nvme.h"
>=20=20
> @@ -373,10 +372,6 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, un=
signed nsid)
>  		goto out_free_id;
>  	}
>=20=20
> -	ret =3D parse_partition_table(&ns->blk);
> -	if (ret)
> -		dev_warn(ctrl->dev, "No partition table found\n");
> -
>  	return;
>  out_free_id:
>  	kfree(id);
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index 103ae293a3a4..dda713196071 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -420,11 +420,6 @@ static int usb_stor_add_blkdev(struct us_data *us, u=
nsigned char lun)
>  		goto BadDevice;
>  	}
>=20=20
> -	/* create partitions on demand */
> -	result =3D parse_partition_table(&pblk_dev->blk);
> -	if (result !=3D 0)
> -		dev_warn(dev, "No partition table found\n");
> -
>  	list_add_tail(&pblk_dev->list, &us->blk_dev_list);
>  	dev_dbg(dev, "USB disk device successfully added\n");
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


