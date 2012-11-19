Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaPc4-0000ML-5z
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 11:34:05 +0000
Received: by mail-ie0-f177.google.com with SMTP id e14so6383518iej.36
 for <barebox@lists.infradead.org>; Mon, 19 Nov 2012 03:34:02 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20121119103037.GR10369@pengutronix.de>
References: <1353144361-9089-1-git-send-email-antonynpavlov@gmail.com>
 <1353144361-9089-4-git-send-email-antonynpavlov@gmail.com>
 <20121119103037.GR10369@pengutronix.de>
Date: Mon, 19 Nov 2012 15:34:02 +0400
Message-ID: <CAA4bVAEmibj5RkfNr8yRjaApEwABB-jaKQUP8SiZOzp4fhpezg@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] ARM: start-pbl.c: unificate path to lib/decompress_*.c
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19 November 2012 14:30, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sat, Nov 17, 2012 at 01:26:01PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  arch/arm/cpu/start-pbl.c |    2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
>> index 79a3cdd..c5f9705 100644
>> --- a/arch/arm/cpu/start-pbl.c
>> +++ b/arch/arm/cpu/start-pbl.c
>> @@ -66,7 +66,7 @@ extern void *input_data_end;
>>  #endif
>>
>>  #ifdef CONFIG_IMAGE_COMPRESSION_GZIP
>> -#include "../../../../lib/decompress_inflate.c"
>> +#include "../../../lib/decompress_inflate.c"
>
> This is strange. Why did this work beforehand?

Look above in the arch/arm/cpu/start-pbl.c:

#ifdef CONFIG_IMAGE_COMPRESSION_LZO
#include "../../../lib/decompress_unlzo.c"
#endif

#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
#include "../../../../lib/decompress_inflate.c"
#endif

The files decompress_inflate.c and decompress_unlzo.c are in the same
directory. Why we use different prefixes to address them?

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
