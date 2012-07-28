Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sv8yB-0003zH-VU
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 15:30:20 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 28 Jul 2012 17:29:47 +0200
References: <1343488250-12570-1-git-send-email-jbe@pengutronix.de>
 <1343488250-12570-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1343488250-12570-3-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207281729.48097.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/8] ARM/Samsung: adapt the generic timer driver to
 support the S3C6410 SoC
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alexey,

Juergen Beisert wrote:
> The S3C64XX SoC has a real 32 bit counter, but almost the same style of
> registers. It's enough to change the parameters, to get the routines work
> on this SoC.
>
> TODO: what about the S5P SoCs?
>
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  arch/arm/mach-samsung/s3c-timer.c |   17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
> index 6665c8c..271f97d 100644 
> --- a/arch/arm/mach-samsung/s3c-timer.c
> +++ b/arch/arm/mach-samsung/s3c-timer.c
> @@ -37,11 +37,20 @@
>  #define S3C_TCNTB4 (S3C_TIMER_BASE + 0x3c)
>  #define S3C_TCNTO4 (S3C_TIMER_BASE + 0x40)
>
> -#define TIMER_WIDTH 16
> -#define TIMER_SHIFT 10
> -#define PRE_MUX 3
> -#define PRE_MUX_ADD 1
> +#ifdef CONFIG_ARCH_S3C24xx
> +# define TIMER_WIDTH 16
> +# define TIMER_SHIFT 10
> +# define PRE_MUX 3
> +# define PRE_MUX_ADD 1
>  static const uint32_t max = 0x0000ffff;
> +#endif
> +#ifdef CONFIG_ARCH_S3C64xx
> +# define TIMER_WIDTH 32
> +# define TIMER_SHIFT 10
> +# define PRE_MUX 4
> +# define PRE_MUX_ADD 0
> +static const uint32_t max = ~0;
> +#endif
>
>  static void s3c_init_t4_clk_source(void)
>  {

Can you please check this patch on your S5P-SoC? I guess your SoC should work
like the S3C64xx variant, but I'm not sure.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
