Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg9Zb-0002Tu-3E
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 07:39:16 +0000
Date: Wed, 5 Dec 2012 08:39:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205073911.GZ10369@pengutronix.de>
References: <1354622611-7731-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354622611-7731-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH] OMAP4: removed __packed__ annotation from pad_conf_entry
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 04, 2012 at 01:03:31PM +0100, Enrico Scholz wrote:
> structure is used within barebox only and there is no need to pack it.
> As this option has a negative performance impact, remove it.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-omap/include/mach/omap4-mux.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-omap/include/mach/omap4-mux.h b/arch/arm/mach-omap/include/mach/omap4-mux.h
> index 9088631..db92a61 100644
> --- a/arch/arm/mach-omap/include/mach/omap4-mux.h
> +++ b/arch/arm/mach-omap/include/mach/omap4-mux.h
> @@ -30,7 +30,7 @@ struct pad_conf_entry {
>  
>  	u16 val;
>  
> -} __attribute__ ((packed));
> +};
>  
>  #define WAKEUP_EN       (1 << 14)
>  #ifdef CONFIG_OFF_PADCONF
> -- 
> 1.7.11.7
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
