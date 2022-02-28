Delivery-date: Mon, 28 Feb 2022 18:08:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjVV-00DSfj-JL
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 18:08:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjVT-0007ca-QR
	for lore@pengutronix.de; Mon, 28 Feb 2022 18:08:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+1PTPN7KBZes0A++j/nTrU8pv2O0nMaw0Q3OMXaoKw=; b=gnOHKHZDXZlApI
	sihHdsi6Dyf1rF5Qq0vdTzFoYpRAudV+llfXgKnqBQOuYYX5B11rWlkKVQitvwPj4pcThFQm3OFIW
	8JOV8751+Jhl8YaT/fLN8Ga2GkSfzu7AmaxguTAwJVqWpxKfQz7NYTImDkQVXumntejN7IZptjl3G
	VM/AHBwctyB8VgDvdOeXnWIllu8WeJnC9QLuO9mf1WxVBAzoHq+SMuuDxZ7ounVMM1i8r8U+DFg9W
	pCuGC4xyOfkUXJEp9GZJ5Je3TEK3sIkgmoP7TRIxZ5c7PebIAMJEdJQj4brwfz8rchyQ1ZiH5bI/x
	MgIxDCC+pD/kF2UAlYtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOjUD-00DT48-Co; Mon, 28 Feb 2022 17:07:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjTg-00DSss-IZ
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 17:06:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nOjTe-0007Ne-OD; Mon, 28 Feb 2022 18:06:26 +0100
Message-ID: <8f7d5e59-37ff-9d78-6ad4-ec904201cddb@pengutronix.de>
Date: Mon, 28 Feb 2022 18:06:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Joacim Zetterling <joacim.zetterling@westermo.com>,
 barebox@lists.infradead.org
References: <20220228165733.247646-1-joacim.zetterling@westermo.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220228165733.247646-1-joacim.zetterling@westermo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_090628_709288_44BEF755 
X-CRM114-Status: GOOD (  24.63  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/1] ARM: imx: spi: Add NXP IMX8 Flex SPI/QSPI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Joacim,

On 28.02.22 17:57, Joacim Zetterling wrote:
> This driver is ported from the linux kernel and adapted to barebox
> for the NXP IMX8 platforms.
> 
> This commit add support for the NXP IMX8 Flex SPI controller in master
> mode. Up to four slave devices can be connected on two buses with two
> chip selects each. This controller does not support generic SPI messages
> and only supports the high-level SPI memory interface.
> 
> Tested on the NXP IMX8MN-EVK evaluation board as well as on a 
> IMX8MN custom board supporting a Micron N25Q00 QSPI flash.

I haven't reviewed the driver itself, but some general feedback below.

> 
> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
> ---
>  drivers/spi/Kconfig                |   10 +
>  drivers/spi/Makefile               |    1 +
>  drivers/spi/spi-nxp-fspi.c         | 1061 ++++++++++++++++++++++++++++
>  dts/Bindings/spi/spi-nxp-fspi.yaml |    1 +
>  4 files changed, 1073 insertions(+)
>  create mode 100644 drivers/spi/spi-nxp-fspi.c
> 
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index b0137d21e073..f7e92665d5a8 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -114,6 +114,16 @@ config DRIVER_SPI_STM32
>  	  Enable the STM32 Serial Peripheral Interface (SPI) driver for STM32MP
>  	  SoCs.
>  
> +config SPI_NXP_FLEXSPI
> +	tristate "NXP Flex SPI controller"
> +	depends on ARCH_IMX8M || HAS_IOMEM

HAS_IOMEM doesn't exist in barebox. You can replace this with COMPILE_TEST

> diff --git a/dts/Bindings/spi/spi-nxp-fspi.yaml b/dts/Bindings/spi/spi-nxp-fspi.yaml
> index 283815d59e85..62930d0cf43f 100644
> --- a/dts/Bindings/spi/spi-nxp-fspi.yaml
> +++ b/dts/Bindings/spi/spi-nxp-fspi.yaml
> @@ -17,6 +17,7 @@ properties:
>      enum:
>        - nxp,imx8dxl-fspi
>        - nxp,imx8mm-fspi
> +      - nxp,imx8mn-fspi
>        - nxp,imx8mp-fspi
>        - nxp,imx8qxp-fspi
>        - nxp,lx2160a-fspi

dts/ is imported from Linux as-is. You shouldn't edit stuff there.

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

