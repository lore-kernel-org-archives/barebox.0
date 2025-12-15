Delivery-date: Mon, 15 Dec 2025 13:47:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7zL-00BkMY-0d
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 13:47:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7zK-0007sb-K0
	for lore@pengutronix.de; Mon, 15 Dec 2025 13:47:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OTkiDfRkgtGZagm0geAZ4lAoboZ7N3Q0ss/+0x9gvGg=; b=UnOC5qwDpoWsLVI4cCwWatyNBt
	2lFzvWz7iLtuWOR7oRFg+S6vOteeklo7CqwhffGSPa1KPI2EY1UMs0851TNmomKs/FLi/5Pyt6Osz
	nB38WUh/AyeCrQWWILii6jUAJDi9bvKRUlcZeavt99rTNKazMo4EnVPA7r5XI0NsV6Ea3LMHy1d5z
	v21jhR+HcOjygQjFCxS+CeCnPYNExyGlvBnVqLlqbLWHUAY+sTiujViX3VJe9TDuoJ9YVi1Xpl0l4
	gfn7Lr5RcpCOvRM0Yn3N+zTXk+M49x38Gdf9TPLQ1U3YEsf8ulQgQeFN/76iFH0e/ogwgVyCcn9KS
	FYahUpaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7yr-00000003ePk-3EcO;
	Mon, 15 Dec 2025 12:47:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7yp-00000003ePC-1hVH
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 12:47:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV7yn-0007o7-NQ; Mon, 15 Dec 2025 13:47:09 +0100
Message-ID: <3ad1186d-9e8c-4276-8f42-aef60de4956b@pengutronix.de>
Date: Mon, 15 Dec 2025 13:47:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <20251203-efi-partition-refresh-v1-6-f0b6e79b5fa0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251203-efi-partition-refresh-v1-6-f0b6e79b5fa0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_044711_451409_E0B05847 
X-CRM114-Status: GOOD (  20.07  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] partitions: gpt: refresh partition tables when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/3/25 4:19 PM, Sascha Hauer wrote:
> The GPT alternative header must be at the end of the device. When disk
> images are written to a device this often is not the case which results
> in warnings:
> 
> WARNING: mmc0: GPT:Primary header thinks Alt. header is not at the end of the disk.
> WARNING: mmc0: GPT:6561831 != 62160895
> WARNING: mmc0: GPT:Alternate GPT header not at the end of the disk.
> WARNING: mmc0: GPT:6561831 != 62160895
> WARNING: mmc0: GPT: Use parted to correct GPT errors.
> 
> This patch adds support for automatically rewriting the partition table
> when this happens. This behaviour is optional and needs to be enabled at
> compile time with CONFIG_PARTITION_DISK_EFI_REFRESH. Also this is
> runtime configurable with global.system.gpt_refresh
> 
> Link: https://lore.barebox.org/20251128111929.2463263-1-s.hauer@pengutronix.de
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With below point addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> -	if (error_found)
> +	if (error_found) {
> +		add_gpt_refresh(blk);
>  		dev_warn(dev, "GPT: Use parted to correct GPT errors.\n");

With CONFIG_PARTITION_DISK_EFI_REFRESH enabled, I would suggest changing
this to a dev_info(dev, "GPT: barebox will autocorrect.\n") or something.

> +	}
> +
>  	return;
>  }
>  
> @@ -424,7 +519,7 @@ static int find_valid_gpt(struct efi_partition_desc *epd, void *buf)
>  		goto fail;
>  
>  	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_COMPARE))
> -		compare_gpts(blk->dev, pgpt, agpt, lastlba);
> +		compare_gpts(blk, pgpt, agpt, lastlba);
>  
>  	epd->good_pgpt = good_pgpt;
>  	epd->good_agpt = good_agpt;
> @@ -874,8 +969,16 @@ static struct partition_parser efi_partition_parser = {
>  	.name = "gpt",
>  };
>  
> +#ifdef CONFIG_PARTITION_DISK_EFI_REFRESH
> +BAREBOX_MAGICVAR(global.system.gpt_refresh, "When true, refresh GPT partitions when necessary");
> +#endif
> +
>  static int efi_partition_init(void)
>  {
> +	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_REFRESH))
> +		globalvar_add_simple_bool("system.gpt_refresh",
> +					  &global_gpt_refresh);
> +
>  	return partition_parser_register(&efi_partition_parser);
>  }
>  postconsole_initcall(efi_partition_init);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



