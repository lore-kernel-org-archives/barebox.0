Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edXDl-0002g5-Qi
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 08:12:52 +0000
Date: Mon, 22 Jan 2018 09:12:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180122081234.jxgbiblpvgaoeou4@pengutronix.de>
References: <20180119132825.26662-1-u.kleine-koenig@pengutronix.de>
 <20180119132825.26662-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180119132825.26662-2-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/2] mci: implement command to switch a mmc device to
 enhanced mode
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 19, 2018 at 02:28:25PM +0100, Uwe Kleine-K=F6nig wrote:
> The command structure allows adding more subcommands and is designed to
> match the Linux program mmc from the mmc-utils. So later more commands
> can easily be added if need be.
> =

> Compared to mmc-utils'
> =

> 	mmc enh_area set <-y|-n|-c> <start KiB> <length KiB> <device>
> =

> the command that is implemented here (
> =

> 	mmc enh_area setmax <-y|-n|-c> <device>
> =

> ) is easier to use (because you don't have to check the maximal allowed
> size by reading some registers and calculate the available size from
> them (which then must be calculated back to register values by the mmc
> command)) but less flexible as it doesn't allow all the crazy
> possibilities specified in the eMMC standard but just creates an
> enhanced area with maximal size.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  commands/Kconfig  |   5 ++
>  commands/Makefile |   1 +
>  commands/mmc.c    | 171 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/mci.h     |   7 +++
>  4 files changed, 184 insertions(+)
>  create mode 100644 commands/mmc.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index ae2dc4b0947b..1b29365a06f2 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -238,6 +238,11 @@ config CMD_VERSION
>  =

>  	  barebox 2014.05.0-00142-gb289373 #177 Mon May 12 20:35:55 CEST 2014
>  =

> +config CMD_MMC
> +	tristate
> +	prompt "mmc command allowing to set enhanced area"
> +	depends on MCI

Could you mention that this command is designed to control eMMC cards
like the mmc_extcsd command, but on a higher abstraction level, similar
to the userspace mmc utility. Just something like that, to give the user
a hint what the difference between both commands is?

> +
>  config CMD_MMC_EXTCSD
>  	tristate
>  	prompt "read/write eMMC ext. CSD register"
> diff --git a/commands/Makefile b/commands/Makefile
> index 37486dceb181..bcd0665cfe88 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -120,6 +120,7 @@ obj-$(CONFIG_CMD_DHCP)		+=3D dhcp.o
>  obj-$(CONFIG_CMD_BOOTCHOOSER)	+=3D bootchooser.o
>  obj-$(CONFIG_CMD_DHRYSTONE)	+=3D dhrystone.o
>  obj-$(CONFIG_CMD_SPD_DECODE)	+=3D spd_decode.o
> +obj-$(CONFIG_CMD_MMC)		+=3D mmc.o
>  obj-$(CONFIG_CMD_MMC_EXTCSD)	+=3D mmc_extcsd.o
>  obj-$(CONFIG_CMD_NAND_BITFLIP)	+=3D nand-bitflip.o
>  obj-$(CONFIG_CMD_SEED)		+=3D seed.o
> diff --git a/commands/mmc.c b/commands/mmc.c

Experience shows that we want to use such code independent of commands
some day. Could you put the flesh of the subcommands somewhere else, maybe
to drivers/mci/?

> new file mode 100644
> index 000000000000..2f5c7ad69a37
> --- /dev/null
> +++ b/commands/mmc.c
> @@ -0,0 +1,171 @@
> +#include <command.h>
> +#include <mci.h>
> +#include <stdio.h>
> +#include <string.h>
> +
> +/* enh_area setmax <-y|-n|-c> /dev/mmcX */
> +static int do_mmc_enh_area(int argc, char *argv[])
> +{
> +	char *devname;
> +	struct mci *mci;
> +	u8 *ext_csd;
> +	int set_completed =3D 0;
> +	int ret;
> +
> +	if (argc !=3D 4 || strcmp(argv[1], "setmax") ||
> +	    argv[2][0] !=3D '-' ||
> +	    (argv[2][1] !=3D 'y' && argv[2][1] !=3D 'n' && argv[2][1] !=3D 'c')=
) {
> +		printf("Usage: mmc enh_area setmax <-y|-n|-c> /dev/mmcX\n");
> +		return 1;
> +	}

I assume 'y' means 'yes', 'n' means 'no', but what does 'c' mean? It
doesn't seem to be implemented and none of these options is documented.

> +
> +	if (argv[2][1] =3D=3D 'y')
> +		set_completed =3D 1;
> +
> +	devname =3D argv[3];
> +	if (!strncmp(devname, "/dev/", 5))
> +		devname +=3D 5;
> +
> +	mci =3D mci_get_device_by_name(devname);
> +	if (!mci) {
> +		printf("Failure to open %s as mci device\n", devname);
> +		return -ENOENT;
> +	}

This part is probably needed by all other future subcommands aswell.
Should it be an extra function?

> +	/* get extcsd */
> +	ext_csd =3D xmalloc(512);
> +
> +	ret =3D mci_send_ext_csd(mci, ext_csd);
> +	if (ret) {
> +		printf("Failure to read EXT_CSD register\n");
> +		goto error;
> +	}

Also for reusability for other subcommands at would be good to allocate and=
 fill
in ext_csd somewhere else.

> +
> +	if (!(ext_csd[EXT_CSD_PARTITIONING_SUPPORT] & EXT_CSD_ENH_ATTRIBUTE_EN_=
MASK)) {
> +		printf("Device doesn't support enhanced area\n");
> +		ret =3D -EIO;
> +		goto error;
> +	}
> +
> +	if (ext_csd[EXT_CSD_PARTITION_SETTING_COMPLETED]) {
> +		printf("Partitioning already finalized\n");
> +		ret =3D -EIO;
> +		goto error;
> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_ERASE_GROUP_DEF, 1);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_ERASE_GROUP_DEF\n");
> +		goto error;

This command is *very* verbose in the error path. Would it be enough to
just write the register number of the failed access instead of the name?

> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_ENH_START_ADDR, 0);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_ENH_START_ADDR[0]\n");
> +		goto error;
> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_ENH_START_ADDR + 1, 0);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_ENH_START_ADDR[1]\n");
> +		goto error;
> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_ENH_START_ADDR + 2, 0);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_ENH_START_ADDR[2]\n");
> +		goto error;
> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_ENH_START_ADDR + 3, 0);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_ENH_START_ADDR[3]\n");
> +		goto error;
> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_ENH_SIZE_MULT, ext_csd[EXT_CSD_MAX_ENH_=
SIZE_MULT]);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_ENH_SIZE_MULT[0]\n");
> +		goto error;
> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_ENH_SIZE_MULT + 1, ext_csd[EXT_CSD_MAX_=
ENH_SIZE_MULT + 1]);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_ENH_SIZE_MULT[1]\n");
> +		goto error;
> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_ENH_SIZE_MULT + 2, ext_csd[EXT_CSD_MAX_=
ENH_SIZE_MULT + 2]);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_ENH_SIZE_MULT[2]\n");
> +		goto error;
> +	}
> +
> +	ret =3D mci_switch(mci, EXT_CSD_PARTITIONS_ATTRIBUTE, ext_csd[EXT_CSD_P=
ARTITIONS_ATTRIBUTE] | EXT_CSD_ENH_USR_MASK);
> +	if (ret) {
> +		printf("Failure to write to EXT_CSD_PARTITIONS_ATTRIBUTE\n");
> +		goto error;
> +	}
> +
> +	if (set_completed) {
> +		ret =3D mci_switch(mci, EXT_CSD_PARTITION_SETTING_COMPLETED, 1);
> +		if (ret) {
> +			printf("Failure to write to EXT_CSD_PARTITION_SETTING_COMPLETED\n");
> +error:
> +			free(ext_csd);
> +		} else {
> +			printf("Now power cycle the device to let it reconfigure itself.\n");
> +		}
> +	}

You lose memory when the 'y' option is not given.

> +
> +	return ret;
> +}
> +
> +static struct {
> +	const char *cmd;
> +	int (*func)(int argc, char *argv[]);
> +} mmc_subcmds[] =3D {
> +	{
> +		.cmd =3D "enh_area",
> +		.func =3D do_mmc_enh_area,
> +	}
> +};
> +
> +static int do_mmc(int argc, char *argv[])
> +{
> +	size_t i, subcmdlen;
> +	int (*func)(int argc, char *argv[]) =3D NULL;
> +
> +	if (argc < 2) {
> +		printf("mmc: required subcommand missing\n");
> +		return 1;
> +	}
> +
> +	subcmdlen =3D strlen(argv[1]);
> +	for (i =3D 0; i < ARRAY_SIZE(mmc_subcmds); ++i) {
> +		if (strncmp(mmc_subcmds[i].cmd, argv[1], subcmdlen) =3D=3D 0) {
> +			if (subcmdlen =3D=3D strlen(mmc_subcmds[i].cmd)) {
> +				/* exact match */
> +				func =3D mmc_subcmds[i].func;
> +				break;
> +			} else if (func) {
> +				printf("mmc: ambiguously abbreviated subcommand");
> +				return 1;
> +			} else {
> +				func =3D mmc_subcmds[i].func;
> +			}
> +		}
> +	}

Do we really need abbreviated subcommands here? abbreviated command
shouldn't be used in script and I hope this command does not become a
command that people use that frequently that they miss abbreviated
command support. I would just drop it.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
