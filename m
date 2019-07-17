Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngiF-00038x-QY
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 09:59:05 +0000
References: <20190716105837.18237-1-bst@pengutronix.de>
 <20190716105837.18237-2-bst@pengutronix.de>
 <20190717094845.nshhbzetbprptqst@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <333c80d8-ae65-1ed4-9c18-ab9bb31716a1@pengutronix.de>
Date: Wed, 17 Jul 2019 11:58:59 +0200
MIME-Version: 1.0
In-Reply-To: <20190717094845.nshhbzetbprptqst@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 2/3] common: machine_id: introduce machine id generation
 and pass id on
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On 7/17/19 11:48 AM, Sascha Hauer wrote:
> On Tue, Jul 16, 2019 at 12:58:36PM +0200, Bastian Krause wrote:
>> By default systemd generates a machine id on first boot and tries to
>> persist it (see `man machine-id`). When the root file system is read-only
>> systemd cannot persist the machine id. In case multiple redundant slots
>> are used the machine id will vary. When not handled explicitly the
>> machine id will also change during updates.
>>
>> It is possible to pass a machine id to the kernel which will be used by
>> systemd (systemd.machine_id=).
>>
>> This adds functionality to pass device-specific information that will be
>> hashed to generate a persistent unique machine id. The machine id will
>> be finally added to the kernel parameters via the
>> linux.bootargs.machine_id global variable.
>>
>> Note: if multiple sources provide hashable device-specific information
>> (via machine_id_set_hashable()) the information provided by the last call
>> prior to the late initcall set_machine_id() is used to generate the
>> machine id from. Thus when updating barebox the machine id might change.
>>
>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
>> ---
>>  common/Kconfig       | 11 ++++++++
>>  common/Makefile      |  1 +
>>  common/machine_id.c  | 65 ++++++++++++++++++++++++++++++++++++++++++++
>>  include/machine_id.h |  6 ++++
>>  4 files changed, 83 insertions(+)
>>  create mode 100644 common/machine_id.c
>>  create mode 100644 include/machine_id.h
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index 8aad5baecd..4b2d79350d 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -982,6 +982,17 @@ config RESET_SOURCE
>>  	  of the reset and why the bootloader is currently running. It can be
>>  	  useful for any kind of system recovery or repair.
>>  
>> +config MACHINE_ID
>> +	bool "pass machine-id to kernel"
>> +	depends on FLEXIBLE_BOOTARGS
>> +	select DIGEST
>> +	select DIGEST_SHA1_GENERIC
>> +	help
>> +	  Sets the linux.bootargs.machine_id global variable with a value of
>> +	  systemd.machine_id=UID. The UID is a persistent device-specific
>> +	  id. It is a hash over device-specific information provided by various
>> +	  sources.
>> +
>>  endmenu
>>  
>>  menu "Debugging"
>> diff --git a/common/Makefile b/common/Makefile
>> index a284655fc1..10960169f9 100644
>> --- a/common/Makefile
>> +++ b/common/Makefile
>> @@ -11,6 +11,7 @@ obj-y				+= bootsource.o
>>  obj-$(CONFIG_ELF)		+= elf.o
>>  obj-y				+= restart.o
>>  obj-y				+= poweroff.o
>> +obj-$(CONFIG_MACHINE_ID)	+= machine_id.o
>>  obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
>>  obj-y				+= version.o
>>  obj-$(CONFIG_BAREBOX_UPDATE)	+= bbu.o
>> diff --git a/common/machine_id.c b/common/machine_id.c
>> new file mode 100644
>> index 0000000000..54c1820086
>> --- /dev/null
>> +++ b/common/machine_id.c
>> @@ -0,0 +1,65 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (C) 2019 Pengutronix, Bastian Krause <kernel@pengutronix.de>
>> + */
>> +
>> +#define pr_fmt(fmt) "machine-id: " fmt
>> +
>> +#include <common.h>
>> +#include <init.h>
>> +#include <digest.h>
>> +#include <globalvar.h>
>> +#include <crypto/sha.h>
>> +#include <machine_id.h>
>> +
>> +#define MACHINE_ID_LENGTH 32
>> +
>> +static void *__machine_id_hashable;
>> +static size_t __machine_id_hashable_length;
>> +
>> +
>> +void machine_id_set_hashable(void *hashable, size_t len)
> 
> const void *
> 
>> +{
>> +	__machine_id_hashable = hashable;
>> +	__machine_id_hashable_length = len;
> 
> You should make a copy rather than storing the pointer.
> 
>> +}
>> +
>> +static int machine_id_set_bootarg(void)
>> +{
>> +	struct digest *digest = NULL;
>> +	unsigned char machine_id[SHA1_DIGEST_SIZE];
>> +	char *hex_id;
>> +	int ret = 0;
>> +
>> +	if (!__machine_id_hashable) {
>> +		pr_warn("No hashable set, will not pass id to kernel\n");
> 
> I don't think this is worth a warning. With this series this will be
> issued for example on all non i.MX6 boards enabled in imx_v7_defconfig.

If I enable CONFIG_MACHINE_ID I'd expect the machine id being passed to
the kernel. This is not the case for these boards. Isn't that somewhat
surprising?

Bastian

-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
