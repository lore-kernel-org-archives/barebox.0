Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x241.google.com ([2607:f8b0:400d:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHk4Y-0001Zn-9r
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 03:52:27 +0000
Received: by mail-qk0-x241.google.com with SMTP id n132so1091002qka.0
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 20:52:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160627053353.GQ20657@pengutronix.de>
References: <1466746535-17382-1-git-send-email-andrew.smirnov@gmail.com>
 <1466746535-17382-2-git-send-email-andrew.smirnov@gmail.com>
 <20160627053353.GQ20657@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 Jun 2016 20:52:03 -0700
Message-ID: <CAHQ1cqF3NzQAn0=yREugQRc0=gXny=UkRG+AFzrrCkUvW-Dp7g@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/4] GUI: Add a function to draw vertical/horizontal
 bars
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sun, Jun 26, 2016 at 10:33 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Jun 23, 2016 at 10:35:32PM -0700, Andrey Smirnov wrote:
>> Add a function to draw solid vertical or horizontal bars.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  include/gui/graphic_utils.h |  3 +++
>>  lib/gui/graphic_utils.c     | 26 ++++++++++++++++++++++++++
>>  2 files changed, 29 insertions(+)
>>
>> diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
>> index 231b3a9..279fdf9 100644
>> --- a/include/gui/graphic_utils.h
>> +++ b/include/gui/graphic_utils.h
>> @@ -28,4 +28,7 @@ void gu_invert_area(struct fb_info *info, void *buf, int startx, int starty, int
>>  void gu_screen_blit_area(struct screen *sc, int startx, int starty, int width,
>>               int height);
>>
>> +void gu_fill_rectangle(struct screen *sc,
>> +                    int x1, int y1, int x2, int y2,
>> +                    u8 r, u8 g, u8 b, u8 a);
>>  #endif /* __GRAPHIC_UTILS_H__ */
>> diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
>> index 2fe9fa3..c6c4373 100644
>> --- a/lib/gui/graphic_utils.c
>> +++ b/lib/gui/graphic_utils.c
>> @@ -336,3 +336,29 @@ void gu_screen_blit(struct screen *sc)
>>       if (info->screen_base_shadow)
>>               memcpy(info->screen_base, info->screen_base_shadow, sc->fbsize);
>>  }
>> +
>> +void gu_fill_rectangle(struct screen *sc,
>> +                    int x1, int y1, int x2, int y2,
>> +                    u8 r, u8 g, u8 b, u8 a)
>> +{
>> +     int y;
>> +     void *buf = gui_screen_render_buffer(sc);
>> +
>> +     BUG_ON(x1 < 0 || y1 < 0 ||
>> +            x2 < 0 || y2 < 0);
>
> Not sure if this should be a bug. How about cropping the rectangle to
> the screen boundaries instead? The same test should be donw for the
> lower right corner.

Sure, I have no problem with that, will change in v3.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
