Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f41.google.com ([74.125.83.41])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBhby-0000HP-6C
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:20:39 +0000
Received: by mail-ee0-f41.google.com with SMTP id e51so1189339eek.0
 for <barebox@lists.infradead.org>; Fri, 07 Feb 2014 01:19:41 -0800 (PST)
Message-ID: <52F4A528.3020603@gmail.com>
Date: Fri, 07 Feb 2014 10:19:36 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391640009-3399-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140207065811.GD16215@pengutronix.de>
In-Reply-To: <20140207065811.GD16215@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/6] bus: mvebu: add mbus driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On 02/07/2014 07:58 AM, Sascha Hauer wrote:
> Hi Sebastian,
>
> On Wed, Feb 05, 2014 at 11:40:06PM +0100, Sebastian Hesselbarth wrote:
>> + *   device accesses. This API is mvebu_mbus_add_window_by_id(),
>> + *   mvebu_mbus_add_window_remap_by_id() and
>> + *   mvebu_mbus_del_window().
>> + *
>> + * - Provides a debugfs interface in /sys/kernel/debug/mvebu-mbus/ to
>> + *   see the list of CPU -> SDRAM windows and their configuration
>> + *   (file 'sdram') and the list of CPU -> devices windows and their
>> + *   configuration (file 'devices').
>> + */
>
> I'm inclined to say that you should use dev_* functions for debugging,
> but I see the code is very close to the kernel and you don't have a
> struct device_d pointer everywhere. Up to you to use dev_*, but if not
> please add a #define pr_fmt here.

Sascha,

uhh, you got me. I really just copied it over without looking at the
code at all. I'll give the driver some closer look and will see where
I can bareabox-ify it. I'll send a v2 of this very patch then.

>> +
>> +#include <common.h>
>> +#include <init.h>
>> +#include <io.h>
>> +#include <of.h>
>> +#include <of_address.h>
>> +#include <linux/mbus.h>
>> +
>
> [...]
>
>> +
>> +static const struct mvebu_mbus_soc_data orion5x_2win_mbus_data = {
>> +	.num_wins            = 8,
>> +	.num_remappable_wins = 2,
>> +	.win_cfg_offset      = orion5x_mbus_win_offset,
>> +	.setup_cpu_target    = mvebu_mbus_default_setup_cpu_target,
>> +};
>> +
>> +static const struct mvebu_mbus_soc_data mv78xx0_mbus_data = {
>> +	.num_wins            = 14,
>> +	.num_remappable_wins = 8,
>> +	.win_cfg_offset      = mv78xx0_mbus_win_offset,
>> +	.setup_cpu_target    = mvebu_mbus_default_setup_cpu_target,
>> +};
>
> Don't you end up with unused variable warnings here if not all SoCs are
> enabled? Maybe add some __maybe_unused here.

Ok.

Sebastian

>> +
>> +static struct of_device_id mvebu_mbus_dt_ids[] = {
>> +#if defined(CONFIG_ARCH_ARMADA_370) || defined(CONFIG_ARCH_ARMADA_XP)
>> +	{ .compatible = "marvell,armada370-mbus",
>> +	  .data = (u32)&armada_370_xp_mbus_data, },
>> +	{ .compatible = "marvell,armadaxp-mbus",
>> +	  .data = (u32)&armada_370_xp_mbus_data, },
>> +#endif
>> +#if defined(CONFIG_ARCH_DOVE)
>> +	{ .compatible = "marvell,dove-mbus",
>> +	  .data = (u32)&dove_mbus_data, },
>> +#endif


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
