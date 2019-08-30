Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cgk-0006ik-1h
 for barebox@lists.infradead.org; Fri, 30 Aug 2019 08:55:23 +0000
References: <20190829124318.30339-1-a.fatoum@pengutronix.de>
 <20190830041835.yiga65keg7p2sgr2@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <99cbdc2a-fba9-549f-82bb-c8b187ff635d@pengutronix.de>
Date: Fri, 30 Aug 2019 10:55:20 +0200
MIME-Version: 1.0
In-Reply-To: <20190830041835.yiga65keg7p2sgr2@pengutronix.de>
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
Subject: Re: [PATCH] gpio: iopoll: implement gpio_poll_timeout_us
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Oleksij,

On 8/30/19 6:18 AM, Oleksij Rempel wrote:
> On Thu, Aug 29, 2019 at 02:43:18PM +0200, Ahmad Fatoum wrote:
>> Sometimes we need to wait for state change on a GPIO,
>> provide a helper to do this.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/gpio.h | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/include/gpio.h b/include/gpio.h
>> index 1926edeca757..89cb306a195c 100644
>> --- a/include/gpio.h
>> +++ b/include/gpio.h
>> @@ -3,6 +3,7 @@
>>  
>>  #include <linux/types.h>
>>  #include <linux/list.h>
>> +#include <linux/iopoll.h>
>>  
>>  #ifdef CONFIG_GENERIC_GPIO
>>  void gpio_set_value(unsigned gpio, int value);
>> @@ -31,6 +32,13 @@ static inline int gpio_direction_input(unsigned gpio)
>>  void gpio_set_active(unsigned gpio, bool state);
>>  int gpio_is_active(unsigned gpio);
>>  int gpio_direction_active(unsigned gpio, bool state);
>> +
>> +#define gpio_poll_timeout_us(gpio, active, timeout_us)			\
>> +	({								\
>> +		int __state;						\
>> +		readx_poll_timeout(gpio_is_active, gpio, __state,	\
>> +				   __state == (active), timeout_us);	\
>> +	})
>>  #else
>>  static inline void gpio_set_active(unsigned gpio, int value)
>>  {
>> @@ -43,6 +51,8 @@ static inline int gpio_direction_active(unsigned gpio, int value)
>>  {
>>  	return -EINVAL;
>>  }
>> +
>> +#define gpio_poll_timeout_us(gpio, val, timeout_us) (-ENOSYS)
>>  #endif
>>  
>>  #if defined(CONFIG_ARCH_NR_GPIO) && CONFIG_ARCH_NR_GPIO > 0
> 
> Do we already have some thing using this function?

Just stuff sitting on my own branches, but I figured it's useful
enough to have in the header.

> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
