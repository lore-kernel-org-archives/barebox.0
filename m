Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TvtYF-0004vD-9k
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 17:46:59 +0000
Date: Thu, 17 Jan 2013 18:46:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130117174653.GC1906@pengutronix.de>
References: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/3] improvements in: omap4 OPP, omap4 usb booting and
 archosg9
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 17, 2013 at 02:39:17AM +0100, Vicente Bergas wrote:
>  .- in omap4 OPP use recommended values from datasheet
>  .- when booting an omap4 through usb it failed from time to time
>     this patch solves this problem
>  .- on archos g9 tablet, use the same pad_conf values readden from linux
>     when booting with avboot (archos own bootloader)
>  .- also on archos g9 tablet reorder initialization: first voltages then clocks
> 
> Vicente Bergas (3):
>   OMAP4: use OPPs recommended in datasheet
>   OMAP4_USB: more stable communications
>   ARCHOS: use manufacturer values for pad_conf and reorder
>     initialization

Applied, thanks

Sascha

> 
>  arch/arm/boards/archosg9/board.c              |   1 +
>  arch/arm/boards/archosg9/lowlevel.c           |  18 +-
>  arch/arm/boards/archosg9/mux.c                | 654 +++++++++-----------------
>  arch/arm/mach-omap/include/mach/omap4-clock.h |  12 +-
>  scripts/omap4_usbboot.c                       |  68 ++-
>  scripts/usb_linux.c                           |   4 +-
>  6 files changed, 295 insertions(+), 462 deletions(-)
> 
> -- 
> 1.8.1.1
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
