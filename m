Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9nN-0005wn-It
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 08:32:35 +0000
Date: Mon, 25 Nov 2019 09:32:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191125083231.dxqbnh24vgxpbqzs@pengutronix.de>
References: <20191122133929.31050-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122133929.31050-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] watchdog: stm32_iwdg: explicitly set .running to
 UNSUPPORTED
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 22, 2019 at 02:39:29PM +0100, Ahmad Fatoum wrote:
> I've spent some time trying to get the ONF (Watchdog enable status)
> bit in the IWDG_SR register to read as something other than zero.
> 
> It has since been confirmed to be non-functional[1]. To avoid someone
> else spending time on this, document that running status is unsupported
> on this hardware explicitly.
> No functional change as UNSUPPORTED is already the default.
> 
> [1]: https://www.spinics.net/lists/arm-kernel/msg770527.html
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/watchdog/stm32_iwdg.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

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
