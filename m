Delivery-date: Mon, 27 Jan 2025 16:24:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcQys-0059cK-0G
	for lore@lore.pengutronix.de;
	Mon, 27 Jan 2025 16:24:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcQys-0003Bk-5d
	for lore@pengutronix.de; Mon, 27 Jan 2025 16:24:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UnkuJ+g574KmqdN1vMBsVfQmUAXS3j4N04hV9jThM2Y=; b=hrNY6mUU63rAZkT2Q3uHppwIpV
	hLBgjBP+Ps0vLDw9LHFoc7X6MwTdJ9ApfBLimi/w/ultzGh3R4HT9hnxCF4ktxkBDjacNXX+nV4WY
	jtb0AVUGxWAx3Utd2SCTC8NwtrxCLKVb00j5F7LnXrH9OfZgmDHRDcAayBXKyt8h0VKw5TigCLmGE
	FxqQUBClqhUjOAlUKhgQoeZJWunIbuTmGvjk1+o4vrvCELvEudp8/lBuca286Xt1QjYEcdeovrD0d
	GZJR0tFaLIejOGr+GamjYKvQg+/6wFV0ioPNBcO36qYZaA5CwZoaIm2gkrvTcjOZRkF4UkKHu4Hd4
	Y3knfvoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcQyP-00000002aQ6-1itY;
	Mon, 27 Jan 2025 15:24:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcQyM-00000002aP0-2re4
	for barebox@lists.infradead.org;
	Mon, 27 Jan 2025 15:24:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tcQyJ-00030Y-Pb; Mon, 27 Jan 2025 16:24:19 +0100
Message-ID: <72a19f3e-fb25-43bd-aba8-72ad37a580b6@pengutronix.de>
Date: Mon, 27 Jan 2025 16:24:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20250127110252.735402-1-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250127110252.735402-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_072422_728874_46BF7AEE 
X-CRM114-Status: GOOD (  20.37  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: boards: colibri-imx6: make BBU setting independent
 of DT alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 1/27/25 12:02 PM, Ahmad Fatoum wrote:
> Different baseboards may shuffle around the eMMC/SD aliases differently
> and thus the barebox update handler registration may not be correct
> across all of them.
> 
> Instead of hardcoding the eMMC device and SD device, let's derive the
> correct index dynamically at runtime using the mapping that the barebox
> bootsource code is already using.
> 
> Reported-by: Jonas Rebmann <jre@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Jonas Rebmann <jre@pengutronix.de>

> ---
> Jonas, can you give this a test and see if it works for you?

Works as it should, thank you!

> ---
>   arch/arm/boards/toradex-colibri-imx6/board.c | 24 +++++++++++++++++---
>   1 file changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/toradex-colibri-imx6/board.c b/arch/arm/boards/toradex-colibri-imx6/board.c
> index f3a6173e5064..5771b08cbacb 100644
> --- a/arch/arm/boards/toradex-colibri-imx6/board.c
> +++ b/arch/arm/boards/toradex-colibri-imx6/board.c
> @@ -9,6 +9,14 @@
>   #include <mach/imx/imx6.h>
>   #include <mfd/imx6q-iomuxc-gpr.h>
>   
> +/*
> + * The upstream device tree shuffles around the eMMC/SD indices, so the
> + * board code here takes care to use the numbering of the SoC reference
> + * manual
> + */
> +#define COLIBRI_MMC_INSTANCE_SD		0
> +#define COLIBRI_MMC_INSTANCE_EMMC	2
> +
>   static void eth_init(void)
>   {
>   	void __iomem *iomux = IOMEM(MX6_IOMUXC_BASE_ADDR);
> @@ -22,9 +30,19 @@ static void eth_init(void)
>   
>   static int colibri_imx6_probe(struct device *dev)
>   {
> -	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc0",
> -			BBU_HANDLER_FLAG_DEFAULT);
> -	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc1", 0);
> +	int emmc_alias, sd_alias;
> +
> +	emmc_alias = bootsource_of_alias_xlate(BOOTSOURCE_MMC, COLIBRI_MMC_INSTANCE_EMMC);
> +	if (emmc_alias >= 0)
> +		imx6_bbu_internal_mmcboot_register_handler("emmc",
> +							   basprintf("/dev/mmc%u", emmc_alias),
> +							   BBU_HANDLER_FLAG_DEFAULT);
> +
> +	sd_alias = bootsource_of_alias_xlate(BOOTSOURCE_MMC, COLIBRI_MMC_INSTANCE_SD);
> +	if (sd_alias >= 0)
> +		imx6_bbu_internal_mmc_register_handler("sd",
> +						       basprintf("/dev/mmc%u", sd_alias),
> +						       0);
>   
>   	barebox_set_hostname("colibri-imx6");
>   



