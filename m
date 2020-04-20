Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWBi-0003ZF-59
 for barebox@lists.infradead.org; Mon, 20 Apr 2020 13:10:16 +0000
Date: Mon, 20 Apr 2020 15:10:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200420131012.GD1694@pengutronix.de>
References: <20200415101422.14405-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415101422.14405-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] ARM: dts. i.MX7: add stopgap solution for barebox UART
 clock breakage
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Juergen Borleis <jbe@pengutronix.de>

On Wed, Apr 15, 2020 at 12:14:22PM +0200, Ahmad Fatoum wrote:
> Commit 8b2104d740 ("driver: Call of_clk_set_defaults for each probed device")
> made barebox act on the assigned-clock-parents property everywhere, not
> only for clock provider nodes. This breaks at least the serial console on
> the i.MX7 SabreSD board; only garbage is output if the patch is not
> reverted. As stopgap measure, override these properties for all enabled
> uart nodes in the barebox i.MX7 device tree. This reverts the behavior
> to what it was like before the offending commit.
> 
> This is of course no real solution, as obviously Linux was fine dealing
> with these properties before. But this hack should at least fix the
> serial console for the boards that were broken in v2020.03.0.
> 
> When a proper fix follows, this patch can be reverted.
> 
> Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Juergen Borleis <jbe@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Hello Sascha,
> 
> please apply to master, so the boards broken in v2020.03.0
> aren't broken in v2020.04.0 as well.

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
