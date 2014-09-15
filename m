Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTOgj-0002v5-RQ
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 05:18:58 +0000
Date: Mon, 15 Sep 2014 07:18:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140915051832.GW4992@pengutronix.de>
References: <1410516439-25951-1-git-send-email-s.hauer@pengutronix.de>
 <54130EBA.3080402@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54130EBA.3080402@gmail.com>
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
Subject: Re: [PATCH] pinctrl: fix Kconfig dependencies
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 12, 2014 at 05:18:18PM +0200, Sebastian Hesselbarth wrote:
> On 09/12/2014 12:07 PM, Sascha Hauer wrote:
> >- Remove OFDEVICE dependency from PINCTRL. It won't do
> >   much then, so add a comment to Kconfig when PINCTRL is
> >   selected without OFDEVICE
> >- Let Architectures only select PINCTRL instead of the
> >   particular driver. Change the drivers to 'default y if $SOC'
> >   to make sure the drivers are still compiled if the corresponding
> >   SoC is selected
> >
> >This fixes Kconfig warnings like:
> >
> >warning: (PINCTRL_ARMADA_370 && PINCTRL_ARMADA_XP && PINCTRL_DOVE && PINCTRL_KIRKWOOD) selects PINCTRL which has unmet direct dependencies (OFDEVICE)
> >
> >Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >---
> >  arch/arm/mach-mvebu/Kconfig        |  8 ++++----
> >  arch/arm/mach-tegra/Kconfig        |  6 +++---
> >  drivers/pinctrl/Kconfig            | 24 ++++++++++++++++--------
> >  drivers/pinctrl/mvebu/Kconfig      |  8 ++++----
> >  drivers/pinctrl/pinctrl-rockchip.c |  3 +++
> >  drivers/pinctrl/pinctrl.c          |  6 ++++++
> >  6 files changed, 36 insertions(+), 19 deletions(-)
> 
> For mvebu, you could also move 'select PINCTRL' to config MACH_MVEBU.
> I guess the same is also true for Tegra?

Yes, every Tegra board has pinctrl, so I moved the select statements to
ARCH_MVEBU / ARCH_TEGRA

> 
> But that is just a nit, so
> 
> Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Thanks

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
