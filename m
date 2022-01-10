Delivery-date: Mon, 10 Jan 2022 10:14:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6qkl-00Fy0l-AA
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 10:14:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6qkj-000423-DD
	for lore@pengutronix.de; Mon, 10 Jan 2022 10:14:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9GuOQ88qhruqieFoaECfdefcWnBAnhtNOu/5TnVyO0Y=; b=SD/IKxCfKANBLz1ISISMCSWWWi
	T5C1PhojIqycPBHveWWa5HIDJAs9xYsXcazDk+VteUNggX+ODNGg/kPihS6t5mSKUgNYW6EHJwMnw
	XTIOl46803iYx4AxQ4NaUTcd2xasipoo4aBs79jaOV3i9SglEupOy5SEgwHkJRiGfMGCPh7vaLr2C
	lUU1BWgqkgXSDDQPY3w8NGSmtmH0G+EdrZAXBZfieV7Vej1gqbOE/OdTtEot+18dJFjRps84MQKQk
	1Mp+wFR9VzbGzmMqiFafzmvZ9i9VXYDjAy2d4PuPfxC/IVaZyoT1l7bAeFyip2pngviKq+1geTqb3
	7Gj9QElw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6qjG-00AE0z-SR; Mon, 10 Jan 2022 09:12:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6qTj-00A5vK-Sz
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 08:56:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n6qTi-0000fF-Gn; Mon, 10 Jan 2022 09:56:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n6qTi-0008Rk-82; Mon, 10 Jan 2022 09:56:34 +0100
Date: Mon, 10 Jan 2022 09:56:34 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220110085634.GD6003@pengutronix.de>
References: <20220108171426.586330-1-a.fatoum@pengutronix.de>
 <20220108171426.586330-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220108171426.586330-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:54:26 up 30 days, 17:40, 73 users,  load average: 0.11, 0.21, 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_005635_999328_E1128D06 
X-CRM114-Status: GOOD (  31.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] commands: add new devunbind debugging command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jan 08, 2022 at 06:14:26PM +0100, Ahmad Fatoum wrote:
> Memory corruption around device removal may go unnoticed, because
> barebox is shutting down anyway and doing no new allocations.
> =

> Add a new devunbind command that should help with debugging such issues
> by allowing selective unbinding and removal of devices.
> =

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig      | 12 +++++++
>  commands/Makefile     |  1 +
>  commands/devunbind.c  | 74 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/base/driver.c |  7 ++--
>  include/driver.h      |  4 +++
>  5 files changed, 95 insertions(+), 3 deletions(-)
>  create mode 100644 commands/devunbind.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index e2c36949347e..9abd97271952 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -68,6 +68,18 @@ config CMD_DEVINFO
>  	  If called with a device path being the argument, devinfo shows more
>  	  default information about this device and its parameters.
>  =

> +config CMD_DEVUNBIND
> +	tristate
> +	default y
> +	prompt "devunbind"
> +	help
> +	  Debugging aid to unbind device from driver at runtime
> +
> +	  devunbind [-f] DEVICE
> +
> +	  Options:
> +	    -f   unbind driver and force removal of device and children
> +
>  config CMD_DMESG
>  	tristate
>  	prompt "dmesg"
> diff --git a/commands/Makefile b/commands/Makefile
> index 0b7c1563b534..875826743ffe 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -107,6 +107,7 @@ obj-$(CONFIG_CMD_MIITOOL)	+=3D miitool.o
>  obj-$(CONFIG_CMD_DETECT)	+=3D detect.o
>  obj-$(CONFIG_CMD_BOOT)		+=3D boot.o
>  obj-$(CONFIG_CMD_DEVINFO)	+=3D devinfo.o
> +obj-$(CONFIG_CMD_DEVUNBIND)	+=3D devunbind.o
>  obj-$(CONFIG_CMD_DRVINFO)	+=3D drvinfo.o
>  obj-$(CONFIG_CMD_READF)		+=3D readf.o
>  obj-$(CONFIG_CMD_MENUTREE)	+=3D menutree.o
> diff --git a/commands/devunbind.c b/commands/devunbind.c
> new file mode 100644
> index 000000000000..4bebb27e8e68
> --- /dev/null
> +++ b/commands/devunbind.c
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: =A9 2021 Ahmad Fatoum <a.fatoum@pengutronix.d=
e>, Pengutronix
> +
> +#include <command.h>
> +#include <common.h>
> +#include <complete.h>
> +#include <driver.h>
> +#include <getopt.h>
> +
> +static int do_devunbind(int argc, char *argv[])
> +{
> +	bool unregister =3D false;
> +	struct device_d *dev;
> +	int ret =3D COMMAND_SUCCESS, i, opt;
> +
> +	while ((opt =3D getopt(argc, argv, "fl")) > 0) {
> +		switch (opt) {
> +		case 'f':
> +			unregister =3D true;
> +			break;
> +		case 'l':
> +			list_for_each_entry(dev, &active_device_list, active) {
> +				BUG_ON(!dev->driver);
> +				if (dev->bus->remove)
> +					printf("%pS(%s, %s)\n", dev->bus->remove,
> +					       dev->driver->name, dev_name(dev));
> +			}
> +			return 0;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (!argv[optind])
> +		return COMMAND_ERROR_USAGE;
> +
> +	for (i =3D optind; i < argc; i++) {
> +		dev =3D get_device_by_name(argv[i]);
> +		if (!dev)
> +			return -ENODEV;
> +
> +		if (unregister)
> +			return unregister_device(dev);

Shouldn't you continue the loop here?

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

