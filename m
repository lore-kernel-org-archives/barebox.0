Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.rzone.de ([2a01:238:20a:202:5300::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6ypV-0005W7-8q
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 07:06:18 +0000
Message-ID: <503F10DE.7020500@calao-systems.com>
Date: Thu, 30 Aug 2012 09:06:06 +0200
From: gregory hermant <gregory.hermant@calao-systems.com>
MIME-Version: 1.0
References: <503C67F9.7090703@calao-systems.com>
 <20120829071210.GT26594@pengutronix.de>
In-Reply-To: <20120829071210.GT26594@pengutronix.de>
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
Subject: Re: [PATCH] NAND Flash SMC timings update (nwe_pulse) for calao board
 based on AT91SAM9G20 SoC
To: barebox@lists.infradead.org

Hello sascha,
It's just a typo.
gregory

Sascha Hauer wrote:
> On Tue, Aug 28, 2012 at 08:40:57AM +0200, gregory hermant wrote:
>> Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
> 
> The commmit log is a bit sparse. It would be interesting if this is an
> enhancement, fixes a problem, is needed on newer board revisions...
> 
> Sascha
> 
>> ---
>>  arch/arm/boards/tny-a926x/init.c |    2 +-
>>  arch/arm/boards/usb-a926x/init.c |    2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
>> index d58132a..5538a44 100644
>> --- a/arch/arm/boards/tny-a926x/init.c
>> +++ b/arch/arm/boards/tny-a926x/init.c
>> @@ -89,7 +89,7 @@ static struct sam9_smc_config tny_a9g20_nand_smc_config = {
>>  	.ncs_read_pulse		= 4,
>>  	.nrd_pulse		= 4,
>>  	.ncs_write_pulse	= 4,
>> -	.nwe_pulse		= 2,
>> +	.nwe_pulse		= 4,
>>  
>>  	.read_cycle		= 7,
>>  	.write_cycle		= 7,
>> diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
>> index 7e63876..00a215d 100644
>> --- a/arch/arm/boards/usb-a926x/init.c
>> +++ b/arch/arm/boards/usb-a926x/init.c
>> @@ -90,7 +90,7 @@ static struct sam9_smc_config usb_a9g20_nand_smc_config = {
>>  	.ncs_read_pulse		= 4,
>>  	.nrd_pulse		= 4,
>>  	.ncs_write_pulse	= 4,
>> -	.nwe_pulse		= 2,
>> +	.nwe_pulse		= 4,
>>  
>>  	.read_cycle		= 7,
>>  	.write_cycle		= 7,
>> -- 
>> 1.5.6.3
>>
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
