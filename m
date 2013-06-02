Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjAT1-0005TP-DK
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 15:45:13 +0000
Date: Sun, 2 Jun 2013 17:44:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130602154444.GU32299@pengutronix.de>
References: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
 <1370019244-7873-8-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370019244-7873-8-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 7/8] ppc 8xxx: core DDR driver functions
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Fri, May 31, 2013 at 05:54:03PM +0100, Renaud Barbier wrote:
> This file is imported from U-Boot as is.
> 
> This code provides the 8xxx memory controller core driver interface.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/ddr-8xxx/main.c |  667 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 667 insertions(+), 0 deletions(-)
>  create mode 100644 arch/ppc/ddr-8xxx/main.c
> 

[...]

> +
> +/*
> + * fsl_ddr_sdram() -- this is the main function to be called by
> + *	initdram() in the board file.
> + *
> + * It returns amount of memory configured in bytes.
> + */
> +phys_size_t fsl_ddr_sdram(void)
> +{

THe behaviour of this function is defined by:

CONFIG_BUFFER_SIZE
CONFIG_CHIP_SELECT_QUAD_CAPABLE
CONFIG_CHIP_SELECTS_PER_CTRL
CONFIG_DDR_ECC
CONFIG_DDR_SPD
CONFIG_DIMM_SLOTS_PER_CTLR
CONFIG_E500MC
CONFIG_E6500
CONFIG_ECC_INIT_VIA_DDRCONTROLLER
CONFIG_FSL_DDR1
CONFIG_FSL_DDR2
CONFIG_FSL_DDR3
CONFIG_FSL_DDR_FIRST_SLOT_QUAD_CAPABLE
CONFIG_FSL_DDR_INTERACTIVE
CONFIG_FSL_SDRAM_TYPE
CONFIG_HWCONFIG
CONFIG_MAX_MEM_MAPPED
CONFIG_MEM_INIT_VALUE
CONFIG_NUM_DDR_CONTROLLERS
CONFIG_PHYS_64BIT
CONFIG_SPD_EEPROM
CONFIG_SYS_DDR_RAW_TIMING
CONFIG_SYS_DIMM_SLOTS_PER_CTLR
CONFIG_SYS_FSL_DDR_VER
CONFIG_SYS_IMMR
CONFIG_SYS_MPC8xxx_DDR2_ADDR
CONFIG_SYS_MPC8xxx_DDR3_ADDR
CONFIG_SYS_MPC8xxx_DDR_ADDR
CONFIG_SYS_NUM_DDR_CTLRS

Some of these a board specific, others are SoC specific, but all are
input parameters to this function. The prototype should really be:

phys_size_t mpc8xxx_setup_ddr(struct mpc8xxx_ddr_params *)

(or maybe mpc8xxx_setup_ddr1/2/3 to be able to let the linker throw away
some unused code)

Code written in CPP rather than C was one of the major reasons why I
originally wrote barebox, so please let's not reintroduce this.

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
