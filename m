Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnfo5-0003zu-Qh
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 10:05:34 +0000
References: <20200622083943.21737-1-a.fatoum@pengutronix.de>
 <20200622083943.21737-2-a.fatoum@pengutronix.de>
 <20200623094636.GY11869@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1259d972-2bdd-68c4-9826-eee7bb6c7141@pengutronix.de>
Date: Tue, 23 Jun 2020 12:05:32 +0200
MIME-Version: 1.0
In-Reply-To: <20200623094636.GY11869@pengutronix.de>
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
Subject: Re: [PATCH 2/3] mci: sdhci: atmel: use dev_printf instead of pr_print
 in common code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On 6/23/20 11:46 AM, Sascha Hauer wrote:
> On Mon, Jun 22, 2020 at 10:39:42AM +0200, Ahmad Fatoum wrote:
>> On boards like the sama5d27 som1 ek, we have two SD card slots, so error
>> messages are more useful if they refer to the SDHCI instance. We didn't
>> do this at first, because the common code is compiled for PBL as well.
>> With a sprinkle of preprocessor ifdeffery, we can have both.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mci/atmel-sdhci-common.c | 14 +++++++++-----
>>  drivers/mci/atmel-sdhci.c        |  2 ++
>>  drivers/mci/atmel-sdhci.h        |  1 +
>>  3 files changed, 12 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
>> index 060d1c33d1a5..a83610c3d090 100644
>> --- a/drivers/mci/atmel-sdhci-common.c
>> +++ b/drivers/mci/atmel-sdhci-common.c
>> @@ -16,6 +16,10 @@
>>  
>>  #ifdef __PBL__
>>  #define udelay early_udelay
>> +#undef  dev_err
>> +#define dev_err(d, ...)		pr_err(__VA_ARGS__)
>> +#undef  dev_warn
>> +#define dev_warn(d, ...)	pr_warn(__VA_ARGS__)
>>  #endif
> 
> This hunk doesn't apply. Is a patch missing in this series?

I have a series for first stage support, but picked out the second stage relevant
parts to slim it down. I'll rebase and resend v2.


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
