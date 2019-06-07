Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ926-0007ce-Me
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 07:11:28 +0000
Date: Fri, 7 Jun 2019 09:11:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607071124.sozhmv2uoquycd4q@pengutronix.de>
References: <20190602073101.21352-1-antonynpavlov@gmail.com>
 <20190602073101.21352-4-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190602073101.21352-4-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 3/4] WIP: make it work on litex
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jun 02, 2019 at 10:31:00AM +0300, Antony Pavlov wrote:
>   * litex platform does not use ns16550 at all
>     so debug_ll_ns16550_init should be eliminated;
> 
>   * there is no IH_ARCH_RISCV definition in include/image.h
>     at the moment, so the error stops compiling:
>         common/bootm.c: In function 'bootm_open_os_uimage':
>         common/bootm.c:491:34: error: 'IH_ARCH' undeclared (first use in this
>         function)
>         if (data->os->header.ih_arch != IH_ARCH) {
>                                         ^~~~~~~

U-Boot has IH_ARCH_RISCV already, you can copy it there.

> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/boot/start.S | 2 --
>  common/bootm.c          | 2 ++
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
> index d1dbe48b7b..fab23e926f 100644
> --- a/arch/riscv/boot/start.S
> +++ b/arch/riscv/boot/start.S
> @@ -28,8 +28,6 @@
>  
>  .globl _start
>  _start:
> -	debug_ll_ns16550_init
> -

This should be done by board code.

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
