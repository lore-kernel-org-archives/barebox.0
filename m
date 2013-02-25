Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f47.google.com ([209.85.219.47])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9vsd-0003nG-A1
 for barebox@lists.infradead.org; Mon, 25 Feb 2013 11:06:00 +0000
Received: by mail-oa0-f47.google.com with SMTP id o17so2788908oag.34
 for <barebox@lists.infradead.org>; Mon, 25 Feb 2013 03:05:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130225081851.GP1906@pengutronix.de>
References: <1361729714-8772-1-git-send-email-vicencb@gmail.com>
 <20130225081851.GP1906@pengutronix.de>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Mon, 25 Feb 2013 12:05:37 +0100
Message-ID: <CAHkwnC_a5T5GdyzjdUkzzkG7HGgnfZY8pO=QjuAYPnO3zKQSew@mail.gmail.com>
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
Subject: Re: [PATCH] OMAP4 USB BOOT: remove double line endings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>

On Mon, Feb 25, 2013 at 9:18 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Feb 24, 2013 at 07:15:14PM +0100, Vicente Bergas wrote:
>> From previous patch that replaced printf with puts:
>>  puts adds it's own line ending, so do not append it manually

Thanks for fixing, I did not remember of the additional newline.

I need to fix the other puts,  i will push a patch to change puts
(str)-> fprinf('%s", str)
for the menu.c.

>>
>> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
>
>
> Applied, thanks
>
> Sascha
>
>
>> ---
>>  scripts/omap4_usbboot.c | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
>> index 34e53c0..e521086 100644
>> --- a/scripts/omap4_usbboot.c
>> +++ b/scripts/omap4_usbboot.c
>> @@ -78,7 +78,7 @@ int read_asic_id(struct usb_handle *usb)
>>       const uint32_t msg_getid = 0xF0030003;
>>       int i, j, k, ret;
>>       uint8_t id[81];
>> -     char line[LINEWIDTH*3+8];
>> +     char line[LINEWIDTH*3+5];
>>
>>       printf("reading ASIC ID\n");
>>       memset(id , 0xee, sizeof(id));
>> @@ -96,8 +96,7 @@ int read_asic_id(struct usb_handle *usb)
>>               sprintf(line, "%02X: ", i);
>>               for (j = 0; j < LINEWIDTH && j < sizeof(id)-i; j++)
>>                       sprintf(line+4+j*3, "%02X ", id[i+j]);
>> -             line[4+j*3+0] = '\n';
>> -             line[4+j*3+1] = 0;
>> +             line[4+j*3] = 0;
>>               puts(line);
>>       }
>>       ret = 0;
>> --
>> 1.8.1.4
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
