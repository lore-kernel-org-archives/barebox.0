Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3O8-0005gz-Cw
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 06:57:41 +0000
Date: Tue, 4 Jun 2019 08:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604065738.gqsajccqnoy6iryx@pengutronix.de>
References: <20190602053834.8950-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190602053834.8950-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] riscv: dts: erizo-generic: fix memory node name
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jun 02, 2019 at 08:38:34AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/dts/erizo-generic.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/dts/erizo-generic.dts b/arch/riscv/dts/erizo-generic.dts
> index d1f8d57168..29da01ef8e 100644
> --- a/arch/riscv/dts/erizo-generic.dts
> +++ b/arch/riscv/dts/erizo-generic.dts
> @@ -7,7 +7,7 @@
>  	model = "generic Erizo SoC board";
>  	compatible = "miet-riscv-workgroup,erizo-generic-board";
>  
> -	memory@0 {
> +	memory@80000000 {
>  		device_type = "memory";
>  		reg = <0x80000000 0x00800000>;
>  	};
> -- 
> 2.20.1
> 
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
