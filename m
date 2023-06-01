Delivery-date: Thu, 01 Jun 2023 09:43:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cxi-005UrR-KF
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:43:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cxg-0004KA-91
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:43:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uqCtiZ/26HQk6gyqe/g4mxyEdfBEgRJqIqXzL323k3A=; b=MmvGrr4y+G3mdcdBYxhoOUlUv7
	C/Bb38/s/lmBEFwait3KZUAyznwF74MyfjgK5r4u6F7ZN03XNAPJW1vNTdhAQCZfTHjmPe0rPeDtG
	0foFFZBIvIMR4CeJMf9G22KUOZnhzepZMHAddGiIIHfEFrpQBJBOORKbl7gHrDihi4/qI9A8YyRha
	nTZFEf1ElEhx+znR4wV4cTUbg64bBSDQElem1GHEoOGha4hzX58S8n+Ce345Axn9lIFMo9hqfJiVs
	pdm8iXGr+KZ+Rv/POfTGAJ44PrIhkyNcwfJbTtby7FzcAV6MwtgKhKQr+OS7gSfO4OoHPJZaAJkPk
	r7IP4lbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cwj-002Owi-0S;
	Thu, 01 Jun 2023 07:42:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cwf-002Ovr-2c
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:42:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cwe-0004Df-I4; Thu, 01 Jun 2023 09:42:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cwe-0002Mq-AW; Thu, 01 Jun 2023 09:42:04 +0200
Date: Thu, 1 Jun 2023 09:42:04 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230601074204.GI18491@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-12-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-12-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_004205_842190_F211C8C6 
X-CRM114-Status: GOOD (  25.24  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/18] block: parse partition table on block device
 registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 04:59:20PM +0200, Ahmad Fatoum wrote:
> Every instance where we register a block device, it's followed by an
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
>  
> -		err = parse_partition_table(&priv->blk);
> -		if (err)
> -			dev_warn(dev, "No partition table found\n");
> -
>  		dev_info(dev, "registered as block device\n");
>  	} else {
>  		cdev->name = np->name;
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
>  
>  	cdev_create_default_automount(&blk->cdev);
>  
> +	/* Lack of partition table is unusual, but not a failure */
> +	ret = parse_partition_table(blk);
> +	if (ret)
> +		dev_warn(blk->dev, "No partition table found\n");

This is not changed in this series, so it's ok like this, but should
this really be a warning? Using a raw device without a partition table
seems like a legitimate usecase.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


