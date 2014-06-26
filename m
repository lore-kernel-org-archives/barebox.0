Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0FVt-00035H-FF
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 19:39:20 +0000
Date: Thu, 26 Jun 2014 21:38:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626193854.GJ14257@pengutronix.de>
References: <1403791757-11152-1-git-send-email-christian.hemp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403791757-11152-1-git-send-email-christian.hemp@gmail.com>
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
Subject: Re: [PATCH] imx6:phyFLEX: Fix ENTRY_FUNCTION
To: Christian Hemp <christian.hemp@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 04:09:17PM +0200, Christian Hemp wrote:
> For some phyFLEX-i.MX6 modules the call __barebox_arm_head() was not removed.
> With this function the barebox does not start.
> 
> Signed-off-by: Christian Hemp <christian.hemp@gmail.com>

Applied, thanks (and fixed the whitespaces while applying)

Sascha

> ---
>  arch/arm/boards/phytec-phyflex-imx6/lowlevel.c |    6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> index 6c6f660..4350adb 100644
> --- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> +++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> @@ -93,8 +93,6 @@ ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
>  {
>  	void *fdt;
>  
> -	__barebox_arm_head();
> -
>  	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(0x00920000 - 8);
> @@ -108,8 +106,6 @@ ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
>  {
>  	void *fdt;
>  
> -        __barebox_arm_head();
> -
>          arm_cpu_lowlevel_init();
>  
>          arm_setup_stack(0x00920000 - 8);
> @@ -123,8 +119,6 @@ ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
>  {
>  	void *fdt;
>  
> -	__barebox_arm_head();
> -
>  	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(0x00920000 - 8);
> -- 
> 1.7.9.5
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
