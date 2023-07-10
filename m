Delivery-date: Mon, 10 Jul 2023 11:56:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIndM-005ZjP-Sm
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 11:56:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIndK-0006pT-6n
	for lore@pengutronix.de; Mon, 10 Jul 2023 11:56:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1jfS6w21Q40CNC+B/GgVzcwxlpA4/WRA+DVkHp/lWJk=; b=pUOdpzFNzq4FDc5rYxQX9rThES
	wg+X92BKdD+5SrbiwQfOwHTkVfIjrbTf7iAKI8usUc2EJuVDJhceF2u/Vnp+Lc4JvuVt5Nm2fpjJw
	Vugs6Trgqk58+DmsfG98GI6wQZajbQidxy/ocYHYsJIuzuRiUp8MH/HVnYwMqCFougPmDikmxsSbg
	6df3VfvIyDrArzZPcdI/Mh+TsaHJQamgt6+gGeMAzTTMUVTvZ5a/48PW0TYqnhpDY1t3Vu0twfT71
	KD2Cf0LBTqsUDJOhARxF0tZJYctEg7zCeDoPMyuq8Wif35yfNV6YjYYlHxQppuU6H7vWH4ybo2ops
	+FPjz+qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qInbt-00B7zB-2o;
	Mon, 10 Jul 2023 09:55:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qInbq-00B7y4-0N
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 09:55:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qInbl-0006Ns-TQ; Mon, 10 Jul 2023 11:55:05 +0200
Message-ID: <c1a55baa-1284-4201-3a25-00e9e6a615c9@pengutronix.de>
Date: Mon, 10 Jul 2023 11:55:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230710063653.660040-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_025510_160197_E4568013 
X-CRM114-Status: GOOD (  17.25  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/7] ARM: boards: make use of MDIO_MMD register defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.07.23 08:36, Marco Felsch wrote:
> Make use of the register definition instead of having magic numbers. No
> functional change.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/datamodul-edm-qmx6/board.c   | 7 ++++---
>  arch/arm/boards/embest-marsboard/board.c     | 7 ++++---
>  arch/arm/boards/terasic-de0-nano-soc/board.c | 7 ++++---
>  arch/arm/boards/terasic-de10-nano/board.c    | 7 ++++---
>  arch/arm/boards/tqma6x/board.c               | 7 ++++---
>  5 files changed, 20 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
> index 9adb3ee0f8..366b64d35a 100644
> --- a/arch/arm/boards/datamodul-edm-qmx6/board.c
> +++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
> @@ -11,6 +11,7 @@
>  #include <gpio.h>
>  #include <of.h>
>  
> +#include <linux/mdio.h>
>  #include <linux/micrel_phy.h>
>  #include <mfd/stmpe-i2c.h>
>  
> @@ -48,9 +49,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	phy_write_mmd_indirect(dev, 4, 2, 0);
> -	phy_write_mmd_indirect(dev, 5, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x03ff);
> +	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x03ff);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
> index 7835a9265a..7274595e2a 100644
> --- a/arch/arm/boards/embest-marsboard/board.c
> +++ b/arch/arm/boards/embest-marsboard/board.c
> @@ -9,6 +9,7 @@
>  #include <init.h>
>  #include <envfs.h>
>  #include <mach/imx/bbu.h>
> +#include <linux/mdio.h>
>  #include <linux/phy.h>
>  #include <deep-probe.h>
>  
> @@ -19,13 +20,13 @@ static int ar8035_phy_fixup(struct phy_device *dev)
>  	/* Ar803x phy SmartEEE feature cause link status generates glitch,
>  	 * which cause ethernet link down/up issue, so disable SmartEEE
>  	 */
> -	val = phy_read_mmd_indirect(dev, 0x805d, 0x3);
> +	val = phy_read_mmd_indirect(dev, 0x805d, MDIO_MMD_PCS);
>  	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
>  
> -	val = phy_read_mmd_indirect(dev, 0x4003, 0x3);
> +	val = phy_read_mmd_indirect(dev, 0x4003, MDIO_MMD_PCS);
>  	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
>  
> -	val = phy_read_mmd_indirect(dev, 0x4007, 0x3);
> +	val = phy_read_mmd_indirect(dev, 0x4007, MDIO_MMD_PCS);
>  	val &= 0xffe3;
>  	val |= 0x18;
>  	phy_write(dev, MII_MMD_DATA, val);
> diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
> index 19f74b784c..832160c595 100644
> --- a/arch/arm/boards/terasic-de0-nano-soc/board.c
> +++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
> @@ -5,6 +5,7 @@
>  #include <driver.h>
>  #include <init.h>
>  #include <asm/armlinux.h>
> +#include <linux/mdio.h>
>  #include <linux/micrel_phy.h>
>  #include <linux/phy.h>
>  #include <linux/sizes.h>
> @@ -18,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	phy_write_mmd_indirect(dev, 4, 2, 0);
> -	phy_write_mmd_indirect(dev, 5, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
> +	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>  	return 0;
>  }
>  
> diff --git a/arch/arm/boards/terasic-de10-nano/board.c b/arch/arm/boards/terasic-de10-nano/board.c
> index 580c898012..e47d9ac841 100644
> --- a/arch/arm/boards/terasic-de10-nano/board.c
> +++ b/arch/arm/boards/terasic-de10-nano/board.c
> @@ -5,6 +5,7 @@
>  #include <driver.h>
>  #include <init.h>
>  #include <asm/armlinux.h>
> +#include <linux/mdio.h>
>  #include <linux/micrel_phy.h>
>  #include <linux/phy.h>
>  #include <linux/sizes.h>
> @@ -18,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	phy_write_mmd_indirect(dev, 4, 2, 0);
> -	phy_write_mmd_indirect(dev, 5, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
> +	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>  	return 0;
>  }
>  
> diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
> index 4bb7223a6e..8a91ad652a 100644
> --- a/arch/arm/boards/tqma6x/board.c
> +++ b/arch/arm/boards/tqma6x/board.c
> @@ -11,6 +11,7 @@
>  #include <gpio.h>
>  #include <of.h>
>  
> +#include <linux/mdio.h>
>  #include <linux/micrel_phy.h>
>  #include <mfd/stmpe-i2c.h>
>  
> @@ -46,9 +47,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	phy_write_mmd_indirect(dev, 4, 2, 0);
> -	phy_write_mmd_indirect(dev, 5, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
> +	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>  
>  	return 0;
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



