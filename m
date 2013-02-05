Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2eUf-0003ZB-CJ
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 09:07:10 +0000
Received: by mail-la0-f53.google.com with SMTP id fr10so5418336lab.40
 for <barebox@lists.infradead.org>; Tue, 05 Feb 2013 01:07:06 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130205085713.GO1906@pengutronix.de>
References: <1360017396-13321-1-git-send-email-antonynpavlov@gmail.com>
 <1360017396-13321-2-git-send-email-antonynpavlov@gmail.com>
 <20130205085713.GO1906@pengutronix.de>
Date: Tue, 5 Feb 2013 13:07:05 +0400
Message-ID: <CAA4bVAEL+cVXGdMX5SVgrkgurxQuaKqKtfGPAj+QrvQdOr0YYw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/2] pbl: factorise linux/decompress/mm.h inclusion
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 5 February 2013 12:57, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Feb 05, 2013 at 02:36:36AM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  lib/decompress_inflate.c |    1 -
>>  lib/decompress_unlzo.c   |    1 -
>>  pbl/decomp.c             |    2 ++
>>  3 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
>> index 5c1ebb6..526d6a1 100644
>> --- a/lib/decompress_inflate.c
>> +++ b/lib/decompress_inflate.c
>> @@ -4,7 +4,6 @@
>>  /* prevent inclusion of _LINUX_KERNEL_H in pre-boot environment: lots
>>   * errors about console_printk etc... on ARM */
>>  #define _LINUX_KERNEL_H
>> -#include <linux/decompress/mm.h>
>>
>>  #include "zlib_inflate/inftrees.c"
>>  #include "zlib_inflate/inffast.c"
>> diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
>> index 1b2dc9d..2b0fbed 100644
>> --- a/lib/decompress_unlzo.c
>> +++ b/lib/decompress_unlzo.c
>> @@ -32,7 +32,6 @@
>>  #include <xfuncs.h>
>>
>>  #ifdef STATIC
>> -#include <linux/decompress/mm.h>
>>  #include "lzo/lzo1x_decompress.c"
>>  #else
>>  #include <malloc.h>
>> diff --git a/pbl/decomp.c b/pbl/decomp.c
>> index aa6a31e..17fc01e 100644
>> --- a/pbl/decomp.c
>> +++ b/pbl/decomp.c
>> @@ -10,6 +10,8 @@
>>
>>  #define STATIC static
>>
>> +#include <linux/decompress/mm.h>
>> +
>
> Any special reason for this patch? Normally the #include is in the file
> requiring the declarations from the file. In this case decompress_* need
> linux/decompress/mm.h, not pbl/decomp.c.

There is no special reason for this patch, just factorisation. If you
don't like this type of factorisation you can drop this patch :)

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
