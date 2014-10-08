Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xbkud-00062q-Kz
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 06:39:52 +0000
Date: Wed, 8 Oct 2014 08:39:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141008063929.GY4992@pengutronix.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH v2 00/19] PCI and Tegra series revamp
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sat, Oct 04, 2014 at 07:40:06PM +0200, Lucas Stach wrote:
> Ok, I got around to work a bit more on this. I now
> actually finished the rtl8169 network driver, so
> this series yields working PCI attached ethernet
> on Tegra30 Beaver.
> 
> For Jetson K1 some work is left to setup the PHYs, but
> that shouldn't be far out. 
> 
> While working on this I stumbled upon a few more issues,
> so I decided to just roll the fixes into this series
> and resend.
> 
> Lucas Stach (19):
>   MIPS: malta: fix pci IO resource assignment
>   pci: split out device init
>   pci: add resource enum
>   pci: properly populate prefetchable BARs
>   pci: setup bridges and traverse buses behind them
>   pci: defer device registration until after bridge setup
>   pci: prettyprint device names
>   pci: track parent<->child relationship
>   commands: lspci: go down into subordinate busses
>   clk: tegra: add PLLE setup functions
>   clk: tegra30: add PCIe clocks
>   i2c: tegra: move to fs initcall
>   ARM: tegra: beaver: enable PEX voltage rail
>   tegra: pmc: add powerdomain handling
>   of: import pci range parser from linux
>   pci: add Tegra host controller driver
>   ARM: tegra: advertise PCI support
>   net: add rtl8169 driver
>   ARM: tegra: enable network related options in defconfig

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
