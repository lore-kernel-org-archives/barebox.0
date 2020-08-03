Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2fwH-0001Vp-Rz
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 19:16:02 +0000
Date: Mon, 3 Aug 2020 21:15:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803191559.GB31536@pengutronix.de>
References: <20200731045905.546141-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200731045905.546141-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] ARM: stm32mp: add support for Seeed Odyssey board
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Xogium <contact@xogium.me>, Jookia <contact@jookia.org>

On Fri, Jul 31, 2020 at 06:59:05AM +0200, Ahmad Fatoum wrote:
> Board consists of SoM with stm32mp157c with 4G eMMC and 512M DDR3 RAM.
> Carrier board features USB and ETH interfaces and SD card connector.
> 
> USB and ETH interfaces not yet operational.
> 
> Boot from eMMC requires boot ack bit set.
> 
> Device Tree taken from v5 of kernel device tree off mailing list[1].
> 
> [1]: https://lore.kernel.org/linux-arm-kernel/20200724145107.35772-3-marcin.sloniewski@gmail.com/
> 
> Tested-by: Jookia <contact@jookia.org>
> Tested-by: Xogium <contact@xogium.me>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---

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
