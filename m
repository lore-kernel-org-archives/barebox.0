Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6XA9-0004Jz-4e
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 08:00:58 +0000
Date: Thu, 12 Apr 2018 10:00:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180412080044.yt3uw3hzdjm7v5t4@pengutronix.de>
References: <20180412053559.30687-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180412053559.30687-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/4] ARM: socfpga: misc fixes
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 12, 2018 at 08:35:55AM +0300, Antony Pavlov wrote:
> Antony Pavlov (4):
>   net: make SoCFPGA-specific designware driver work again
>   ARM: socfpga: boards: pll_config.h: remove duplicate macros
>   ARM: socfpga: mach/pll_config.h: add guard macro
>   ARM: socfpga_defconfig: enable Altera firmware stuff
> 

Applied all, thanks

Sascha

>  arch/arm/boards/ebv-socrates/pll_config.h       | 6 ------
>  arch/arm/boards/terasic-sockit/pll_config.h     | 6 ------
>  arch/arm/configs/socfpga_defconfig              | 3 +++
>  arch/arm/mach-socfpga/include/mach/pll_config.h | 4 ++++
>  drivers/net/Kconfig                             | 1 +
>  5 files changed, 8 insertions(+), 12 deletions(-)
> 
> -- 
> 2.17.0
> 
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
