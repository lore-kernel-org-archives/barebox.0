Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6KL-0000Xg-BF
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 14:40:58 +0000
References: <20200115111409.24129-1-a.fatoum@pengutronix.de>
 <20200116083405.62dy2zjf63l6f246@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <eae1b40e-49ff-a0c6-b7a2-de90fed902ba@pengutronix.de>
Date: Thu, 16 Jan 2020 15:40:49 +0100
MIME-Version: 1.0
In-Reply-To: <20200116083405.62dy2zjf63l6f246@pengutronix.de>
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
Subject: Re: [PATCH] Revert "clocksource: ARMv8 timer can only be built on
 ARMv8"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 1/16/20 9:34 AM, Sascha Hauer wrote:
>> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
>> index 44a6cef6fbae..43c5bfc9736a 100644
>> --- a/drivers/clocksource/Kconfig
>> +++ b/drivers/clocksource/Kconfig
>> @@ -73,7 +73,7 @@ config CLOCKSOURCE_ATMEL_PIT
>>  config CLOCKSOURCE_ARMV8_TIMER
>>  	bool
>>  	default y
>> -	depends on ARM && CPU_V8
>> +	depends on ARM && (CPU_64v8 || CPU_V7)
> 
> Is it worth renaming the driver to something not v8 specific?
> ARM_ARCHITECTED_TIMER maybe?

Hmm, it's default y, so we won't risk anyone losing the config
option on oldfconfig. Yes, I think we should rename it.

Cheers
Ahmad

> 
> Sascha
> 
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
