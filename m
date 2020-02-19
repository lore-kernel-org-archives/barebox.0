Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RMe-000492-Gy
 for barebox@lists.infradead.org; Wed, 19 Feb 2020 15:34:18 +0000
References: <20200217143817.31360-1-yegorslists@googlemail.com>
 <20200219075241.i6lcrc5q4myhdbxz@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <de1b6c7a-10ba-a206-4c10-263aef0d29ed@pengutronix.de>
Date: Wed, 19 Feb 2020 16:34:13 +0100
MIME-Version: 1.0
In-Reply-To: <20200219075241.i6lcrc5q4myhdbxz@pengutronix.de>
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
Subject: Re: [PATCH] arm: baltos: use compressed DTB images
To: Sascha Hauer <s.hauer@pengutronix.de>, yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

Hello Sascha,

On 2/19/20 8:52 AM, Sascha Hauer wrote:
> On Mon, Feb 17, 2020 at 03:38:17PM +0100, yegorslists@googlemail.com wrote:
>> From: Yegor Yefremov <yegorslists@googlemail.com>
>>
>> This reduces the size of MLO enough to fit into SRAM.
>>
>> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
>> ---
>>  arch/arm/boards/vscom-baltos/lowlevel.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
>> index 98bbbaae1..0a220f262 100644
>> --- a/arch/arm/boards/vscom-baltos/lowlevel.c
>> +++ b/arch/arm/boards/vscom-baltos/lowlevel.c
>> @@ -66,7 +66,7 @@ static const struct am33xx_emif_regs ddr3_regs_256mb = {
>>  
>>  };
>>  
>> -extern char __dtb_am335x_baltos_minimal_start[];
>> +extern char __dtb_z_am335x_baltos_minimal_start[];
>>  
>>  /**
>>   * @brief The basic entry point for board initialization.
>> @@ -82,7 +82,7 @@ static noinline void baltos_sram_init(void)
>>  	uint32_t sdram_size;
>>  	void *fdt;
>>  
>> -	fdt = __dtb_am335x_baltos_minimal_start;
>> +	fdt = __dtb_z_am335x_baltos_minimal_start;
>>  
>>  	/* WDT1 is already running when the bootloader gets control
>>  	 * Disable it to avoid "random" resets
>> @@ -132,7 +132,7 @@ ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
>>  	 */
>>  	__raw_writel(0x000010ff, AM33XX_PRM_RSTTIME);
>>  
>> -	fdt = __dtb_am335x_baltos_minimal_start;
>> +	fdt = __dtb_z_am335x_baltos_minimal_start;
> 
> You have to select ARM_USE_COMPRESSED_DTB from the boards Kconfig entry
> to make sure the uncompressing functions are available.

ARM_USE_COMPRESSED_DTB is enabled transitively because ARCH_AM33XX
selects it.

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
