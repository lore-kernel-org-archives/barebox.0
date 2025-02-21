Delivery-date: Fri, 21 Feb 2025 19:41:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlXy7-005DV2-2F
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 19:41:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlXy6-0002qW-BL
	for lore@pengutronix.de; Fri, 21 Feb 2025 19:41:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EfspoLAQOJwsdNAAVlspxcprLUJzCwSb4RdsFnqhSLQ=; b=c1UeRMVaG1B1P9LFDNNnkCkv4T
	GC6XqS0hTZJIQOxhXug8+pOvLg9GaJb4YF7rvc/iXVabM3ocwMpRS2j99y3NnMB08LbwJCaF7fe/S
	zDAAyUFsUfnF/cM5uHZbkXBEEOU5p+CJiRF5cNQg7eABi/F9d2cS9ZpQ31DguGtBPRY0uhrACHVUC
	CSFoZK/C1TPqYqk6npcAhUR5OgcvlBt9fPGrfioE0W6nGO4xfxFQnzHvF9gznAPFSPxiaaV2U2Rq1
	nXnfS0DiWJ5wm1YmFk2+FKOTwzxgpj7AnNSrS+SBhK+zkNQ4Rf8uKlWQZB55261Dc3K9JZxuLEHqV
	1vaAdQoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlXxq-00000006YjU-3t0j;
	Fri, 21 Feb 2025 18:41:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlWtg-00000006OMn-2wbL
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 17:33:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlWtc-00062s-Vr; Fri, 21 Feb 2025 18:33:05 +0100
Message-ID: <06d40295-264c-4119-a201-f6e045def59d@pengutronix.de>
Date: Fri, 21 Feb 2025 18:33:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
References: <20250221180109.14129-1-stefano.manni@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250221180109.14129-1-stefano.manni@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_093308_743602_3DA465CC 
X-CRM114-Status: GOOD (  21.80  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefano,

On 21.02.25 19:01, Stefano Manni wrote:
> Device file was hardcoded to "nand0.barebox".
> This patch harmonize the signature of
> 
> imx6_bbu_nand_register_handler()
> imx7_bbu_nand_register_handler()
> imx28_bbu_nand_register_handler()
> 
> with the other bbu register functions in order to take
> the devicefile as parameter.

Is this this the sole motivation behind the patch or do you
intend to actually make use of the ability of varying
the devicefile?

Thanks,
Ahmad

> 
> Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
> ---
>  common/imx-bbu-nand-fcb.c | 23 ++++++++++++++++-------
>  include/bbu.h             | 18 ++++++++++++------
>  2 files changed, 28 insertions(+), 13 deletions(-)
> 
> diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> index d0261140cf..0d17a7bf6a 100644
> --- a/common/imx-bbu-nand-fcb.c
> +++ b/common/imx-bbu-nand-fcb.c
> @@ -1219,6 +1219,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
>  	int used = 0;
>  	int fw_orig_len = 0;
>  	int used_refresh = 0, unused_refresh = 0;
> +	const char *devname = handler->devicefile;
>  
>  	if (data->image) {
>  		filetype = file_detect_type(data->image, data->len);
> @@ -1230,7 +1231,12 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
>  			return -EINVAL;
>  	}
>  
> -	bcb_cdev = cdev_by_name(handler->devicefile);
> +	/* Support both boot /dev/nand0.barebox and boot nand0.barebox */
> +	devname += str_has_prefix(devname, "/dev/");
> +
> +	device_detect_by_name(devname);
> +
> +	bcb_cdev = cdev_by_name(devname);
>  	if (!bcb_cdev) {
>  		pr_err("%s: No FCB device!\n", __func__);
>  		return -ENODEV;
> @@ -1432,7 +1438,8 @@ static void imx6_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
>  	fcb->MetadataBytes = 10;
>  }
>  
> -int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
> +int imx6_bbu_nand_register_handler(const char *name,
> +		const char *devicefile, unsigned long flags)
>  {
>  	struct imx_nand_fcb_bbu_handler *imx_handler;
>  	struct bbu_handler *handler;
> @@ -1451,7 +1458,7 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
>  	}
>  
>  	handler = &imx_handler->handler;
> -	handler->devicefile = "nand0.barebox";
> +	handler->devicefile = devicefile;
>  	handler->name = name;
>  	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>  	handler->handler = imx_bbu_nand_update;
> @@ -1526,7 +1533,8 @@ static void imx28_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
>  	fcb->EraseThreshold = readl(bch_regs + BCH_MODE);
>  }
>  
> -int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
> +int imx28_bbu_nand_register_handler(const char *name,
> +		const char *devicefile, unsigned long flags)
>  {
>  	struct imx_nand_fcb_bbu_handler *imx_handler;
>  	struct bbu_handler *handler;
> @@ -1540,7 +1548,7 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
>  	imx_handler->filetype = filetype_mxs_bootstream;
>  
>  	handler = &imx_handler->handler;
> -	handler->devicefile = "nand0.barebox";
> +	handler->devicefile = devicefile;
>  	handler->name = name;
>  	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>  	handler->handler = imx_bbu_nand_update;
> @@ -1599,7 +1607,8 @@ static int imx7_fcb_write(struct mtd_info *mtd, int block, struct fcb_block *fcb
>  	return mxs_nand_write_fcb_bch62(block, fcb, sizeof(*fcb));
>  }
>  
> -int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
> +int imx7_bbu_nand_register_handler(const char *name
> +	   const char *devicefile, unsigned long flags)
>  {
>  	struct imx_nand_fcb_bbu_handler *imx_handler;
>  	struct bbu_handler *handler;
> @@ -1612,7 +1621,7 @@ int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
>  	imx_handler->filetype = filetype_arm_barebox;
>  
>  	handler = &imx_handler->handler;
> -	handler->devicefile = "nand0.barebox";
> +	handler->devicefile = devicefile;
>  	handler->name = name;
>  	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>  	handler->handler = imx_bbu_nand_update;
> diff --git a/include/bbu.h b/include/bbu.h
> index 5105d2ac70..087d3ee827 100644
> --- a/include/bbu.h
> +++ b/include/bbu.h
> @@ -98,19 +98,25 @@ static inline int bbu_mmcboot_register_handler(const char *name,
>  #endif
>  
>  #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
> -int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
> -int imx7_bbu_nand_register_handler(const char *name, unsigned long flags);
> -int imx28_bbu_nand_register_handler(const char *name, unsigned long flags);
> +int imx6_bbu_nand_register_handler(const char *name, const char *devicefile, unsigned long flags);
> +int imx7_bbu_nand_register_handler(const char *name, const char *devicefile, unsigned long flags);
> +int imx28_bbu_nand_register_handler(const char *name, const char *devicefile, unsigned long flags);
>  #else
> -static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
> +static inline int imx6_bbu_nand_register_handler(const char *name,
> +					       const char *devicefile,
> +					       unsigned long flags)
>  {
>  	return -ENOSYS;
>  }
> -static inline int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
> +static inline int imx7_bbu_nand_register_handler(const char *name,
> +					       const char *devicefile,
> +					       unsigned long flags)
>  {
>  	return -ENOSYS;
>  }
> -static inline int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
> +static inline int imx28_bbu_nand_register_handler(const char *name,
> +					       const char *devicefile,
> +					       unsigned long flags)
>  {
>  	return -ENOSYS;
>  }


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


