Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo18l-0004vV-Dj
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 06:43:19 +0000
Date: Fri, 10 Aug 2018 08:43:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180810064303.c4dulds6qib2athq@pengutronix.de>
References: <20180809225230.21989-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180809225230.21989-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: VFxxx: zii-vf610-dev: Add newline before error
 banner
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 09, 2018 at 03:52:29PM -0700, Andrey Smirnov wrote:
> Add a cosmetic newline to the beginning of the error banner printed
> when we encounter unidentified board type. This way we'd avoid
> artifacts like:
> 
> barebox@ZII RDU1 Board:/ >*********************************
> * Unknown system type: 00000004
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

>  arch/arm/boards/zii-vf610-dev/lowlevel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
> index f3d67501a..d2f30d7ab 100644
> --- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
> +++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
> @@ -111,7 +111,7 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
>  		if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>  			relocate_to_current_adr();
>  			setup_c();
> -			puts_ll("*********************************\n");
> +			puts_ll("\n*********************************\n");
>  			puts_ll("* Unknown system type: ");
>  			puthex_ll(system_type);
>  			puts_ll("\n* Assuming devboard revision B\n");
> -- 
> 2.17.1
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
