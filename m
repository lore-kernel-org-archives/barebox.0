Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WctgZ-0002rP-MZ
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:41:48 +0000
Date: Wed, 23 Apr 2014 11:41:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423094125.GI5858@pengutronix.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 00/18] Tegra 3 support
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Apr 13, 2014 at 03:27:30PM +0200, Lucas Stach wrote:
> Ok, this one took me a little longer than I would
> have wished for, but now it's good enough to post.
> 
> This series adds support for the Tegra 3 line of
> SoCs. This includes a clock driver that sets up the
> PLLs and peripheral clocks and a pinctrl driver to
> bring the external muxing into a sane state.
> 
> There is still a lot to do here, but with this
> series barebox starts up on an NVidia Beaver board
> and the eMMC is usable.
> 
> Next step would be to integrate BCT writing into
> the Tegra image process so barebox is able to write
> itself to MMC as a bootable image.
> 
> Lucas Stach (18):
>   gpio: tegra: remove dead code
>   mmc: tegra: fix typo
>   tegra: disable more lowlevel unsafe switch optimizations
>   tegra: source MSELECT clock from CLK_M
>   tegra: add Tegra3 kconfig symbol
>   tegra: add Tegra3 ramsize detection
>   tegra: add Tegra3 mem initcall
>   tegra: recognize T30 in debug UART code
>   dt-bindings: add pinctrl-tegra.h
>   pinctrl: tegra: add Tegra3 driver
>   dt-bindings: add tegra30-car.h
>   clk: tegra: consider new T30 clock registers
>   clk: tegra: add Tegra3 driver
>   gpio: tegra: add Tegra3 setup
>   ARM: tegra: add basic Tegra3 DT
>   ARM: tegra: add NVidia Beaver board support
>   ARM: dts: tegra: add full Beaver pinmux
>   defconfig: tegra: add some useful options

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
