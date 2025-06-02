Delivery-date: Mon, 02 Jun 2025 11:05:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM16f-002uCp-1V
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM16e-0004vu-Rc
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:05:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XgTUV6MJ4qPrkYu3a2dyFcHibCklmBOE+NJsDGm4+QU=; b=dnMvHPjYcoJBVSWNUPhDWIfRYE
	MTXbjGTIMVI2+a40uOYwrrOhehwaPdqoyzvYfhXX+CiVAT8VBobE/8Z+TxqYl9HNf1Gk1ZLEqcohb
	eYSaGc+AIN60Mozo7poG43e7buPrCiGh2nhAJRTheQUmfYCI4kaWjdLx9I74wLI3SKS9Db0oXtgHD
	9mPEIM0/3AsxIwGEGbxsQuDYRKYOTEDPzaQDUOOvvsKZQAMvBDrpmHBRW+bqAJ9ZHpuJBW7T73Og6
	09h8XuSoW43vcJbXTfU2DwfHcoaKkyi6EvoKVBleV0IyjXQMXj+Y3FlfWMHUhLb6z4GGo+uNry87K
	hw9Mq0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM16D-000000072k7-0rxc;
	Mon, 02 Jun 2025 09:04:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM16A-000000072jC-2WxE
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:04:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM168-0004kl-4Q; Mon, 02 Jun 2025 11:04:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM167-001QVY-33;
	Mon, 02 Jun 2025 11:04:47 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM167-006Zz8-2j;
	Mon, 02 Jun 2025 11:04:47 +0200
Date: Mon, 2 Jun 2025 11:04:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aD1pL51ZmNTdodUV@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
 <20250530114106.1009454-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530114106.1009454-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_020450_641411_2369B145 
X-CRM114-Status: GOOD (  27.32  )
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
X-Spam-Status: No, score=-1.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/7] nvmem: Add 'protect' operation to core framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, May 30, 2025 at 01:41:00PM +0200, Oleksij Rempel wrote:
> Introduce a generic "protect" operation to the NVMEM framework.
> This allows NVMEM providers to expose hardware-specific protection or
> locking mechanisms through the character device interface. Existing
> read/write operations do not cover this type of state-altering
> protection.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/nvmem/core.c           | 48 ++++++++++++++++++++++++++++++++++
>  drivers/nvmem/partition.c      |  7 +++++
>  include/linux/nvmem-provider.h |  5 ++++
>  3 files changed, 60 insertions(+)
> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index 38dfb2cf2d1f..ac54a56f3c9f 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -30,6 +30,8 @@ struct nvmem_device {
>  					     const void *val, size_t val_size);
>  	int			(*reg_read)(void *ctx, unsigned int reg,
>  					    void *val, size_t val_size);
> +	int			(*reg_protect)(void *ctx, unsigned int reg,
> +					       size_t bytes, int prot);
>  };
>  
>  struct nvmem_cell {
> @@ -93,9 +95,54 @@ static ssize_t nvmem_cdev_write(struct cdev *cdev, const void *buf, size_t count
>  	return retlen;
>  }
>  
> +static int nvmem_cdev_protect(struct cdev *cdev, size_t count, loff_t offset,
> +			      int prot)
> +{
> +	struct nvmem_device *nvmem;
> +	int nvmem_prot;
> +
> +	if (cdev->master)
> +		nvmem = container_of(cdev->master, struct nvmem_device, cdev);
> +	else
> +		nvmem = container_of(cdev, struct nvmem_device, cdev);

Please rebase on https://lore.kernel.org/20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de

This quirk is buggy.

> +
> +	dev_dbg(cdev->dev, "protect ofs: 0x%08llx count: 0x%08zx prot: %d\n",
> +		offset, count, prot);
> +
> +	if (!nvmem->reg_protect) {
> +		dev_warn(cdev->dev, "NVMEM device %s does not support protect operation\n",
> +			 nvmem->name);
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (!count)
> +		return 0;
> +
> +	if (offset >= nvmem->size || count > nvmem->size - offset) {

Can be simplified to:

	if (offset + count > nvmem->size)


> +		dev_err(cdev->dev, "protect range out of bounds (ofs: 0x%08llx, count 0x%08zx, size 0x%08zx)\n",
> +			offset, count, nvmem->size);
> +		return -EINVAL;
> +	}
> +
> +	switch (prot) {
> +	case 0:
> +		nvmem_prot = NVMEM_PROTECT_ENABLE_WRITE;
> +		break;
> +	case 1:
> +		nvmem_prot = NVMEM_PROTECT_DISABLE_WRITE;
> +		break;
> +	default:
> +		dev_err(cdev->dev, "unsuported protection type %d\n", prot);
> +		return -EINVAL;
> +	}

I would appreciate introducing defines for the prot parameter treewide
(or converting it to boolean), but introducing it for nvmem only doesn't
improve the current state.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


