Delivery-date: Mon, 08 Sep 2025 12:08:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYnk-000bdJ-0H
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 12:08:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYnj-0006VB-60
	for lore@pengutronix.de; Mon, 08 Sep 2025 12:08:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eq3Pji7Hye62yd/xiiF0m7/LDrf0E1tNFcsBGfMWEdM=; b=g8XZG5EfFf9bvjP+jOzPsrPymX
	y1CZAcKR2Yhj8c8oo10q+H9d7xe2eus5Eb9eNJDGWBoGKcNrLm4z61Uhyw6pJUsEAr1Fw3EtRbeH1
	PfBOpjvw7cPpIN4AyaYGkhYPfikV4dZFSDSmfgMWkzE3+gKbE5tmG+ZjDlBidosZjI05xMtCRFNEO
	E09b1Wtll5VgW/CSWqB7ou4vLEWwdaB6w2QbJBTPW5KNTNb4g+10sXT1rdd2oS6pXWqfyxMGKhujg
	fFN1fXb2HZuLmmqXi7VcfEcwN5Wm5B8koc2uB9nZQ9ZBvyr/6+G4MvKCq98dYhO55rIgRRWevkJ6M
	ExIj7BCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYnF-0000000GGhg-3gIH;
	Mon, 08 Sep 2025 10:08:13 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYA5-0000000G1Zy-1aAN
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 09:27:47 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b04679375f6so726282166b.2
        for <barebox@lists.infradead.org>; Mon, 08 Sep 2025 02:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757323664; x=1757928464; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eq3Pji7Hye62yd/xiiF0m7/LDrf0E1tNFcsBGfMWEdM=;
        b=isPYllOgh2uq1/jwi5xhjg/aslHXFCy9yIO6FeYQVNT+yFF8HFsHrEsVJqz0Aq0536
         XuTnYprVzXPWWximhyzT6eIKOkpqs/kLUCzqY+bNFGCBBOpiXqiKxs4G89Tp2nop74zo
         bb3F76yvg5jvST3YXjWM0Y+aRM/Ym9xvED04DmcjgB0aGw69yF2OidHVTb/2xtn5rfFJ
         YNUOfXWHoNLoqgUt3d8Dw996Ey88ZRIdAyTN9GG53V+83A2cMPxbMXNAXCK/mUOxh0I+
         yuB3I8El/PFAwjZMEissBu00fLGnEE8d8+JZ6ODsUWYm61mYKzd5MIxzkz6qeoSDIPXw
         vWYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757323664; x=1757928464;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:to:from:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eq3Pji7Hye62yd/xiiF0m7/LDrf0E1tNFcsBGfMWEdM=;
        b=vt6sOOnXnBgz75XRdMlKobRU4coeoWdK7oGDqY8ayT4XnR6A/osa67aV3Gc82148TH
         LnKxUzv70+mjleCpCgGSxw1NY+j/0IhdXkDiVifUAD53Ww6qM8v2Xi97e9HN7InkcQSz
         Nv/xwPVfoPfDj8Si3GwCl1IZz75CXxci363S+fpsaEtO8dFgoYqRLvdJ5LE/a+6gr4sL
         2vNBZRATT1/avlMCWb3AbeqW6X0CfRw8PkzNmaSYEhFjS4ErVGphBqq0CJDZKZIjI1/H
         UGau+GeA25+Zxh/YT1w6gfL8pQRhpf8rT5qscOy8yx2QZ01N3+Q8elW6ZmOUpZvQlBBP
         kxsg==
X-Forwarded-Encrypted: i=1; AJvYcCXQhRods1kCdtTcBIbl8R//etQZgdu1V/xlR00Fh1zGe0qKtLiQboKGkpUd3qIdF39ITTnJz/Ma@lists.infradead.org
X-Gm-Message-State: AOJu0YxIC+6cMINTK939oTQT3TkMbvVVxCxJA1X8g4FbUhBFnp8T1vsK
	7zMchoxknglsASPjuz4WVelO+p67wWuhsfMrtuNm1PiS7SyNXpv+uIjf2GVt2MzBzB/AnoZvXwR
	d6Jnv
X-Gm-Gg: ASbGncu84XIPC1mUuTxVYnhRk04ZXGQDY6DIFqsqKxwat7nu6YchHRCht3tQwomnr1H
	KtPBBQLSYvYie2DYH0l5njtD/b6EXzt7GRFkUdM9bSYA3NgGdglwPp/kXdKHhNjF01NCgXPR+a8
	olIT7htyiYpKsu9/dsxIEmbkLAMO5AKL/rBCZywjcbs1Cxr9Lr6GUac4ja1cKd4TJpxvdJfbJAR
	R0mmRK3smk2N8iq4dS9U76AZ2tvxORL4lGXzwy9+GYIHzla/k0hBgYVv5qxZVwpOewKhu9KmYNW
	R1uPpVkbtIE6FzMpLXjDnMhKT7kDQ8zRATy+bKCHeIVJmyQHyrM79iVV/2djuW+YivWcB+BHMpl
	g8wsBwRuc4lTGIkBukKYx2/BUnQhfTpZTa6aZH9sOkgWPxqyIeOgPQAo8Hp+BX9I=
X-Google-Smtp-Source: AGHT+IE3BgPDwy5k1M3dCsVU9APuBGaQeF321eAtE6Lmc0WUsnteNnYA+GPVHLj9ymPj5Q2FgTi06Q==
X-Received: by 2002:a17:907:6d05:b0:b04:9ad9:5b29 with SMTP id a640c23a62f3a-b04b16ca72emr716200866b.54.1757323663595;
        Mon, 08 Sep 2025 02:27:43 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b041565ca98sm2082119066b.86.2025.09.08.02.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 02:27:43 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
In-Reply-To: <366fb2bd-74b1-438e-9de4-ad7dac512ccf@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-6-tobias@waldekranz.com>
 <366fb2bd-74b1-438e-9de4-ad7dac512ccf@pengutronix.de>
Date: Mon, 08 Sep 2025 11:27:42 +0200
Message-ID: <87ikht2t0x.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_022746_233070_D9F659B3 
X-CRM114-Status: GOOD (  22.26  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] commands: dmsetup: Basic command set for dm device
 management
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On fre, sep 05, 2025 at 18:54, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
>> Modeled on dmsetup(8) from LVM2.
>>=20
>> This lets the user create/remove arbitrary dm devices using the same
>> table file format used in Linux, and dump information about currently
>> configured devices.
>>=20
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  commands/Kconfig   |  14 +++++
>>  commands/Makefile  |   1 +
>>  commands/dmsetup.c | 145 +++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 160 insertions(+)
>>  create mode 100644 commands/dmsetup.c
>>=20
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 1626912c30..219f626c3e 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -732,6 +732,20 @@ config CMD_PARTED
>>  	         unit <unit>     change display/input units
>>  	         refresh         refresh a partition table
>>=20=20
>> +config CMD_DMSETUP
>> +	tristate
>> +	depends on DM_BLK
>> +	prompt "dmsetup"
>> +	help
>> +	  dmsetup - low level interface to the device mapper
>> +
>> +	  Compose virtual block devices from a table of mappings from
>> +	  logical block addresses to various data sources, such as
>> +	  linear ranges from other existing devices.
>> +
>> +	  commands:
>> +	        create <name> <table-file>
>> +
>>  config CMD_UBI
>>  	tristate
>>  	default y if MTD_UBI
>> diff --git a/commands/Makefile b/commands/Makefile
>> index d9403b18d5..6b010fe30c 100644
>> --- a/commands/Makefile
>> +++ b/commands/Makefile
>> @@ -166,4 +166,5 @@ obj-$(CONFIG_CMD_STACKSMASH)	+=3D stacksmash.o
>>  obj-$(CONFIG_CMD_PARTED)	+=3D parted.o
>>  obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+=3D efi_handle_dump.o
>>  obj-$(CONFIG_CMD_HOST)		+=3D host.o
>> +obj-$(CONFIG_CMD_DMSETUP)	+=3D dmsetup.o
>>  UBSAN_SANITIZE_ubsan.o :=3D y
>> diff --git a/commands/dmsetup.c b/commands/dmsetup.c
>> new file mode 100644
>> index 0000000000..722aa6cbf0
>> --- /dev/null
>> +++ b/commands/dmsetup.c
>> @@ -0,0 +1,145 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// SPDX-FileCopyrightText: =C2=A9 2025 Tobias Waldekranz <tobias@waldek=
ranz.com>, Wires
>> +
>> +#include <command.h>
>> +#include <common.h>
>> +#include <dm.h>
>> +#include <libfile.h>
>> +
>> +static struct dm_device *dmsetup_find(const char *name)
>> +{
>> +	struct dm_device *dm;
>> +
>> +	dm =3D dm_find_by_name(name);
>> +	if (IS_ERR_OR_NULL(dm)) {
>> +		pr_err("Found no device named \"%s\"\n", name);
>
> pr_/dev_ is logged, so will also be shared with Linux if pstore/ramoops
> is enabled. For commands, just use printf.

Wow, nice! I will have to look into this more.

>> +		return NULL;
>> +	}
>> +
>> +	return dm;
>> +}
>
>> +	dm =3D dm_create(argv[0], table);
>> +	free(table);
>> +	if (IS_ERR_OR_NULL(dm)) {
>> +		pr_err("Failed to create %s: %s\n",
>> +		       argv[0], strerror(-PTR_ERR(dm)));
>
> %pe and pass dm directly.
>
>> +		return COMMAND_ERROR;
>> +	}
>> +
>> +	pr_info("Created %s\n", argv[0]);
>> +	return COMMAND_SUCCESS;
>> +}
>> +
>> +static int do_dmsetup(int argc, char *argv[])
>> +{
>> +	const char *cmd;
>> +
>> +	if (argc < 2)
>> +		return COMMAND_ERROR_USAGE;
>> +
>> +	cmd =3D argv[1];
>> +	argc -=3D 2;
>> +	argv +=3D 2;
>> +
>> +	if (!strcmp(cmd, "create"))
>> +		return dmsetup_create(argc, argv);
>> +	else if (!strcmp(cmd, "info"))
>> +		return dmsetup_info(argc, argv);
>> +	else if (!strcmp(cmd, "remove"))
>> +		return dmsetup_remove(argc, argv);
>> +
>> +	printf("Unknown command: %s\n", cmd);
>> +	return -EINVAL;
>> +}
>> +
>> +BAREBOX_CMD_HELP_START(dmsetup)
>> +BAREBOX_CMD_HELP_TEXT("dmsetup - low level interface to the device mapp=
er")
>> +BAREBOX_CMD_HELP_TEXT("")
>> +BAREBOX_CMD_HELP_TEXT("Compose virtual block devices from a table of ma=
ppings from")
>> +BAREBOX_CMD_HELP_TEXT("logical block addresses to various data sources,=
 such as")
>> +BAREBOX_CMD_HELP_TEXT("linear ranges from other existing devices.")
>> +BAREBOX_CMD_HELP_TEXT("")
>> +BAREBOX_CMD_HELP_TEXT("commands:")
>> +BAREBOX_CMD_HELP_OPT("create <name> <table-file>", "Create new device")
>> +BAREBOX_CMD_HELP_OPT("info [<name>]", "Show device information")
>> +BAREBOX_CMD_HELP_OPT("remove <name>", "Remove device")
>> +BAREBOX_CMD_HELP_END
>
> Nice. FYI, if selftest is too cumbersome once you start adding more
> targets, you can also add tests that exercise commands via pytest. See
> test/py/.

Right, yes I will read up on this in the future.

Thanks for reviewing!

> Cheers,
> Ahmad
>
>> +
>> +BAREBOX_CMD_START(dmsetup)
>> +	.cmd =3D do_dmsetup,
>> +	BAREBOX_CMD_DESC("low level interface to the device mapper")
>> +	BAREBOX_CMD_OPTS("<command> [args...]")
>> +	BAREBOX_CMD_GROUP(CMD_GRP_PART)
>> +	BAREBOX_CMD_HELP(cmd_dmsetup_help)
>> +BAREBOX_CMD_END
>
> --=20
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


