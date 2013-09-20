Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMuZa-0000fp-V8
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 06:52:17 +0000
Date: Fri, 20 Sep 2013 08:51:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130920065153.GA30088@pengutronix.de>
References: <1379655185-22776-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379655185-22776-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] animeo_ip: set uSD port devname to microsd
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 20, 2013 at 07:33:05AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can always found it and not confuse it with a usb stick device
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/animeo_ip/init.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
> index 5419ddb..e99acd0 100644
> --- a/arch/arm/boards/animeo_ip/init.c
> +++ b/arch/arm/boards/animeo_ip/init.c
> @@ -136,6 +136,7 @@ static struct atmel_mci_platform_data __initdata animeo_ip_mci_data = {
>  	.slot_b		= 1,
>  	.detect_pin	= -EINVAL,
>  	.wp_pin		= -EINVAL,
> +	.devname	= "microsd",
>  };
>  
>  static void animeo_ip_add_device_mci(void)
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
