Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1danJb-00027r-5O
 for barebox@lists.infradead.org; Thu, 27 Jul 2017 18:15:16 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 27 Jul 2017 18:14:46 +0000
Message-ID: <1501179286.5146.463.camel@kymetacorp.com>
References: <CAArhposKY9Ai1OFPX+w2f4ajuw_D8jRTc2tttdiJcO8djj01eg@mail.gmail.com>
In-Reply-To: <CAArhposKY9Ai1OFPX+w2f4ajuw_D8jRTc2tttdiJcO8djj01eg@mail.gmail.com>
Content-Language: en-US
Content-ID: <4523FB3B26EB0949B5322E9A8FEEADC8@kymetacorp.com>
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
Subject: Re: [PATCH] Add new command fs2bridge for socfpga
To: "thepusherpushes@gmail.com" <thepusherpushes@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, 2017-07-27 at 18:20 +0200, Mabcded Babcde wrote:
> Hi,
> this patch adds a new command to barebox. It is used to enable or
> disable the fpga-to-sdram bridges on socfpgas. The patch is based on a
> manual from altera

I wonder if this might be better as a settable parameter of the fpga
device?

> +
> +#define SOCFPGA_SYSMGR_ADDRESS    0xFFD08000
> +#define SOCFPGA_SDR_ADDRESS    0xFFC20000
> +
> +#define SDR_CTRLGRP_FPGAPORTRST_ADDRESS    0x5080
> +#define SDR_CTRLGRP_STATICCFG_ADDRESS    0x505C
> +#define SDR_CTRLGRP_STATICCFG_APPLYCFG_MASK    0x00000008
> +
> +#define SYSMGR_FPGAINTF_MODULE    (SOCFPGA_SYSMGR_ADDRESS + 0x28)

You should be able to get these addresses from socfpga-regs.h and
system-manager.h

> +
> +
> +static void socfpga_sdram_apply_staticcfg(void)
> +{
> +    const uint32_t staticcfg = SOCFPGA_SDR_ADDRESS +
> SDR_CTRLGRP_STATICCFG_ADDRESS;
> +    const uint32_t applymask = SDR_CTRLGRP_STATICCFG_APPLYCFG_MASK;
> +    uint32_t val = readl(staticcfg) | applymask;
> +
> +    /*
> +     * SDRAM staticcfg register specific:
> +     * When applying the register setting, the CPU must not access
> +     * SDRAM. Luckily for us, we can abuse i-cache here to help us
> +     * circumvent the SDRAM access issue. The idea is to make sure
> +     * that the code is in one full i-cache line by branching past
> +     * it and back. Once it is in the i-cache, we execute the core
> +     * of the code and apply the register settings.
> +     *
> +     * The code below uses 7 instructions, while the Cortex-A9 has
> +     * 32-byte cachelines, thus the limit is 8 instructions total.
> +     */
> +    asm volatile(
> +        ".align    5            \n"
> +        "    b    2f        \n"
> +        "1:    str    %0,    [%1]    \n"
> +        "    dsb            \n"
> +        "    isb            \n"
> +        "    b    3f        \n"
> +        "2:    b    1b        \n"
> +        "3:    nop            \n"
> +    : : "r"(val), "r"(staticcfg) : "memory", "cc");
> +}
> +
> +
> +int do_f2sbridge(int argc, char *argv[])
> +{
> +    if (argc != 2)
> +        return COMMAND_ERROR_USAGE;
> +
> +    switch (*argv[1]) {
> +    case 'e':    // Enable
> +        // hps peripheral controller to fpga
> +        iowrite32(0, SYSMGR_FPGAINTF_MODULE);

Why disable FPGA access to the emacs?  Is that required too?

> +        socfpga_sdram_apply_staticcfg();
> +        // enable all fpga2sdram bridge ports
> +        iowrite32(0x3fff, SOCFPGA_SDR_ADDRESS +
> SDR_CTRLGRP_FPGAPORTRST_ADDRESS);
> +
> +        break;
> +    case 'd':    // Disable
> +        iowrite32(0, SYSMGR_FPGAINTF_MODULE);
> +        iowrite32(0, SOCFPGA_SDR_ADDRESS + SDR_CTRLGRP_FPGAPORTRST_ADDRESS);
> +        socfpga_sdram_apply_staticcfg();
> +
> +        break;
> +    default:
> +        return COMMAND_ERROR_USAGE;
> +    }
> +
> +    return 0;
> +}
> +
> +
> +BAREBOX_CMD_HELP_START(f2sbridge)
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT ("-e \t",  "enable f2s bridge")
> +BAREBOX_CMD_HELP_OPT ("-d \t",  "disable f2s bridge")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(f2sbridge)
> +    .cmd        = do_f2sbridge,
> +    BAREBOX_CMD_DESC("Enables or disables the fpga2sdram bridge.")
> +    BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> +    BAREBOX_CMD_HELP(cmd_f2sbridge_help)
> +BAREBOX_CMD_END

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
