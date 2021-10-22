Delivery-date: Fri, 22 Oct 2021 13:17:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mdsYb-00067x-Vb
	for lore@lore.pengutronix.de; Fri, 22 Oct 2021 13:17:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mdsYb-0002lg-48
	for lore@pengutronix.de; Fri, 22 Oct 2021 13:17:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WLV1yj2g/chV81xEKjj0VH6vZ958LG0SqqWMlSGCZsM=; b=ar7Fdc1PM3V4UaiDwr08r6DFaj
	5YSwowREPnSHyODw+SLrk1JoMVOolXsMUd5JJEVbLFUDvsKVQ1abP9ZUuhp0A1qirOpeISHz7WGGl
	msn8Ak2SpYwZ5G/M5vYva7zADVwass6nNetODVpk2TNNvHDtjyyM91IPi9jDe5YYDYCILpPfHlUIW
	rQry7eDO8hLUkwjJ95Za9nbWiZYGCZ9IcC+hA9rBTKrcWUYghBxZTOb00u1d/lhKBr9DJebsmA9EN
	4V/IlsLHtRWZeJdovFWRbYwaZBUONe1wC1LYMjbC88U8bVdsr1kSQlMwvj1frkl881FLehGMcs1tY
	+0hUbMWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdsWp-00AccC-TT; Fri, 22 Oct 2021 11:16:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdsWl-00Acbn-7Q
 for barebox@lists.infradead.org; Fri, 22 Oct 2021 11:16:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mdsWh-0002V1-5T; Fri, 22 Oct 2021 13:15:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mdsWg-0004g5-Rr; Fri, 22 Oct 2021 13:15:54 +0200
Date: Fri, 22 Oct 2021 13:15:54 +0200
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20211022111554.GG25698@pengutronix.de>
References: <20211020082505.3607-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020082505.3607-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:15:44 up 246 days, 14:39, 122 users,  load average: 0.22, 0.32,
 0.35
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_041559_316016_E8C781B5 
X-CRM114-Status: GOOD (  21.42  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
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
Subject: Re: [PATCH v2] ARM: rpi_defconfig: Enable PHY core for dwc2 USB driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 20, 2021 at 10:25:05AM +0200, Daniel Br=E1t wrote:
> Enable PHY core and USB NOP PHY driver in rpi_defconfig since
> the already enabled dwc2 usb driver uses it.
> =

> Signed-off-by: Daniel Br=E1t <danek.brat@gmail.com>
> ---
>  arch/arm/configs/rpi_defconfig | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defcon=
fig
> index f42b8819a..b823a9a3d 100644
> --- a/arch/arm/configs/rpi_defconfig
> +++ b/arch/arm/configs/rpi_defconfig
> @@ -96,6 +96,8 @@ CONFIG_WATCHDOG_BCM2835=3Dy
>  CONFIG_GPIO_RASPBERRYPI_EXP=3Dy
>  CONFIG_PINCTRL_BCM283X=3Dy
>  CONFIG_REGULATOR=3Dy
> +CONFIG_GENERIC_PHY=3Dy
> +CONFIG_USB_NOP_XCEIV=3Dy
>  CONFIG_FS_EXT4=3Dy
>  CONFIG_FS_TFTP=3Dy
>  CONFIG_FS_NFS=3Dy
> -- =

> 2.17.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

