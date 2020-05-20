Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNU1-0006UJ-Rz
 for barebox@lists.infradead.org; Wed, 20 May 2020 12:06:03 +0000
Date: Wed, 20 May 2020 14:05:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520120559.GE11869@pengutronix.de>
References: <20200517182039.9259-1-a.fatoum@pengutronix.de>
 <20200518093135.w7btykywr4mhagrn@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518093135.w7btykywr4mhagrn@pengutronix.de>
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
Subject: Re: [PATCH] treewide: replace commas with semicolons where appropriate
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Mon, May 18, 2020 at 11:31:35AM +0200, Roland Hieber wrote:
> On Sun, May 17, 2020 at 08:20:39PM +0200, Ahmad Fatoum wrote:
> > Found by searching drivers/ arch/ common/ and lib/ for
> > 
> >  /^\s+[^."/\*\[\s\{\(A-Z][^\[\{\(]*=[^\{\(]+,$/
> > 
> > Because the comma has the lowest precedence in C,
> > this shouldn't result in any functional change.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  .../boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  2 +-
> >  arch/arm/mach-imx/iim.c                       |  6 +++---
> >  arch/nios2/lib/libgcc.c                       | 21 ++++++++++---------
> >  drivers/i2c/busses/i2c-imx-early.c            |  2 +-
> >  drivers/i2c/busses/i2c-imx.c                  |  2 +-
> >  drivers/i2c/busses/i2c-omap.c                 |  2 +-
> >  drivers/mci/stm32_sdmmc2.c                    |  4 ++--
> >  drivers/net/usb/usbnet.c                      | 10 ++++-----
> >  8 files changed, 25 insertions(+), 24 deletions(-)
> > 
> > diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> > index 220a484bde80..558bc0791243 100644
> > --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> > +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> > @@ -242,7 +242,7 @@ static int eukrea_cpuimx35_core_init(void)
> >  	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
> >  	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
> >  	reg |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
> > -	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT,
> > +	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
> >  	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
> >  	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR2);
> >  	reg |= 0x3 << MX35_CCM_CGR2_USB_SHIFT;
> > diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
> > index 207e1879c3a9..2c7ffb009097 100644
> > --- a/arch/arm/mach-imx/iim.c
> > +++ b/arch/arm/mach-imx/iim.c
> > @@ -329,9 +329,9 @@ static int imx_iim_add_bank(struct iim_priv *iim, int num, int nregs)
> >  
> >  	iim->bank[num] = bank;
> >  
> > -	bank->map_config.reg_bits = 8,
> > -	bank->map_config.val_bits = 8,
> > -	bank->map_config.reg_stride = 1,
> > +	bank->map_config.reg_bits = 8;
> > +	bank->map_config.val_bits = 8;
> > +	bank->map_config.reg_stride = 1;
> >  	bank->map_config.max_register = (nregs - 1),
> 
> Your regex didn't spot this line :)

Changed and added to this patch.

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
