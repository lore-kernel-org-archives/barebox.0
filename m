Delivery-date: Sat, 06 Sep 2025 02:11:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugWJ-008dRk-0B
	for lore@lore.pengutronix.de;
	Sat, 06 Sep 2025 02:11:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugWH-0008BP-Dh
	for lore@pengutronix.de; Sat, 06 Sep 2025 02:11:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x2+d1fvs2cr8DVRXGgqbW7cluZotnJZUx4da8fHFpO8=; b=RIWMGOssOQ4ha8Jcx4Dqek19gs
	/GrYbTRynS280UiUxvqMr/Ml7wQKZvTLMJCMPv7aUGQylxQGumtkf6AWWwevSYjGGCXV0NcRAgrVx
	RosMYpu6bpNsu2UKZJY7WalkOKbdy4RUG2Goc7Yz9GqY9QF5m6O47Kyr9f5+dbbjnohE4dT2qHLZF
	8Xn8+0ZDq+xH7YN+N9ATGmSRDxNUvwJKKvBSjBeLeW8ly67KazJYrf+4AQovW9EJ3cZzkhXM3MsdL
	o+JUQgtWDcvfGZ0lFipSase0BmsJtenhGu+RdJbmM2GuAWCXPRXNaEsXxRKroXyr0/kcRCG9n4snI
	eLC4VeFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugVV-00000005RH0-1Q7L;
	Sat, 06 Sep 2025 00:10:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuZhm-00000003I4o-3dQh
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 16:54:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uuZhl-0002Gk-IO; Fri, 05 Sep 2025 18:54:29 +0200
Message-ID: <366fb2bd-74b1-438e-9de4-ad7dac512ccf@pengutronix.de>
Date: Fri, 5 Sep 2025 18:54:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-6-tobias@waldekranz.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250828150637.2222474-6-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_095430_909737_495CBC89 
X-CRM114-Status: GOOD (  24.09  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] commands: dmsetup: Basic command set for dm device
 management
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
> Modeled on dmsetup(8) from LVM2.
> 
> This lets the user create/remove arbitrary dm devices using the same
> table file format used in Linux, and dump information about currently
> configured devices.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  commands/Kconfig   |  14 +++++
>  commands/Makefile  |   1 +
>  commands/dmsetup.c | 145 +++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 160 insertions(+)
>  create mode 100644 commands/dmsetup.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 1626912c30..219f626c3e 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -732,6 +732,20 @@ config CMD_PARTED
>  	         unit <unit>     change display/input units
>  	         refresh         refresh a partition table
>  
> +config CMD_DMSETUP
> +	tristate
> +	depends on DM_BLK
> +	prompt "dmsetup"
> +	help
> +	  dmsetup - low level interface to the device mapper
> +
> +	  Compose virtual block devices from a table of mappings from
> +	  logical block addresses to various data sources, such as
> +	  linear ranges from other existing devices.
> +
> +	  commands:
> +	        create <name> <table-file>
> +
>  config CMD_UBI
>  	tristate
>  	default y if MTD_UBI
> diff --git a/commands/Makefile b/commands/Makefile
> index d9403b18d5..6b010fe30c 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -166,4 +166,5 @@ obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
>  obj-$(CONFIG_CMD_PARTED)	+= parted.o
>  obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
>  obj-$(CONFIG_CMD_HOST)		+= host.o
> +obj-$(CONFIG_CMD_DMSETUP)	+= dmsetup.o
>  UBSAN_SANITIZE_ubsan.o := y
> diff --git a/commands/dmsetup.c b/commands/dmsetup.c
> new file mode 100644
> index 0000000000..722aa6cbf0
> --- /dev/null
> +++ b/commands/dmsetup.c
> @@ -0,0 +1,145 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
> +
> +#include <command.h>
> +#include <common.h>
> +#include <dm.h>
> +#include <libfile.h>
> +
> +static struct dm_device *dmsetup_find(const char *name)
> +{
> +	struct dm_device *dm;
> +
> +	dm = dm_find_by_name(name);
> +	if (IS_ERR_OR_NULL(dm)) {
> +		pr_err("Found no device named \"%s\"\n", name);

pr_/dev_ is logged, so will also be shared with Linux if pstore/ramoops
is enabled. For commands, just use printf.

> +		return NULL;
> +	}
> +
> +	return dm;
> +}

> +	dm = dm_create(argv[0], table);
> +	free(table);
> +	if (IS_ERR_OR_NULL(dm)) {
> +		pr_err("Failed to create %s: %s\n",
> +		       argv[0], strerror(-PTR_ERR(dm)));

%pe and pass dm directly.

> +		return COMMAND_ERROR;
> +	}
> +
> +	pr_info("Created %s\n", argv[0]);
> +	return COMMAND_SUCCESS;
> +}
> +
> +static int do_dmsetup(int argc, char *argv[])
> +{
> +	const char *cmd;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	cmd = argv[1];
> +	argc -= 2;
> +	argv += 2;
> +
> +	if (!strcmp(cmd, "create"))
> +		return dmsetup_create(argc, argv);
> +	else if (!strcmp(cmd, "info"))
> +		return dmsetup_info(argc, argv);
> +	else if (!strcmp(cmd, "remove"))
> +		return dmsetup_remove(argc, argv);
> +
> +	printf("Unknown command: %s\n", cmd);
> +	return -EINVAL;
> +}
> +
> +BAREBOX_CMD_HELP_START(dmsetup)
> +BAREBOX_CMD_HELP_TEXT("dmsetup - low level interface to the device mapper")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("Compose virtual block devices from a table of mappings from")
> +BAREBOX_CMD_HELP_TEXT("logical block addresses to various data sources, such as")
> +BAREBOX_CMD_HELP_TEXT("linear ranges from other existing devices.")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("commands:")
> +BAREBOX_CMD_HELP_OPT("create <name> <table-file>", "Create new device")
> +BAREBOX_CMD_HELP_OPT("info [<name>]", "Show device information")
> +BAREBOX_CMD_HELP_OPT("remove <name>", "Remove device")
> +BAREBOX_CMD_HELP_END

Nice. FYI, if selftest is too cumbersome once you start adding more
targets, you can also add tests that exercise commands via pytest. See
test/py/.

Cheers,
Ahmad

> +
> +BAREBOX_CMD_START(dmsetup)
> +	.cmd = do_dmsetup,
> +	BAREBOX_CMD_DESC("low level interface to the device mapper")
> +	BAREBOX_CMD_OPTS("<command> [args...]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_PART)
> +	BAREBOX_CMD_HELP(cmd_dmsetup_help)
> +BAREBOX_CMD_END

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



