Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go2jj-0003Pc-Rh
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 08:58:00 +0000
Date: Mon, 28 Jan 2019 09:57:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190128085746.leqn7ij3pfxxzf32@pengutronix.de>
References: <20190125170640.19469-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190125170640.19469-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] Documentation: imx8mq-evk: point to current version
 of the firmware
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 25, 2019 at 06:06:38PM +0100, Lucas Stach wrote:
> There were some updates to the i.MX8MQ DDR training firmware, so better
> point to the current version.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  Documentation/boards/imx/nxp-imx8mq-evk.rst | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
> index dfe004e0e434..ba8cf01452d6 100644
> --- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
> @@ -16,9 +16,9 @@ uses several binary firmware blobs that are distributed under a
>  separate EULA and cannot be included in Barebox. In order to obtain
>  them do the following::
>  
> - wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-7.2.bin
> - chmod +x firmware-imx-7.2.bin
> - ./firmware-imx-7.2.bin
> + wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-8.0.bin
> + chmod +x firmware-imx-8.0.bin
> + ./firmware-imx-8.0.bin
>  
>  Executing that file should produce a EULA acceptance dialog as well as
>  result in the following files:
> @@ -36,7 +36,7 @@ As a last step of this process those files need to be placed in
>  	   lpddr4_pmu_train_2d_dmem.bin  \
>  	   lpddr4_pmu_train_2d_imem.bin; \
>    do \
> -	   cp firmware-imx-7.2/firmware/ddr/synopsys/${f} \
> +	   cp firmware-imx-8.0/firmware/ddr/synopsys/${f} \
>  	      firmware/imx/${f}; \
>    done
>  
> -- 
> 2.20.1
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
