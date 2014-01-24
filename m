Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6mPQ-000571-TE
 for barebox@lists.infradead.org; Fri, 24 Jan 2014 19:27:21 +0000
Received: by mail-ea0-f174.google.com with SMTP id b10so1142103eae.5
 for <barebox@lists.infradead.org>; Fri, 24 Jan 2014 11:26:57 -0800 (PST)
Message-ID: <52E2BC43.5040601@gmail.com>
Date: Fri, 24 Jan 2014 20:17:23 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
 <1390505010-7546-3-git-send-email-m.grzeschik@pengutronix.de>
 <52E19CFB.1040908@gmail.com> <20140124130757.GB25691@pengutronix.de>
In-Reply-To: <20140124130757.GB25691@pengutronix.de>
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
Subject: Re: [PATCH 2/3] net: mv643xx: add driver support
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org

On 01/24/2014 02:07 PM, Michael Grzeschik wrote:
> Hi Sebastian,
>
> On Thu, Jan 23, 2014 at 11:51:39PM +0100, Sebastian Hesselbarth wrote:
>> On 01/23/2014 08:23 PM, Michael Grzeschik wrote:
>> We really all hate "mv643xx" because it is a pain to say and write it.
>> I guess barebox will never be run on systems with mv64xxx controllers
>> but only Marvell Orion SoC.
>>
>> I'd be *very* happy if you do s/mv643xx/orion/g
>
> I was not sure how the naming of the driver was chosen. I thought it was
> ment to describe the SoCs IP-Core. But as mv64xxx is the SoCs prefix, I
> totaly agree naming it orion. It actually would even be better to give
> the driver the read IP-Core name.

The name comes from Marvell Discovery III system controllers used in
some MIPS and PowerPCs, those match MV643xx. Naming it Orion isn't
better but is easier to write. You can also chose to name it orion-gbe
as Marvell used to name the driver for this IP mvgbe.

Anything except mv643xx or mvgbe is fine for me ;)

>>
>> [...]
>>> diff --git a/drivers/net/mv643xx.c b/drivers/net/mv643xx.c
>>> new file mode 100644
>>> index 0000000..3d0bfdc
>>> --- /dev/null
>>> +++ b/drivers/net/mv643xx.c
>>> @@ -0,0 +1,714 @@
>>> +/*
>> [...]
>>> + */
>>> +
>>> +#include <common.h>
>>> +#include <malloc.h>
>>> +#include <net.h>
>>> +#include <init.h>
>>> +#include <driver.h>
>>> +#include <io.h>
>>> +#include <clock.h>
>>> +#include <xfuncs.h>
>>> +#include <linux/phy.h>
>>> +#include <linux/clk.h>
>>> +#include <linux/err.h>
>>> +#include <of_net.h>
>>> +#include <mach/dove-regs.h>
>>
>> Please don't. The same driver will be used on Kirkwood and possibly
>> orion5x, mv78x00 if they get supported.
>>
>> Have every register offset defined in here or "mv643xx.h" and get
>> rid of the above. If you need some callback for memory windows, let's
>> get it on now and create it in a way it is compatible with using this
>> driver on the other SoCs.
>
> The register offsets are in mv643xx.h. The mach/dove-regs.h is
> only needed to be able to use dove_memory_find. See patch:
> [Patch 1/3] ARM: mvebu: make dove_memory_find reachable for drivers

Ok, I'll look at that more closely. But the other Orion SoCs also have
to provide a function here. As it is part of the "mbus", I see if we
can have a common driver for it.

>> For the rest, I'll give it a go on Dove ASAP.
>
> It would be nice to see if it is also working if barebox running as
> first stage bootloader. Can you try to get the UART-Image [1] via xmodem
> transfer running?

Booting the UART image does work with current barebox master
  d9a08d8bc5da ("net: phy: Fix crash when no phy is found")
and without your patch. I haven't applied your patch, yet.

Do you mean adding the ethernet driver breaks uart boot, or does not
work if booted from uart? If the latter, I suspect either PHY or PHY
output mis-configuration. But I'll check that later this weekend.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
