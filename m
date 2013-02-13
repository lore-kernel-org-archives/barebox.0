Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5frC-0008Vy-2U
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 17:10:55 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CF12FDC1554
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 18:21:14 +0100 (CET)
Date: Wed, 13 Feb 2013 18:09:41 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130213170941.GO19322@game.jcrosoft.org>
References: <1360774211-10983-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360774211-10983-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCH] cfa10036: Retrieve the RAM size at runtime
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

On 17:50 Wed 13 Feb     , Maxime Ripard wrote:
> The cfa-10036 comes in two flavours, with either 128MB or 256MB of RAM
> on it.
> 
> Since it's not stored anywhere, we need to runtime detect it, thanks to
> the get_ram_size function.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> ---
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> index 1821b10..47a9520 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> @@ -91,7 +91,8 @@ static struct i2c_gpio_platform_data i2c_gpio_pdata = {
>  
>  static int cfa10036_mem_init(void)
>  {
> -	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
> +	arm_add_mem_device("ram0", IMX_MEMORY_BASE,
> +			get_ram_size(IMX_MEMORY_BASE, 256 * SZ_1M));
check the sdram control register instead so you do not need to get_ram_size
and specify a Max

Best Regards,
J.
>  
>  	return 0;
>  }
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
