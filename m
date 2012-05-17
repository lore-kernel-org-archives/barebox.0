Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV4sZ-0001n1-5D
 for barebox@lists.infradead.org; Thu, 17 May 2012 17:52:47 +0000
Date: Thu, 17 May 2012 19:52:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120517175244.GH30400@pengutronix.de>
References: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
 <1337088040-24138-3-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337088040-24138-3-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH 2/7] Split S3C generic and S3C24xx specific code
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 15, 2012 at 07:20:35PM +0600, Alexey Galakhov wrote:
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
> diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
> index eaafdbd..31ed772 100644
> --- a/arch/arm/boards/a9m2410/a9m2410.c
> +++ b/arch/arm/boards/a9m2410/a9m2410.c
> @@ -51,7 +51,7 @@ static int a9m2410_mem_init(void)
>  	 * Note: On this card the second SDRAM page is not used
>  	 */
>  	s3c24xx_disable_second_sdram_bank();
> -	size = s3c24xx_get_memory_size();
> +	size = s3c_get_memory_size();

Still you convert two different functions to a common name. Once again:
Please keep s3c24xx_get_memory_size and add a s5p_get_memory_size
function for the s5p SoC.
It turned out to be useful when functions (or defines) have a spcific
SoC name in them. This way you always know in which context a function
is valid. Also it makes it possible to compile in all (in this case memory
setup) functions in a single binary.
I know that we do not follow this rule very strictly in barebox, but I
won't accept patches that change places that do it right already.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
