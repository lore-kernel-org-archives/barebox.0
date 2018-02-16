Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x242.google.com ([2607:f8b0:400d:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emgEV-00064p-Ao
 for barebox@lists.infradead.org; Fri, 16 Feb 2018 13:39:26 +0000
Received: by mail-qk0-x242.google.com with SMTP id 15so3778703qkl.3
 for <barebox@lists.infradead.org>; Fri, 16 Feb 2018 05:39:09 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180209072924.4zpt7e7vhbe2nfux@pengutronix.de>
References: <20180205172935.25232-1-andrew.smirnov@gmail.com>
 <20180205172935.25232-4-andrew.smirnov@gmail.com>
 <20180209072924.4zpt7e7vhbe2nfux@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 16 Feb 2018 05:39:08 -0800
Message-ID: <CAHQ1cqEDk4Y+XSaU+jEEZDVcnne+sGsnVJd8A3hXTNxn8x-uqg@mail.gmail.com>
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
Subject: Re: [PATCH 4/4] commands: version: Add framebuffer output support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Feb 8, 2018 at 11:29 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Mon, Feb 05, 2018 at 09:29:35AM -0800, Andrey Smirnov wrote:
>> Extend "version" command to be capable of rendeing version information
>> on framebuffer devices.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  commands/Kconfig   |   8 +++
>>  commands/version.c | 198 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
>>  2 files changed, 204 insertions(+), 2 deletions(-)
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 095536849..1cad5d608 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -238,6 +238,14 @@ config CMD_VERSION
>>
>>         barebox 2014.05.0-00142-gb289373 #177 Mon May 12 20:35:55 CEST 2014
>>
>> +config CMD_VERSION_OUTPUT_TO_FRAMEBUFFER
>> +       bool
>> +       depends on CMD_VERSION
>> +       prompt "support displaying version via framebuffer"
>> +       help
>> +         Selecting this option will enable version command to output
>> +         version information onto display backed by a frambuffer
>> +
>>  config CMD_MMC_EXTCSD
>>       tristate
>>       prompt "read/write eMMC ext. CSD register"
>> diff --git a/commands/version.c b/commands/version.c
>> index 090f2dd13..ba74a993c 100644
>> --- a/commands/version.c
>> +++ b/commands/version.c
>> @@ -20,16 +20,210 @@
>>  #include <common.h>
>>  #include <command.h>
>>  #include <complete.h>
>> +#include <getopt.h>
>> +#include <fb.h>
>> +#include <gui/graphic_utils.h>
>> +#include <gui/2d-primitives.h>
>> +
>> +#define FRAME_SIZE   8
>> +
>> +struct placement {
>> +     int x, y;
>> +};
>> +
>> +typedef struct placement placement_function_t (struct screen *, int, int);
>> +
>> +struct placement
>> +placement_center(struct screen *sc, int text_width, int text_height)
>> +{
>> +     struct placement p;
>> +
>> +     p.x = (sc->info->xres - text_width) / 2;
>> +     p.y = (sc->info->yres - text_height) / 2;
>> +
>> +     return p;
>> +}
>> +
>> +struct placement
>> +placement_upper_left(struct screen *sc, int text_width, int text_height)
>> +{
>> +     struct placement p;
>> +
>> +     p.x = FRAME_SIZE;
>> +     p.y = FRAME_SIZE;
>> +
>> +     return p;
>> +}
>> +
>> +struct placement
>> +placement_upper_right(struct screen *sc, int text_width, int text_height)
>> +{
>> +     struct placement p;
>> +
>> +     p.x = sc->info->xres - 1 - text_width - FRAME_SIZE;
>> +     p.y = FRAME_SIZE;
>> +
>> +     return p;
>> +}
>> +
>> +struct placement
>> +placement_lower_left(struct screen *sc, int text_width, int text_height)
>> +{
>> +     struct placement p;
>> +
>> +     p.x = FRAME_SIZE;
>> +     p.y = sc->info->yres - 1 - text_height - FRAME_SIZE;
>> +
>> +     return p;
>> +}
>> +
>> +struct placement
>> +placement_lower_right(struct screen *sc, int text_width, int text_height)
>> +{
>> +     struct placement p;
>> +
>> +     p.x = sc->info->xres - 1 - text_width  - FRAME_SIZE;
>> +     p.y = sc->info->yres - 1 - text_height - FRAME_SIZE;
>> +
>> +     return p;
>> +}
>>
>>  static int do_version(int argc, char *argv[])
>>  {
>> -     printf ("\n%s\n", version_string);
>> +     const struct font_desc *font;
>> +     const char *fbdev = NULL;
>> +     struct screen *sc;
>> +     u8 fg[3], bg[3];
>> +     int text_width;
>> +     int text_height;
>> +
>> +     placement_function_t *place;
>> +     struct placement placement;
>> +
>> +     if (IS_ENABLED(CONFIG_CMD_VERSION_OUTPUT_TO_FRAMEBUFFER)) {
>
> This is quite much code added to the version command, given that the
> command previously only was a one-liner. I think this should rather be a
> separate command. This could depend on framebuffer and other needed
> stuff which would make the first two patches unnecessary. I think
> stubbing away graphics functions when the user is graphics-only code is
> a bit over the top.
>

OK, will change in v2.

> The placement functions look as if they should be moved to some font
> handling generic code.

OK, will do.

>
> Also it's always nice to have a C API for anything we also have as
> command. It has proven to be useful so many times.
>

Sure, will do.

>> +BAREBOX_CMD_HELP_OPT ("-f color\t", "foreground color, in hex RRGGBB format")
>> +BAREBOX_CMD_HELP_OPT ("-b color\t", "background color, in hex RRGGBB format")
>
> I'm not sure how useful these are as parameters to a command. How about
> a nv variable? This could be used by the framebuffer console aswell.
>

Sure, sounds reasonable.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
