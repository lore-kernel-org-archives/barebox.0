Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ws3ed-0001u0-K3
 for barebox@lists.infradead.org; Wed, 04 Jun 2014 05:22:28 +0000
Date: Wed, 4 Jun 2014 07:22:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140604052205.GE15686@pengutronix.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 00/30] Tegra K1 support
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 03, 2014 at 10:34:47PM +0200, Lucas Stach wrote:
> This is the next big round of Tegra updates, featuring
> Tegra K1 support. The series is based on -next as it has
> quite some dependencies on the earlier Tegra series.
> 
> The first 4 patches are some general useful additions,
> all others are adding K1 aka Tegra124 support. I've
> verified booting a Linux kernel to the rootfs panic.
> 
> The series is regression free on Tegra30.
> 
> Lucas Stach (30):
>   mci: implement non-removable property
>   tegra: lowlevel-dvc: use __always_inline macro
>   tegra: pmc: add Tegra30 compatible
>   tegra: pmc: add command to get into RCM
>   tegra: lowlevel: setup an early stack
>   tegra: add Tegra124 id to lowlevel functions
>   tegra: lowlevel: fix ODMdata fetch on Tegra124
>   tegra: recognize Tegra124 in maincomplex startup
>   tegra: recognize Tegra124 in common initcalls
>   tegra: add Tegra124 and AS3722 PMIC to lowlevel-dvc
>   tegra: disable IDDQ for PLL_X on Tegra124
>   tegra: power up additional partitions on Tegra124
>   tegra: fix MESLECT clock enable
>   tegra: change cpu internal reset layout for Tegra124
>   tegra: add Tegra124 PLL_X rate setup
>   tegra: apply cluster switch logic to all SoCs >=T30
>   tegra: hardcode entry address for main cluster
>   tegra: setup L2 cache on Tegra124
>   tegra: add architectural timer init
>   tegra: add Tegra124 Kconfig symbol
>   pinctrl: tegra30: introduce drvdata
>   pinctrl: tegra: add Tegra124 support
>   clk: tegra: allow variable sized muxes
>   clk: tegra: don't bug out on zero PLL postdiv
>   clk: tegra: add Tegra124 driver
>   mci: tegra: add Tegra124 compatible
>   tegra: pmc: add Tegra124 compatible
>   images: add Tegra124 image build rules
>   tegra: add NVIDIA Jetson-TK1 board support
>   tegra: refresh defconfig

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
