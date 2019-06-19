Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWU9-0001bu-St
 for barebox@lists.infradead.org; Wed, 19 Jun 2019 09:02:31 +0000
Date: Wed, 19 Jun 2019 11:02:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190619090227.7tuka7edohcaezge@pengutronix.de>
References: <20190617143418.32207-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617143418.32207-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 0/4] ARM: stm32mp: implement watchdog/reset handling
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 17, 2019 at 04:34:14PM +0200, Ahmad Fatoum wrote:
> Originally, I thought about having poller enabled by default if the
> watchdog was active at barebox probe time, but I can't find a way
> to check if the IWDG is active or not, thus the driver probe doesn't
> touch the watchdog hardware anymore.
> 
> Changes since v2:
>  * Dropped already applied patches from v2
>  * reran savedefconfig as prep and added the commit
>  * documented BROWNOUT reason in Documentation/
>  * removed enabling watchdog by default
>  * renamed the file to stm32_wdt.c to stm32_iwdg.c, because there is
>    a distinct stm32_wwdg Watchdog as well
>  * dropped &iwdg2 { status = "okay"; } because it's now part of the
>    upstream device tree

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
