Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qihb3-0002Ip-6K
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 06:46:33 +0000
Date: Mon, 18 Jul 2011 08:46:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110718064626.GF20587@pengutronix.de>
References: <1310928985-30940-1-git-send-email-antonynpavlov@gmail.com>
	<1310928985-30940-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1310928985-30940-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/2] startup.c: make DEBUG_LL output more useful
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jul 17, 2011 at 10:56:25PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/startup.c |    6 +++++-
>  1 files changed, 5 insertions(+), 1 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 00bc9a0..f8efa08 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -134,13 +134,17 @@ void start_barebox (void)
>  
>  	for (initcall = __barebox_initcalls_start;
>  			initcall < __barebox_initcalls_end; initcall++) {
> +		PUTS_LL("<<");
>  		PUTHEX_LL(*initcall);
> -		PUTC_LL('\n');
>  		result = (*initcall)();
> +		PUTC_LL('>');
>  		if (result)
>  			hang();
> +		PUTS_LL(">\r\n");

Looks mostly good. Can we to the \n -> \r\n conversion in PUTS_LL
instead?

Sascha

>  	}
>  
> +	PUTS_LL("initcalls done\r\n");
> +
>  	display_meminfo();
>  
>  #ifdef CONFIG_ENV_HANDLING
> -- 
> 1.7.5.4
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
