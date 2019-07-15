Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmukw-0005EW-M2
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 06:46:40 +0000
Date: Mon, 15 Jul 2019 08:46:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190715064636.mf53hsa3nkdcslad@pengutronix.de>
References: <20190712102457.15339-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712102457.15339-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/5] ARM: stm32mp: fix some misnomers/typos
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de

On Fri, Jul 12, 2019 at 12:24:53PM +0200, Ahmad Fatoum wrote:
> The arch was renamed to stm32mp, so it doesn't look out of place when
> the stm32mp2 is released. Fix spotted comments/labels with the old
> name. While at it, fix a typo about the SoC name on the DK2 board.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/Kconfig              | 2 +-
>  arch/arm/mach-stm32mp/Kconfig | 4 ++--
>  images/Makefile.stm32mp       | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)

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
