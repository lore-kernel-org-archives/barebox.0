Delivery-date: Thu, 13 Jan 2022 17:06:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n82c5-001GNX-Q6
	for lore@lore.pengutronix.de; Thu, 13 Jan 2022 17:06:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n82c4-0001kQ-AQ
	for lore@pengutronix.de; Thu, 13 Jan 2022 17:06:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mzh7otLSC6ldd/toHGmchw9SM+mnLfU0UE1zb4l5c/k=; b=XhUZ2qJK5eLMP2bwAGvRbZQtvT
	O5O3wcgRRI0gWnOHPfuSMnswLfBhjS8BexdbnhPgvfHTE2iFh4aDRNl2VYXF0RJ/x/iK2P+ofBBND
	DVdTf8jXan6wjIyl8lGX+XtTWvC/SRk638WsXC2M9JKn5KpcvPqF4KdyoJxxcX33bAzPKzxDy6nf4
	nRKL+7K6YiYfTBGsPEBANsibDCHfbXmGir03zOJejaMSwF7VwwaMEH5qptlKOPZKqlWa72Gcf5/uj
	1hVTq/Lja0wuS5URqChnSoxKnpa87Su/8JqK9O64oyo4fPFm05CgaPjN2WGxOoi7YNeVj5iIO5wbl
	Br3g6vpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n82aT-006Sat-6M; Thu, 13 Jan 2022 16:04:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n82aN-006SZh-OG
 for barebox@lists.infradead.org; Thu, 13 Jan 2022 16:04:25 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n82aK-0001Ef-RI; Thu, 13 Jan 2022 17:04:20 +0100
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220108171426.586330-1-a.fatoum@pengutronix.de>
 <20220108171426.586330-3-a.fatoum@pengutronix.de>
 <20220110085634.GD6003@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0ea7d9ed-0aa9-1fab-6e39-eb07f4833c99@pengutronix.de>
Date: Thu, 13 Jan 2022 17:04:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220110085634.GD6003@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_080423_839578_1899F717 
X-CRM114-Status: GOOD (  24.87  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] commands: add new devunbind debugging command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.01.22 09:56, Sascha Hauer wrote:
> On Sat, Jan 08, 2022 at 06:14:26PM +0100, Ahmad Fatoum wrote:
>> Memory corruption around device removal may go unnoticed, because
>> barebox is shutting down anyway and doing no new allocations.
>>
>> Add a new devunbind command that should help with debugging such issues
>> by allowing selective unbinding and removal of devices.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/Kconfig      | 12 +++++++
>>  commands/Makefile     |  1 +
>>  commands/devunbind.c  | 74 +++++++++++++++++++++++++++++++++++++++++++
>>  drivers/base/driver.c |  7 ++--
>>  include/driver.h      |  4 +++
>>  5 files changed, 95 insertions(+), 3 deletions(-)
>>  create mode 100644 commands/devunbind.c
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index e2c36949347e..9abd97271952 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -68,6 +68,18 @@ config CMD_DEVINFO
>>  	  If called with a device path being the argument, devinfo shows more
>>  	  default information about this device and its parameters.
>>  =

>> +config CMD_DEVUNBIND
>> +	tristate
>> +	default y
>> +	prompt "devunbind"
>> +	help
>> +	  Debugging aid to unbind device from driver at runtime
>> +
>> +	  devunbind [-f] DEVICE
>> +
>> +	  Options:
>> +	    -f   unbind driver and force removal of device and children
>> +
>>  config CMD_DMESG
>>  	tristate
>>  	prompt "dmesg"
>> diff --git a/commands/Makefile b/commands/Makefile
>> index 0b7c1563b534..875826743ffe 100644
>> --- a/commands/Makefile
>> +++ b/commands/Makefile
>> @@ -107,6 +107,7 @@ obj-$(CONFIG_CMD_MIITOOL)	+=3D miitool.o
>>  obj-$(CONFIG_CMD_DETECT)	+=3D detect.o
>>  obj-$(CONFIG_CMD_BOOT)		+=3D boot.o
>>  obj-$(CONFIG_CMD_DEVINFO)	+=3D devinfo.o
>> +obj-$(CONFIG_CMD_DEVUNBIND)	+=3D devunbind.o
>>  obj-$(CONFIG_CMD_DRVINFO)	+=3D drvinfo.o
>>  obj-$(CONFIG_CMD_READF)		+=3D readf.o
>>  obj-$(CONFIG_CMD_MENUTREE)	+=3D menutree.o
>> diff --git a/commands/devunbind.c b/commands/devunbind.c
>> new file mode 100644
>> index 000000000000..4bebb27e8e68
>> --- /dev/null
>> +++ b/commands/devunbind.c
>> @@ -0,0 +1,74 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// SPDX-FileCopyrightText: =A9 2021 Ahmad Fatoum <a.fatoum@pengutronix.=
de>, Pengutronix
>> +
>> +#include <command.h>
>> +#include <common.h>
>> +#include <complete.h>
>> +#include <driver.h>
>> +#include <getopt.h>
>> +
>> +static int do_devunbind(int argc, char *argv[])
>> +{
>> +	bool unregister =3D false;
>> +	struct device_d *dev;
>> +	int ret =3D COMMAND_SUCCESS, i, opt;
>> +
>> +	while ((opt =3D getopt(argc, argv, "fl")) > 0) {
>> +		switch (opt) {
>> +		case 'f':
>> +			unregister =3D true;
>> +			break;
>> +		case 'l':
>> +			list_for_each_entry(dev, &active_device_list, active) {
>> +				BUG_ON(!dev->driver);
>> +				if (dev->bus->remove)
>> +					printf("%pS(%s, %s)\n", dev->bus->remove,
>> +					       dev->driver->name, dev_name(dev));
>> +			}
>> +			return 0;
>> +		default:
>> +			return COMMAND_ERROR_USAGE;
>> +		}
>> +	}
>> +
>> +	if (!argv[optind])
>> +		return COMMAND_ERROR_USAGE;
>> +
>> +	for (i =3D optind; i < argc; i++) {
>> +		dev =3D get_device_by_name(argv[i]);
>> +		if (!dev)
>> +			return -ENODEV;
>> +
>> +		if (unregister)
>> +			return unregister_device(dev);
> =

> Shouldn't you continue the loop here?

Yes. Fixed in v2.

> =

> Sascha
> =



-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

