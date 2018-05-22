Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL1Xx-0005Yt-Bb
 for barebox@lists.infradead.org; Tue, 22 May 2018 07:17:33 +0000
Date: Tue, 22 May 2018 09:17:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180522071713.pnrqbv23xm3ikwmj@pengutronix.de>
References: <20180517212917.3628-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180517212917.3628-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 0/4] Pass reset and boot sources via /chosen node
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 17, 2018 at 02:29:13PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> The following patches are really usefull for Linux userspace
> applications that need to know the details about reset and boot
> sources.
> 
> Feedback is welcome!

Applied, thanks

Sascha

> 
> Changes since [v2]:
> 
> 	- Dropped unnecessary code in bootsource_get_alias_name().
> 
> 	- Chagned bootsource_get_alias_name() to bail out if
>           bootsource_instance is not properly set up
> 
> 	- Converted BOOTSOURCE_I2C_EEPROM and BOOTSOURCE_SPI_EEPROM to
>           be handled more explicitly
> 
> 	- Dropped unnecessary code in of_fixup_bootargs_bootsource()
> 
> Changes since [v1]:
> 
> 	- Series reworked to pass bootsource as a pointer to a
>           devicetree node corresponding to detected bootsource
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-May/032814.html
> [v2] http://lists.infradead.org/pipermail/barebox/2018-May/032909.html
> 
> Andrey Smirnov (4):
>   of: Make of_property_get_value() public
>   bootsource: Add bootsource alias name API
>   common: oftree: Pass bootsource and bootsource instance to kernel
>   common: oftree: Pass reset source and reset source instance to kernel
> 
>  common/bootsource.c  | 68 ++++++++++++++++++++++++++++++++++++++++++++
>  common/oftree.c      | 33 ++++++++++++++++++++-
>  drivers/of/base.c    |  5 ----
>  include/bootsource.h |  2 ++
>  include/of.h         |  6 ++++
>  5 files changed, 108 insertions(+), 6 deletions(-)
> 
> -- 
> 2.17.0
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
