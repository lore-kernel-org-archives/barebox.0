Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhZZU-0006nH-2u
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 08:18:21 +0000
Date: Mon, 13 Apr 2015 10:17:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150413081757.GF9742@pengutronix.de>
References: <1428156197-5305-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428156197-5305-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] make PBL_CONSOLE depend on PBL_IMAGE
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 04, 2015 at 05:03:17PM +0300, Antony Pavlov wrote:
> PBL_CONSOLE option is used only for building PBL. See this output:
> 
>     barebox$ git grep PBL_CONSOLE
>     arch/arm/configs/tx28stk5_defconfig:CONFIG_PBL_CONSOLE=y
>     common/Kconfig:config PBL_CONSOLE
>     common/Makefile:pbl-$(CONFIG_PBL_CONSOLE)       += memory_display.o
>     include/printk.h:       (defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
>     include/stdio.h:        (defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
>     lib/Makefile:pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
>     pbl/Makefile:pbl-$(CONFIG_PBL_CONSOLE) += console.o
> 
> PBL_CONSOLE looks confusing in PBL-less configuration
> so it's better to enable it only if PBL is enabled.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

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
