Delivery-date: Fri, 28 Nov 2025 10:45:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOv2v-005k6X-2F
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 10:45:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOv2v-000270-2d
	for lore@pengutronix.de; Fri, 28 Nov 2025 10:45:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l3Xov8gfR1NSn5wsQ1+kx8tMVjqwuQ7epeiAaKE8/ks=; b=sVW3iwmkw84MR5B0ZDLgT2F1zR
	WE8C0W0pvcRLDCSpWJbV49sB11JVPC8A1q40R5aJgeU7s0RmIZQI4uDC/hl60ZFbTP0VWWmzUyZU9
	LQSvNCT6ZQqGlO/l/BRYE5OdGAbjM1RZ+a7rb76wHDtLIR2vgCHVuVgPfufoAfOj95taJEiN4HJ+M
	tn4vKxtPqbLdmRKtX7OEatlQFdeEg+AF/wiOg+4SUp+MYxxjinjA7sj+S0AhKRQQLLps2ErMb+kUf
	pL/kDCCF+m0VZZBiX+nf+SjdKToVPDinJS/tJB++dTxVnV8KuxOGUfKbfG4Gmt3GOGy+pxZmfMfUZ
	TBIoknAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOv2W-00000000FBT-0b3v;
	Fri, 28 Nov 2025 09:45:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOv2T-00000000FAA-0bib
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 09:45:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOv2R-00020l-Lj; Fri, 28 Nov 2025 10:45:15 +0100
Message-ID: <c15f6ae3-812a-43b2-aa3b-47c4d4e4da1b@pengutronix.de>
Date: Fri, 28 Nov 2025 10:45:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251127105824.3560951-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-2-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251127143052.3114915-2-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_014517_192486_EF195CB4 
X-CRM114-Status: GOOD (  21.54  )
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
Subject: Re: [PATCH v3 1/4] block.h: renamed get_rootargs to get_root
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/27/25 3:25 PM, Fabian Pflug wrote:
> Don't return the full commandline-parameter, but instead just return the
> root block/fs/etc. The functions downstream can add root= before.
> 
> This is the first commit in a series to make root= dynamic.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/block.c         | 10 ++++++++--
>  drivers/mci/mci-core.c |  4 ++--
>  include/block.h        |  2 +-
>  3 files changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/common/block.c b/common/block.c
> index ca2ed37dbd..07c4d5d504 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -598,8 +598,14 @@ char *cdev_get_linux_rootarg(const struct cdev *partcdev)
>  	if (!blk)
>  		return NULL;
>  
> -	if (blk->ops->get_rootarg)
> -		rootarg = blk->ops->get_rootarg(blk, partcdev);
> +	if (blk->ops->get_root) {
> +		char *root = NULL;
> +		root = blk->ops->get_root(blk, partcdev);
> +		if (root) {
> +			rootarg = basprintf("root=%s", root);
> +			free(root);
> +		}
> +	}
>  	if (!rootarg && partcdev->partuuid[0] != 0)
>  		rootarg = basprintf("root=PARTUUID=%s", partcdev->partuuid);
>  
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 57825bc849..206147cb93 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -2691,7 +2691,7 @@ static char *mci_get_linux_mmcblkdev(struct block_device *blk,
>  		 * skipping it.
>  		 */
>  		if (cdev_partname_equal(partcdev, cdev))
> -			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
> +			return basprintf("/dev/mmcblk%dp%d", id, partnum);
>  		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
>  			partnum++;
>  	}
> @@ -2703,7 +2703,7 @@ static struct block_device_ops mci_ops = {
>  	.read = mci_sd_read,
>  	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
>  	.erase = IS_ENABLED(CONFIG_MCI_ERASE) ? mci_sd_erase : NULL,
> -	.get_rootarg = IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) ?
> +	.get_root = IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) ?
>  		mci_get_linux_mmcblkdev : NULL,
>  };
>  
> diff --git a/include/block.h b/include/block.h
> index fc7a0a32fb..b277f590e4 100644
> --- a/include/block.h
> +++ b/include/block.h
> @@ -14,7 +14,7 @@ struct block_device_ops {
>  	int (*write)(struct block_device *, const void *buf, sector_t block, blkcnt_t num_blocks);
>  	int (*erase)(struct block_device *blk, sector_t block, blkcnt_t num_blocks);
>  	int (*flush)(struct block_device *);
> -	char *(*get_rootarg)(struct block_device *blk, const struct cdev *partcdev);
> +	char *(*get_root)(struct block_device *blk, const struct cdev *partcdev);
>  };
>  
>  struct chunk;

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



