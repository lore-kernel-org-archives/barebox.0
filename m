Delivery-date: Wed, 11 Jan 2023 11:08:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFY2N-008ivZ-Qp
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 11:08:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFY2L-00038A-Us
	for lore@pengutronix.de; Wed, 11 Jan 2023 11:08:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVNQGVOtYnQHscFPyXoSDseH2UMOA6haiKpnmubkgvM=; b=3OY7RK3Aaf85QQ
	FOcjjJ29j8FGWE//oye9SOJi4weJ8xtXQ+lTithV9hSI8wunOybkUdSeW9V/S6zreYN+FK1aXmMSG
	2hMOm02HztNUlqjtH3IMr83uo8bxsUToRJVIasmn19dhxwnwjYMxkgsIOU++AXpEdH/YUWeURd+bF
	wdiv+MC8qxa67zw9CmcGzNabSYLSS2LixWe2klSRL4HHf2QYqCvtoY7NzYiIqEGwjICqYYNOAjKNV
	BcXG6AVn6OSGOC88sTDv3HVBRLxKYgkp4DxN1YlL9huDP86NXnpPZnex/GuJzOkXa084kHDRvxs64
	C/X64O9md3KwXkgcalxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFY17-00AhC8-7W; Wed, 11 Jan 2023 10:07:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFY12-00AhBZ-AE
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 10:07:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFY0z-00032m-Fe; Wed, 11 Jan 2023 11:07:25 +0100
Message-ID: <c90633ae-7fec-0b9b-2964-e0c11489be0b@pengutronix.de>
Date: Wed, 11 Jan 2023 11:07:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
References: <20230111095646.672125-1-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230111095646.672125-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_020728_386166_E8ADBD16 
X-CRM114-Status: GOOD (  27.05  )
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
Cc: Marcin Niestroj <m.niestroj@emb.dev>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: rpi: parse memory from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.01.23 10:56, Johannes Schneider wrote:
> From: Marcin Niestroj <m.niestroj@emb.dev>

Did you mean to resend a patch already applied to next..?

> 
> Currently for RaspberryPi platform there is only one memory bank
> created, based on information fetched over mailbox. This is fine for
> booting Barebox, but unfortunately all the other memory banks are not
> propagated to Linux during boot, thus cannot be utilized. In fact, even
> when using /vc.dtb as device-tree for Linux, all memory nodes in FDT are
> deleted and new ones are created by Barebox by memory fixup mechanism,
> using exising RAM information. As a result RaspberryPi 4 boots Linux
> with 1GB RAM available, instead of 2GB (2 banks, each 1GB).
> 
> At the end of VideoCore FDT parsing, do the same as of_probe_memory() in
> mem_initcall does, but for VideoCore provided devicetree/memory
> information. During Linux boot this information is used for memory fixup
> mechanism and in case of RaspberryPi 4 this results in 2 memory banks
> being propagated:
> 
>   # ls /proc/device-tree/memory*
>   /proc/device-tree/memory@0:
>   device_type  name         reg
> 
>   /proc/device-tree/memory@40000000:
>   device_type  name         reg
> 
> Signed-off-by: Marcin Niestroj <m.niestroj@emb.dev>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Link: https://lore.barebox.org/20230110193251.2821638-1-m.niestroj@grinn-global.com
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 77935e5c88..c6c7fd52bd 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -258,7 +258,7 @@ static u32 rpi_boot_mode, rpi_boot_part;
>  static void rpi_vc_fdt_parse(void *fdt)
>  {
>  	int ret;
> -	struct device_node *root, *chosen, *bootloader;
> +	struct device_node *root, *chosen, *bootloader, *memory;
>  	char *str;
>  
>  	root = of_unflatten_dtb(fdt, INT_MAX);
> @@ -324,6 +324,16 @@ static void rpi_vc_fdt_parse(void *fdt)
>  	if (IS_ENABLED(CONFIG_RESET_SOURCE))
>  		reset_source_set(rpi_decode_pm_rsts(chosen, bootloader));
>  
> +	/* Parse all available nodes with "memory" device_type */
> +	memory = root;
> +	while (1) {
> +		memory = of_find_node_by_type(memory, "memory");
> +		if (!memory)
> +			break;
> +
> +		of_add_memory(memory, false);
> +	}
> +
>  out:
>  	if (root)
>  		of_delete_node(root);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



