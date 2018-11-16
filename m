Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNYeA-0005d8-Hg
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 07:34:36 +0000
Date: Fri, 16 Nov 2018 08:34:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181116073422.xxd3dkwxtveysjqt@pengutronix.de>
References: <1542203761-4417-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1542203761-4417-1-git-send-email-t.remmet@phytec.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm: mach-omap: xload: Enable network interface
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 14, 2018 at 02:56:01PM +0100, Teresa Remmet wrote:
> Since f0624a701513 ("net: Do not route traffic to interfaces that are not up")
> interfaces need to be "up" before used. To make enthernet boot work again
> enable the interface after dhcp is set up.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm/mach-omap/xload.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index bb58825dcf9c..47aa8275b9ee 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -257,6 +257,8 @@ static void *am33xx_net_boot(void)
>  
>  	dhcp_set_result(edev, dhcp_res);
>  
> +	edev->ifup = true;
> +
>  	/*
>  	 * Older tftp server don't send the file size.
>  	 * Then tftpfs needs temporary place to store the file.
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
