Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSoLa-0001Hi-Ly
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 19:21:08 +0000
Date: Fri, 30 Nov 2018 20:20:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181130192054.shky2runlrk5siij@pengutronix.de>
References: <20181129124556.8179-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181129124556.8179-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH] clocksource: Add dw_apb_timer driver
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: cleger@kalray.eu, barebox@lists.infradead.org

On Thu, Nov 29, 2018 at 01:45:56PM +0100, Jules Maselbas wrote:
> Adapt linux kernel dw_apb_timer driver to barebox.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/clocksource/Kconfig        |   5 +
>  drivers/clocksource/Makefile       |   1 +
>  drivers/clocksource/dw_apb_timer.c | 148 +++++++++++++++++++++++++++++
>  3 files changed, 154 insertions(+)
>  create mode 100644 drivers/clocksource/dw_apb_timer.c

Applied, thanks

Out of curiosity, where are you using this driver on?

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
