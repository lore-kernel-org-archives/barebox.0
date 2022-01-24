Delivery-date: Mon, 24 Jan 2022 10:13:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBvQ4-00BjTY-Jk
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 10:13:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBvQ3-0004DI-8A
	for lore@pengutronix.de; Mon, 24 Jan 2022 10:13:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GbYcVx89lLxEXN/e3FaHgzoP3cC7OpYzVR4xb8q5piM=; b=qu+e+K6OxG0OIl5culfoYzqJO+
	rp3tOLkhGd00W1XmvAGd9sv71qErxidf7kuYKNCv/fV04V8Gr0zwRgZMwxZXK7YL0SBEWRYDTKhtQ
	t9/ReOdv/rJF551wPoEwT56tE5wH1gU6WveF90cW/YcSCCUx/7NXTWuBsCprF2BHAFXtWeYXviyyd
	dyeWOuYAVwDSfuAlVboO9pVj1Bn4yrU0VkwKs2Eq1VWndWEcw9E2fGfhbRNHLGncv0wVdYaCfrzpY
	Q9iwn5G5dnyzZ1PXSZnsVMh/0qJXfctaE8QCoBkAjK/N1GwnMrlmtvGDzisbitFz6QtlXUOQGa/Iz
	VInPnsxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBvOt-002klZ-MF; Mon, 24 Jan 2022 09:12:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBvOk-002kft-Eh
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 09:12:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nBvOh-0003st-FU; Mon, 24 Jan 2022 10:12:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Frank Wunderlich <linux@fw-web.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, barebox@lists.infradead.org
References: <20220123165149.158515-1-linux@fw-web.de>
Message-ID: <145cf84a-770c-261e-154c-96d82ab5b3a3@pengutronix.de>
Date: Mon, 24 Jan 2022 10:12:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220123165149.158515-1-linux@fw-web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_011226_536058_F7C7F609 
X-CRM114-Status: GOOD (  18.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] ARM: Rockchip: Add rk3568 BananaPi R2 Pro board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Frank,

On 23.01.22 17:51, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>

> +/ {
> +	model = "Rockchip RK3568 Bananapi R2 Pro Board";
> +	compatible = "rockchip,rk3568-bpi-r2pro", "rockchip,rk3568";
> +
> +	aliases {
> +		emmc = &sdhci;
> +		sd = &sdmmc0;
> +	};
> +
> +	chosen: chosen {

You can drop the label.

> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index 3c6b3dd9b531..7d54f357cfda 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -68,6 +68,12 @@ config MACH_RK3568_EVB
>  	help
>  	  Say Y here if you are using a RK3568 EVB
>  
> +config MACH_RK3568_R2PRO
> +	select ARCH_RK3568
> +	bool "RK3568 R2PRO"
> +	help
> +	  Say Y here if you are using a RK3568 Bananpi R2 Pro

Banana Pi BPI-R2 Pro*. Perhaps include the Banana Pi bit in the prompt
text as well?

> +
>  config MACH_PINE64_QUARTZ64
>  	select ARCH_RK3568
>  	bool "Pine64 Quartz64"
> diff --git a/dts/Bindings/arm/rockchip.yaml b/dts/Bindings/arm/rockchip.yaml
> index 4aed16176434..109f885d970f 100644
> --- a/dts/Bindings/arm/rockchip.yaml
> +++ b/dts/Bindings/arm/rockchip.yaml

dts/ is synchronized with Linux, so patches here are not accepted in barebox.
You can add new bindings to Documentation/devicetree/bindings/, although
boards are usually not documented in the bindings, but instead in board
docs:

Could you add an entry to Documentation/boards/rockchip.rst -> Rockchip RK356x
-> Supported Boards?

And enabling the board in arch/arm/configs/rockchip_v8_defconfig
would be nice as well.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

