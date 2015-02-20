Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOiL4-0006Re-BT
 for barebox@lists.infradead.org; Fri, 20 Feb 2015 07:49:31 +0000
References: <1424260458-19639-1-git-send-email-s.trumtrar@pengutronix.de>
 <1424260458-19639-4-git-send-email-s.trumtrar@pengutronix.de>
 <20150219195842.GA12209@pengutronix.de>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <20150219195842.GA12209@pengutronix.de>
Date: Fri, 20 Feb 2015 08:49:04 +0100
Message-ID: <7361axqaz3.fsf@dude.hi.pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 3/3] ARM: socfpga: add Altera SoCFPGA Development Kit
 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


Hi!

Sascha Hauer writes:
> On Wed, Feb 18, 2015 at 12:54:18PM +0100, Steffen Trumtrar wrote:
>> Add support for the Altera SoCFPGA Development Kit.
>> The setup is based on the GHRD from Altera.
>> 
>> index 000000000000..73a5a7481924
>> --- /dev/null
>> +++ b/arch/arm/boards/altera-socdk/board.c
>> @@ -0,0 +1,20 @@
>> +#include <common.h>
>> +#include <types.h>
>> +#include <driver.h>
>> +#include <init.h>
>> +#include <asm/armlinux.h>
>> +#include <linux/micrel_phy.h>
>> +#include <linux/phy.h>
>> +#include <linux/sizes.h>
>> +#include <fcntl.h>
>> +#include <fs.h>
>> +#include <mach/socfpga-regs.h>
>> +
>> +static int socfpga_console_init(void)
>> +{
>> +	if (!of_machine_is_compatible("altr,socdk"))
>> +		return 0;
>> +
>> +	return 0;
>> +}
>> +console_initcall(socfpga_console_init);
>
> Nothing useful in this file. Better remove it?
>

As it turns out, I actually need to call a phyfixup for the board here.
What would you prefer: Fixup or Resend?

Regards,
Steffen

-- 
Pengutronix e.K.                           | Steffen Trumtrar            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
