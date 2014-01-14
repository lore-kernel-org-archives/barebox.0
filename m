Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W36lr-0000qx-Mg
 for barebox@lists.infradead.org; Tue, 14 Jan 2014 16:23:20 +0000
Date: Tue, 14 Jan 2014 17:22:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140114162255.GN16215@pengutronix.de>
References: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/9] ARM: imx53: guard voipac vmx53 init function
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 13, 2014 at 01:17:22AM +0100, Lucas Stach wrote:
> Otherwise we end up doing the VMX53 board init for
> unrelated boards when using a multiimage build.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/freescale-mx53-vmx53/board.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
> index b38db71..d0cc495 100644
> --- a/arch/arm/boards/freescale-mx53-vmx53/board.c
> +++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
> @@ -30,6 +30,9 @@ extern char flash_header_imx53_vmx53_end[];
>  
>  static int vmx53_late_init(void)
>  {
> +	if (!of_machine_is_compatible("voipac,imx53-dmm-668"))
> +			return 0;
> +
>  	armlinux_set_architecture(MACH_TYPE_VMX53);
>  
>  	barebox_set_model("Voipac VMX53");
> -- 
> 1.8.4.2
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
