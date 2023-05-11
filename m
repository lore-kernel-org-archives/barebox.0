Delivery-date: Thu, 11 May 2023 09:40:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px0uM-00Dg7n-Vj
	for lore@lore.pengutronix.de; Thu, 11 May 2023 09:40:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px0uL-0008MM-3m
	for lore@pengutronix.de; Thu, 11 May 2023 09:40:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pA5CE2OBPO98WdplyfX7Y1UlBJxE3mEQ4j5eELcjiac=; b=bsN3KQCLsLXUAjNM2EB6uy+8Ij
	lH3XQoxtgUn1TgVRPrQR7ygtLDN5Us0Pe2+NGrmNFLY4yocHwD8MXr80Y70cmLJu3JZXU3hiN5IEV
	LU6Tqv4Vn+u6B4ol+1NDbkilJr68sXRYwu0Gesrtwbxsp5rNRbyCTO4Xxl63azH8rYwg2SNJ0KW1I
	DzoJoO4QV5vWKC6vA2kD+vYZWH60W1Vo6Tugm0VGFjHNjjXKmiat4r+APGc5ptAJ7ALpZjjV4plZB
	vX1eR1cOMWlLxLfVtzPEJ5cgWNxbo9W/hn7UtaB/CgGsF6yA8zQzTS1O7n0ub20D9PxRPPbBwBheC
	UkLm4h/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px0td-008AXU-2d;
	Thu, 11 May 2023 07:39:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px0tb-008AWo-08
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 07:39:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1px0tZ-0008DH-I0; Thu, 11 May 2023 09:39:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1px0tY-0007Fg-QL; Thu, 11 May 2023 09:39:24 +0200
Date: Thu, 11 May 2023 09:39:24 +0200
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230511073924.GK29365@pengutronix.de>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-10-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230510233711.37345-10-jmaselbas@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_003927_081752_3FFB7250 
X-CRM114-Status: GOOD (  18.26  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 09/11] arm: sunxi: Add sun50i SDRAM init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 11, 2023 at 01:37:09AM +0200, Jules Maselbas wrote:
> diff --git a/arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c b/arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c
> new file mode 100644
> index 0000000000..4c54588556
> --- /dev/null
> +++ b/arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c
> @@ -0,0 +1,9 @@
> +#define CONFIG_MACH_SUN50I y
> +#define CONFIG_SUNXI_DRAM_DW y
> +#define CONFIG_SUNXI_DRAM_DW_32BIT y
> +#define CONFIG_SUNXI_DRAM_DDR3 y
> +#define CONFIG_SYS_SDRAM_BASE 0x40000000
> +
> +#define sunxi_dram_init sun50i_a64_ddr3_dram_init
> +
> +#include "sun50i-sdram.c"

I wanted to mourn about the use of defines and ifdefs for configuring
the SoC type and configuration of the SDRAM which makes it impossible to
compile in multiple configurations, but you found a nice way to bypass
this problem ;)

How much variation in the parameters is there in practice? Adding
boards with CONFIG_SUNXI_DRAM_DW_16BIT would mean we have to duplicate
these two files into four. This won't scale anymore quite fast.
We could make these files board specific.

I think we should find another prefix for the CONFIG_ defines and leave
the CONFIG_ namespace for Kconfig only.


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


