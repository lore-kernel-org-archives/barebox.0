Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UlIs7-0005PM-9Y
 for barebox@lists.infradead.org; Sat, 08 Jun 2013 13:07:56 +0000
Date: Sat, 8 Jun 2013 15:07:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130608130730.GH32299@pengutronix.de>
References: <1370608890-13776-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370608890-13776-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 0/3] tqma53: fixes for Kconfig and flash_header
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 07, 2013 at 02:41:27PM +0200, Steffen Trumtrar wrote:
> Hi!
> 
> Some fixes for the tqma53:
> 	- rename "tqma53"->"TQMa53" in Kconfig text
> 	- move RAM size selection to boardspecific submenu
> 	- update flash_header with Errata settings

Applied, thanks

Sascha

> 
> Regards,
> Steffen
> 
> 
> Markus Niebel (3):
>   ARM: i.MX53: tqma53: fix board name in Kconfig
>   ARM: i.MX53: tqma53: move RAM setting to submenu
>   ARM: i.MX53: tqma53: update flash_header
> 
>  arch/arm/boards/tqma53/flash_header.c |  9 ++++++---
>  arch/arm/mach-imx/Kconfig             | 20 ++++++++++++--------
>  2 files changed, 18 insertions(+), 11 deletions(-)
> 
> -- 
> 1.8.2.rc2
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
