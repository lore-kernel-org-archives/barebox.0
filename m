Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQKp7-0005dt-HS
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 22:53:07 +0000
Received: by mail-it0-x244.google.com with SMTP id k17-v6so15800649ita.0
 for <barebox@lists.infradead.org>; Tue, 05 Jun 2018 15:52:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180605195400.GB32198@ravnborg.org>
References: <20180605174052.23679-1-pvizeli@syshack.ch>
 <20180605195400.GB32198@ravnborg.org>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Wed, 6 Jun 2018 00:52:53 +0200
Message-ID: <CACvFaDdOweWuY=i6MajV2KrH43Vhcm87Of1oJF5i270_ntLWvA@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] drivers: of: implement overlay support
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, Pascal Vizeli <pvizeli@syshack.ch>

I send a new patch with suggested change.
Feel you free to edit the commit message. I have no copy left or other
copyrights on my code.

best regards
Pascal

2018-06-05 21:54 GMT+02:00 Sam Ravnborg <sam@ravnborg.org>:
> Hi Pascal.
>
> On Tue, Jun 05, 2018 at 05:40:51PM +0000, Pascal Vizeli wrote:
>> Origin by Jan Luebbe:
>> http://lists.infradead.org/pipermail/barebox/2015-March/022674.html
>>
>> I rebase the patches and fix the resolve for __local_fixups__, they
>> was wrong copy/ported from linux kernel.
>>
>> I merge the overlay code from oftree into own command: of_overlay
>>
>> Signed-off-by: Pascal Vizeli <pvizeli@syshack.ch>
>
> You left out the "Signed-off-by: Jan ..."
> Is this because you fundamentally changed the patches, then please say so.
> Otherwise add it.
>
> This comment from Jans changelog is missing:
> This is based on Pantelis Antoniou's overlay support for the kernel. It
> has been simplified by leaving out transaction support, locking and
> other details required by the Linux DT support.
>
> Is this because the above info is no longer valid?
> Otherwise include it.
>
>
>> ---
>>  Documentation/user/devicetree.rst     | 101 ++++++++-
>>  arch/sandbox/dts/Makefile             |   5 +-
>>  arch/sandbox/dts/sandbox-overlay.dtso |  26 +++
>>  arch/sandbox/dts/sandbox.dts          |   6 +
>>  commands/Kconfig                      |  10 +
>>  commands/Makefile                     |   1 +
>>  commands/of_overlay.c                 | 106 +++++++++
>>  drivers/of/Kconfig                    |   6 +
>>  drivers/of/Makefile                   |   1 +
>>  drivers/of/overlay.c                  | 234 +++++++++++++++++++
>>  drivers/of/resolver.c                 | 314 ++++++++++++++++++++++++++
>>  include/of.h                          |  71 ++++++
>>  scripts/Makefile.lib                  |   5 +-
>>  13 files changed, 882 insertions(+), 4 deletions(-)
>>  create mode 100644 arch/sandbox/dts/sandbox-overlay.dtso
>>  create mode 100644 commands/of_overlay.c
>>  create mode 100644 drivers/of/overlay.c
>>  create mode 100644 drivers/of/resolver.c
>>
>> diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
>> index 17934d86e..8b7be4f5b 100644
>> --- a/Documentation/user/devicetree.rst
>> +++ b/Documentation/user/devicetree.rst
>> @@ -21,7 +21,7 @@ The internal devicetree
>>  -----------------------
>>
>>  The devicetree consulted by barebox plays a special role. It is referred to
>> -as the "internal devicetree." The barebox devicetree commands work on this
>> +as the "internal devicetree". The barebox devicetree commands work on this
>>  devicetree. The devicetree source (DTS) files are kept in sync with the kernel DTS
>>  files. As the FDT files are meant to be backward compatible, it should always be possible
>>  to start a kernel with the barebox internal devicetree. However, since the barebox
>> @@ -83,3 +83,102 @@ you can exchange the internal devicetree during runtime using the
>>
>>     oftree -f
>>     oftree -l /new/dtb
>> +
>> +Devicetree overlays
>> +-------------------
>> +
>> +Since version 3.19, the Linux kernel supports applying "devicetree overlays" to
>> +its loaded device tree. This can be used to inform the kernel about additional
>> +non-discoverable devices after the system has booted, which is useful for modular
>> +boards and FPGAs. The details of the overlay format are specified in the Linux
>> +`kernel documentation <https://www.kernel.org/doc/Documentation/devicetree/overlay-notes.txt>`_
>> +and an updated DTC is required to compile the overlays.
>> +
>> +The use cases for overlays in barebox are a bit different:
>> +
>> +* some of the modular devices are needed to boot Linux to userspace, but barebox
>> +  can detect which module variant is connected
>> +* one of several parallel or LVDS displays (which use timing data from devicetree)
>> +  can be connected to the SoC and should be used for boot messages
>> +* a generic Linux (distribution) kernel should be booted on a modular
>> +  system and support additional hardware on modules
>> +
>> +barebox supports applying overlays in the internal devicetree was well using the
>> +:ref:`command_oftree` command with option ``-o``:
>> +
>> +.. code-block:: none
>> +
>> +   $ ./barebox -d arch/sandbox/dts/sandbox.dtb -i arch/sandbox/dts/sandbox-overlay.dtbo
>> +   add fd0 backed by file arch/sandbox/dts/sandbox-overlay.dtbo
>> +
>> +   barebox 2015.02.0 #26 Wed Mar 4 09:41:19 CET 2015
>> +   ...
>> +   barebox@barebox sandbox:/ of_dump
>> +   ...
>> +     dummy@0 {
>> +       status = "disabled";
>> +       linux,phandle = <0x1>;
>> +       phandle = <0x1>;
>> +     };
>> +     dummy@1 {
>> +       status = "disabled";
>> +       linux,phandle = <0x2>;
>> +       phandle = <0x2>;
>> +     };
>> +     __symbols__ {
>> +       dummy0 = "/dummy@0";
>> +       dummy1 = "/dummy@1";
>> +     };
>> +   ...
>> +   barebox@barebox sandbox:/ of_dump -f /dev/fd0
>> +    {
>> +     fragment@0 {
>> +       target = <0xdeadbeef>;
>> +       __overlay__ {
>> +         status = "okay";
>> +         child {
>> +           compatible = "barebox,dummy";
>> +         };
>> +       };
>> +     };
>> +     fragment@1 {
>> +       target = <0xdeadbeef>;
>> +       __overlay__ {
>> +         status = "okay";
>> +         child {
>> +           compatible = "barebox,dummy";
>> +         };
>> +       };
>> +     };
>> +     __fixups__ {
>> +       dummy0 = "/fragment@0:target:0";
>> +       dummy1 = "/fragment@1:target:0";
>> +     };
>> +   };
>> +   barebox@barebox sandbox:/ of_overlay /dev/fd0
>> +   barebox@barebox sandbox:/ of_dump
>> +   ...
>> +     dummy@0 {
>> +       linux,phandle = <0x1>;
>> +       phandle = <0x1>;
>> +       status = "okay";
>> +       child {
>> +         compatible = "barebox,dummy";
>> +       };
>> +     };
>> +     dummy@1 {
>> +       linux,phandle = <0x2>;
>> +       phandle = <0x2>;
>> +       status = "okay";
>> +       child {
>> +         compatible = "barebox,dummy";
>> +       };
>> +     };
>> +     __symbols__ {
>> +       dummy0 = "/dummy@0";
>> +       dummy1 = "/dummy@1";
>> +     };
>> +   ...
>> +
>> +If you need to use a different base devicetree instead of the one compiled into
>> +barebox, it needs to be replaced as described in the previous section.
>> diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
>> index 6f6838857..ede219e6f 100644
>> --- a/arch/sandbox/dts/Makefile
>> +++ b/arch/sandbox/dts/Makefile
>> @@ -1,6 +1,7 @@
>>  ifeq ($(CONFIG_OFTREE),y)
>>  dtb-y += \
>> -     sandbox.dtb
>> +     sandbox.dtb \
>> +     sandbox-overlay.dtbo
>>  endif
>>
>>  # just to build a built-in.o. Otherwise compilation fails when no devicetree is
>> @@ -8,4 +9,4 @@ endif
>>  obj- += dummy.o
>>
>>  always := $(dtb-y)
>> -clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
>> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtbo
>> diff --git a/arch/sandbox/dts/sandbox-overlay.dtso b/arch/sandbox/dts/sandbox-overlay.dtso
>> new file mode 100644
>> index 000000000..f9ced04ca
>> --- /dev/null
>> +++ b/arch/sandbox/dts/sandbox-overlay.dtso
>> @@ -0,0 +1,26 @@
>> +/dts-v1/;
>> +
>> +/plugin/;
>> +
>> +/ {
>> +        fragment@0 {
>> +                target = <&dummy0>;
>> +                __overlay__ {
>> +                     status = "okay";
>> +                        child {
>> +                                compatible = "barebox,dummy";
>> +                        };
>> +                };
>> +        };
>> +
>> +        fragment@1 {
>> +                target = <&dummy1>;
>> +                __overlay__ {
>> +                     status = "okay";
>> +                        child {
>> +                                compatible = "barebox,dummy";
>> +                        };
>> +                };
>> +        };
>> +};
>> +
>> diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
>> index 2595aa13f..1b99a4960 100644
>> --- a/arch/sandbox/dts/sandbox.dts
>> +++ b/arch/sandbox/dts/sandbox.dts
>> @@ -3,5 +3,11 @@
>>  #include "skeleton.dtsi"
>>
>>  / {
>> +     dummy0: dummy@0 {
>> +             status = "disabled";
>> +     };
>>
>> +     dummy1: dummy@1 {
>> +             status = "disabled";
>> +     };
>>  };
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 951a86963..22d131da3 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -2033,6 +2033,16 @@ config CMD_OF_NODE
>>                 -c    create a new node
>>                 -d    delete a node
>>
>> +config CMD_OF_OVERLAY
>> +     tristate
>> +     select OFTREE
>> +     select OFTREE_OVERLAY
>> +     prompt "of_overlay"
>> +     help
>> +       Apply a dtb overlay to internal device tree
>> +
>> +       Usage: of_overlay DTBO
>> +
>>  config CMD_OF_PROPERTY
>>       tristate
>>       select OFTREE
>> diff --git a/commands/Makefile b/commands/Makefile
>> index eb4796389..f404338fa 100644
>> --- a/commands/Makefile
>> +++ b/commands/Makefile
>> @@ -75,6 +75,7 @@ obj-$(CONFIG_CMD_USB)               += usb.o
>>  obj-$(CONFIG_CMD_TIME)               += time.o
>>  obj-$(CONFIG_CMD_OFTREE)     += oftree.o
>>  obj-$(CONFIG_CMD_OF_PROPERTY)        += of_property.o
>> +obj-$(CONFIG_CMD_OF_OVERLAY) += of_overlay.o
>>  obj-$(CONFIG_CMD_OF_NODE)    += of_node.o
>>  obj-$(CONFIG_CMD_OF_DUMP)    += of_dump.o
>>  obj-$(CONFIG_CMD_OF_DISPLAY_TIMINGS) += of_display_timings.o
>> diff --git a/commands/of_overlay.c b/commands/of_overlay.c
>> new file mode 100644
>> index 000000000..6c74c72bc
>> --- /dev/null
>> +++ b/commands/of_overlay.c
>> @@ -0,0 +1,106 @@
>> +/*
>> + * of_overlay.c - device tree overlay command support
>> + *
>> + * Copyright (c) 2018 Pascal Vizeli <pvizeli@syshack.ch>, Hass.io
>
> Most of the code was made by Jan,
> so you should keep his Copyright.
>
>> + *
>> + * See file CREDITS for list of people who contributed to this
>> + * project.
>> + *
>> + * This program is free software; you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License version 2
>> + * as published by the Free Software Foundation.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + *
>> + */
>> +
>> +#include <common.h>
>> +#include <environment.h>
>> +#include <fdt.h>
>> +#include <libfile.h>
>> +#include <of.h>
>> +#include <command.h>
>> +#include <fs.h>
>> +#include <malloc.h>
>> +#include <linux/ctype.h>
>> +#include <linux/err.h>
>> +#include <asm/byteorder.h>
>> +#include <errno.h>
>> +#include <getopt.h>
>> +#include <init.h>
>> +#include <fcntl.h>
>> +#include <complete.h>
>> +
>> +static int do_of_overlay(int argc, char *argv[])
>> +{
>> +     struct fdt_header *fdt = NULL;
>> +     size_t size;
>> +     char *filename = NULL;
>> +     int ret = 0, ovinfo_cnt;
>> +     struct device_node *overlay = NULL, *root;
>> +     struct of_overlay_info *ovinfo;
>> +
>> +     if (argc != 2 || !IS_ENABLED(CONFIG_OFTREE_OVERLAY))
>> +             return COMMAND_ERROR_USAGE;
>
> CONFIG_OFTREE_OVERLAY is "select" when adding this command,
> so this check should not be needed.
>
>
>> +
>> +     filename = argv[1];
>> +
>> +     root = of_get_root_node();
>> +     if (!root) {
>> +             printf("no oftree loaded\n");
>> +             goto out;
>> +     }
> This will result in return 0 - which indicate that there was no error.
> Should be return 1 or something
>
>> +
>> +     fdt = read_file(filename, &size);
>> +     if (!fdt) {
>> +             printf("unable to read %s\n", filename);
>> +             return 1;
>> +     }
> Like here.
>
>> +
>> +     overlay = of_unflatten_dtb(fdt);
>> +     free(fdt);
>> +
>> +     if (IS_ERR(overlay)) {
>> +             printf("parse oftree: %s\n", strerror(-ret));
>> +             return PTR_ERR(overlay);
>> +     }
>> +
>> +     ret = of_resolve(overlay);
> of_resolve return a negative error in case of errors.
>> +     if (ret) {
>> +             printf("resolve oftree overlay: %s\n", strerror(-ret));
>> +             goto out;
> So here we will return a negative number from this command.
>> +     }
>
>> +
>> +     ret = of_build_overlay_info(overlay, &ovinfo_cnt, &ovinfo);
>> +     if (ret) {
>> +             printf("prepare oftree overlay: %s\n", strerror(-ret));
>> +             goto out;
>> +     }
> Likewise
>
>> +
>> +     ret = of_overlay(ovinfo_cnt, ovinfo);
> of_overlay may return a positive or negative number
>> +     if (ret) {
>> +             printf("apply oftree overlay: %s\n", strerror(-ret));
> So this may not print what you want.
>
>> +             goto out;
>> +     }
>> +
>> +     ret = 0;
>> +
>> +out:
>> +     of_delete_node(overlay);
>> +     return ret;
>> +}
>> +
>> +BAREBOX_CMD_HELP_START(of_overlay)
>> +BAREBOX_CMD_HELP_TEXT("Apply a dtb overlay to internal device tree")
>> +BAREBOX_CMD_HELP_END
>> +
>> +BAREBOX_CMD_START(of_overlay)
>> +     .cmd            = do_of_overlay,
>> +     BAREBOX_CMD_DESC("Apply a dtb overlay")
>> +     BAREBOX_CMD_OPTS("DTBO")
>> +     BAREBOX_CMD_GROUP(CMD_GRP_MISC)
>> +     BAREBOX_CMD_HELP(cmd_of_overlay_help)
>> +BAREBOX_CMD_END
>
>
>         Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
