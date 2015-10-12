Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlXfJ-0005Uc-U0
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 07:37:02 +0000
Received: by wieq12 with SMTP id q12so6531293wie.1
 for <barebox@lists.infradead.org>; Mon, 12 Oct 2015 00:36:40 -0700 (PDT)
References: <1444339185-17508-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20151012061112.GJ7858@pengutronix.de>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Message-ID: <561B6305.40306@gmail.com>
Date: Mon, 12 Oct 2015 09:36:37 +0200
In-Reply-To: <20151012061112.GJ7858@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] fs: Fix memcpy_sz for remaining count/rwsize
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12.10.2015 08:11, Sascha Hauer wrote:
> On Thu, Oct 08, 2015 at 11:19:45PM +0200, Sebastian Hesselbarth wrote:
>> When using memcpy_sz with rwsize != 1 integer division of
>> count/rwsize may leave some bytes of the request uncopied if
>> count is not a multiple of rwsize.
>>
>> Fix this behavior by decrementing count by rwsize instead of
>> integer division and use plain memcpy for the remaining bytes.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>> ---
>> Cc: barebox@lists.infradead.org
>> ---
>>   fs/fs.c | 9 ++++++---
>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/fs/fs.c b/fs/fs.c
>> index c041e41bb51b..ccbda22d2692 100644
>> --- a/fs/fs.c
>> +++ b/fs/fs.c
>> @@ -1580,9 +1580,7 @@ static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
>>
>>   	rwsize = rwsize >> O_RWSIZE_SHIFT;
>>
>> -	count /= rwsize;
>> -
>> -	while (count-- > 0) {
>> +	while (count > 0) {
>>   		switch (rwsize) {
>>   		case 1:
>>   			*((u8 *)dst) = *((u8 *)src);
>> @@ -1599,7 +1597,12 @@ static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
>>   		}
>>   		dst += rwsize;
>>   		src += rwsize;
>> +		count -= rwsize;
>>   	}
>
> This doesn't look correct. When count > 0 you are inside the loop, so
>
>> +
>> +	/* copy remaining bytes with plain memcpy */
>> +	if (count)
>> +		memcpy(dst, src, count);
>
> here count <= 0 which is no meaningful argument for the copy size.
>
> Should the loop start with while (count >= rwsize) instead?

Dammit, last minute cosmetic change including breaking the
whole patch. Sorry for that.

> I wonder if the behaviour shouldn't rather be:
> - let memcpy_sz return the number of bytes copied and not copy the
>    remaining partial word.
> - return error from memcpy_sz when input count < rwsize
>
> This would allow us to catch wrongly aligned sizes.

I am open for any different resolution. I stumbled upon the odd
behavior of memcpy_sz while writing to NAND using memcpy. Maybe
it would be also good to always pick byte size for memcpy when
no specific size has been passed. It took me a while until I
realized it is not the NAND controller but memcpy that breaks
the data written by leaving some bytes uncopied.

Sebastian



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
