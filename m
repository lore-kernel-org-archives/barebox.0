Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAsJR-0005Kp-PM
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:19:59 +0000
Date: Wed, 17 May 2017 08:19:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517061936.uuqkxjj32u4mkwyo@pengutronix.de>
References: <20170511175425.25515-1-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170511175425.25515-1-rockford@yandex.ru>
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
Subject: Re: [PATCH] ARM: Embedsky E9: Update environment
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Thu, May 11, 2017 at 08:54:25PM +0300, Andrey Panov wrote:
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1       | 1 +
>  arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3       | 1 +
>  arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default | 1 +
>  3 files changed, 3 insertions(+)
>  create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1 b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
> index 0177e6c6b..a54b77726 100644
> --- a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
> +++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
> @@ -3,4 +3,5 @@
>  mount /dev/mmc1.0
>  
>  global.bootm.image=/mnt/mmc1.0/zImage
> +global.bootm.oftree=/mnt/mmc1.0/imx6q-embedsky-e9.dtb
>  global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
> diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3 b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
> index f6cb529d3..154cef9e7 100644
> --- a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
> +++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
> @@ -3,4 +3,5 @@
>  mount /dev/mmc3.0
>  
>  global.bootm.image=/mnt/mmc3.0/zImage
> +global.bootm.oftree=/mnt/mmc3.0/imx6q-embedsky-e9.dtb
>  global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
> diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default b/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default
> new file mode 100644
> index 000000000..da228862c
> --- /dev/null
> +++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default
> @@ -0,0 +1 @@
> +mmc1 mmc3
> -- 
> 2.11.0
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
