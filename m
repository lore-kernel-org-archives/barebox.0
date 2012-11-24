Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TcFpK-0002bI-QQ
 for barebox@lists.infradead.org; Sat, 24 Nov 2012 13:31:23 +0000
Received: by mail-pb0-f49.google.com with SMTP id un15so6384903pbc.36
 for <barebox@lists.infradead.org>; Sat, 24 Nov 2012 05:31:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20121124084507.GX8327@game.jcrosoft.org>
References: <1353727464-15175-1-git-send-email-vicencb@gmail.com>
 <1353727464-15175-2-git-send-email-vicencb@gmail.com>
 <20121124084507.GX8327@game.jcrosoft.org>
Date: Sat, 24 Nov 2012 14:31:19 +0100
Message-ID: <CAAMcf8Bbrmez79fh5FwSgB3i46cO5WEU833QeTT+dvg5LN24hg@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] uimage: fix misunderstanding in common/uimage.c
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 24, 2012 at 9:45 AM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 04:24 Sat 24 Nov     , Vicente Bergas wrote:
>> The option of reading the file at once was discarded because
>> the option of increasing the buffer size provided almost the
>> same benefit.
> nack
>
> this is mandatory for tftp fs support
>
> Best Regarfd,
> J.

I'll try to explain it more clearly:
Firstly file_to_sdram read files a chunck of 2 pages at a time because
not all file systems (e.g. TFTP) didn't report the file size.
This provided a slow transfer speed, because the overhead of reading
each chunck is nonzero.
So I proposed a First patch to file_to_sdram which first checked for a
known/correct file size. If the file size was unknown/incorrect the
original method was still used (so TFTP worked), else the whole file
was read at once.
Sascha Hauer proposed an alternative to this First patch of only
increase the chunck size, which, after benchmarking, was set to 32
pages and was considered a reasonable size. This was the Second patch
to file_to_sdram.
The performance between the First and the Second patches was
comparable, so the First was discarded in favor of the Second, which
is much more simple.
But yesterday I checked and found both patches were applied in git master.
Hope this clarifies the issue.

Best Regards,
  Vicente.

>>
>> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
>> ---
>>  common/uimage.c | 24 ------------------------
>>  1 file changed, 24 deletions(-)
>>
>> diff --git a/common/uimage.c b/common/uimage.c
>> index 3f5a3d5..8bcbfdd 100644
>> --- a/common/uimage.c
>> +++ b/common/uimage.c
>> @@ -28,8 +28,6 @@
>>  #include <rtc.h>
>>  #include <filetype.h>
>>  #include <memory.h>
>> -#include <linux/stat.h>
>> -#include <sizes.h>
>>
>>  #ifdef CONFIG_UIMAGE_MULTI
>>  static inline int uimage_is_multi_image(struct uimage_handle *handle)
>> @@ -384,33 +382,11 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
>>       size_t ofs = 0;
>>       size_t now;
>>       int fd;
>> -     struct stat s;
>>
>>       fd = open(filename, O_RDONLY);
>>       if (fd < 0)
>>               return NULL;
>>
>> -     /* TODO: use fstat(fd, &s) when implemented and avoid reopening file */
>> -     if (stat(filename, &s) == 0 && s.st_size <= SZ_1G) {
>> -             /*
>> -              * As the file size is known we can read it at once and improve
>> -              * transfer speed.
>> -              */
>> -             size = s.st_size;
>> -             res = request_sdram_region("image", adr, size);
>> -             if (!res) {
>> -                     printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
>> -                             adr, adr + size - 1);
>> -                     goto out;
>> -             }
>> -
>> -             now = read_full(fd, (void *)(res->start), size);
>> -             if (now < size) {
>> -                     release_sdram_region(res);
>> -                     res = NULL;
>> -             }
>> -             goto out;
>> -     }
>>       while (1) {
>>               res = request_sdram_region("image", adr, size);
>>               if (!res) {
>> --
>> 1.8.0
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
