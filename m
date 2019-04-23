Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIqsN-0000V7-Hc
 for barebox@lists.infradead.org; Tue, 23 Apr 2019 08:34:05 +0000
Date: Tue, 23 Apr 2019 10:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190423083401.w3nhdpk3phriruki@pengutronix.de>
References: <20190410093737.8862-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190410093737.8862-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] ARM: socfpga: Cyclone5: remove watchdog_disable()
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Wed, Apr 10, 2019 at 10:37:37AM +0100, Ian Abbott wrote:
> watchdog_disable() is left over from the original SoCFPGA commit and
> nothing calls it.  Remove it to avoid a '-Wmissing-prototypes' warning
> from the compiler.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  arch/arm/mach-socfpga/cyclone5-reset-manager.c | 17 -----------------
>  1 file changed, 17 deletions(-)

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
