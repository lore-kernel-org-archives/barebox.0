Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrtG-0003iH-8o
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 10:35:28 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20200617224851.1163860-1-gilles.doffe@savoirfairelinux.com>
 <d526d7ce-39bf-94e3-a61b-22b9f3043bf3@pengutronix.de>
Message-ID: <7e302a4b-8047-981c-48f8-0c7cfbb3f131@pengutronix.de>
Date: Thu, 18 Jun 2020 12:35:23 +0200
MIME-Version: 1.0
In-Reply-To: <d526d7ce-39bf-94e3-a61b-22b9f3043bf3@pengutronix.de>
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
Subject: Re: [PATCH] common: avoid bootchooser double watchdog configuration
To: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>, barebox@lists.infradead.org
Cc: rennes-dev@savoirfairelinux.com, jerome.oufella@savoirfairelinux.com

On 6/18/20 12:25 PM, Ahmad Fatoum wrote:
> Hello Gilles,
> 
> On 6/18/20 12:48 AM, Gilles DOFFE wrote:
>> In case bootchooser is used, boot_entry() will be called twice:
>> 1) boot bootchooser
>> 2) boot <chosen_entry>
>> Thus it will lead to twice watchdog configuration if watchdog_timeout
>> is set.
>> Except that it should be activated only once in any way, it leads
>> to unwanted reset when issuing too much "near" calls of the watchdog
>> configuration for da9062.
> 
> Imagine I have boot.default="bootchooser recovery". Both bootchooser
> slots fail, so I boot the recovery slot, but with your patch
> applied, the watchdog wouldn't be enabled, no?

Brainfart; It would have been enabled earlier. I still don't like
clobbering the global boot_watchdog_timeout. Bette example: On interactive
use, booting fails. User enters manual boot command, but system is reset
prematurely, because the watchdog is not pinged anew.

Resetting boot_watchdog_timeout to the original value when the boot
command returns could work. Fixing it at the watchdog level instead as
described below would also fix manual wd 30; wd 30 in succession.

> The da9063 suffers from the same problem and this was instead addressed
> by dropping requests that come in too fast. See
> cbfdbf38c190 ("mfd: da9063: fix watchdog ping execution")
> 
> Cheers
> Ahmad
> 
>> Can be reproduced with this command:
>>  barebox/ wd 30;wd 30
>> Even if this commands are intentional, 'boot bootchooser' is not.
>> Resetting watchdog_timeout to 0 after first watchdog
>> configuration solves this problem ensuring watchdog will not be
>> configured a second time.
>>
>> Signed-off-by: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
>> ---
>>  common/boot.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/common/boot.c b/common/boot.c
>> index f546fce62..8d09f96b6 100644
>> --- a/common/boot.c
>> +++ b/common/boot.c
>> @@ -150,6 +150,8 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
>>  					   boot_watchdog_timeout);
>>  		if (ret)
>>  			pr_warn("Failed to enable watchdog: %s\n", strerror(-ret));
>> +
>> +		boot_watchdog_timeout = 0;
>>  	}
>>  
>>  	ret = be->boot(be, verbose, dryrun);
>>
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
