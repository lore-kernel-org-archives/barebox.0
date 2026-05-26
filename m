Delivery-date: Tue, 26 May 2026 07:40:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRkX0-003tmR-1Z
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 07:40:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRkWz-0005ky-Nt
	for lore@pengutronix.de; Tue, 26 May 2026 07:40:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k/KSdqe6sVpwHZSb6TGRTp+fFlDPg8VGUmfiovoZw58=; b=kU56aQneRpavOSB/Dhs/dXAdEB
	VYPp1fQTHJH/25/WINfx95Rd/AG5XDkvD2doMf2kh7xq2KnNrn03WyHme9AV6twUD/DDUMwuTK5eG
	BbQYopHtYhIuL6F44xzyHKTtgQ7T6zmQ2+M+CLLWWxq1gyGwNJYu6T+VfBzaLe7iulc/mE+xf8Tm/
	xWRcvSq+lHPgcjEF/refDZhEN219reV33ttfpv1y+be31qN1YXUdeSTDFV+1zf3PB/BSaLtkA1TYj
	VWzNl5PS8vFAvRxhbvxIPXQFi97um3T0z1mHB9Gy1IPbbR2CYQ05JIV29j2hPvij/9hMFnPTt5diM
	mEuu29eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRkVc-000000015aN-2NZ1;
	Tue, 26 May 2026 05:39:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRkVY-000000015ZP-3vdY
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 05:39:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wRkVV-0005aP-Lz; Tue, 26 May 2026 07:39:13 +0200
Message-ID: <c36d3ed4-35b4-49b5-80ca-bfb442f5ee28@pengutronix.de>
Date: Tue, 26 May 2026 07:39:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260525-short_nvmem_write-v1-1-ff741d6ff1d5@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260525-short_nvmem_write-v1-1-ff741d6ff1d5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_223917_175819_3462386F 
X-CRM114-Status: GOOD (  24.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: core: Allow sub-register width
 nvmem_regmap_write()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 5/25/26 13:45, Jonas Rebmann wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> The previous implementation of nvmem_regmap_write() required the
> supplied value to be a multiple of the register size defined by the
> driver ("expect users to observe alignment").
> 
> This is however not respected by nvmem cell functions
> nvmem_cell_prepare_write_buffer()/__nvmem_cell_entry_write() which
> prepare the value buffer based on the "bits" supplied in the devicetree,
> resulting in EINVAL errors if an nvmem cell with "bits" spanning less
> bytes than val_bytes = DIV_ROUND_UP(config->val_bits, 8) of the nvmem
> driver.
> 
> To resolve this, accept buffers shorter than val_bytes, and place them
> correctly with regard to endianness.
> 
> Not-Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
> Ahmad and me pair-programmed this on friday. Ahmad, can we have your
> SoB?

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/nvmem/regmap.c | 29 ++++++++++++++++++++++-------
>  1 file changed, 22 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
> index 98e57909eb..22e667af17 100644
> --- a/drivers/nvmem/regmap.c
> +++ b/drivers/nvmem/regmap.c
> @@ -12,16 +12,31 @@
>  static int nvmem_regmap_write(void *ctx, unsigned offset, const void *val, size_t bytes)
>  {
>  	struct regmap *map = ctx;
> +	unsigned int tmp;
>  
> -	/*
> -	 * eFuse writes going through this function may be irreversible,
> -	 * so expect users to observe alignment.
> -	 */
> -	if (bytes % regmap_get_val_bytes(map))
> +	if (bytes > regmap_get_val_bytes(map)) {
> +		if (bytes % regmap_get_val_bytes(map))
> +			return -EINVAL;
> +
> +		return regmap_bulk_write(map, offset, val,
> +					 bytes / regmap_get_val_bytes(map));
> +	}
> +
> +	switch (bytes) {
> +	case 1:
> +		tmp = *(u8 *)val;
> +		break;
> +	case 2:
> +		tmp = *(u16 *)val;
> +		break;
> +	case 4:
> +		tmp = *(u32 *)val;
> +		break;
> +	default:
>  		return -EINVAL;
> +	}
>  
> -	return regmap_bulk_write(map, offset, val,
> -				 bytes / regmap_get_val_bytes(map));
> +	return regmap_write(map, offset, tmp);
>  }
>  
>  static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes)
> 
> ---
> base-commit: f5956c772dc00837bad36fc66df8a53aae86558d
> change-id: 20260525-short_nvmem_write-86a2114f6774
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


