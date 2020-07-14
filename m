Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvPdF-0004Wz-Ui
 for barebox@lists.infradead.org; Tue, 14 Jul 2020 18:26:22 +0000
Date: Tue, 14 Jul 2020 20:26:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200714182619.GU15485@pengutronix.de>
References: <20200714051328.17224-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714051328.17224-1-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] arm: baltos: add environment node
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

Hi Yegor,

On Tue, Jul 14, 2020 at 07:13:28AM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Use the second SPL partition in NAND for environment storage.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/dts/am335x-baltos-minimal.dts | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
> index 137c177b2..8dfad3eb0 100644
> --- a/arch/arm/dts/am335x-baltos-minimal.dts
> +++ b/arch/arm/dts/am335x-baltos-minimal.dts
> @@ -22,6 +22,11 @@
>  
>  	chosen {
>  		stdout-path = &uart0;
> +
> +		environment-nand {
> +			compatible = "barebox,environment";
> +			device-path = &nand, "partname:SPL.backup1";
> +		};

Please add a phandle to the partition directly rather than to the NAND
device containing it.

When this is used as environment partition, shouldn't it be renamed
accordingly? In case the ROM needs one of the SPL backups, does it cope
with the environment being in SPL.backup1? Otherwise I would suggest
using SPL.backup3 for the environment.

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
