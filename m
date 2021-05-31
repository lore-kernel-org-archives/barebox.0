Delivery-date: Mon, 31 May 2021 09:16:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc9d-0002x7-Eb
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:16:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc9c-0004Nh-H3
	for lore@pengutronix.de; Mon, 31 May 2021 09:16:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rICs2kmx5WmJK3o1R3kJ7mB1u92oqX5aBSOPLEQ1ihE=; b=TMcGoPB15vFObdyvTppu0zus7E
	7DgdG6IsmZrPoE9XhvtcBHeGfWguUHLsqRH1hRd3rmS6Jqfc6bIEaTVTJFZxnZJDpE2cQ+M/yNEoq
	27O4f8JKCwbfc/uRsgdaY17/77mAVe+l9X836joZRvQJXJRIxwa9Db5liMI7NfcF390L6Cp0jWTcO
	ZPCcQqLwdOXjfsdKFzAxa0A2v12mCDMb3cknfW9WE10mgffjIe2nR6WbgQE+UQnvGrjBuVo2rkX+z
	xory+jd2zU/W8s+r090MgtKbPwKcO8kBaX6+LsM3fK0zEOMsb34JcBw5KthQOyuoQQxA51T/tqz3r
	VTAafYFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc8L-00B8hq-1Z; Mon, 31 May 2021 07:14:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc85-00B8dE-8L
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:14:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lnc83-0003kp-Or; Mon, 31 May 2021 09:14:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lnc83-0002zz-Co; Mon, 31 May 2021 09:14:27 +0200
Date: Mon, 31 May 2021 09:14:27 +0200
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210531071427.GE5211@pengutronix.de>
References: <20210527083741.789109-1-tpiepho@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527083741.789109-1-tpiepho@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:14:19 up 102 days, 10:38, 123 users,  load average: 0.12, 0.28,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001429_362968_A0D34B12 
X-CRM114-Status: GOOD (  30.11  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] mtd: nand: Add help text for i.MX NAND controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 27, 2021 at 01:37:41AM -0700, Trent Piepho wrote:
> There are two different NAND drivers, used for different chips in the
> i.MX range.  It's quite confusing as to which to use.  Add some help
> text to clarify.
> 
> Signed-off-by: Trent Piepho <tpiepho@gmail.com>
> ---
> Changes from V1:
>   Add GPMI and NFC names, fix typos.

Applied, thanks

Sascha

> 
>  drivers/mtd/nand/Kconfig | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index 7c9326089..8fb1cedd6 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -32,14 +32,27 @@ config NAND_ALLOW_ERASE_BAD
>  
>  config NAND_IMX
>  	bool
> -	prompt "i.MX NAND driver"
> +	prompt "i.MX21 to 53 NAND driver aka 'mxc', for NFC"
>  	depends on ARCH_IMX
> +	help
> +	  Support for NAND flash on Freescale/NXP i.MX devices.  This is for the
> +	  "MXC" series:  i.MX21/25/27/31/35/51/53.
> +
> +	  This is not for the "MXS" series i.MX processors (23 & 28), or i.MX6
> +	  and later, which use the GPMI NAND controller from the MXS series. 
> +	  See the i.MX 'mxs' driver for those chips.
>  
>  config NAND_MXS
>  	bool
>  	select STMP_DEVICE
> -	prompt "i.MX23/28/6 NAND driver"
> +	prompt "i.MX23/28 & 6+ NAND driver aka 'mxs', for GPMI"
>  	depends on MXS_APBH_DMA
> +	help
> +	  Support for NAND flash on Freescale/NXP i.MX devices.	 This is for the
> +	  "MXS" series:  i.MX23/28 and all i.MX6 and later SoCs.
> +
> +	  This is not for the "MXC" series of i.MX processors in the i.MX21 to
> +	  i.MX53 range.  See the i.MX "mxc" driver for those chips.
>  
>  config NAND_OMAP_GPMC
>  	tristate "NAND Flash Support for GPMC based OMAP platforms"
> -- 
> 2.26.2
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

