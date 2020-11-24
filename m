Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khTek-0002xs-SX
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 08:26:35 +0000
References: <20201120140649.31607-1-a.fatoum@pengutronix.de>
 <20201120140649.31607-2-a.fatoum@pengutronix.de>
 <20201124082314.GR24489@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fa7bb675-5d2f-cb9b-2dc4-e4cd26d72970@pengutronix.de>
Date: Tue, 24 Nov 2020 09:26:32 +0100
MIME-Version: 1.0
In-Reply-To: <20201124082314.GR24489@pengutronix.de>
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
Subject: Re: [PATCH 2/2] boot: introduce option to pass barebox-enabled
 watchdog to systemd
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On 24.11.20 09:23, Sascha Hauer wrote:
>> +static struct watchdog *__watchdog;
> 
> The name looks like you have something to hide. Perhaps boot_enabled_watchdog?

Can do.

>> +
>> +static int watchdog_of_fixup(struct device_node *root, void *arg)
>> +{
>> +	int alias_id;
>> +	char *buf;
>> +
>> +	if (!__watchdog)
>> +		return 0;
>> +
>> +	alias_id = watchdog_get_alias_id_from(__watchdog, root);
>> +	if (alias_id < 0)
>> +		return 0;
>> +
>> +	buf = basprintf("systemd.watchdog-device=/dev/watchdog%d", alias_id);
>> +	if (!buf)
>> +		return 0;
>> +
>> +	globalvar_add_simple("linux.bootargs.dyn.watchdog", buf);
>> +	free(buf);
>> +
>> +	return 0;
>> +}
>> +
>> +static int __maybe_unused of_register_watchdog_fixup(void)
>> +{
>> +	return of_register_fixup(watchdog_of_fixup, NULL);
>> +}
>> +#ifdef CONFIG_SYSTEMD_OF_WATCHDOG
>> +/* _must_ not be run after late_initcall(of_register_bootargs_fixup) */
> 
> I smell problems here. How about calling this directly from
> of_fixup_bootargs()?

Feels wrong to have watchdog specific stuff over there.

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
