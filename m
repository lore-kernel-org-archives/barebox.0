Delivery-date: Thu, 27 May 2021 09:18:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmAHK-00038o-7O
	for lore@lore.pengutronix.de; Thu, 27 May 2021 09:18:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmAHJ-0005fp-BH
	for lore@pengutronix.de; Thu, 27 May 2021 09:18:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BxsRdS5JZLYfRow9R4Dn5UOQXozqmfkEbzOcebRjiXo=; b=BsD6w1x6Shf3R0nFAsvHx0/pSO
	vpjkQXgV/sYIl6JfRsHg+LbN0DouqMPPZdNrbCy5euAzKFV8eW2BLmlVVDOb1r7gc+MWcvC6ZcyVA
	hsXqMPdmyYmiv+vAkp6XM8wBfrzs2bKCZ/J+flmg9GaWoOhEU1wtUeDLz9PP6TiQA2/Sexnj+nCnZ
	Wqrj0a6GgxnVzb5R4B58RZ4nFqYN7lPm6kdFilp3lm+7JZSXNWahjnjSvQVHgpkjWyQz7sjKC2ueO
	p15x2k4vN3ALnZZCQdE+Set4eZ6zjPTcP4CEgkqsQee2q+QAA2YIsHNrn6RsHZlOJE24KVG6hMCPJ
	mlVzDlxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmAFu-003I8c-T8; Thu, 27 May 2021 07:16:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmAFq-003I79-6w
 for barebox@lists.infradead.org; Thu, 27 May 2021 07:16:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmAFo-0005b9-L8; Thu, 27 May 2021 09:16:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmAFo-00073F-27; Thu, 27 May 2021 09:16:28 +0200
Date: Thu, 27 May 2021 09:16:28 +0200
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210527071628.GD19819@pengutronix.de>
References: <20210526064805.367434-1-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526064805.367434-1-trent.piepho@igorinstitute.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:12:50 up 98 days, 10:36, 108 users,  load average: 0.11, 0.17,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_001630_286895_F136148F 
X-CRM114-Status: GOOD (  28.57  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: nand: Add help text for i.MX NAND controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Trent,

On Tue, May 25, 2021 at 11:48:05PM -0700, Trent Piepho wrote:
> From: Trent Piepho <tpiepho@gmail.com>
> 
> There are two different NAND drivers, used for different chips in the
> i.MX range.  It's quite confusing as to which to use.  Add some help
> text to clarify.
> 
> Signed-off-by: Trent Piepho <tpiepho@gmail.com>
> ---
>  drivers/mtd/nand/Kconfig | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index 7c9326089..9dd6851f3 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -32,14 +32,25 @@ config NAND_ALLOW_ERASE_BAD
>  
>  config NAND_IMX
>  	bool
> -	prompt "i.MX NAND driver"
> +	prompt "i.MX NAND driver aka 'mxc'"
>  	depends on ARCH_IMX
> +	help
> +	  Support for NAND flash on Freescale/NXP i.MX devices.	 This is for the
> +	  "MXC" series:	 i.MX21/25/27/31/35/51/53.  It is not for the "MXS"
> +	  series i.MX processors (23 & 28), or i.MX6 and later, which use the
> +	  NAND controller from the MSX processors.  See the i.MX 'mxs' driver

s/MSX/MXS/

> +	  for those chips.
>  
>  config NAND_MXS
>  	bool
>  	select STMP_DEVICE
> -	prompt "i.MX23/28/6 NAND driver"
> +	prompt "i.MX23/28 & 6+ NAND driver aka 'mxs'"
>  	depends on MXS_APBH_DMA
> +	help
> +	  Support for NAND flash on Freescale/NXP i.MX devices.	 This is for the
> +	  "MXS" series: i.MX23/28 and all i.MX6 and later chips.  It is not for
> +	  the "MXC" series of i.MX processors in the i.MX 21 to 53 range.  See
> +	  the i.MX "msc" driver for those chips.

s/msc/mxc/

In the kernel this driver is known as GPMI nand driver. Maybe we should
add that term here as well?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

