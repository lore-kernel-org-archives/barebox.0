Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXg51-0005BM-Uc
 for barebox@lists.infradead.org; Tue, 26 Jun 2018 04:59:53 +0000
Date: Tue, 26 Jun 2018 06:59:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180626045940.jy7aainjytbq2u6w@pengutronix.de>
References: <20180624222623.30564-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180624222623.30564-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/6] RAVE SP RDU2-related changes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jun 24, 2018 at 03:26:17PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This is the series of loosely related RDU2/RAVE SP chagnes that bring
> the following:
> 
>     - Remove old/stale RAVE SP entries from RDU2's DT
> 
>     - Adds EEPROM DT node to bind against recently accepted RAVE SP
>       EEPROM driver
> 
>     - Introduces unified way of accessing (getting or setting) boot
>       source for both RDU2 and RDU1 (support for which is coming)
> 
>     - Add backlight DT node to bind against recently accepted RAVE SP
>       backlight driver

Applied, thanks

Sascha

> 
> Feedback is welcome!
> 
> Thanks,
> Andrey Smirnov
> 
> 
> Andrey Smirnov (6):
>   ARM: dts: rdu2: Remove obsolete 'pic' node in uart4
>   ARM: dts: rdu2: Add nodes for RAVE SP EEPROM
>   watchdog: rave-sp-wdt: Remove bogus leftover code
>   watchdog: rave-sp-wdt: Explicitly access EEPROM for bootsource
>   ARM: dts: rdu2: Specify "boot-source" NVMEM cell
>   ARM: dts: rdu2: Add node for backlight device
> 
>  arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 75 +++++++++------------------
>  drivers/watchdog/rave-sp-wdt.c     | 82 +++++++++++++++---------------
>  2 files changed, 64 insertions(+), 93 deletions(-)
> 
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
