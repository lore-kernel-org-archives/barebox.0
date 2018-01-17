Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebkPP-0005Zr-PX
 for barebox@lists.infradead.org; Wed, 17 Jan 2018 09:53:29 +0000
Date: Wed, 17 Jan 2018 10:53:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180117095314.rwdrslwpnkcwa6ey@pengutronix.de>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/7] sandbox: add gpio support with libftdi1
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Mon, Jan 15, 2018 at 12:22:45AM +0300, Antony Pavlov wrote:
> This patch series makes it possible to use FT2232H ACBUS[7:0]
> pins as gpio pins from sandbox barebox.
> 
> There are ready-to-use FT2232H-based boards:
> 
>   * FT2232H-56Q Mini-Module (http://www.ftdichip.com/Products/Modules/DevelopmentModules.htm#FT2232H-56_Mini)
>   * FT2232 breakout board (http://dangerousprototypes.com/docs/FT2232_breakout_board)
> 
> The main goal of adding gpio functionality to sandbox barebox
> is using it for connecting real i2c and spi devices to sandbox barebox.

I applied the parseopt patches for now since they don't need any further
discussions.

What puzzles me a bit is that the libftdi gpio controller is
instantiated from the device tree but configured through the
commandline. It probably has to be like this since we need the
device tree for using the gpios.

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
