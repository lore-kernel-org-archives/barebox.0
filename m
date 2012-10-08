Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f49.google.com ([209.85.220.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLKFA-00018v-5I
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 20:48:04 +0000
Received: by mail-pa0-f49.google.com with SMTP id bi5so4657836pad.36
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 13:48:02 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121008200130.GQ1322@pengutronix.de>
References: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
 <1349647287-28224-8-git-send-email-vicencb@gmail.com>
 <20121008200130.GQ1322@pengutronix.de>
Date: Mon, 8 Oct 2012 22:48:01 +0200
Message-ID: <CAAMcf8AtsQsszJirrvPuVhX=V6TkKXc7Nco25xv+NTOPCsuYiA@mail.gmail.com>
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
Subject: Re: [PATCH 07/13] uimage: improve transfer speed
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 8, 2012 at 10:01 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Oct 08, 2012 at 12:01:21AM +0200, Vicente wrote:
>>
>> Signed-off-by: Vicente <vicencb@gmail.com>
>
> Do you have some numbers which cases this speeds up and how much?
>
> Sascha
>
>> ---
>>  common/uimage.c | 26 ++++++++++++++++++++++++--
>>  1 file changed, 24 insertions(+), 2 deletions(-)
>>
>> diff --git a/common/uimage.c b/common/uimage.c
>> index c72db41..18c5b01 100644
>> --- a/common/uimage.c
>> +++ b/common/uimage.c
>> @@ -28,6 +28,8 @@
>>  #include <rtc.h>
>>  #include <filetype.h>
>>  #include <memory.h>
>> +#include <linux/stat.h>
>> +#include <sizes.h>
>>
>>  #ifdef CONFIG_UIMAGE_MULTI
>>  static inline int uimage_is_multi_image(struct uimage_handle *handle)
>> @@ -380,15 +382,35 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
>>       struct resource *res;
>>       size_t size = BUFSIZ;
>>       size_t ofs = 0;
>> +     size_t now;
>>       int fd;
>> +     struct stat s;
>>
>>       fd = open(filename, O_RDONLY);
>>       if (fd < 0)
>>               return NULL;
>>
>> -     while (1) {
>> -             size_t now;
>> +     /* TODO: use fstat(fd, &s) when implemented and avoid reopening file */
>> +     if (stat(filename, &s) == 0 && s.st_size <= SZ_1G) {
>> +             /*
>> +              * As the file size is known we can read it at once and improve
>> +              * transfer speed.
>> +              */
>> +             res = request_sdram_region("image", adr, s.st_size);
>> +             if (!res) {
>> +                     printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
>> +                             adr, adr + s.st_size - 1);
>> +                     goto out;
>> +             }
>>
>> +             now = read_full(fd, (void *)(res->start), s.st_size);
>> +             if (now < s.st_size) {
>> +                     release_sdram_region(res);
>> +                     res = NULL;
>> +             }
>> +             goto out;
>> +     }
>> +     while (1) {
>>               res = request_sdram_region("image", adr, size);
>>               if (!res) {
>>                       printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
>> --
>> 1.7.12.2
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

Yes,
 for example when transferring a 51MB initramfs from PC to tablet
through omap4_usbboot_fs it goes from 6MBps to 15MBps, from 8 seconds
to 3.3.

Regards,
  Vicente.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
