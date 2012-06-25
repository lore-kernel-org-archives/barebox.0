Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj3h5-0006zV-Qt
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 07:26:49 +0000
Date: Mon, 25 Jun 2012 09:26:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120625072641.GB24458@pengutronix.de>
References: <1339074051-9781-1-git-send-email-shc_work@mail.ru>
 <1339074051-9781-2-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339074051-9781-2-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/3] i.MX clko: Added support for more than one CLKO
 outputs
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

This patch introduces several build warnings and also has a problem
with error checking. Could you update it?

Thanks
 Sascha

On Thu, Jun 07, 2012 at 05:00:50PM +0400, Alexander Shiyan wrote:
> 
> ---
>  	if (div != 0) {
> -		ret = imx_clko_set_div(div);
> +		ret = imx_clko_set_div(num, div);
>  		if (ret != div)
>  			printf("limited divider to %d\n", ret);

Up to this patch imx_clko_set_div only returned the real divider, but
with this patch it can also return errors, so you have to check for
them. "limited divider to -22" would be quite confusing for the reader.

> +++ b/arch/arm/mach-imx/speed-imx21.c
> @@ -162,9 +162,13 @@ void imx_dump_clocks(void)
>   * Returns the new divider (which may be smaller
>   * than the desired one)
>   */
> -int imx_clko_set_div(int div)
> +int imx_clko_set_div(int num, int div)
>  {
>  	ulong pcdr;
> +
> +	if (num != 1)
> +		return;
> +

arch/arm/mach-imx/speed-imx21.c: In function 'imx_clko_set_div':                                                           arch/arm/mach-imx/speed-imx21.c:170:3: warning: 'return' with no value, in function returning non-void [-Wreturn-type]

> diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
> index f6dcacb..b5c9822 100644
> --- a/arch/arm/mach-imx/speed-imx25.c
> +++ b/arch/arm/mach-imx/speed-imx25.c
> @@ -111,10 +111,13 @@ void imx_dump_clocks(void)
>   * the new divider (which may be smaller
>   * than the desired one)
>   */
> -int imx_clko_set_div(int div)
> +int imx_clko_set_div(int num, int div)
>  {
>  	unsigned long mcr = readl(IMX_CCM_BASE + 0x64);
>  
> +	if (num != 1)
> +		return;

arch/arm/mach-imx/speed-imx25.c: In function 'imx_clko_set_div':                                                           arch/arm/mach-imx/speed-imx25.c:119:3: warning: 'return' with no value, in function returning non-void [-Wreturn-type]

> diff --git a/arch/arm/mach-imx/speed-imx27.c b/arch/arm/mach-imx/speed-imx27.c
> index aba5097..6c66344 100644
> --- a/arch/arm/mach-imx/speed-imx27.c
> +++ b/arch/arm/mach-imx/speed-imx27.c
> @@ -189,9 +189,13 @@ void imx_dump_clocks(void)
>   * the new divider (which may be smaller
>   * than the desired one)
>   */
> -int imx_clko_set_div(int div)
> +int imx_clko_set_div(int num, int div)
>  {
>  	ulong pcdr;
> +
> +	if (num != 1)
> +		return;

arch/arm/mach-imx/speed-imx27.c: In function 'imx_clko_set_div':
arch/arm/mach-imx/speed-imx27.c:197:3: warning: 'return' with no value, in function returning non-void [-Wreturn-type]

> diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
> index 1e1c39f..28cd1b1 100644
> --- a/arch/arm/mach-imx/speed-imx35.c
> +++ b/arch/arm/mach-imx/speed-imx35.c
> @@ -203,10 +203,13 @@ void imx_dump_clocks(void)
>   * the new divider (which may be smaller
>   * than the desired one)
>   */
> -int imx_clko_set_div(int div)
> +int imx_clko_set_div(int num, int div)
>  {
>  	unsigned long cosr = readl(IMX_CCM_BASE + CCM_COSR);
>  
> +	if (num != 1)
> +		return;

arch/arm/mach-imx/speed-imx35.c: In function 'imx_clko_set_div':
arch/arm/mach-imx/speed-imx35.c:211:3: warning: 'return' with no value, in function returning non-void [-Wreturn-type]


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
