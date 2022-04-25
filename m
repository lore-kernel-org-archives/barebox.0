Delivery-date: Mon, 25 Apr 2022 12:29:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nivxu-00Eet5-15
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 12:29:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nivxr-00053W-DC
	for lore@pengutronix.de; Mon, 25 Apr 2022 12:29:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eYALqdBU8K3ENO1DnDH8W+gipt+BBbdgOFBKdpnbH0M=; b=Y+GziXwIP/CRqc/l2lnyDuLdS3
	kwmNhQriD2bCk6Iunozco/PCtfmmZyIkIM8RJ8uYiozfH+Vgx24PVapSUUP36V2Nve7xB2Qi4aEci
	YC+4r6uSnKVIFlmm3lx3pIPY6KBw9aYENjR6D3zO99CtmR2R3/5DAuTKg0tRCeofIpypyLgOfnRSa
	leFo2BaZFquLYD/pi1kjFMHdLJWJgnbRHqWoafCF1HVJnHLnHgkbbv4r5Idunwl8SheqxGT8P5HPR
	q9qUYqi0v94sejp8s3qzZVau/iIABxlTTkMVnL6h8Oc94D6cC+8DBwTCXRTsCBqdCtfqbJtnutJCz
	gqKm7Mtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivwZ-0097iW-PQ; Mon, 25 Apr 2022 10:27:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivwU-0097hW-Qm
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 10:27:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nivwT-0004wm-KM; Mon, 25 Apr 2022 12:27:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nivwT-0005nh-BG; Mon, 25 Apr 2022 12:27:41 +0200
Date: Mon, 25 Apr 2022 12:27:41 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220425102741.GI4012@pengutronix.de>
References: <20220422092155.41183-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422092155.41183-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:27:32 up 25 days, 22:57, 79 users,  load average: 0.32, 0.19, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_032742_905961_34772AE8 
X-CRM114-Status: GOOD (  27.61  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] serial: ns16550: Reuse 16550 serial for tegra UART
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 22, 2022 at 12:21:55PM +0300, Alexander Shiyan wrote:
> The initialization for the tegra UART is the same as for the standard 16550,
> so there is no reason to keep a separate structure for it in the driver.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/serial/serial_ns16550.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 464ae1aebc..f93a89ab95 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -366,11 +366,6 @@ static __maybe_unused struct ns16550_drvdata jz_drvdata = {
>  	.init_port = ns16550_jz_init_port,
>  };
>  
> -static __maybe_unused struct ns16550_drvdata tegra_drvdata = {
> -	.init_port = ns16550_serial_init_port,
> -	.linux_console_name = "ttyS",
> -};
> -
>  static __maybe_unused struct ns16550_drvdata rpi_drvdata = {
>  	.init_port = rpi_init_port,
>  	.linux_console_name = "ttyS",
> @@ -528,6 +523,9 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
>  	}, {
>  		.compatible = "marvell,armada-38x-uart",
>  		.data = &ns16550_drvdata,
> +	}, {
> +		.compatible = "nvidia,tegra20-uart",
> +		.data = &ns16550_drvdata,
>  	},
>  #if IS_ENABLED(CONFIG_ARCH_OMAP)
>  	{
> @@ -541,12 +539,6 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
>  		.data = &omap_drvdata,
>  	},
>  #endif
> -#if IS_ENABLED(CONFIG_ARCH_TEGRA)
> -	{
> -		.compatible = "nvidia,tegra20-uart",
> -		.data = &tegra_drvdata,
> -	},
> -#endif
>  #if IS_ENABLED(CONFIG_MACH_MIPS_XBURST)
>  	{
>  		.compatible = "ingenic,jz4740-uart",
> -- 
> 2.32.0
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

