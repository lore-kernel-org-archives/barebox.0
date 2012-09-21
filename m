Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEx0b-0008Jk-PB
 for barebox@lists.infradead.org; Fri, 21 Sep 2012 06:46:43 +0000
Message-ID: <505C0D4C.4040804@phytec.de>
Date: Fri, 21 Sep 2012 08:46:36 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
 <1348149724-28468-3-git-send-email-t.gamez@phytec.de>
 <20120920183428.GH26553@game.jcrosoft.org>
 <20120921063758.GD1322@pengutronix.de>
In-Reply-To: <20120921063758.GD1322@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] pcm051: Add inital support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 21.09.2012 08:37, schrieb Sascha Hauer:
> On Thu, Sep 20, 2012 at 08:34:28PM +0200, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
>> On 16:02 Thu 20 Sep     , Teresa G=E1mez wrote:
>>> Added initial support for Phytec phyCORE-AM335x.
>>>
>>> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
>>> ---
>>>   arch/arm/Makefile                             |    1 +
>>>   arch/arm/boards/pcm051/Makefile               |    1 +
>>>   arch/arm/boards/pcm051/board.c                |   72 ++++++++++++
>>>   arch/arm/boards/pcm051/config.h               |   21 ++++
>>>   arch/arm/boards/pcm051/env/boot/disk          |   10 ++
>>>   arch/arm/boards/pcm051/env/init/automount     |   32 +++++
>>>   arch/arm/boards/pcm051/env/init/bootargs-base |    9 ++
>>>   arch/arm/boards/pcm051/env/init/general       |   15 +++
>>>   arch/arm/boards/pcm051/env/init/hostname      |    8 ++
>>>   arch/arm/boards/pcm051/env/network/eth0       |   15 +++
>>>   arch/arm/configs/pcm051_defconfig             |  151 ++++++++++++++++=
+++++++++
>>>   arch/arm/mach-omap/Kconfig                    |   10 ++
>>>   12 files changed, 345 insertions(+), 0 deletions(-)
>>>   create mode 100644 arch/arm/boards/pcm051/Makefile
>>>   create mode 100644 arch/arm/boards/pcm051/board.c
>>>   create mode 100644 arch/arm/boards/pcm051/config.h
>>>   create mode 100644 arch/arm/boards/pcm051/env/boot/disk
>>>   create mode 100644 arch/arm/boards/pcm051/env/init/automount
>>>   create mode 100644 arch/arm/boards/pcm051/env/init/bootargs-base
>>>   create mode 100644 arch/arm/boards/pcm051/env/init/general
>>>   create mode 100644 arch/arm/boards/pcm051/env/init/hostname
>>>   create mode 100644 arch/arm/boards/pcm051/env/network/eth0
>>>   create mode 100644 arch/arm/configs/pcm051_defconfig
>>>
>>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>>> index 8e660be..ccb4805 100644
>>> --- a/arch/arm/Makefile
>>> +++ b/arch/arm/Makefile
>>> @@ -108,6 +108,7 @@ board-$(CONFIG_MACH_PCM027)			:=3D pcm027
>>>   board-$(CONFIG_MACH_PCM037)			:=3D pcm037
>>>   board-$(CONFIG_MACH_PCM038)			:=3D pcm038
>>>   board-$(CONFIG_MACH_PCM043)			:=3D pcm043
>>> +board-$(CONFIG_MACH_PCM051)			:=3D pcm051
>>>   board-$(CONFIG_MACH_PM9261)			:=3D pm9261
>>>   board-$(CONFIG_MACH_PM9263)			:=3D pm9263
>>>   board-$(CONFIG_MACH_PM9G45)			:=3D pm9g45
>>> diff --git a/arch/arm/boards/pcm051/Makefile b/arch/arm/boards/pcm051/M=
akefile
>>> new file mode 100644
>>> index 0000000..dcfc293
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/Makefile
>>> @@ -0,0 +1 @@
>>> +obj-y +=3D board.o
>>> diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/bo=
ard.c
>>> new file mode 100644
>>> index 0000000..7cb85f1
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/board.c
>>> @@ -0,0 +1,72 @@
>>> +/*
>>> + * pcm051 - phyCORE-AM335x Board Initalization Code
>>> + *
>>> + * Copyright (C) 2012 Teresa G=E1mez, Phytec Messtechnik GmbH
>>> + *
>>> + * Based on arch/arm/boards/omap/board-beagle.c
>>> + *
>>> + * This program is free software; you can redistribute it and/or
>>> + * modify it under the terms of the GNU General Public License as
>>> + * published by the Free Software Foundation; either version 2 of
>>> + * the License, or (at your option) any later version.
>>> + *
>>> + * This program is distributed in the hope that it will be useful,
>>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>>> + * GNU General Public License for more details.
>>> + *
>>> + * You should have received a copy of the GNU General Public License
>>> + * along with this program; if not, write to the Free Software
>>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>>> + * MA 02111-1307 USA
>>> + */
>>> +
>>> +#include <common.h>
>>> +#include <init.h>
>>> +#include <sizes.h>
>>> +#include <ns16550.h>
>>> +#include <asm/armlinux.h>
>>> +#include <generated/mach-types.h>
>>> +#include <mach/silicon.h>
>>> +
>>> +static struct NS16550_plat serial_plat =3D {
>>> +	.clock =3D 48000000,      /* 48MHz (APLL96/2) */
>>> +	.shift =3D 2,
>>> +};
>>> +
>>> +/**
>>> + * @brief UART serial port initialization
>>> + * arch
>>> + *
>>> + * @return result of device registration
>>> + */
>>> +static int pcm051_console_init(void)
>>> +{
>>> +	/* Register the serial port */
>>> +	add_ns16550_device(DEVICE_ID_DYNAMIC, AM33XX_UART0_BASE, 1024,
>>> +				IORESOURCE_MEM_8BIT, &serial_plat);
>>> +
>>> +	return 0;
>>> +}
>>> +console_initcall(pcm051_console_init);
>>> +
>>> +static int pcm051_mem_init(void)
>>> +{
>>> +	arm_add_mem_device("ram0", AM33XX_DRAM_ADDR_SPACE_START, SZ_512M);
>>> +
>>> +	return 0;
>>> +}
>>> +mem_initcall(pcm051_mem_init);
>>> +
>>> +static int pcm051_devices_init(void)
>>> +{
>>> +	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL,
>>> +				(AM33XX_MMCHS0_BASE + 0x100), SZ_4K,
>>> +				IORESOURCE_MEM, NULL);
>>> +
>>> +	armlinux_set_bootparams((void *)(AM33XX_DRAM_ADDR_SPACE_START + 0x100=
));
>>> +	armlinux_set_architecture(MACH_TYPE_PCM051);
>>> +
>>> +	return 0;
>>> +}
>>> +device_initcall(pcm051_devices_init);
>>> diff --git a/arch/arm/boards/pcm051/config.h b/arch/arm/boards/pcm051/c=
onfig.h
>>> new file mode 100644
>>> index 0000000..8b2b876
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/config.h
>>> @@ -0,0 +1,21 @@
>>> +/**
>>> + * This program is free software; you can redistribute it and/or
>>> + * modify it under the terms of the GNU General Public License as
>>> + * published by the Free Software Foundation; either version 2 of
>>> + * the License, or (at your option) any later version.
>>> + *
>>> + * This program is distributed in the hope that it will be useful,
>>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
>>> + * GNU General Public License for more details.
>>> + *
>>> + * You should have received a copy of the GNU General Public License
>>> + * along with this program; if not, write to the Free Software
>>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>>> + * MA 02111-1307 USA
>>> + */
>>> +
>>> +#ifndef __CONFIG_H
>>> +#define __CONFIG_H
>>> +
>>> +#endif	/* __CONFIG_H */
>>> diff --git a/arch/arm/boards/pcm051/env/boot/disk b/arch/arm/boards/pcm=
051/env/boot/disk
>>> new file mode 100644
>>> index 0000000..c627991
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/env/boot/disk
>>> @@ -0,0 +1,10 @@
>>> +#!/bin/sh
>>> +
>>> +if [ "$1" =3D menu ]; then
>>> +	boot-menu-add-entry "$0" "SD Card"
>>> +	exit
>>> +fi
>>> +
>>> +global.bootm.image=3D"/mnt/fat/linuximage"
>>> +#global.bootm.oftree=3D"/env/oftree"
>>> +bootargs-root-disk -p mmcblk0p2 -t ext3
>>> diff --git a/arch/arm/boards/pcm051/env/init/automount b/arch/arm/board=
s/pcm051/env/init/automount
>>> new file mode 100644
>>> index 0000000..644a793
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/env/init/automount
>>> @@ -0,0 +1,32 @@
>>> +#!/bin/sh
>>> +
>>> +if [ "$1" =3D menu ]; then
>>> +	init-menu-add-entry "$0" "Automountpoints"
>>> +	exit
>>> +fi
>>> +
>>> +# automount server returned from dhcp server
>>> +
>>> +#mkdir -p /mnt/tftp-dhcp
>>> +#automount /mnt/tftp-dhcp 'ifup eth0 && mount $eth0.serverip tftp /mnt=
/tftp-dhcp'
>>> +
>>> +# automount nfs server example
>>> +
>>> +#nfshost=3Dsomehost
>>> +#mkdir -p /mnt/${nfshost}
>>> +#automount /mnt/$nfshost "ifup eth0 && mount ${nfshost}:/tftpboot nfs =
/mnt/${nfshost}"
>>> +
>>> +# static tftp server example
>>> +
>>> +#mkdir -p /mnt/tftp
>>> +#automount -d /mnt/tftp 'ifup eth0 && mount $serverip tftp /mnt/tftp'
>>> +
>>> +# FAT on usb disk example
>>> +
>>> +#mkdir -p /mnt/fat
>>> +#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0=
.0 /mnt/fat'
>>> +
>>> +# FAT on mmc card
>>> +
>>> +mkdir -p /mnt/fat
>>> +automount -d /mnt/fat '[ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/=
fat'
>>> diff --git a/arch/arm/boards/pcm051/env/init/bootargs-base b/arch/arm/b=
oards/pcm051/env/init/bootargs-base
>>> new file mode 100644
>>> index 0000000..b3139b9
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/env/init/bootargs-base
>>> @@ -0,0 +1,9 @@
>>> +#!/bin/sh
>>> +
>>> +if [ "$1" =3D menu ]; then
>>> +	init-menu-add-entry "$0" "Base bootargs"
>>> +	exit
>>> +fi
>>> +
>>> +global.linux.bootargs.base=3D"console=3DttyO0,115200"
>>> +bootargs-ip
>>> diff --git a/arch/arm/boards/pcm051/env/init/general b/arch/arm/boards/=
pcm051/env/init/general
>>> new file mode 100644
>>> index 0000000..743c864
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/env/init/general
>>> @@ -0,0 +1,15 @@
>>> +#!/bin/sh
>>> +
>>> +if [ "$1" =3D menu ]; then
>>> +	init-menu-add-entry "$0" "general config settings"
>>> +	exit
>>> +fi
>>> +
>>> +# user (used for network filenames)
>>> +global.user=3D
>>> +
>>> +# timeout in seconds before the default boot entry is started
>>> +global.autoboot_timeout=3D3
>>> +
>>> +# default boot entry (one of /env/boot/*)
>>> +global.boot.default=3Ddisk
>>> diff --git a/arch/arm/boards/pcm051/env/init/hostname b/arch/arm/boards=
/pcm051/env/init/hostname
>>> new file mode 100644
>>> index 0000000..3ea1e0a
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/env/init/hostname
>>> @@ -0,0 +1,8 @@
>>> +#!/bin/sh
>>> +
>>> +if [ "$1" =3D menu ]; then
>>> +	init-menu-add-entry "$0" "hostname"
>>> +	exit
>>> +fi
>>> +
>>> +global.hostname=3Dpcm051
>>> diff --git a/arch/arm/boards/pcm051/env/network/eth0 b/arch/arm/boards/=
pcm051/env/network/eth0
>>> new file mode 100644
>>> index 0000000..818b9f1
>>> --- /dev/null
>>> +++ b/arch/arm/boards/pcm051/env/network/eth0
>>> @@ -0,0 +1,15 @@
>>> +#!/bin/sh
>>> +
>>> +# ip setting (static/dhcp)
>>> +ip=3Ddhcp
>>> +
>>> +# static setup used if ip=3Dstatic
>>> +#ipaddr=3D
>>> +#netmask=3D
>>> +#gateway=3D
>>> +#serverip=3D
>>> +
>>> +# MAC address if needed
>>> +#ethaddr=3Dxx:xx:xx:xx:xx:xx
>>> +
>>> +# put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
>>> diff --git a/arch/arm/configs/pcm051_defconfig b/arch/arm/configs/pcm05=
1_defconfig
>>> new file mode 100644
>>> index 0000000..6788e61
>>> --- /dev/null
>>> +++ b/arch/arm/configs/pcm051_defconfig
>> use savedefconfig to generate it
> I think this is generated using savedefconfig, otherwise there would be
> comment in the file.
>
> Sascha

I have to admit, it isn't.
I will resend it with a generated one.

Regards,
Teresa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
