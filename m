Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gw0-f49.google.com ([74.125.83.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nyjpu-0007Ro-Qk
	for barebox@lists.infradead.org; Mon, 05 Apr 2010 10:47:19 +0000
Received: by gwj16 with SMTP id 16so2588514gwj.36
	for <barebox@lists.infradead.org>; Mon, 05 Apr 2010 03:47:17 -0700 (PDT)
Message-ID: <4BB9BFB2.9010807@gmail.com>
Date: Mon, 05 Apr 2010 05:47:14 -0500
From: Nishanth Menon <menon.nishanth@gmail.com>
MIME-Version: 1.0
References: <1270458446-25073-1-git-send-email-gadiyar@ti.com>
In-Reply-To: <1270458446-25073-1-git-send-email-gadiyar@ti.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] omap3: 3430sdp: add choice of UARTs for console
To: Anand Gadiyar <gadiyar@ti.com>
Cc: barebox@lists.infradead.org

On 04/05/2010 04:07 AM, Anand Gadiyar wrote:
> The OMAP3 SDPs have both UART1 and UART3 available.
> Historically, UART1 has been used for the console.
>
> Add a config option to select between these UARTs
> (along the lines of what has been done for OMAP3 EVM)
>
> Signed-off-by: Anand Gadiyar<gadiyar@ti.com>
> ---
>   board/omap/Kconfig         |   16 ++++++++++++++++
>   board/omap/board-sdp343x.c |    4 ++++
>   2 files changed, 20 insertions(+)
>
> Index: barebox/board/omap/Kconfig
> ===================================================================
> --- barebox.orig/board/omap/Kconfig
> +++ barebox/board/omap/Kconfig
> @@ -61,6 +61,22 @@ config MACH_OMAP3EVM
>
>   endchoice
>
> +if MACH_OMAP343xSDP
> +	choice
> +	prompt "Select UART"
> +
> +	config OMAP343xSDP_UART1
> +		bool "Use UART1"
> +		help
> +		  Say Y here if you would like to use UART1 as console.
> +
> +	config OMAP343xSDP_UART3
> +		bool "Use UART3"
> +		help
> +		  Say Y here if you would like to use UART1 as console.
> +	endchoice
> +endif
> +
>   if MACH_OMAP3EVM
>   	choice
>   	prompt "Select UART"
> Index: barebox/board/omap/board-sdp343x.c
> ===================================================================
> --- barebox.orig/board/omap/board-sdp343x.c
> +++ barebox/board/omap/board-sdp343x.c
> @@ -611,7 +611,11 @@ static struct NS16550_plat serial_plat =
>
>   static struct device_d sdp3430_serial_device = {
>   	.name = "serial_ns16550",
> +#if defined(CONFIG_OMAP343xSDP_UART1)
> +	.map_base = OMAP_UART1_BASE,
> +#elif defined(CONFIG_OMAP343xSDP_UART3)
>   	.map_base = OMAP_UART3_BASE,
> +#endif
>   	.size = 1024,
>   	.platform_data = (void *)&serial_plat,
>   };
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
I dont see a major reason for supporting UART1 other than historical 
reasons, as UART3 seems capable of doing more than just debug terminal 
alone (includes download aswell).. overall I dont see an issue, but 
might be better to choose the terminal in a generic manner accross 
platforms - as in, CONFIG_OMAP_SERIAL_UART1,2,3... for all platforms - 
just my 2 cents.

Regards,
Nishanth Menon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
