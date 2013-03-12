Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFCmR-00006C-6j
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 00:09:24 +0000
Received: by mail-pb0-f49.google.com with SMTP id xa12so4276967pbc.8
 for <barebox@lists.infradead.org>; Mon, 11 Mar 2013 17:09:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130311214513.GP1906@pengutronix.de>
References: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
 <1362958567-6110-5-git-send-email-vicencb@gmail.com>
 <20130311214513.GP1906@pengutronix.de>
Date: Tue, 12 Mar 2013 01:09:18 +0100
Message-ID: <CAAMcf8Dg7n87FkKDAX3EdbryLDQA=sHnyb8-z=8nCPjH7kCaXw@mail.gmail.com>
From: vj <vicencb@gmail.com>
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
Subject: Re: [PATCH 4/4] ArchosG9: add keyboard input and new reset menu
 entries
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 10:45 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Mar 11, 2013 at 12:36:07AM +0100, Vicente Bergas wrote:
>>
>> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
>> ---
>>  arch/arm/boards/archosg9/board.c              | 25 +++++++++++++++++++++++
>>  arch/arm/boards/archosg9/env/bin/init         | 28 ++++++++++++++++++++++++++
>>  arch/arm/boards/archosg9/env/boot/usb-android |  2 +-
>>  arch/arm/boards/archosg9/env/boot/usb-linux   |  2 +-
>>  arch/arm/boards/archosg9/env/menu/mainmenu    | 29 +++++++++++++++++++++++++++
>>  arch/arm/configs/archosg9_defconfig           | 11 ++++++----
>>  6 files changed, 91 insertions(+), 6 deletions(-)
>>  create mode 100644 arch/arm/boards/archosg9/env/bin/init
>>  create mode 100644 arch/arm/boards/archosg9/env/menu/mainmenu
>>
>> diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
>> index bf247de..edeb871 100644
>> --- a/arch/arm/boards/archosg9/board.c
>> +++ b/arch/arm/boards/archosg9/board.c
>> @@ -20,6 +20,9 @@
>>  #include <sizes.h>
>>  #include <i2c/i2c.h>
>>  #include <gpio.h>
>> +#include <gpio_keys.h>
>> +#include <twl6030_pwrbtn.h>
>> +#include <readkey.h>
>>  #include "archos_features.h"
>>
>>  static int archosg9_console_init(void){
>> @@ -44,11 +47,33 @@ mem_initcall(archosg9_mem_init);
>>  static struct i2c_board_info i2c_devices[] = {
>>       { I2C_BOARD_INFO("twl6030", 0x48), },
>>  };
>> +#ifdef CONFIG_KEYBOARD_TWL6030
>> +static struct twl6030_pwrbtn_platform_data pwrbtn_data = {
>> +     .code = KEY_ENTER
>> +};
>> +#endif
>> +#ifdef CONFIG_KEYBOARD_GPIO
>> +static struct gpio_keys_button keys[] = {
>> +     { .code = KEY_UP  , .gpio = 43, .active_low = 1 },
>> +     { .code = KEY_DOWN, .gpio = 44, .active_low = 1 },
>> +};
>> +static struct gpio_keys_platform_data gk_data = {
>> +     .buttons = keys,
>> +     .nbuttons = ARRAY_SIZE(keys),
>> +};
>> +#endif
>>
>>  static int archosg9_devices_init(void){
>>       i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
>>       omap44xx_add_i2c1(NULL);
>>       omap44xx_add_mmc1(NULL);
>> +#ifdef CONFIG_KEYBOARD_TWL6030
>> +     add_generic_device_res("twl6030_pwrbtn", DEVICE_ID_DYNAMIC, 0, 0,
>> +             &pwrbtn_data);
>> +#endif
>> +#ifdef CONFIG_KEYBOARD_GPIO
>> +     add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_data);
>> +#endif
>
> If you are not really really concerned about binary size I suggest to
> drop the ifdefs. It makes for better readability.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

In fact I'm concerned about size, the first stage bootloader has been
increased a lot since sd-card booting support was enabled (fat, mmc)
and had to enable the thumb2 mode because of this.
So, only required code is desirable to go into the first stage.

Regards,
  Vicente.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
