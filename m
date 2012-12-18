Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tkwf9-0005dW-IV
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 12:52:48 +0000
Date: Tue, 18 Dec 2012 13:52:48 +0100
From: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Message-ID: <20121218125248.GB5466@idefix.phytec.de>
References: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
 <1355416249-22364-14-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <1355416249-22364-14-git-send-email-jlu@pengutronix.de>
Content-Disposition: inline
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
Subject: Re: [PATCH 13/14] arm: beaglebone: add first-stage support for
 AM335x and board
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Jan,

thank you on continue to work on am33xx.
Sadly I do not have a beaglebone and my board has ddr3 ram
so I wasn't able to test the first stage support.

I have a small note below.


On Thu, 13. Dec 17:30, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/Makefile                                  |    1 +
>  arch/arm/boards/beaglebone/Makefile                |    1 +
>  arch/arm/boards/beaglebone/board.c                 |  364 ++++++++++++++
>  arch/arm/boards/beaglebone/config.h                |   17 +
>  arch/arm/boards/beaglebone/env/boot/sd             |   11 +
>  arch/arm/boards/beaglebone/env/config              |   21 +
>  arch/arm/configs/am335x_beaglebone_defconfig       |   54 +++
>  .../configs/am335x_beaglebone_mlo_large_defconfig  |   55 +++
>  .../configs/am335x_beaglebone_mlo_small_defconfig  |   31 ++
>  arch/arm/mach-omap/Kconfig                         |   11 +-
>  arch/arm/mach-omap/Makefile                        |    2 +-
>  arch/arm/mach-omap/am33xx_clock.c                  |  289 +++++++++++
>  arch/arm/mach-omap/am33xx_generic.c                |   68 +++
>  arch/arm/mach-omap/am33xx_mux.c                    |  506 ++++++++++++++++++++
>  arch/arm/mach-omap/gpmc.c                          |    3 +
>  arch/arm/mach-omap/include/mach/am33xx-clock.h     |  171 +++++++
>  arch/arm/mach-omap/include/mach/am33xx-mux.h       |   22 +
>  arch/arm/mach-omap/include/mach/am33xx-silicon.h   |  145 +++++-
>  arch/arm/mach-omap/include/mach/xload.h            |    1 +
>  arch/arm/mach-omap/xload.c                         |    2 +
>  20 files changed, 1772 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boards/beaglebone/Makefile
>  create mode 100644 arch/arm/boards/beaglebone/board.c
>  create mode 100644 arch/arm/boards/beaglebone/config.h
>  create mode 100644 arch/arm/boards/beaglebone/env/boot/sd
>  create mode 100644 arch/arm/boards/beaglebone/env/config
>  create mode 100644 arch/arm/configs/am335x_beaglebone_defconfig
>  create mode 100644 arch/arm/configs/am335x_beaglebone_mlo_large_defconfig
>  create mode 100644 arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
>  create mode 100644 arch/arm/mach-omap/am33xx_clock.c
>  create mode 100644 arch/arm/mach-omap/am33xx_mux.c
>  create mode 100644 arch/arm/mach-omap/include/mach/am33xx-mux.h
>

[...]
 
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> index 1858756..ea44d25 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> @@ -43,7 +43,150 @@
>  #define AM33XX_DMTIMER0_BASE		(AM33XX_L4_WKUP_BASE + 0x205000)
>  
>  /* PRM */
> -#define OMAP_PRM_BASE			(AM33XX_L4_WKUP_BASE + 0x200000)
> +#define AM33XX_PRM_BASE			(AM33XX_L4_WKUP_BASE + 0x200000)
>  
> +#define AM33XX_PRM_RSTCTRL		(AM33XX_PRM_BASE + 0x0f00)
> +#define AM33XX_PRM_RSTCTRL_RESET	0x1
> +
> +/* CTRL */
> +#define AM33XX_CTRL_BASE		(AM33XX_L4_WKUP_BASE + 0x210000)
> +
> +/* Watchdog Timer */
> +#define WDT_BASE                        0x44E35000
> +
> +/* EMIF Base address */
> +#define EMIF4_0_CFG_BASE                0x4C000000
> +#define EMIF4_1_CFG_BASE                0x4D000000
> +#define DMM_BASE                        0x4E000000
> +
> +#define AM335X_CPSW_BASE		0x4A100000
> +#define AM335X_CPSW_MDIO_BASE		0x4A101000
> +
> +/*DMM & EMIF4 MMR Declaration*/
> +#define DMM_LISA_MAP__0			(DMM_BASE + 0x40)
> +#define DMM_LISA_MAP__1			(DMM_BASE + 0x44)
> +#define DMM_LISA_MAP__2			(DMM_BASE + 0x48)
> +#define DMM_LISA_MAP__3			(DMM_BASE + 0x4C)
> +#define DMM_PAT_BASE_ADDR		(DMM_BASE + 0x460)
> +
> +#define EMIF_MOD_ID_REV			(EMIF4_0_CFG_BASE + 0x0)
> +#define EMIF4_0_SDRAM_STATUS            (EMIF4_0_CFG_BASE + 0x04)
> +#define EMIF4_0_SDRAM_CONFIG            (EMIF4_0_CFG_BASE + 0x08)
> +#define EMIF4_0_SDRAM_CONFIG2           (EMIF4_0_CFG_BASE + 0x0C)
> +#define EMIF4_0_SDRAM_REF_CTRL          (EMIF4_0_CFG_BASE + 0x10)
> +#define EMIF4_0_SDRAM_REF_CTRL_SHADOW   (EMIF4_0_CFG_BASE + 0x14)
> +#define EMIF4_0_SDRAM_TIM_1             (EMIF4_0_CFG_BASE + 0x18)
> +#define EMIF4_0_SDRAM_TIM_1_SHADOW      (EMIF4_0_CFG_BASE + 0x1C)
> +#define EMIF4_0_SDRAM_TIM_2             (EMIF4_0_CFG_BASE + 0x20)
> +#define EMIF4_0_SDRAM_TIM_2_SHADOW      (EMIF4_0_CFG_BASE + 0x24)
> +#define EMIF4_0_SDRAM_TIM_3             (EMIF4_0_CFG_BASE + 0x28)
> +#define EMIF4_0_SDRAM_TIM_3_SHADOW      (EMIF4_0_CFG_BASE + 0x2C)
> +#define EMIF0_0_SDRAM_MGMT_CTRL         (EMIF4_0_CFG_BASE + 0x38)
> +#define EMIF0_0_SDRAM_MGMT_CTRL_SHD     (EMIF4_0_CFG_BASE + 0x3C)
> +#define EMIF4_0_DDR_PHY_CTRL_1          (EMIF4_0_CFG_BASE + 0xE4)
> +#define EMIF4_0_DDR_PHY_CTRL_1_SHADOW   (EMIF4_0_CFG_BASE + 0xE8)
> +#define EMIF4_0_DDR_PHY_CTRL_2          (EMIF4_0_CFG_BASE + 0xEC)
> +#define EMIF4_0_IODFT_TLGC              (EMIF4_0_CFG_BASE + 0x60)
> +
> +#define EMIF4_1_SDRAM_CONFIG		(EMIF4_1_CFG_BASE + 0x08)
> +#define EMIF4_1_SDRAM_CONFIG2		(EMIF4_1_CFG_BASE + 0x0C)
> +#define EMIF4_1_SDRAM_REF_CTRL		(EMIF4_1_CFG_BASE + 0x10)
> +#define EMIF4_1_SDRAM_REF_CTRL_SHADOW	(EMIF4_1_CFG_BASE + 0x14)
> +#define EMIF4_1_SDRAM_TIM_1		(EMIF4_1_CFG_BASE + 0x18)
> +#define EMIF4_1_SDRAM_TIM_1_SHADOW	(EMIF4_1_CFG_BASE + 0x1C)
> +#define EMIF4_1_SDRAM_TIM_2		(EMIF4_1_CFG_BASE + 0x20)
> +#define EMIF4_1_SDRAM_TIM_2_SHADOW	(EMIF4_1_CFG_BASE + 0x24)
> +#define EMIF4_1_SDRAM_TIM_3		(EMIF4_1_CFG_BASE + 0x28)
> +#define EMIF4_1_SDRAM_TIM_3_SHADOW	(EMIF4_1_CFG_BASE + 0x2C)
> +#define EMIF4_1_DDR_PHY_CTRL_1		(EMIF4_1_CFG_BASE + 0xE4)
> +#define EMIF4_1_DDR_PHY_CTRL_1_SHADOW	(EMIF4_1_CFG_BASE + 0xE8)
> +#define EMIF4_1_IODFT_TLGC		(EMIF4_1_CFG_BASE + 0x60)
> +
> +#define VTP0_CTRL_REG			0x44E10E0C
> +#define VTP1_CTRL_REG			0x48140E10
> +
> +/* OCMC */
> +#define SRAM0_SIZE			(0x1B400) /* 109 KB */
> +#define SRAM_GPMC_STACK_SIZE		(0x40)
> +
> +#define LOW_LEVEL_SRAM_STACK		(SRAM0_START + SRAM0_SIZE - 4)

SRAM0_START is not defined anywhere.

Regards,
Teresa

> +
> +/* DDR offsets */
> +#define	DDR_PHY_BASE_ADDR		0x44E12000
> +#define	DDR_IO_CTRL			0x44E10E04
> +#define	DDR_CKE_CTRL			0x44E1131C
> +#define	CONTROL_BASE_ADDR		0x44E10000
> +
> +#define	DDR_CMD0_IOCTRL			(CONTROL_BASE_ADDR + 0x1404)
> +#define	DDR_CMD1_IOCTRL			(CONTROL_BASE_ADDR + 0x1408)
> +#define	DDR_CMD2_IOCTRL			(CONTROL_BASE_ADDR + 0x140C)
> +#define	DDR_DATA0_IOCTRL		(CONTROL_BASE_ADDR + 0x1440)
> +#define	DDR_DATA1_IOCTRL		(CONTROL_BASE_ADDR + 0x1444)
> +
> +#define	CMD0_CTRL_SLAVE_RATIO_0		(DDR_PHY_BASE_ADDR + 0x01C)
> +#define	CMD0_CTRL_SLAVE_FORCE_0		(DDR_PHY_BASE_ADDR + 0x020)
> +#define	CMD0_CTRL_SLAVE_DELAY_0		(DDR_PHY_BASE_ADDR + 0x024)
> +#define	CMD0_DLL_LOCK_DIFF_0		(DDR_PHY_BASE_ADDR + 0x028)
> +#define	CMD0_INVERT_CLKOUT_0		(DDR_PHY_BASE_ADDR + 0x02C)
> +
> +#define	CMD1_CTRL_SLAVE_RATIO_0		(DDR_PHY_BASE_ADDR + 0x050)
> +#define	CMD1_CTRL_SLAVE_FORCE_0		(DDR_PHY_BASE_ADDR + 0x054)
> +#define	CMD1_CTRL_SLAVE_DELAY_0		(DDR_PHY_BASE_ADDR + 0x058)
> +#define	CMD1_DLL_LOCK_DIFF_0		(DDR_PHY_BASE_ADDR + 0x05C)
> +#define	CMD1_INVERT_CLKOUT_0		(DDR_PHY_BASE_ADDR + 0x060)
> +
> +#define	CMD2_CTRL_SLAVE_RATIO_0		(DDR_PHY_BASE_ADDR + 0x084)
> +#define	CMD2_CTRL_SLAVE_FORCE_0		(DDR_PHY_BASE_ADDR + 0x088)
> +#define	CMD2_CTRL_SLAVE_DELAY_0		(DDR_PHY_BASE_ADDR + 0x08C)
> +#define	CMD2_DLL_LOCK_DIFF_0		(DDR_PHY_BASE_ADDR + 0x090)
> +#define	CMD2_INVERT_CLKOUT_0		(DDR_PHY_BASE_ADDR + 0x094)
> +
> +#define DATA0_RD_DQS_SLAVE_RATIO_0	(DDR_PHY_BASE_ADDR + 0x0C8)
> +#define DATA0_RD_DQS_SLAVE_RATIO_1	(DDR_PHY_BASE_ADDR + 0x0CC)
> +#define	DATA0_WR_DQS_SLAVE_RATIO_0	(DDR_PHY_BASE_ADDR + 0x0DC)
> +
> +#define	DATA0_WR_DQS_SLAVE_RATIO_1	(DDR_PHY_BASE_ADDR + 0x0E0)
> +#define	DATA0_WRLVL_INIT_RATIO_0	(DDR_PHY_BASE_ADDR + 0x0F0)
> +
> +#define	DATA0_WRLVL_INIT_RATIO_1	(DDR_PHY_BASE_ADDR + 0x0F4)
> +#define	DATA0_GATELVL_INIT_RATIO_0	(DDR_PHY_BASE_ADDR + 0x0FC)
> +
> +#define	DATA0_GATELVL_INIT_RATIO_1	(DDR_PHY_BASE_ADDR + 0x100)
> +#define	DATA0_FIFO_WE_SLAVE_RATIO_0	(DDR_PHY_BASE_ADDR + 0x108)
> +
> +#define	DATA0_FIFO_WE_SLAVE_RATIO_1	(DDR_PHY_BASE_ADDR + 0x10C)
> +#define	DATA0_WR_DATA_SLAVE_RATIO_0	(DDR_PHY_BASE_ADDR + 0x120)
> +
> +#define	DATA0_WR_DATA_SLAVE_RATIO_1	(DDR_PHY_BASE_ADDR + 0x124)
> +#define DATA0_DLL_LOCK_DIFF_0		(DDR_PHY_BASE_ADDR + 0x138)
> +
> +#define DATA0_RANK0_DELAYS_0		(DDR_PHY_BASE_ADDR + 0x134)
> +#define	DATA1_RANK0_DELAYS_0		(DDR_PHY_BASE_ADDR + 0x1D8)
> +
> +/* Ethernet MAC ID from EFuse */
> +#define MAC_ID0_LO	(AM33XX_CTRL_BASE + 0x630)
> +#define MAC_ID0_HI	(AM33XX_CTRL_BASE + 0x634)
> +#define MAC_ID1_LO	(AM33XX_CTRL_BASE + 0x638)
> +#define MAC_ID1_HI	(AM33XX_CTRL_BASE + 0x63c)
> +#define MAC_MII_SEL	(AM33XX_CTRL_BASE + 0x650)
> +
> +/* WDT related */
> +#define WDT_WDSC	(WDT_BASE + 0x010)
> +#define WDT_WDST	(WDT_BASE + 0x014)
> +#define WDT_WISR	(WDT_BASE + 0x018)
> +#define WDT_WIER	(WDT_BASE + 0x01C)
> +#define WDT_WWER	(WDT_BASE + 0x020)
> +#define WDT_WCLR	(WDT_BASE + 0x024)
> +#define WDT_WCRR	(WDT_BASE + 0x028)
> +#define WDT_WLDR	(WDT_BASE + 0x02C)
> +#define WDT_WTGR	(WDT_BASE + 0x030)
> +#define WDT_WWPS	(WDT_BASE + 0x034)
> +#define WDT_WDLY	(WDT_BASE + 0x044)
> +#define WDT_WSPR	(WDT_BASE + 0x048)
> +#define WDT_WIRQEOI	(WDT_BASE + 0x050)
> +#define WDT_WIRQSTATRAW	(WDT_BASE + 0x054)
> +#define WDT_WIRQSTAT	(WDT_BASE + 0x058)
> +#define WDT_WIRQENSET	(WDT_BASE + 0x05C)
> +#define WDT_WIRQENCLR	(WDT_BASE + 0x060)
>  
>  #endif
> diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
> index 44d3754..d632735 100644
> --- a/arch/arm/mach-omap/include/mach/xload.h
> +++ b/arch/arm/mach-omap/include/mach/xload.h
> @@ -9,6 +9,7 @@ enum omap_boot_src {
>  	OMAP_BOOTSRC_USB1,
>  };
>  
> +enum omap_boot_src am33xx_bootsrc(void);
>  enum omap_boot_src omap3_bootsrc(void);
>  enum omap_boot_src omap4_bootsrc(void);
>  
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 240d3ff..47c5d98 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -163,6 +163,8 @@ enum omap_boot_src omap_bootsrc(void)
>  	return omap3_bootsrc();
>  #elif defined(CONFIG_ARCH_OMAP4)
>  	return omap4_bootsrc();
> +#elif defined(CONFIG_ARCH_AM33XX)
> +	return am33xx_bootsrc();
>  #endif
>  }
>  
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
