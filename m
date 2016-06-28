Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x241.google.com ([2607:f8b0:400d:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHk64-0003R1-Dw
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 03:54:01 +0000
Received: by mail-qk0-x241.google.com with SMTP id n132so1096097qka.0
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 20:53:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160627055721.GR20657@pengutronix.de>
References: <1466746535-17382-1-git-send-email-andrew.smirnov@gmail.com>
 <1466746535-17382-4-git-send-email-andrew.smirnov@gmail.com>
 <20160627055721.GR20657@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 Jun 2016 20:53:39 -0700
Message-ID: <CAHQ1cqF6YMRnedXhLUuGhqCoa1yMFOgB=kyr6iQxm66b8oYVcA@mail.gmail.com>
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
Subject: Re: [PATCH v2 3/4] GUI: Add fbtest command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

On Sun, Jun 26, 2016 at 10:57 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Jun 23, 2016 at 10:35:34PM -0700, Andrey Smirnov wrote:
>> Add 'fbtest' - a command to produce test patterns on a screen
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
>> ---
>>  commands/Kconfig  |   9 +++
>>  commands/Makefile |   1 +
>>  commands/fbtest.c | 201 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 211 insertions(+)
>>  create mode 100644 commands/fbtest.c
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 880cd45..cf71289 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -1417,6 +1417,15 @@ config CMD_SPLASH
>>                 -b COLOR      background color in 0xttrrggbb
>>                 -o            render offscreen
>>
>> +config CMD_FBTEST
>> +     bool
>> +     depends on VIDEO
>> +     select 2D_PRIMITIVES
>> +     prompt "FB test"
>> +     help
>> +       Framebuffer test command that allows to produce a number of
>> +       test patterns on a screen.
>> +
>>  config CMD_READLINE
>>       tristate
>>       prompt "readline"
>> diff --git a/commands/Makefile b/commands/Makefile
>> index b8c07f3..5a899ab 100644
>> --- a/commands/Makefile
>> +++ b/commands/Makefile
>> @@ -57,6 +57,7 @@ obj-$(CONFIG_CMD_HELP)              += help.o
>>  obj-$(CONFIG_CMD_LSMOD)              += lsmod.o
>>  obj-$(CONFIG_CMD_INSMOD)     += insmod.o
>>  obj-$(CONFIG_CMD_SPLASH)     += splash.o
>> +obj-$(CONFIG_CMD_FBTEST)     += fbtest.o
>>  obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
>>  obj-$(CONFIG_USB_GADGET_SERIAL)      += usbserial.o
>>  obj-$(CONFIG_CMD_GPIO)               += gpio.o
>> diff --git a/commands/fbtest.c b/commands/fbtest.c
>> new file mode 100644
>> index 0000000..f1569e9
>> --- /dev/null
>> +++ b/commands/fbtest.c
>> @@ -0,0 +1,201 @@
>> +#include <common.h>
>> +#include <command.h>
>> +#include <errno.h>
>> +#include <malloc.h>
>> +#include <getopt.h>
>> +#include <fb.h>
>> +#include <gui/graphic_utils.h>
>> +#include <gui/2d-primitives.h>
>> +#include <linux/gcd.h>
>> +#include <int_sqrt.h>
>> +
>> +static void fbtest_pattern_bars(struct screen *sc, u32 unused)
>> +{
>> +     int i;
>> +
>> +     const u32 xres = sc->info->xres;
>> +     const u32 yres = sc->info->yres;
>> +
>> +     const u32 colors[] =  {
>> +             0xFFFFFF,       /* white */
>> +             0xFFFF00,       /* yellow */
>> +             0x00FFFF,       /* cyan */
>> +             0x00FF00,       /* green */
>> +             0xFF00FF,       /* magenta */
>> +             0xFF0000,       /* red */
>> +             0x0000FF,       /* blue */
>> +             0x000000,       /* black */
>> +     };
>> +
>> +     for (i = 0; i < ARRAY_SIZE(colors); i++) {
>> +             const u8 r = (colors[i] >> 16) & 0xff;
>> +             const u8 g = (colors[i] >>  8) & 0xff;
>> +             const u8 b = (colors[i] >>  0) & 0xff;
>> +             const int dx = xres / ARRAY_SIZE(colors);
>> +
>> +             gu_fill_rectangle(sc,
>> +                               i * dx, 0, (i + 1) * dx - 1, yres - 1,
>> +                               r, g, b, 0xff);
>> +     }
>> +}
>> +
>> +static void fbtest_pattern_geometry(struct screen *sc, u32 color)
>> +{
>> +     int i;
>> +
>> +     const u8 r = (color >> 16) & 0xff;
>> +     const u8 g = (color >>  8) & 0xff;
>> +     const u8 b = (color >>  0) & 0xff;
>> +
>> +     const u32 xres = sc->info->xres;
>> +     const u32 yres = sc->info->yres;
>> +
>> +     const u8 xcount = xres / gcd(xres, yres);
>> +     const u8 ycount = yres / gcd(xres, yres);
>> +
>> +     const struct {
>> +             int x1, y1, x2, y2;
>> +     } borders[] = {
>> +             { 0,        0,        xres - 1, 0        },
>> +             { xres - 1, 0,        xres - 1, yres - 1 },
>> +             { 0,        yres - 1, xres - 1, yres - 1 },
>> +             { 0,        0,        0,        yres - 1 },
>> +     };
>> +
>> +     const int R1 = min(xres, yres) / 2;
>> +     const int h  = xres * xres + yres * yres;
>> +     const int R2 = (int_sqrt(h) / 2 - R1) * 5 / 12;
>> +
>> +     const  struct {
>> +             int x0, y0, radius;
>> +     } circles[] = {
>> +             { xres / 2,  yres / 2,  R1 - 1 },
>> +             { R2,        R2,        R2 - 1 },
>> +             { xres - R2, R2,        R2 - 1 },
>> +             { xres - R2, yres - R2, R2 - 1 },
>> +             { R2,        yres - R2, R2 - 1 }
>> +     };
>> +
>> +     void *buf = gui_screen_render_buffer(sc);
>> +
>> +     gu_memset_pixel(sc->info, buf, ~color,
>> +                     sc->s.width * sc->s.height);
>> +
>> +     for (i = 0; i < ARRAY_SIZE(borders); i++)
>> +             gu_draw_line(sc,
>> +                          borders[i].x1, borders[i].y1,
>> +                          borders[i].x2, borders[i].y2,
>> +                          r, g, b, 0xff, 10);
>> +
>> +     for (i = 0; i < ARRAY_SIZE(circles); i++)
>> +             gu_draw_circle(sc,
>> +                            circles[i].x0, circles[i].y0,
>> +                            circles[i].radius,
>> +                            r, g, b, 0xff);
>> +
>> +     for (i = 1; i < ycount; i++) {
>> +             const int y = (yres - 1) * i / ycount;
>> +             gu_draw_line(sc,
>> +                          0, y, xres - 1, y,
>> +                          r, g, b, 0xff, 0);
>> +     }
>> +
>> +
>> +     for (i = 1; i < xcount; i++) {
>> +             const int x = (xres - 1) * i / xcount;
>> +             gu_draw_line(sc,
>> +                          x, 0, x, yres - 1,
>> +                          r, g, b, 0xff, 0);
>> +     }
>> +}
>> +
>> +static int do_fbtest(int argc, char *argv[])
>> +{
>> +     struct screen *sc;
>> +     int opt;
>> +     unsigned int i;
>> +     const char *pattern_name = NULL;
>> +     char *fbdev = "/dev/fb0";
>> +     void (*pattern) (struct screen *sc, u32 color) = NULL;
>> +     u32 color = 0xffffff;
>> +
>> +     struct {
>> +             const char *name;
>> +             void (*func) (struct screen *sc, u32 color);
>> +     } patterns[] = {
>> +             { "geometry", fbtest_pattern_geometry },
>> +             { "bars",     fbtest_pattern_bars     }
>> +     };
>> +
>> +     while((opt = getopt(argc, argv, "d:p:c:")) > 0) {
>> +             switch(opt) {
>> +             case 'd':
>> +                     fbdev = optarg;
>> +                     break;
>> +             case 'p':
>> +                     pattern_name = optarg;
>> +                     break;
>> +             case 'c':
>> +                     color = simple_strtoul(optarg, NULL, 16);
>> +                     break;
>> +             }
>> +     }
>> +
>> +     if (pattern_name) {
>> +             for (i = 0; i < ARRAY_SIZE(patterns); i++)
>> +                     if (!strcmp(pattern_name, patterns[i].name))
>> +                             pattern = patterns[i].func;
>> +
>> +             if (!pattern) {
>> +                     printf("Unknonw pattern: %s\n", pattern_name);
>
> s/Unknonw/Unknown/

Will fix in v3. Thanks for noticing!

>
>> +                     return -EINVAL;
>> +             }
>> +     }
>> +
>> +     sc = fb_open(fbdev);
>> +     if (IS_ERR(sc)) {
>> +             perror("fd_open");
>> +             return PTR_ERR(sc);
>> +     }
>> +
>> +     if (!pattern_name) {
>> +             printf("No pattern selected. Cycling through all of them.\n");
>> +             printf("Press Ctrl-C to stop\n");
>> +
>> +             i = 0;
>> +             for (;;) {
>> +                     pattern = patterns[i++ % ARRAY_SIZE(patterns)].func;
>> +                     pattern(sc, color);
>> +                     gu_screen_blit(sc);
>> +
>> +                     if (ctrlc())
>> +                             break;
>> +
>> +                     mdelay(2000);
>> +             }
>
> The user will likely hit ctrl-c during the delay. Then when pressed there
> will always be the next pattern printed before actually stopping, which
> is probably not expected. How about this instead?
>
>         start = get_time_ns();
>         while (!is_timeout(start, 2 * SECOND))
>                 if (ctrlc())
>                         break;

Good suggestion, will use in v3.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
