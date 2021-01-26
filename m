Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4K0F-0006GL-Nk
 for barebox@lists.infradead.org; Tue, 26 Jan 2021 08:47:13 +0000
References: <20210121112958.25937-1-str@pengutronix.de>
 <20210121112958.25937-10-str@pengutronix.de>
 <20210125095242.GD31738@pengutronix.de>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <20210125095242.GD31738@pengutronix.de>
Date: Tue, 26 Jan 2021 09:47:07 +0100
Message-ID: <87sg6ot790.fsf@pengutronix.de>
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
Subject: Re: [PATCH 10/13] of: of_firmware: add support for fpga bridges
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org


Sascha Hauer <sha@pengutronix.de> writes:

> On Thu, Jan 21, 2021 at 12:29:55PM +0100, Steffen Trumtrar wrote:
>> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>
>> Add support for potentially defined FPGA-bridges in the overlay.
>>
>> While at it also add support for loading the firmware directly via a
>> path instead of 'needing' an overlay for that.
>> The direct loading will be done with the existent firmwareload command.
>>
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---
>>  drivers/of/Makefile      |  3 +-
>>  drivers/of/of_firmware.c | 88 ++++++++++++++++++++++++++++++++++++----
>>  include/of.h             | 21 +++++++---
>>  3 files changed, 96 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/of/Makefile b/drivers/of/Makefile
>> index b6847752d2..6199c9791f 100644
>> --- a/drivers/of/Makefile
>> +++ b/drivers/of/Makefile
>> @@ -6,4 +6,5 @@ obj-y += partition.o
>>  obj-y += of_net.o
>>  obj-$(CONFIG_MTD) += of_mtd.o
>>  obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
>> -obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
>> +obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o
>> +obj-$(CONFIG_FIRMWARE) += of_firmware.o
>> diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
>> index 096f84572e..ef0ccd0221 100644
>> --- a/drivers/of/of_firmware.c
>> +++ b/drivers/of/of_firmware.c
>> @@ -4,12 +4,52 @@
>>   */
>>  #include <common.h>
>>  #include <firmware.h>
>> +#include <fpga-bridge.h>
>>  #include <of.h>
>>
>>  struct overlay_info {
>>  	const char *firmware_path;
>>  };
>>
>> +#ifdef CONFIG_FPGA_BRIDGE
>
> Trailing whitespace here.
>

Meh :(

>> +int of_firmware_load_file(const char *path)
>> +{
>> +	int err;
>> +	struct device_node *target;
>> +
>> +	target = of_find_compatible_node(NULL, NULL, "fpga-region");
>
> This assumes there is only one node compatible to fpga-region. What
> about others?

Ah, right, it is actually allowed to have multiple regions in one FPGA.
I didn't think about that.


Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
