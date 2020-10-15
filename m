Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSzJR-0004xt-BT
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 09:12:42 +0000
References: <20201014150824.3578133-1-m.tretter@pengutronix.de>
 <20201014150824.3578133-2-m.tretter@pengutronix.de>
 <c37529f5-977d-be9e-d44a-968d69e2a1e9@pengutronix.de>
 <20201015074005.GC5487@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0b72273d-ded1-97d0-50ba-044a1f82113e@pengutronix.de>
Date: Thu, 15 Oct 2020 11:12:40 +0200
MIME-Version: 1.0
In-Reply-To: <20201015074005.GC5487@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 2/2] uimage: disable zero page when loading to SDRAM at
 address 0x0
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On 10/15/20 9:40 AM, Michael Tretter wrote:
> On Wed, 14 Oct 2020 18:33:25 +0200, Ahmad Fatoum wrote:
>> On 10/14/20 5:08 PM, Michael Tretter wrote:
>>> If the SDRAM is mapped to address 0x0 and an image should be loaded to
>>> to the SDRAM without offset, Barebox would normally trap the access as a
>>> null pointer.
>>>
>>> However, since Linux kernel commit cfa7ede20f13 ("arm64: set TEXT_OFFSET
>>> to 0x0 in preparation for removing it entirely") no offset is the
>>> default for arm64. Therefore, copying the image to 0x0 of the SDRAM is
>>> necessary.
>>>
>>> Disable the zero page trap for copying an image to address 0x0.
>>>
>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>> ---
>>>  common/uimage.c | 18 ++++++++++++++++--
>>>  1 file changed, 16 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/common/uimage.c b/common/uimage.c
>>> index a84b8fddc4e7..b1e9b402e98a 100644
>>> --- a/common/uimage.c
>>> +++ b/common/uimage.c
>>> @@ -27,6 +27,7 @@
>>>  #include <rtc.h>
>>>  #include <filetype.h>
>>>  #include <memory.h>
>>> +#include <zero_page.h>
>>>  
>>>  static inline int uimage_is_multi_image(struct uimage_handle *handle)
>>>  {
>>> @@ -359,7 +360,13 @@ static int uimage_sdram_flush(void *buf, unsigned int len)
>>>  		}
>>>  	}
>>>  
>>> -	memcpy(uimage_buf + uimage_size, buf, len);
>>> +	if (zero_page_contains((unsigned long)uimage_buf + uimage_size)) {
>>> +		zero_page_disable();
>>> +		memcpy(uimage_buf + uimage_size, buf, len);
>>> +		zero_page_enable();
>>
>> If this remains, please add a memcpy_notrap or something.
> 
> Should I check the destination before calling memcpy_notrap or should I always
> call the memcpy_notrap if there is a possibility to copy to 0x0 and check for
> the destination within the function?
> 
> I fear that having such a "simple" function would encourage to use it more
> often. I would prefer to make the code to use it more clumsy and make it
> (similar to data_abort_mask()) the responsibility of the caller to be aware
> that bad things might happen when the zero_page is disabled.

Give it a scary name then.

> 
>>
>>> +	} else {
>>> +		memcpy(uimage_buf + uimage_size, buf, len);
>>> +	}
>>>  
>>>  	uimage_size += len;
>>>  
>>> @@ -388,7 +395,14 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
>>>  			goto out;
>>>  		}
>>>  
>>> -		now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
>>> +		if (zero_page_contains(res->start + ofs)) {
>>> +			zero_page_disable();
>>> +			now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
>>> +			zero_page_enable();
>>
>> And use that new memcpy_notrap here to copy from an intermediate buffer. You open quite a can
>> of worms when you treat NULL as a valid address. Better have this contained in a single
>> file instead of hoping the compiler doesn't do a NULL-can't-happen-here optimization
>> in all that block/cdev/fs code that read_full may call into.
> 
> Could you explain, what kind of optimization you would expect?

Real world example: https://lwn.net/Articles/342330/

Kernel and barebox both have -fno-delete-null-pointer-checks to avoid this, but
you can't be sure that other null pointer optimizations are avoided.

For example, the transformation of

  static void func(unsigned *ptr, bool x) { if (!x) return; *ptr = 0xDEADBEEF; }
  void f(void *ptr, bool x) { func(ptr, x); }

to

  static void func(unsigned *ptr) { if (!ptr) return; *ptr = 0xDEADBEEF }
  void f(void *ptr, bool x) { if (!x) ptr = NULL; func(ptr); }

is valid as far the standard is concerned.

Better play it safe and reduce the surface where optimization can go awry.

Cheers,
Ahmad

> 
> Michael
> 
>>
>>> +		} else {
>>> +			now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
>>> +		}
>>> +
>>>  		if (now < 0) {
>>>  			release_sdram_region(res);
>>>  			res = NULL;
>>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
