Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4orP-0005y7-9S
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 08:35:35 +0000
Date: Mon, 11 Feb 2013 09:35:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211083530.GL1906@pengutronix.de>
References: <20130208090739.GP19322@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130208090739.GP19322@game.jcrosoft.org>
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
Subject: Re: [For master PATCH 0/7] macb: more fixes + gem (gigabit support)
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On Fri, Feb 08, 2013 at 10:07:39AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	This patch serie fixe more issue on the macb and add the GEM support
> 	(gigabit support) present on Atmel sama5d3x as example
> 
> 	The IP version is detected as in linux
> 
> 	we now share more code with the kernel and will help to maintain the
> 	driver
> 
> 	tesed on at91 macb & gem
> 
> The following changes since commit 15c5fa0467b20c05e9ebea36e049764054a7e308:
> 
>   macb: drop non used define (2013-02-08 16:55:16 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/macb

Applied, thanks

Sascha

> 
> for you to fetch changes up to b7058953abdd014b9626b22d868fb29c1c563514:
> 
>   macb: add cadence Gigabit GEM support (2013-02-08 16:55:41 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (7):
>       macb: call macb_init at probe explecitly
>       macb: sync remaining define with linux
>       macb: use the macro as in linux for tx/rx buffer ring size
>       macb: enable Tramsmit and Receive at open
>       macb: reset the IP at init
>       macb: fix tx ring size
>       macb: add cadence Gigabit GEM support
> 
>  drivers/net/macb.c |  394 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------
>  drivers/net/macb.h |  179 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 466 insertions(+), 107 deletions(-)
> 
> Best Regards,
> J.
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
