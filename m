Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rq8b9-0007kl-Vq
 for barebox@lists.infradead.org; Wed, 25 Jan 2012 19:33:37 +0000
Date: Wed, 25 Jan 2012 20:33:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120125193325.GB5446@pengutronix.de>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/9] MPC8xxx support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Tue, Jan 24, 2012 at 12:33:54PM +0000, Renaud Barbier wrote:
> These patches are a work in progress to introduce the mpc8xxx
> architecture to barebox.
> They include preparation work to add the new architecture and
> a minimal support for the P2020RDB. That is, serial only, no
> network driver or storage drivers.
> I will follow up with the Ethernet, NAND and I2C driver.

Sorry, but the patches in their current form a nowhere close for being
mergable.

- Generally the #ifdef density is much too high. We have good mechanisms
  to avoid that (initcalls, put code together that belongs together, add
  function parameters)
- Lots of dead code:
  - unused CONFIG_ variables:
    CONFIG_USE_IRQ, CONFIG_SYS_SRIO, CONFIG_CMD_SATA, CONFIG_FSL_SATA,
    CONFIG_BACKSIDE_L2_CACHE, CONFIG_QE, CONFIG_VSC7385_ENET,...
  - unused functions:
    arch_preboot_os
  - referenced functions not contained in these patches:
    qe_init, srio_init
  - Files which are not compiled (and also won't compile if enabled)
    fdt_8xxx.c, fdt.c
  - unused header files:
    fsl_portals.h, lmb.h
  - driver specific header files under arch/ppc (should be next to the
    driver):
    tsec.h
- please no typedefs for structs
- All functions in your board file are global, they should *all* be
  static. If you need to call them from somewhere else, there is
  something wrong.
- default MAC address in code. Don't do that. barebox generates random
  MAC addresses if no valid one is found in the EEPROM.

The following snippet is somewhat symptomatic for this patch series:

static struct i2c_board_info i2c_devices[] = {
        {
                I2C_BOARD_INFO("eepromid", CONFIG_SYS_I2C_EEPROM_ADDR),
        },
        {
                I2C_BOARD_INFO("rtc", CONFIG_SYS_I2C_RTC_ADDR),
        },
};

This snippet is board specific, so you don't need a define for the
addresses. "rtc" is not a driver we will ever add to barebox, instead
it must be the specific clock chip in the platform data. btw
CONFIG_SYS_I2C_EEPROM_ADDR is defined twice in your board header file.
Also, please don't #undef things. Just don't define them in the first
place.
Generally please don't use the CONFIG_ namespace for anything else but
kconfig variables.

I suggest that you start by removing all dead code in the patches, then
the patches may be small enough for a closer review.

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
