Delivery-date: Thu, 08 Jan 2026 22:19:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdxPU-002l8J-0g
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 22:19:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdxPT-0008Hd-LI
	for lore@pengutronix.de; Thu, 08 Jan 2026 22:19:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SNo0PEQm+PPPMMjowWdenIRQZU3Xjc5vaGCShwm3lvA=; b=iPWz9zKseySAuV9OxZDKiWByUL
	4aYtY6VnvFJrf9vJcQ4LLMzrxrDufrByDhwigNmHH/yxOuIxCWc33XI2GVmleyl3PJHQaAFWH0USP
	cEWEI9b+BnKy4a9ApGEdK7SHRXNYznop55M05SPISOuB4rfi13tp/RoFEqnEOu1YQzWc84Avv8IYD
	3Paqw97TPaNKuni6Sa3Zz2e1DCtoVeHUYFSTRKzEGKWg5uWOm5VuueN2xuEBEDOD1QVSl4QBMpfsx
	hsrlOO06nz+7YbUr/Qn4euxbWEtxGXi7Sad/gtjOiGpkIBV/V8N2DfuRQMBttRSYeE13VkNmDH2q2
	4pArjEqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdxP6-00000000tB9-00Ta;
	Thu, 08 Jan 2026 21:18:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdxOy-00000000t8A-1IBD
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 21:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vdxOw-00089E-QP; Thu, 08 Jan 2026 22:18:38 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vdxOw-009jzw-21;
	Thu, 08 Jan 2026 22:18:38 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vdxOw-000Skn-1Z;
	Thu, 08 Jan 2026 22:18:38 +0100
Date: Thu, 8 Jan 2026 22:18:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Rouven Czerwinski <rouven.czerwinski@linaro.org>
Cc: barebox@lists.infradead.org
Message-ID: <aWAfLjWBkoY-uCIV@pengutronix.de>
References: <20260107145628.3825096-1-rouven.czerwinski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107145628.3825096-1-rouven.czerwinski@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_131840_367118_23346B20 
X-CRM114-Status: GOOD (  22.37  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: imx8mq-evk: warn for EVKB variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 07, 2026 at 03:56:28PM +0100, Rouven Czerwinski wrote:
> There is another EVKB variant of the MCIMX8M-EVK, which is currently not
> compatible with barebox. Add a warning to the documentation.

For everyone interested in this board I think this is the patch that needs to be
adopted:

https://github.com/nxp-imx/uboot-imx/commit/ec9db3b4ce47bab541ee5c30900b7e49494d17e3

Sascha

> 
> Signed-off-by: Rouven Czerwinski <rouven.czerwinski@linaro.org>
> ---
>  Documentation/boards/imx/nxp-imx8mq-evk.rst | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
> index d98f94ac61..a15c535593 100644
> --- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
> @@ -8,6 +8,9 @@ Board comes with:
>  
>  Not including booting via serial, the device can boot from either SD or eMMC.
>  
> +.. warning:: Barebox is currently not compatible with the MCIMX8M-EVK**B**
> +   variant with 4GiB of RAM.
> +
>  Downloading DDR PHY and HDMI/eDP Firmware
>  -----------------------------------------
>  
> -- 
> 2.51.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


