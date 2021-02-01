Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6V3j-0003tt-ET
 for barebox@lists.infradead.org; Mon, 01 Feb 2021 08:59:48 +0000
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
 <20210129161116.9971-4-a.fatoum@pengutronix.de>
 <20210201085758.GM19583@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7de5ac0a-4e14-3f8c-12fc-f640e5ac6298@pengutronix.de>
Date: Mon, 1 Feb 2021 09:59:45 +0100
MIME-Version: 1.0
In-Reply-To: <20210201085758.GM19583@pengutronix.de>
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
Subject: Re: [PATCH 4/8] asm-generic: io.h: remove wrong use of IOMEM
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On 01.02.21 09:57, Sascha Hauer wrote:
> On Fri, Jan 29, 2021 at 05:11:12PM +0100, Ahmad Fatoum wrote:
>> addr is already __iomem, but we need to force strip that away to use it
>> as normal pointer. Define __io_virt like Linux does and use it.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/asm-generic/io.h | 8 +++++---
>>  1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
>> index 150a97645b6b..a4b0dc4b4337 100644
>> --- a/include/asm-generic/io.h
>> +++ b/include/asm-generic/io.h
>> @@ -425,6 +425,8 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
>>  #define IOMEM(addr)	((void __force __iomem *)(addr))
>>  #endif
>>  
>> +#define __io_virt(x) ((void __force *)(x))
>> +
>>  #ifndef memset_io
>>  #define memset_io memset_io
>>  /**
>> @@ -438,7 +440,7 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
>>  static inline void memset_io(volatile void __iomem *addr, int value,
>>  			     size_t size)
>>  {
>> -	memset(IOMEM(addr), value, size);
>> +	memset(__io_virt(addr), value, size);
>>  }
> 
> Why did you add it differently than Linux in the first place?
> Should this be merged into 2/8?

Yes, please squash. I somehow thought I had added this earlier :D

Thanks,
Ahmad

> 
> Sascha
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
