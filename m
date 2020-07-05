Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5Vy-0007Vr-3t
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:21:06 +0000
Date: Sun, 5 Jul 2020 16:21:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705142104.GV15485@pengutronix.de>
References: <20200702132919.22009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702132919.22009-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mfd: superio: smsc: fix C99ism initial declaration
 in for loop
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 02, 2020 at 03:29:18PM +0200, Ahmad Fatoum wrote:
> Codebase is meant to be gnu89, but was only enforced starting
> with bc4840e98b94 ("kbuild: add -Wmissing-prototypes and -std=gnu89
> to KBUILD_HOSTCFLAGS"). Since then, this driver no longer compiles.
> Fix this.
> 
> Fixes: eaf020f1bb52 ("mfd: superio: add base SMSC MFD driver")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mfd/smsc-superio.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/smsc-superio.c b/drivers/mfd/smsc-superio.c
> index 349c878cefe0..ff83aa1a4419 100644
> --- a/drivers/mfd/smsc-superio.c
> +++ b/drivers/mfd/smsc-superio.c
> @@ -106,8 +106,9 @@ static void smsc_superio_find(u16 sioaddr, u16 id_reg)
>  static int smsc_superio_detect(void)
>  {
>  	u16 ports[] = { 0x2e, 0x4e, 0x162e, 0x164e, 0x3f0, 0x370 };
> +	int i;
>  
> -	for (int i = 0; i < ARRAY_SIZE(ports); i++)
> +	for (i = 0; i < ARRAY_SIZE(ports); i++)
>  		smsc_superio_find(ports[i], SIO_REG_DEVID);
>  
>  	return 0;
> -- 
> 2.27.0
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
