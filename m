Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PQxGw-0007kl-N5
	for barebox@lists.infradead.org; Fri, 10 Dec 2010 07:20:08 +0000
Date: Fri, 10 Dec 2010 07:48:41 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101210064841.GE19897@game.jcrosoft.org>
References: <1291959762-14350-1-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1291959762-14350-1-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH] arm: Introduce VPR200 board
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On 16:42 Fri 10 Dec     , Marc Reilly wrote:
> Starting point for the vpr200 board.
> Very similar core hardware to mx35 3stack.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  arch/arm/Makefile                            |    1 +
>  arch/arm/boards/vpr200/Makefile              |    4 +
>  arch/arm/boards/vpr200/config.h              |   28 +
>  arch/arm/boards/vpr200/env/bin/_update       |   39 ++
>  arch/arm/boards/vpr200/env/bin/boot          |   67 ++
>  arch/arm/boards/vpr200/env/bin/hush_hack     |    1 +
>  arch/arm/boards/vpr200/env/bin/init          |   38 +
>  arch/arm/boards/vpr200/env/bin/update_kernel |   15 +
>  arch/arm/boards/vpr200/env/bin/update_rootfs |   20 +
con u use the defaultenv?
>  arch/arm/boards/vpr200/env/config            |   46 ++
>  arch/arm/boards/vpr200/flash_header.c        |   46 ++
>  arch/arm/boards/vpr200/lowlevel.c            |  255 +++++++
>  arch/arm/boards/vpr200/vpr200.c              |  929 ++++++++++++++++++++++++++
>  arch/arm/boards/vpr200/vpr200.dox            |   10 +
>  arch/arm/configs/vpr200_defconfig            |   60 ++
>  arch/arm/mach-imx/Kconfig                    |   13 +
>  16 files changed, 1572 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/vpr200/Makefile
>  create mode 100644 arch/arm/boards/vpr200/config.h
>  create mode 100644 arch/arm/boards/vpr200/env/bin/_update
>  create mode 100644 arch/arm/boards/vpr200/env/bin/boot
>  create mode 100644 arch/arm/boards/vpr200/env/bin/hush_hack
>  create mode 100644 arch/arm/boards/vpr200/env/bin/init
>  create mode 100644 arch/arm/boards/vpr200/env/bin/update_kernel
>  create mode 100644 arch/arm/boards/vpr200/env/bin/update_rootfs
>  create mode 100644 arch/arm/boards/vpr200/env/config
>  create mode 100644 arch/arm/boards/vpr200/flash_header.c
>  create mode 100644 arch/arm/boards/vpr200/lowlevel.c
>  create mode 100644 arch/arm/boards/vpr200/vpr200.c
>  create mode 100644 arch/arm/boards/vpr200/vpr200.dox
>  create mode 100644 arch/arm/configs/vpr200_defconfig
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 9729c23..6e6be98 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -91,6 +91,7 @@ board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
>  board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
>  board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
>  board-$(CONFIG_MACH_MINI2440)			:= mini2440
> +board-$(CONFIG_MACH_VPR200)			:= vpr200
>  
>  machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
>  
> +static int do_diagled(struct command *cmdtp, int argc, char *argv[])
> +{
> +	int color;
> +
> +	if (argc != 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	color = simple_strtoul(argv[1], NULL, 0);
> +	vpr_diag_set_color(color);
> +
> +	return 0;
> +}
it will be better to have a common API for led management
> +
> +BAREBOX_CMD_HELP_START(diagled)
> +BAREBOX_CMD_HELP_USAGE("diagled [color]\n")
> +BAREBOX_CMD_HELP_SHORT("Sets the color of the diagnostic LED.\n")
> +BAREBOX_CMD_HELP_TEXT("\toff\t 0\n")
> +BAREBOX_CMD_HELP_TEXT("\tblue\t 1\n")
> +BAREBOX_CMD_HELP_TEXT("\tgreen\t 2\n")
> +BAREBOX_CMD_HELP_TEXT("\taqua\t 3\n")
> +BAREBOX_CMD_HELP_TEXT("\tred\t 4\n")
> +BAREBOX_CMD_HELP_TEXT("\tmagenta\t 5\n")
> +BAREBOX_CMD_HELP_TEXT("\tyellow\t 6\n")
> +BAREBOX_CMD_HELP_TEXT("\twhite\t 7\n")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(diagled)
> +	.cmd            = do_diagled,
> +	.usage          = "Set color of diagnositc tri-color LED",
> +	BAREBOX_CMD_HELP(cmd_diagled_help)
> +BAREBOX_CMD_END
> +
> +/* ------------------------------------------------------------------------ */
> +
> +static int do_waitbutton(struct command *cmdtp, int argc, char *argv[])
> +{
> +	int opt;
> +	uint64_t start;
> +	ulong timeout = 0;
> +	uint32_t bstate;
> +
> +	while ((opt = getopt(argc, argv, "t:")) > 0) {
> +		switch (opt) {
> +		case 't':
> +			timeout = simple_strtol(optarg, NULL, 0);
> +			break;
> +		}
> +	}
> +
> +	start = get_time_ns();
> +	while (!timeout || !is_timeout(start, timeout * SECOND)) {
> +		bstate = vpr_button_state();
> +		if (bstate) {
> +			printf("%d\n", vpr_button_state_to_number(bstate));
> +			return 0;
> +		}
> +		if (ctrlc())
> +			return -EINTR;
> +	}
> +
> +	return -ETIMEDOUT;
> +}
ditto here
> +
> +BAREBOX_CMD_HELP_START(waitbutton)
> +BAREBOX_CMD_HELP_USAGE("waitbutton [-t]\n")
> +BAREBOX_CMD_HELP_SHORT("Prints the button number of the next pressed button.\n")
> +BAREBOX_CMD_HELP_OPT("-t <seconds>", "time in seconds to wait. 0 (default) is forever.")
> +BAREBOX_CMD_HELP_END

please also check your patch you have some whitespace and other too long line
issue

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
