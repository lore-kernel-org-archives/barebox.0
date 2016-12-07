Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEiOg-0006Sj-Gh
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:00:59 +0000
Date: Wed, 7 Dec 2016 21:00:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207200035.gdpq4l6lrqglhs4r@pengutronix.de>
References: <20161205082829.22468-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161205082829.22468-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: qemu-malta_defconfig: set MAX_IMAGE_SIZE = 4 MiB
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 05, 2016 at 11:28:29AM +0300, Antony Pavlov wrote:
> If barebox binary image size exceeds the 4 MiB then
> qemu exits with the 'Could not load MIPS bios' message.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/configs/qemu-malta_defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
> index 004adac..9671e93 100644
> --- a/arch/mips/configs/qemu-malta_defconfig
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -1,6 +1,7 @@
>  CONFIG_BUILTIN_DTB=y
>  CONFIG_BUILTIN_DTB_NAME="qemu-malta"
>  CONFIG_PBL_IMAGE=y
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
>  CONFIG_STACK_SIZE=0x7000
>  CONFIG_EXPERIMENTAL=y
>  CONFIG_BAUDRATE=38400
> -- 
> 2.10.2
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
