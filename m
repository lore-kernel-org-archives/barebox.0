Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaNX6-000676-HH
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:20:49 +0000
Date: Mon, 19 Nov 2012 10:20:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119092046.GH10369@pengutronix.de>
References: <1353086393-16213-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353086393-16213-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] at91sam9260ek: specify mach entry
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 16, 2012 at 06:19:50PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as the sam9260ek may not be the first one in the list
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/configs/at91sam9260ek_defconfig |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
> index b746bc8..9c5c7d5 100644
> --- a/arch/arm/configs/at91sam9260ek_defconfig
> +++ b/arch/arm/configs/at91sam9260ek_defconfig
> @@ -1,4 +1,5 @@
>  CONFIG_ARCH_AT91SAM9260=y
> +CONFIG_MACH_AT91SAM9260EK=y

Won't this be removed again when we regenerate this file with make
safedefconfig? It seems a bit fragile to keep this change manually. I
have no good idea how to do this better though.


Applied the rest of this series for now.

Sascha

>  CONFIG_AEABI=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> -- 
> 1.7.10.4
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
