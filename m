Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f174.google.com ([209.85.217.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPjY-0008JY-GV
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 08:03:17 +0000
Received: by mail-lb0-f174.google.com with SMTP id u10so3486118lbi.19
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 01:02:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130603072604.GX32299@pengutronix.de>
References: <1370184829-66576-1-git-send-email-monaka@monami-ya.com>
 <1370184829-66576-2-git-send-email-monaka@monami-ya.com>
 <20130603072604.GX32299@pengutronix.de>
Date: Mon, 3 Jun 2013 17:02:53 +0900
Message-ID: <CAJBvFxPc5-O9FL0VsM=LfzdOn4wCyZ89zD+aLJoAa9=86x5kRQ@mail.gmail.com>
From: Masaki Muranaka <monaka@monami-ya.jp>
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
Subject: Re: [PATCH 2/3] Refactor malloc.h.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

My wish is to use POSIX/ISO-C-hosted way in commands/ and lib/
They are similar to user-land in Unix.

But I'm not sure if it's better replacing all malloc.h to stdlib.h.
common/, fs/ and some places are equivalent to kernel inside.
There are not always required to confirm to POSIX/ISO-C-hosted.



2013/6/3 Sascha Hauer <s.hauer@pengutronix.de>:
> On Sun, Jun 02, 2013 at 11:53:48PM +0900, Masaki Muranaka wrote:
>>  Some functions should be defined in stdlib.h or unistd.h.
>> ---
>>  include/malloc.h       |  8 +++-----
>>  include/malloc_isoc.h  | 11 +++++++++++
>>  include/malloc_posix.h |  8 ++++++++
>>  include/stdlib.h       |  1 +
>>  include/unistd.h       |  6 ++++++
>>  5 files changed, 29 insertions(+), 5 deletions(-)
>>  create mode 100644 include/malloc_isoc.h
>>  create mode 100644 include/malloc_posix.h
>>  create mode 100644 include/unistd.h
>>
>> diff --git a/include/malloc.h b/include/malloc.h
>> index 7b9b062..9554597 100644
>> --- a/include/malloc.h
>> +++ b/include/malloc.h
>> @@ -5,20 +5,18 @@
>>
>>  /* Public routines */
>>
>> -void* malloc(size_t);
>> -void free(void*);
>> -void* realloc(void*, size_t);
>> +#include <malloc_isoc.h>
>> +#include <malloc_posix.h>
>> +
>>  void* memalign(size_t, size_t);
>>  void* vallocc(size_t);
>>  void* pvalloc(size_t);
>> -void* calloc(size_t, size_t);
>>  void cfree(void*);
>>  int malloc_trim(size_t);
>>  size_t malloc_usable_size(void*);
>>  void malloc_stats(void);
>>  int mallopt(int, int);
>>  struct mallinfo mallinfo(void);
>> -void *sbrk(ptrdiff_t increment);
>
> Wouldn't it be nicer to move the prototypes to unistd.h / stdlib.h
> instead of adding new files?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



-- 
--
Masaki Muranaka
Monami-ya LLC, Japan.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
