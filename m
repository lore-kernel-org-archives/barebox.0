Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtJUL-0001mp-NU
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 17:01:18 +0000
Message-ID: <1416934853.2741.7.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Nov 2014 18:00:53 +0100
In-Reply-To: <20141124125931.GH30369@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
 <1416827220-3103-18-git-send-email-l.stach@pengutronix.de>
 <20141124125931.GH30369@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 17/20] blspec: depend on, not select flexible bootargs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Montag, den 24.11.2014, 13:59 +0100 schrieb Sascha Hauer:
> On Mon, Nov 24, 2014 at 12:06:57PM +0100, Lucas Stach wrote:
> > Blspec is a consumer of the flexible bootargs mechanism, so it should
> > depend on it rather than select it.
> > 
> > Fixes:
> > warning: (BLSPEC && DEFAULT_ENVIRONMENT_GENERIC_NEW) selects FLEXIBLE_BOOTARGS
> > which has unmet direct dependencies (COMMAND_SUPPORT && CMD_GLOBAL)
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  common/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/common/Kconfig b/common/Kconfig
> > index a2cce391f461..6583aabc44d9 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -478,8 +478,8 @@ config TIMESTAMP
> >  
> >  config BLSPEC
> >  	depends on BLOCK
> > +	depends on FLEXIBLE_BOOTARGS
> >  	select OFTREE
> > -	select FLEXIBLE_BOOTARGS
> 
> This effectively disables BLSPEC support in these configs:
> 
> arch/arm/configs/tegra_v7_defconfig:17:CONFIG_BLSPEC=y
> arch/arm/configs/rpi_defconfig:14:CONFIG_BLSPEC=y
> arch/arm/configs/imx_defconfig:22:CONFIG_BLSPEC=y
> arch/arm/configs/imx_v7_defconfig:40:CONFIG_BLSPEC=y
> arch/arm/configs/mvebu_defconfig:18:CONFIG_BLSPEC=y
> arch/arm/configs/am335x_defconfig:25:CONFIG_BLSPEC=y
> arch/arm/configs/tqma53_defconfig:19:CONFIG_BLSPEC=y
> 
> You have to add a CONFIG_FLEXIBLE_BOOTARGS=y in these files.
> 
Thanks for the pointer, I've looked into this and it seems this is only
necessary for the mvebu defconfig.

All other defconfigs include CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW
which still selects CONFIG_FLEXIBLE_BOOTARGS. Will fix with v2.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
