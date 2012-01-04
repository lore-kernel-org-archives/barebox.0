Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiR5H-0004jV-47
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 13:40:52 +0000
Date: Wed, 4 Jan 2012 14:40:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120104134042.GP27267@pengutronix.de>
References: <20111231151655.GB945@game.jcrosoft.org>
 <1325344898-7076-8-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325344898-7076-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 08/12] at91/gpio: simplify resources
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Sat, Dec 31, 2011 at 04:21:34PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> drop irq id and rebase instead of of offset
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/at91rm9200.c                |   12 ++++--------
>  arch/arm/mach-at91/at91sam9260.c               |    9 +++------
>  arch/arm/mach-at91/at91sam9261.c               |    9 +++------
>  arch/arm/mach-at91/at91sam9263.c               |   15 +++++----------
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c |   10 +++++-----
>  arch/arm/mach-at91/at91sam9g45.c               |   15 +++++----------
>  arch/arm/mach-at91/gpio.c                      |   13 ++-----------
>  arch/arm/mach-at91/include/mach/at91rm9200.h   |    9 +++++----
>  arch/arm/mach-at91/include/mach/at91sam9260.h  |    7 ++++---
>  arch/arm/mach-at91/include/mach/at91sam9261.h  |    7 ++++---
>  arch/arm/mach-at91/include/mach/at91sam9263.h  |   11 ++++++-----
>  arch/arm/mach-at91/include/mach/at91sam9g45.h  |   11 ++++++-----
>  arch/arm/mach-at91/include/mach/gpio.h         |    4 ----
>  13 files changed, 52 insertions(+), 80 deletions(-)

This breaks at91rm9200ek_defconfig which still references AT91_PIOC.
I don't know if it's worth it to keep this around anyway since the
ethernet driver seems to be broken since ages.

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
