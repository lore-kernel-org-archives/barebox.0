Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erlPB-0004VF-QK
 for barebox@lists.infradead.org; Fri, 02 Mar 2018 14:12:29 +0000
Date: Fri, 2 Mar 2018 15:11:06 +0100 (CET)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <272060361.5564.1519999866645@mail.vodafone.de>
In-Reply-To: <20180302072606.nn5o4mj7zbe4pyna@pengutronix.de>
References: <377910125.70611.1519914213534@mail.vodafone.de>
 <20180302072606.nn5o4mj7zbe4pyna@pengutronix.de>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

> On March 2, 2018 at 8:26 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> 
> On Thu, Mar 01, 2018 at 03:23:33PM +0100, Giorgio Dal Molin wrote:
> > Hi,
> > 
> > working with the TI AM335x Evaluation Module I noticed that the function
> > am335x_sdram_size() always returns 0 instead of the computed sdram size.
> > 
> > I could trace back the problem to the fact that the function does its 
> > computation based on the value of the register CM_EMIF_SDRAM_CONFIG
> > (addr. 0x44e10110), but this register is not written to by the function
> > am33xx_config_sdram() and just returns its initial value (0).
> > The datasheet says CM_EMIF_SDRAM_CONFIG should have the same value as
> > AM33XX_EMIF4_0_REG(SDRAM_CONFIG) (addr. 0x4c000008)
> 
> CM_EMIF_SDRAM_CONFIG is written when regs->zq_config is set and if it's
> set then indeed the same value is written there as also written to
> AM33XX_EMIF4_0_REG(SDRAM_CONFIG).
> 

aaah, I'm blind !

I've added a line at the end of am33xx_config_sdram() that's
exactly the same as the one a couple of lines before.
I was so happy to have solved my problem that I've no more
double checked if the register was already configured somewhere else.

So, now I've also defined regs->zq_config in my lowlevel.c and everything works.

The datasheet says:

The CONTROL_EMIF_SDRAM_CONFIG register exports SDRAM configuration information
to the EMIF after resuming from low power scenarios.
This register should be loaded with the same value as SDRAM_CONFIG during DDR
initialization.

so I think we should initialize it unconditionally, not only if !regs->zq_config.
Doing this it should be the same which one we use in am335x_sdram_size() to
compute the sdram size even if I would prefer to use AM33XX_EMIF4_0_REG(SDRAM_CONFIG)
for clarity.

giorgio

> > 
> > To conclude, to fix the problem with am335x_sdram_size() you can either
> > use AM33XX_EMIF4_0_REG(SDRAM_CONFIG) instead of CM_EMIF_SDRAM_CONFIG
> > in am335x_sdram_size().
> > 
> >  or
> > 
> > initialize CM_EMIF_SDRAM_CONFIG in am33xx_config_sdram() with the same value
> > as AM33XX_EMIF4_0_REG(SDRAM_CONFIG) (regs->sdram_config)
> 
> I'm fine with either way. Maybe the datasheet gives us a hint which way
> to choose? Why is CM_EMIF_SDRAM_CONFIG only written when regs->zq_config
> is set? Is this correct?
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
