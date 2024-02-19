Delivery-date: Mon, 19 Feb 2024 11:11:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc0c8-00ECFz-1Q
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 11:11:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc0c7-0004Nu-6i
	for lore@pengutronix.de; Mon, 19 Feb 2024 11:11:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CgeP+EuUHpAZCl7CrJhvpM/h0kCLjs1Parmyd4bZB2A=; b=UV7yXFOtBsDsZR2Xw2aqUoYbTE
	x0KSe6AX75vodlxvIvWk497tINtVTT53mmTtup66K0I/CHXXH/hYaes8xjawZjDL1+Ybkiu3A0Sqy
	+gySWB6c8op+qZRPabXalh3rskPlk+BufVzsT0uwaxrOM98QKl6Gs+a4HMS3HeVCwdWUYEnRDYILA
	oqrgDH94Q6XhWX9AO8bCcaCm1Xrkuj7QIZnMdEV6Mp6YJi+eG/AQHwiJ5aDPuFfdFtzBtZTb24tL/
	DutTAZGGFsDXXXwucXA4TpUEq5DMuTjcNWRQuDdtXXUQfJsPvLXqst8OKjNp80X2ebkTV9ZcpC0ev
	hGWhfK6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc0bQ-00000009yZ9-0atU;
	Mon, 19 Feb 2024 10:10:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc0bM-00000009yXj-18RS
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 10:10:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1rc0bJ-0004JB-7r; Mon, 19 Feb 2024 11:10:17 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1rc0bI-001chC-RR; Mon, 19 Feb 2024 11:10:16 +0100
Received: from uol by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1rc0bI-00FpCp-2T;
	Mon, 19 Feb 2024 11:10:16 +0100
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
 <20240219083140.2713047-13-s.hauer@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Mon, 19 Feb 2024 10:38:42 +0100
In-reply-to: <20240219083140.2713047-13-s.hauer@pengutronix.de>
Message-ID: <6r8r3gydbr.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_021020_678397_7B17A67A 
X-CRM114-Status: GOOD (  41.90  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 12/12] commands: add parted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On Mon, Feb 19 2024 at 09:31 +0100, Sascha Hauer <s.hauer@pengutronix.de> w=
rote:
> This adds a parted command which behaves pretty much like the GNU parted
> program. Unlike other partition manipulation programs parted has a quite
> convenient command line API suitable for scripting. The tool supports
> these commands:
>
> print    - print a partition table
> mklabel  - create a new partition table
> rm       - remove a partition
> mkpart   - create a partition
> unit     - change input/display units
> refresh  - refresh a partition table (barebox specific)
>
> Multiple commands can be given on a single call so that a full partition
> table including partitions can be created with a single command.
> Examples include:
>
> Print a partition table:
>
> $ parted mmc0 print
>
> create a new partition table:
>
> $ parted mmc0 mklabel gpt
>
> create a new partition table and add a partition beginning at offset
> 1MiB ending at offset 128MiB:
>
> $ parted mmc0 mklabel gpt mkpart rootfs ext4 1MiB 128MiB
>
> The same, using KiB as unit and printing the result at the end:
>
> $ parted mmc0 unit KiB mklabel gpt mkpart rootfs ext4 1024 131072 print
>
> The "refresh" command is barebox specific and is useful when for example
> the alternate GPT is missing. This happens when an image is written.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/Kconfig  |  21 +++
>  commands/Makefile |   2 +-
>  commands/parted.c | 374 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 396 insertions(+), 1 deletion(-)
>  create mode 100644 commands/parted.c
>
> diff --git a/commands/Kconfig b/commands/Kconfig
> index a6806f198e..819fb80411 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -655,6 +655,27 @@ config CMD_MOUNT
>  		  -o OPTIONS	set file system OPTIONS
>  		  -v		verbose
>=20=20
> +config CMD_PARTED
> +	tristate
> +	depends on PARTITION
> +	select PARTITION_MANIPULATION
> +	prompt "parted"
> +	help
> +	  parted - edit partition tables
> +
> +	  Usage: parted <device> [command [options...]...]
> +
> +	  parted is a partition manipulation program with a behaviour similar to
> +	  GNU Parted
> +
> +	  commands:
> +	         print   print partitions
> +	         mklabel <type>  create a new partition table
> +	         rm <num>        remove a partition
> +	         mkpart <name> <fstype> <start> <end>    create a new partition
> +	         unit <unit>     change display/input units
> +	         refresh refresh a partition table

just a small nitpick that the last line's alignment could be enhanced:

  s/refresh refresh a partition table/refresh         refresh a partition t=
able/

Best regards
Ulrich


> +
>  config CMD_UBI
>  	tristate
>  	default y if MTD_UBI
> diff --git a/commands/Makefile b/commands/Makefile
> index 4924755500..b311410276 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -146,5 +146,5 @@ obj-$(CONFIG_CMD_UBSAN)		+=3D ubsan.o
>  obj-$(CONFIG_CMD_SELFTEST)	+=3D selftest.o
>  obj-$(CONFIG_CMD_TUTORIAL)	+=3D tutorial.o
>  obj-$(CONFIG_CMD_STACKSMASH)	+=3D stacksmash.o
> -
> +obj-$(CONFIG_CMD_PARTED)	+=3D parted.o
>  UBSAN_SANITIZE_ubsan.o :=3D y
> diff --git a/commands/parted.c b/commands/parted.c
> new file mode 100644
> index 0000000000..02bb1cff0c
> --- /dev/null
> +++ b/commands/parted.c
> @@ -0,0 +1,374 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include <common.h>
> +#include <command.h>
> +#include <block.h>
> +#include <getopt.h>
> +#include <fcntl.h>
> +#include <disks.h>
> +#include <linux/sizes.h>
> +#include <partitions.h>
> +#include <linux/math64.h>
> +
> +static struct partition_desc *gpdesc;
> +static bool table_needs_write;
> +static const char *gunit_str =3D "KiB";
> +static uint64_t gunit =3D 1024;
> +
> +struct unit {
> +	const char *str;
> +	uint64_t size;
> +};
> +
> +static struct unit units[] =3D {
> +	{ .str =3D "B", .size =3D 1 },
> +	{ .str =3D "s", .size =3D 512 },
> +	{ .str =3D "KiB", .size =3D SZ_1K },
> +	{ .str =3D "MiB", .size =3D SZ_1M },
> +	{ .str =3D "GiB", .size =3D SZ_1G },
> +	{ .str =3D "TiB", .size =3D SZ_1T },
> +	{ .str =3D "KB", .size =3D 1000ULL },
> +	{ .str =3D "MB", .size =3D 1000ULL * 1000 },
> +	{ .str =3D "GB", .size =3D 1000ULL * 1000 * 1000 },
> +	{ .str =3D "TB", .size =3D 1000ULL * 1000 * 1000 * 1000 },
> +	{ .str =3D "k", .size =3D SZ_1K },
> +	{ .str =3D "K", .size =3D SZ_1K },
> +	{ .str =3D "M", .size =3D SZ_1M },
> +	{ .str =3D "G", .size =3D SZ_1G },
> +};
> +
> +static int parted_strtoull(const char *str, uint64_t *val, uint64_t *mul=
t)
> +{
> +	char *end;
> +	int i;
> +
> +	*val =3D simple_strtoull(str, &end, 0);
> +
> +	if (!*end) {
> +		*mult =3D 0;
> +		return 0;
> +	}
> +
> +	for (i =3D 0; i < ARRAY_SIZE(units); i++) {
> +		if (!strcmp(end, units[i].str)) {
> +			*mult =3D units[i].size;
> +			return 0;
> +		}
> +	}
> +
> +	printf("Error: Cannot read \"%s\" as number\n", str);
> +
> +	return -EINVAL;
> +}
> +
> +static struct partition_desc *pdesc_get(struct block_device *blk)
> +{
> +	if (gpdesc)
> +		return gpdesc;
> +
> +	gpdesc =3D partition_table_read(blk);
> +	if (!gpdesc) {
> +		printf("Cannot read partition table\n");
> +		return NULL;
> +	}
> +
> +	return gpdesc;
> +}
> +
> +static int do_unit(struct block_device *blk, int argc, char *argv[])
> +{
> +	int i;
> +
> +	if (argc < 2) {
> +		printf("Error: missing unit\n");
> +		return -EINVAL;
> +	}
> +
> +	for (i =3D 0; i < ARRAY_SIZE(units); i++) {
> +		if (!strcmp(units[i].str, argv[1])) {
> +			gunit_str =3D units[i].str;
> +			gunit =3D units[i].size;
> +			return 2;
> +		}
> +	}
> +
> +	printf("invalid unit: %s\n", argv[1]);
> +
> +	return -EINVAL;
> +}
> +
> +static int do_print(struct block_device *blk, int argc, char *argv[])
> +{
> +	struct partition_desc *pdesc;
> +	struct partition *part;
> +
> +	pdesc =3D pdesc_get(blk);
> +	if (!pdesc) {
> +		printf("Error: Cannot get partition table from %s\n", blk->cdev.name);
> +		return -EINVAL;
> +	}
> +
> +	printf("Disk /dev/%s: %s\n", blk->cdev.name,
> +	       size_human_readable(blk->num_blocks << SECTOR_SHIFT));
> +	printf("Partition Table: %s\n", pdesc->parser->name);
> +
> +	printf("Number      Start           End          Size     Name\n");
> +
> +	list_for_each_entry(part, &pdesc->partitions, list) {
> +		uint64_t start =3D part->first_sec << SECTOR_SHIFT;
> +		uint64_t size =3D part->size << SECTOR_SHIFT;
> +		uint64_t end =3D start + size - SECTOR_SIZE;
> +
> +		printf(" %3d   %10llu%-3s %10llu%-3s %10llu%-3s  %-36s\n",
> +			part->num,
> +			div64_u64(start, gunit), gunit_str,
> +			div64_u64(end, gunit), gunit_str,
> +			div64_u64(size, gunit), gunit_str,
> +			part->name);
> +	}
> +
> +	return 1;
> +}
> +
> +static int do_mkpart(struct block_device *blk, int argc, char *argv[])
> +{
> +	struct partition_desc *pdesc;
> +	uint64_t start, end;
> +	const char *name, *fs_type;
> +	int ret;
> +	uint64_t mult;
> +
> +	if (argc < 5) {
> +		printf("Error: Missing required arguments\n");
> +		return -EINVAL;
> +	}
> +
> +	name =3D argv[1];
> +	fs_type =3D argv[2];
> +
> +	ret =3D parted_strtoull(argv[3], &start, &mult);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D parted_strtoull(argv[4], &end, &mult);
> +	if (ret)
> +		return ret;
> +
> +	if (!mult)
> +		mult =3D gunit;
> +
> +	start *=3D mult;
> +	end *=3D mult;
> +
> +	/* If not on sector boundaries move start up and end down */
> +	start =3D ALIGN(start, SECTOR_SIZE);
> +	end =3D ALIGN_DOWN(end, SECTOR_SIZE);
> +
> +	/* convert to LBA */
> +	start >>=3D SECTOR_SHIFT;
> +	end >>=3D SECTOR_SHIFT;
> +
> +	/*
> +	 * When unit is >=3D KB then substract one sector for user convenience.
> +	 * It allows to start the next partition where the previous ends
> +	 */
> +	if (mult >=3D 1000)
> +		end -=3D 1;
> +
> +	pdesc =3D pdesc_get(blk);
> +	if (!pdesc)
> +		return -EINVAL;
> +
> +	ret =3D partition_create(pdesc, name, fs_type, start, end);
> +
> +	if (!ret)
> +		table_needs_write =3D true;
> +
> +	return ret < 0 ? ret : 5;
> +}
> +
> +static int do_rmpart(struct block_device *blk, int argc, char *argv[])
> +{
> +	struct partition_desc *pdesc;
> +	unsigned long num;
> +	int ret;
> +
> +	if (argc < 2) {
> +		printf("Error: Expecting a partition number.\n");
> +		return -EINVAL;
> +	}
> +
> +	ret =3D kstrtoul(argv[1], 0, &num);
> +	if (ret)
> +		return ret;
> +
> +	pdesc =3D pdesc_get(blk);
> +	if (!pdesc)
> +		return -EINVAL;
> +
> +	ret =3D partition_remove(pdesc, num);
> +	if (ret)
> +		return ret;
> +
> +	table_needs_write =3D true;
> +
> +	return 2;
> +}
> +
> +static int do_mklabel(struct block_device *blk, int argc, char *argv[])
> +{
> +	struct partition_desc *pdesc;
> +
> +	if (argc < 2) {
> +		printf("Error: Expecting a disk label type.\n");
> +		return -EINVAL;
> +	}
> +
> +	pdesc =3D partition_table_new(blk, argv[1]);
> +	if (IS_ERR(pdesc)) {
> +		printf("Error: Cannot create partition table: %pe\n", pdesc);
> +		return PTR_ERR(pdesc);
> +	}
> +
> +	table_needs_write =3D true;
> +
> +	if (gpdesc)
> +		partition_table_free(gpdesc);
> +	gpdesc =3D pdesc;
> +
> +	return 2;
> +}
> +
> +static int do_refresh(struct block_device *blk, int argc, char *argv[])
> +{
> +	struct partition_desc *pdesc;
> +
> +	pdesc =3D pdesc_get(blk);
> +	if (!pdesc)
> +		return -EINVAL;
> +
> +	table_needs_write =3D true;
> +
> +	return 1;
> +}
> +
> +struct parted_command {
> +	const char *name;
> +	int (*command)(struct block_device *blk, int argc, char *argv[]);
> +};
> +
> +struct parted_command parted_commands[] =3D {
> +	{
> +		.name =3D "mkpart",
> +		.command =3D do_mkpart,
> +	}, {
> +		.name =3D "print",
> +		.command =3D do_print,
> +	}, {
> +		.name =3D "rm",
> +		.command =3D do_rmpart,
> +	}, {
> +		.name =3D "mklabel",
> +		.command =3D do_mklabel,
> +	}, {
> +		.name =3D "unit",
> +		.command =3D do_unit,
> +	}, {
> +		.name =3D "refresh",
> +		.command =3D do_refresh,
> +	},
> +};
> +
> +static int parted_run_command(struct block_device *blk, int argc, char *=
argv[])
> +{
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(parted_commands); i++) {
> +		struct parted_command *cmd =3D &parted_commands[i];
> +
> +		if (!strcmp(argv[0], cmd->name))
> +			return cmd->command(blk, argc, argv);
> +	}
> +
> +	printf("No such command: %s\n", argv[0]);
> +
> +	return COMMAND_ERROR;
> +}
> +
> +static int do_parted(int argc, char *argv[])
> +{
> +	struct cdev *cdev;
> +	struct block_device *blk;
> +	int ret =3D 0;
> +
> +	table_needs_write =3D false;
> +	gpdesc =3D NULL;
> +
> +	if (argc < 3)
> +		return COMMAND_ERROR_USAGE;
> +
> +	cdev =3D cdev_open_by_name(argv[1], O_RDWR);
> +	if (!cdev) {
> +		printf("Cannot open %s\n", argv[1]);
> +		return COMMAND_ERROR;
> +	}
> +
> +	blk =3D cdev_get_block_device(cdev);
> +	if (!blk) {
> +		ret =3D -EINVAL;
> +		goto err;
> +	}
> +
> +	argc -=3D 2;
> +	argv +=3D 2;
> +
> +	while (argc) {
> +		debug("---> run command %s\n", argv[0]);
> +		ret =3D parted_run_command(blk, argc, argv);
> +		if (ret < 0)
> +			break;
> +
> +		argc -=3D ret;
> +		argv +=3D ret;
> +
> +		ret =3D 0;
> +	}
> +
> +	if (!ret && gpdesc && table_needs_write)
> +		ret =3D partition_table_write(gpdesc);
> +
> +err:
> +	if (gpdesc)
> +		partition_table_free(gpdesc);
> +
> +	cdev_close(cdev);
> +
> +	return ret;
> +}
> +
> +BAREBOX_CMD_HELP_START(parted)
> +BAREBOX_CMD_HELP_TEXT("parted is a partition manipulation program with a=
 behaviour similar to")
> +BAREBOX_CMD_HELP_TEXT("GNU Parted")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("commands:")
> +BAREBOX_CMD_HELP_OPT ("print", "print partitions")
> +BAREBOX_CMD_HELP_OPT ("mklabel <type>", "create a new partition table")
> +BAREBOX_CMD_HELP_OPT ("rm <num>", "remove a partition")
> +BAREBOX_CMD_HELP_OPT ("mkpart <name> <fstype> <start> <end>", "create a =
new partition")
> +BAREBOX_CMD_HELP_OPT ("unit <unit>", "change display/input units")
> +BAREBOX_CMD_HELP_OPT ("refresh", "refresh a partition table")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("<unit> can be one of \"s\" (sectors), \"B\" (byte=
s), \"kB\", \"MB\", \"GB\", \"TB\",")
> +BAREBOX_CMD_HELP_TEXT("\"KiB\", \"MiB\", \"GiB\" or \"TiB\"")
> +BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\"")
> +BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext=
4\", \"fat16\" or \"fat32\"")
> +BAREBOX_CMD_HELP_TEXT("<name> for MBR partition tables can be one of \"p=
rimary\", \"extended\" or")
> +BAREBOX_CMD_HELP_TEXT("\"logical\". For GPT this is a name string.")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(parted)
> +	.cmd            =3D do_parted,
> +	BAREBOX_CMD_DESC("edit partition tables")
> +	BAREBOX_CMD_OPTS("<device> [command [options...]...]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
> +	BAREBOX_CMD_HELP(cmd_parted_help)
> +BAREBOX_CMD_END
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


