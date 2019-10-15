Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKGmp-0002OC-Qv
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 06:58:29 +0000
References: <20191014063922.17233-1-a.fatoum@pengutronix.de>
 <20191014063922.17233-5-a.fatoum@pengutronix.de>
 <20191014125157.f4ckzgwpqjugt7pq@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <632685b6-5886-eb06-cd3e-756ec4e3eefe@pengutronix.de>
Date: Tue, 15 Oct 2019 08:58:23 +0200
MIME-Version: 1.0
In-Reply-To: <20191014125157.f4ckzgwpqjugt7pq@pengutronix.de>
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
Subject: Re: [PATCH 4/5] ARM: stm32mp: dk2: add barebox SD-Card update handler
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On 10/14/19 2:51 PM, Sascha Hauer wrote:
> On Mon, Oct 14, 2019 at 08:39:21AM +0200, Ahmad Fatoum wrote:
>> Now with the SD/MMC controller supported, lets add a bbu handler, so we
>> can use it to update the second stage boot loader partition.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/boards/stm32mp157c-dk2/board.c  | 14 ++++++++++++++
>>  arch/arm/mach-stm32mp/include/mach/bbu.h | 14 ++++++++++++++
>>  2 files changed, 28 insertions(+)
>>  create mode 100644 arch/arm/mach-stm32mp/include/mach/bbu.h
>>
>> diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
>> index 9cb861af85d8..23eb6728b15a 100644
>> --- a/arch/arm/boards/stm32mp157c-dk2/board.c
>> +++ b/arch/arm/boards/stm32mp157c-dk2/board.c
>> @@ -4,6 +4,7 @@
>>  #include <init.h>
>>  #include <asm/memory.h>
>>  #include <mach/stm32.h>
>> +#include <mach/bbu.h>
>>  
>>  static int dk2_mem_init(void)
>>  {
>> @@ -15,3 +16,16 @@ static int dk2_mem_init(void)
>>  	return 0;
>>  }
>>  mem_initcall(dk2_mem_init);
>> +
>> +static int dk2_postcore_init(void)
>> +{
>> +	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
>> +		return 0;
>> +
>> +	stm32mp_bbu_mmc_register_handler("sd", "/dev/disk0.ssbl",
>> +					 BBU_HANDLER_FLAG_DEFAULT);
> 
> You should create an alias in dt for the sd device node (might exist
> already, don't know) and use mci_of_parse_node() in the SD driver. With
> this you get consistent names. "disk0" will be different devices
> depending on probe order.

Ah, ok. I'll resend when Oleksij resends his.
The first patch would be useful to have for other boards as well.
Could you apply it seperately?

Thanks
Ahmad

> 
> Sascha
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
