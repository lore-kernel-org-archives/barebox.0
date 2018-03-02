Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erf5B-0007vS-Mb
 for barebox@lists.infradead.org; Fri, 02 Mar 2018 07:26:23 +0000
Date: Fri, 2 Mar 2018 08:26:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180302072606.nn5o4mj7zbe4pyna@pengutronix.de>
References: <377910125.70611.1519914213534@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <377910125.70611.1519914213534@mail.vodafone.de>
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
Subject: Re: problems with am335x_sdram_size()
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 01, 2018 at 03:23:33PM +0100, Giorgio Dal Molin wrote:
> Hi,
> 
> working with the TI AM335x Evaluation Module I noticed that the function
> am335x_sdram_size() always returns 0 instead of the computed sdram size.
> 
> I could trace back the problem to the fact that the function does its 
> computation based on the value of the register CM_EMIF_SDRAM_CONFIG
> (addr. 0x44e10110), but this register is not written to by the function
> am33xx_config_sdram() and just returns its initial value (0).
> The datasheet says CM_EMIF_SDRAM_CONFIG should have the same value as
> AM33XX_EMIF4_0_REG(SDRAM_CONFIG) (addr. 0x4c000008)

CM_EMIF_SDRAM_CONFIG is written when regs->zq_config is set and if it's
set then indeed the same value is written there as also written to
AM33XX_EMIF4_0_REG(SDRAM_CONFIG).

> 
> To conclude, to fix the problem with am335x_sdram_size() you can either
> use AM33XX_EMIF4_0_REG(SDRAM_CONFIG) instead of CM_EMIF_SDRAM_CONFIG
> in am335x_sdram_size().
> 
>  or
> 
> initialize CM_EMIF_SDRAM_CONFIG in am33xx_config_sdram() with the same value
> as AM33XX_EMIF4_0_REG(SDRAM_CONFIG) (regs->sdram_config)

I'm fine with either way. Maybe the datasheet gives us a hint which way
to choose? Why is CM_EMIF_SDRAM_CONFIG only written when regs->zq_config
is set? Is this correct?

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
