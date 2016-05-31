Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7ohF-0005Rv-LT
 for barebox@lists.infradead.org; Tue, 31 May 2016 18:47:23 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 31 May 2016 18:46:57 +0000
Message-ID: <1464720425.15779.86.camel@rtred1test09.kymeta.local>
References: <1464356935-21500-1-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1464356935-21500-1-git-send-email-yegorslists@googlemail.com>
Content-Language: en-US
Content-ID: <144B3442C8B2DA47AA24E818AB7C00E8@kymetacorp.com>
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
Subject: Re: [PATCH] Add support for Baltos systems
To: "yegorslists@googlemail.com" <yegorslists@googlemail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, 2016-05-27 at 15:48 +0200, yegorslists@googlemail.com wrote:

> +typedef struct _BSP_VS_HWPARAM
> +{
> +        uint32_t Magic;
> +        uint32_t HwRev;
> +        uint32_t SerialNumber;
> +        char PrdDate[11];
> +        uint16_t SystemId;
> +        uint8_t MAC1[6];
> +        uint8_t MAC2[6];
> +        uint8_t MAC3[6];
> +} __attribute__ ((packed)) BSP_VS_HWPARAM;
> +
> +BSP_VS_HWPARAM hw_param;

It doesn't seem like this needs to be global.

> +
> +static void baltos_validate_eeprom(void)

Suggest naming this baltos_invalid_eeprom() or something like that.
validate would mean to check the eeprom, but that was already done
before this function is called, and so this appears to just handle the
invalid eeprom case.

> +{
> +	printf("Baltos: incorrect magic number (0x%x) in EEPROM\n",
> +			hw_param.Magic);
> +
> +	/* fill default values */
> +	hw_param.SystemId = 210;
> +
> +	hw_param.MAC1[0] = 0x00;
> +	hw_param.MAC1[1] = 0x00;
> +	hw_param.MAC1[2] = 0x00;
> +	hw_param.MAC1[3] = 0x00;
> +	hw_param.MAC1[4] = 0x00;
> +	hw_param.MAC1[5] = 0x01;
> +
> +	hw_param.MAC2[0] = 0x00;
> +	hw_param.MAC2[1] = 0x00;
> +	hw_param.MAC2[2] = 0x00;
> +	hw_param.MAC2[3] = 0x00;
> +	hw_param.MAC2[4] = 0x00;
> +	hw_param.MAC2[5] = 0x02;
> +
> +	hw_param.MAC3[0] = 0x00;
> +	hw_param.MAC3[1] = 0x00;
> +	hw_param.MAC3[2] = 0x00;
> +	hw_param.MAC3[3] = 0x00;
> +	hw_param.MAC3[4] = 0x00;
> +	hw_param.MAC3[5] = 0x03;
> +}
> +
> +static int baltos_read_eeprom(void)
> +{
> +	size_t size;
> +	char *buf, var_buf[32];
> +	int rc;
> +	unsigned char mac_addr[6];
> +
> +	rc = read_file_2("/dev/eeprom0", &size, (void *)&buf, sizeof(hw_param));
> +	if (rc && rc != -EFBIG) {
> +		return rc;
> +	}
> +
> +	memcpy(&hw_param, buf, sizeof(hw_param));
> +
> +	free(buf);
> +
> +	if (hw_param.Magic != 0xDEADBEEF) {
> +		baltos_validate_eeprom();
> +	}
> +
> +	sprintf(var_buf, "%d", hw_param.SystemId);
> +	globalvar_add_simple("board.id", var_buf);
> +
> +	/* setup MAC1 */
> +	mac_addr[0] = hw_param.MAC1[0];
> +	mac_addr[1] = hw_param.MAC1[1];
> +	mac_addr[2] = hw_param.MAC1[2];
> +	mac_addr[3] = hw_param.MAC1[3];
> +	mac_addr[4] = hw_param.MAC1[4];
> +	mac_addr[5] = hw_param.MAC1[5];
> +
> +	eth_register_ethaddr(0, mac_addr);
> +
> +	/* setup MAC2 */
> +	mac_addr[0] = hw_param.MAC2[0];
> +	mac_addr[1] = hw_param.MAC2[1];
> +	mac_addr[2] = hw_param.MAC2[2];
> +	mac_addr[3] = hw_param.MAC2[3];
> +	mac_addr[4] = hw_param.MAC2[4];
> +	mac_addr[5] = hw_param.MAC2[5];
> +
> +	eth_register_ethaddr(1, mac_addr);
> +
> +	return 0;
> +}
> +environment_initcall(baltos_read_eeprom);
> +
> +static int baltos_mem_init(void)
> +{
> +	uint32_t sdram_size;
> +
> +	if (!of_machine_is_compatible("vscom,onrisc"))
> +		return 0;
> +
> +	sdram_size = SZ_256M;
> +
> +	arm_add_mem_device("ram0", 0x80000000, sdram_size);
> +
> +	return 0;
> +}
> +mem_initcall(baltos_mem_init);
> +
> +static int baltos_devices_init(void)
> +{
> +	if (!of_machine_is_compatible("vscom,onrisc"))
> +		return 0;
> +
> +	globalvar_add_simple("board.variant", "baltos");
> +
> +	omap_set_barebox_part(&baltos_barebox_part);
> +
> +	if (IS_ENABLED(CONFIG_SHELL_NONE))
> +		return am33xx_of_register_bootdevice();
> +
> +	return 0;
> +}
> +coredevice_initcall(baltos_devices_init);
> diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
> new file mode 100644
> index 0000000..6acbdb9
> --- /dev/null
> +++ b/arch/arm/boards/vscom-baltos/lowlevel.c
> @@ -0,0 +1,116 @@
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <io.h>
> +#include <linux/string.h>
> +#include <debug_ll.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/am33xx-silicon.h>
> +#include <mach/am33xx-clock.h>
> +#include <mach/generic.h>
> +#include <mach/sdrc.h>
> +#include <mach/sys_info.h>
> +#include <mach/syslib.h>
> +#include <mach/am33xx-mux.h>
> +#include <mach/am33xx-generic.h>
> +#include <mach/wdt.h>
> +
> +static const struct am33xx_ddr_data ddr3_data = {
> +	.rd_slave_ratio0        = 0x38,
> +	.wr_dqs_slave_ratio0    = 0x44,
> +	.fifo_we_slave_ratio0	= 0x94,
> +	.wr_slave_ratio0        = 0x7D,
> +	.use_rank0_delay	= 0x01,
> +	.dll_lock_diff0		= 0x0,
> +};
> +
> +static const struct am33xx_cmd_control ddr3_cmd_ctrl = {
> +	.slave_ratio0	= 0x80,
> +	.dll_lock_diff0	= 0x1,
> +	.invert_clkout0	= 0x0,
> +	.slave_ratio1	= 0x80,
> +	.dll_lock_diff1	= 0x1,
> +	.invert_clkout1	= 0x0,
> +	.slave_ratio2	= 0x80,
> +	.dll_lock_diff2	= 0x1,
> +	.invert_clkout2	= 0x0,
> +};
> +
> +static const struct am33xx_emif_regs ddr3_regs = {
> +	.emif_read_latency	= 0x100007,
> +	.emif_tim1		= 0x0AAAD4DB,
> +	.emif_tim2		= 0x266B7FDA,
> +	.emif_tim3		= 0x501F867F,
> +	.zq_config		= 0x50074BE4,
> +	.sdram_config		= 0x61C05332,
> +	.sdram_config2		= 0x0,
> +	.sdram_ref_ctrl		= 0xC30,
> +};
> +
> +extern char __dtb_am335x_baltos_minimal_start[];
> +
> +/**
> + * @brief The basic entry point for board initialization.
> + *
> + * This is called as part of machine init (after arch init).
> + * This is again called with stack in SRAM, so not too many
> + * constructs possible here.
> + *
> + * @return void
> + */

Does anyone (Sascha?) know why this is noline?  Obviously it is being
copied from the all the other boards that do this, and the only thing it
can be doing is preventing this from being inlined into the entry
function.  But why must this be prevented?

> +static noinline int baltos_sram_init(void)
> +{
> +	uint32_t sdram_size;
> +	void *fdt;
> +
> +	fdt = __dtb_am335x_baltos_minimal_start;
> +
> +	sdram_size = SZ_256M;

I wonder if there is a way to use the same definition here and in
baltos_mem_init() and in start_am33xx_baltos_sdram()?

> +
> +	/* WDT1 is already running when the bootloader gets control
> +	 * Disable it to avoid "random" resets
> +	 */
> +	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
> +	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
> +	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +
> +	/* Setup the PLLs and the clocks for the peripherals */
> +	am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_400);
> +	am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs,
> +			&ddr3_data);
> +
> +	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
> +	am33xx_enable_uart0_pin_mux();
> +	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
> +	putc_ll('>');
> +
> +	barebox_arm_entry(0x80000000, sdram_size, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_am33xx_baltos_sram, bootinfo, r1, r2)
> +{
> +	am33xx_save_bootinfo((void *)bootinfo);
> +
> +	/*
> +	 * Setup C environment, the board init code uses global variables.
> +	 * Stackpointer has already been initialized by the ROM code.
> +	 */
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	baltos_sram_init();
> +}
> +
> +ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
> +{
> +	uint32_t sdram_size;
> +	void *fdt;
> +
> +	sdram_size = SZ_256M;
> +	fdt = __dtb_am335x_baltos_minimal_start;
> +
> +	fdt -= get_runtime_offset();
> +
> +	barebox_arm_entry(0x80000000, sdram_size, fdt);
> +}

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
