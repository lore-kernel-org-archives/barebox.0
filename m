Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f47.google.com ([209.85.219.47])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2Sz6-0002fg-6H
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 20:49:48 +0000
Received: by mail-oa0-f47.google.com with SMTP id o17so5554065oag.34
 for <barebox@lists.infradead.org>; Mon, 04 Feb 2013 12:49:46 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130131114230.GZ26329@game.jcrosoft.org>
References: <1359628977-20069-1-git-send-email-fabio.porcedda@gmail.com>
 <1359628977-20069-2-git-send-email-fabio.porcedda@gmail.com>
 <20130131114230.GZ26329@game.jcrosoft.org>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Mon, 4 Feb 2013 21:49:25 +0100
Message-ID: <CAHkwnC9ZrfQfEWnwd=qM+aB5XfNtrhMQb0eG3UjmWXzZz84fKg@mail.gmail.com>
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
Subject: Re: [PATCH 1/3] at91sam9260/9g20ek: cleanup coding style
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 31, 2013 at 12:42 PM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 11:42 Thu 31 Jan     , Fabio Porcedda wrote:
>> - fix some error and warnings pointed out by checkpatch.
>> - join some short lines.
>> - remove some empty lines.
>> - remove unnecessary headers.
>>
>> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
>> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> ---
>>  arch/arm/boards/at91sam9260ek/init.c | 37 +++++++++++++++---------------------
>>  1 file changed, 15 insertions(+), 22 deletions(-)
>>
>> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
>> index 2d52f5a..f0d8adf 100644
>> --- a/arch/arm/boards/at91sam9260ek/init.c
>> +++ b/arch/arm/boards/at91sam9260ek/init.c
>> @@ -10,25 +10,15 @@
>>   * but WITHOUT ANY WARRANTY; without even the implied warranty of
>>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>>   * GNU General Public License for more details.
>> - *
>> - *
>>   */
>>
>>  #include <common.h>
>> -#include <net.h>
>>  #include <init.h>
>>  #include <environment.h>
>> -#include <fec.h>
>>  #include <asm/armlinux.h>
>>  #include <generated/mach-types.h>
>> -#include <partition.h>
>> -#include <fs.h>
>> -#include <fcntl.h>
>> -#include <io.h>
>> -#include <asm/hardware.h>
>>  #include <nand.h>
>>  #include <sizes.h>
>> -#include <linux/mtd/nand.h>
>>  #include <mach/board.h>
>>  #include <mach/at91sam9_smc.h>
>>  #include <gpio.h>
>> @@ -83,7 +73,8 @@ static struct sam9_smc_config ek_9260_nand_smc_config = {
>>       .read_cycle             = 5,
>>       .write_cycle            = 5,
>>
>> -     .mode                   = AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
>> +     .mode                   = AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
>> +                               AT91_SMC_EXNWMODE_DISABLE,
>>       .tdf_cycles             = 2,
>>  };
>>
>> @@ -101,7 +92,8 @@ static struct sam9_smc_config ek_9g20_nand_smc_config = {
>>       .read_cycle             = 7,
>>       .write_cycle            = 7,
>>
>> -     .mode                   = AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
>> +     .mode                   = AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
>> +                               AT91_SMC_EXNWMODE_DISABLE,
>>       .tdf_cycles             = 3,
>>  };
>>
>> @@ -153,12 +145,11 @@ static void at91sam9260ek_phy_reset(void)
>>       at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
>>
>>       /* Wait for end hardware reset */
>> -     while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
>> +     while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
>> +             ;
>>
>>       /* Restore NRST value */
>> -     at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
>> -                                  (rstc) |
>> -                                  AT91_RSTC_URSTEN);
>> +     at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN);
>>  }
>>
>>  /*
>> @@ -260,18 +251,21 @@ static int at91sam9260ek_devices_init(void)
>>       armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
>>       ek_set_board_type();
>>
>> -     devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
>> +     devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED,
>> +                         "at91bootstrap_raw");
>>       dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
>> -     devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
>> +     devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED,
>> +                         "self_raw");
>>       dev_add_bb_dev("self_raw", "self0");
>> -     devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
>> +     devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K,
>> +                         DEVFS_PARTITION_FIXED, "env_raw");
>>       dev_add_bb_dev("env_raw", "env0");
>> -     devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
>> +     devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED,
>> +                         "env_raw1");
>
> no I do want to be able to grep via part name

Ok, I will send a updated patch.

Best regards.
Fabio Porcedda

> Best Regards,
> J.
>>       dev_add_bb_dev("env_raw1", "env1");
>>
>>       return 0;
>>  }
>> -
>>  device_initcall(at91sam9260ek_devices_init);
>>
>>  static int at91sam9260ek_console_init(void)
>> @@ -279,5 +273,4 @@ static int at91sam9260ek_console_init(void)
>>       at91_register_uart(0, 0);
>>       return 0;
>>  }
>> -
>>  console_initcall(at91sam9260ek_console_init);
>> --
>> 1.8.1.1
>>



--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
