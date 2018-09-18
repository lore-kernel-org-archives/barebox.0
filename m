Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g29C7-0001tr-5m
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 06:09:08 +0000
Date: Tue, 18 Sep 2018 08:08:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180918060851.GI4097@pengutronix.de>
References: <9551553.ySa1Ws6A1a@think-future.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9551553.ySa1Ws6A1a@think-future.de>
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
Subject: Re: [PATCH]: ARM/RK3188 radxa-rock sdcard boot env file: DTB
 location fix
To: perachet7@gmail.com
Cc: barebox@lists.infradead.org

Hi,

On Mon, Sep 17, 2018 at 05:41:12PM +0200, perachet7@gmail.com wrote:
> Hi,
> 
> radxa-rock/env/boot/mshc1
> index 7393c4e63..b61dd807d 100644
> --- a/arch/arm/boards/radxa-rock/env/boot/mshc1
> +++ b/arch/arm/boards/radxa-rock/env/boot/mshc1
> @@ -3,7 +3,7 @@
>  mount /dev/mshc1.0
>  
>  global.bootm.boot_atag=true

   ^^^^

This should be removed also since we do not want to boot the board using
ATAGs.

Your patch lacks a Signed-off-by tag. Please add that next time you send
a patch. For this time I created a patch myself with the line above
removed.

Sascha

> -oftree -l /mnt/mshc1.0/rk3188-radxarock.dtb
> +global.bootm.oftree=/mnt/mshc1.0/rk3188-radxarock.dtb
>  
>  global.bootm.image=/mnt/mshc1.0/zImage
>  global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
> 
> 
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
