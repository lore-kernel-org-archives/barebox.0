Delivery-date: Tue, 12 Oct 2021 09:44:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCSh-0002Qv-K1
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:44:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCSg-0006aI-Ly
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:44:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pMJ/mC16g5LGdBsAbMxJMatTD0pNCORB3AbZDassiLo=; b=lCyJBb34kZckc7iSTdJ0hI4ArH
	v06t53hAJwQBwaCzEaMYuoWneByR3bBaCLDxkV43x5N5+tm7V59lr254fwLJZs9wQWVDE+mwheUq4
	x6P6FJSp47GoeVP2w1dVh5VSBuVy5xA9NKomeh4pbrXflIp/BP2fT28adKGCKZh39A4RO/U6Nv8Sz
	t+qkMlFxsIhIkdzN9+DJCoxUEMJTPZIIXWOkjRTQl78PHZQ3x1EgtkPfyTllEoPiv/jWMpHZRp/St
	qxpj8Y49LlUU1k/p3dgOZ1SdXdjijmssDy9fPJcxHGkmfQqLdJG2Usx9iDnJeM0CLV+DGbGyi1w78
	wrb3pN7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCRS-00BpZt-PH; Tue, 12 Oct 2021 07:43:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCRN-00BpZJ-OF
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:43:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCRM-0006X9-3t; Tue, 12 Oct 2021 09:43:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCRL-0000mF-Qd; Tue, 12 Oct 2021 09:43:11 +0200
Date: Tue, 12 Oct 2021 09:43:11 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211012074311.GI28453@pengutronix.de>
References: <20211011145506.23860-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211011145506.23860-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:43:02 up 236 days, 11:06, 139 users,  load average: 0.03, 0.17,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_004313_808429_8115FE31 
X-CRM114-Status: GOOD (  23.83  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fixup! scripts: Add rk-usb-loader tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 04:55:05PM +0200, Ahmad Fatoum wrote:
> Similar to d297e90323f3 ("scripts: omap3-usb-loader: make proper
> use of pkg-config --cflags"), tools using libusb-1.0 should
> include <libusb.h> and not assume its parent directory will be
> found by the search path, regardless of pkg-config.
> 
> Also, .gitignore was missing an entry for the new tool and
> hosttools_defconfig should enable all useful host tools.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/configs/hosttools_defconfig | 1 +
>  scripts/.gitignore                       | 1 +
>  scripts/rk-usb-loader.c                  | 2 +-
>  3 files changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/configs/hosttools_defconfig b/arch/sandbox/configs/hosttools_defconfig
> index 7d3385312488..0b62b648c744 100644
> --- a/arch/sandbox/configs/hosttools_defconfig
> +++ b/arch/sandbox/configs/hosttools_defconfig
> @@ -4,3 +4,4 @@ CONFIG_ARCH_IMX_USBLOADER=y
>  CONFIG_MVEBU_HOSTTOOLS=y
>  CONFIG_OMAP3_USB_LOADER=y
>  CONFIG_OMAP4_HOSTTOOL_USBBOOT=y
> +CONFIG_RK_USB_LOADER=y
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index cf645ec74661..bc6e5dbc43df 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -31,6 +31,7 @@ omap4_usbboot
>  omap4_usbboot-target
>  omap3-usb-loader
>  omap3-usb-loader-target
> +rk-usb-loader
>  mips-relocs
>  rsatoc
>  stm32image
> diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
> index 627af7259ed0..c742023c60d9 100644
> --- a/scripts/rk-usb-loader.c
> +++ b/scripts/rk-usb-loader.c
> @@ -25,7 +25,7 @@
>  #include <sys/types.h>
>  #include <sys/stat.h>
>  #include <fcntl.h>
> -#include <libusb-1.0/libusb.h>
> +#include <libusb.h>
>  
>  #include "../common.h"
>  #include "../common.c"
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

