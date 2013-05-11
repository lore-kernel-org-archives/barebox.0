Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbC3M-0003qM-BJ
 for barebox@lists.infradead.org; Sat, 11 May 2013 15:49:44 +0000
Date: Sat, 11 May 2013 17:49:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130511154922.GT32299@pengutronix.de>
References: <1368165646-5471-1-git-send-email-wilhelm.lundgren@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368165646-5471-1-git-send-email-wilhelm.lundgren@gmail.com>
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
Subject: Re: [PATCH] Added sd driver for bcm2835 (Raspberry PI)
To: wilhelm <wilhelm.lundgren@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 10, 2013 at 08:00:46AM +0200, wilhelm wrote:
> Replaced defines according to sdhci.h
> 
> ---
>  arch/arm/mach-bcm2835/core.c |   1 +
>  drivers/mci/Kconfig          |   4 +
>  drivers/mci/Makefile         |   1 +
>  drivers/mci/mci-bcm2835.c    | 591 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/mci/mci-bcm2835.h    |  73 ++++++

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
