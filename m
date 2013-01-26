Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzDmz-0002vu-Te
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 21:59:55 +0000
Date: Sat, 26 Jan 2013 22:59:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130126215949.GR1906@pengutronix.de>
References: <20130126181809.GH26329@game.jcrosoft.org>
 <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
 <1359224399-569-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359224399-569-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 5/5] at91sam9261ek: add first stage support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 26, 2013 at 07:19:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9261ek/env/config           |   10 ++-
>  arch/arm/boards/at91sam9261ek/init.c               |   15 ++++-
>  .../configs/at91sam9261ek_first_stage_defconfig    |   71 ++++++++++++++++++++
>  3 files changed, 92 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/configs/at91sam9261ek_first_stage_defconfig
> 
> diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
> index 7d85577..cb3e847 100644
> --- a/arch/arm/boards/at91sam9261ek/env/config
> +++ b/arch/arm/boards/at91sam9261ek/env/config
> @@ -34,8 +34,14 @@ kernelimage=zImage
>  #kernelimage=Image.lzo
>  
>  nand_device=atmel_nand
> -nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> -rootfs_mtdblock_nand=6
> +if [ x$borebox_first_stage = x1 ]

LOL ;) Found a new name for the project?

> +then
> +	nand_parts="384k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> +	rootfs_mtdblock_nand=5
> +else
> +	nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> +	rootfs_mtdblock_nand=6
> +fi

I find this rather confusing. Now we have a bootstrap config, a first
stage config and a regular config, two different partition layouts and
no indication how these play together.

I think it's dangerous to have two different partition layouts. What's
the reason to concatenate the at91bootstrap and barebox partition
together for the first stage case?

What I would understand is:

- have a 128k first stage barebox which either
  - loads the kernel directly
  - or loads the second stage (bigger) barebox

  The decision could be made by the environment or maybe a button/key

However, this makes for two defconfigs, not three.

BTW your at91 bootstrap code has:

	bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);

Which means that you will use up to 1MB of Nand if you have bad blocks.
This conflicts with your partition layout above.

I suggest that you combine the first stage and bootstrap config into one
by adding some switch in the environment to optionally start the second
stage loader or directly boot through to the kernel.

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
