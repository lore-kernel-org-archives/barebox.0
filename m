Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHjtq-0003l8-3S
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 08:31:46 +0000
Date: Mon, 14 Sep 2020 10:31:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914083143.GK4498@pengutronix.de>
References: <2373015.TR22srR748@zen.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2373015.TR22srR748@zen.local>
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
Subject: Re: [PATCH] pinctrl-single: Support 2 pinctrl-cells in ,pins mode
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 09, 2020 at 12:19:05AM -0700, Trent Piepho wrote:
> The 5.9rc-1 dts update pulled in a change that broke all TI AM33xx
> platforms.  This fixes that.
> 
> Previously, when using pinctrl-single,pins, the value of
> "#pinctrl-cells" was always 1, which indicates one data cell per pin,
> which contains the value to to program into the pinctrl register.
> 
> In kernel v5.9-rc1, commit a13395418888 ("pinctrl: single: parse #pinctrl-cells
>  = 2"), added support for 2 data cells per pin.  The two cells get ORed
> together to produce one register value.
> 
> Then commit 27c90e5e48d0 ("ARM: dts: am33xx-l4: change #pinctrl-cells
> from 1 to 2"), changed the dts files to use two cells for am33xx and
> changed the AM33XX_PADCONF() macro to produce two data cells instead of
> ORing the two values together.  The pinctrl driver will now do the OR
> to produce the same value that was in one cell before.  I don't see what
> this accomplishes, but there it is.
> 
> The dts update pulled in the latter change, but not the former, leaving
> Barebox's pinctrl-single driver unable to correctly use the am33xx
> pinctrl data.  This commit adds support for the 2 cell format.
> 
> It would be easier to just change the dts files back, since this change
> doesn't appear actually accomplish anything, but then the dts source
> would be out of sync with the kernel.
> 
> Signed-off-by: Trent Piepho <tpiepho@gmail.com>
> ---
>  drivers/pinctrl/pinctrl-single.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)

Applied to master, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
