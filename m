Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f49.google.com ([209.85.220.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLKSm-0003A9-Bk
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 21:02:09 +0000
Received: by mail-pa0-f49.google.com with SMTP id bi5so4667917pad.36
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 14:02:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121008201811.GR1322@pengutronix.de>
References: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
 <1349647287-28224-7-git-send-email-vicencb@gmail.com>
 <20121008201811.GR1322@pengutronix.de>
Date: Mon, 8 Oct 2012 23:02:04 +0200
Message-ID: <CAAMcf8C-3-fuL2mDXMsTrezZhx9TwBAzZXWc+BPiV+noU67ndQ@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/13] bootm: close open files
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 8, 2012 at 10:18 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Oct 08, 2012 at 12:01:20AM +0200, Vicente wrote:
>>
>> Signed-off-by: Vicente <vicencb@gmail.com>
>> ---
>>  arch/arm/lib/bootm.c | 4 +++-
>>  commands/bootm.c     | 6 +++++-
>>  2 files changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
>> index c5b76ea..288c0b2 100644
>> --- a/arch/arm/lib/bootm.c
>> +++ b/arch/arm/lib/bootm.c
>> @@ -269,8 +269,9 @@ static int do_bootz_linux(struct image_data *data)
>>
>>       ret = do_bootz_linux_fdt(fd, data);
>>       if (ret && ret != -ENXIO)
>> -             return ret;
>> +             goto err_out;
>>
>> +     close(fd);
>>       return __do_bootm_linux(data, swap);
>
> ret = __do_bootm_linux and fall through?
>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

No,
 __do_bootm_linux does not return if everything works ok.
From the barebox point of view there is no difference in closing or
not the files.
The difference is when the files are from a server.

Regards,
  Vicente.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
