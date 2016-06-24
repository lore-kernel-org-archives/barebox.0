Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x244.google.com ([2607:f8b0:4002:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGHh1-0005YX-Bo
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 03:22:08 +0000
Received: by mail-yw0-x244.google.com with SMTP id f75so13501401ywb.3
 for <barebox@lists.infradead.org>; Thu, 23 Jun 2016 20:21:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160623062237.GG4750@pengutronix.de>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
 <20160623062237.GG4750@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2016 20:21:45 -0700
Message-ID: <CAHQ1cqEt6EjZ6Y1ARfJt+jnjo1J_of+0VFqUYO60_752eyMAww@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] GUI: Add fbtest command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

On Wed, Jun 22, 2016 at 11:22 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Jun 21, 2016 at 09:39:29PM -0700, Andrey Smirnov wrote:
>> Add 'fbtest' - a command to produce test patterns on a screen
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
>> ---
>>  commands/Kconfig  |   9 +++
>>  commands/Makefile |   1 +
>>  commands/fbtest.c | 187 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 197 insertions(+)
>>  create mode 100644 commands/fbtest.c
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 880cd45..107cc3e 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -1417,6 +1417,15 @@ config CMD_SPLASH
>>                 -b COLOR      background color in 0xttrrggbb
>>                 -o            render offscreen
>>
>
>> +
>> +static int do_fbtest(int argc, char *argv[])
>> +{
>> +     struct screen *sc;
>> +     int opt, i;
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
>> +     if (!pattern_name) {
>> +             printf("No pattern name specified\n");
>> +             return -EINVAL;
>> +     }
>
> Maybe we can iterate over the patterns if no pattern is given like the
> Linux variant does?
>

I like this idea, I wasn't able to find the source code of a fbtest
version that does that, so I am not sure if I'll match the behavior
exactly. I'll make it loop over patterns and wait for Ctrl-C in v2 if
no pattern is given.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
