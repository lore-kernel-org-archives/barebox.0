Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMBYR-00016p-WA
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 06:48:04 +0000
Date: Wed, 18 Sep 2013 08:47:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130918064742.GG30088@pengutronix.de>
References: <1379404152-6313-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379404152-6313-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] animeo_ip: fix macb pin mux and set phy interface as
 MII
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2013 at 09:49:12AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/animeo_ip/init.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
> index 06d542e..56b8df2 100644
> --- a/arch/arm/boards/animeo_ip/init.c
> +++ b/arch/arm/boards/animeo_ip/init.c
> @@ -123,6 +123,8 @@ static void animeo_ip_add_device_nand(void)
>  
>  static struct macb_platform_data macb_pdata = {
>  	.phy_addr = 0,
> +	.phy_interface = PHY_INTERFACE_MODE_MII,
> +	.flags = AT91SAM_ETX2_ETX3_ALTERNATIVE,
>  };
>  
>  /*
> -- 
> 1.8.4.rc1
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
