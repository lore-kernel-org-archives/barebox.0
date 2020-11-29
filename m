Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjTB3-0005AM-AN
 for barebox@lists.infradead.org; Sun, 29 Nov 2020 20:20:10 +0000
References: <20201128213934.681065-1-ahmad@a3f.at>
 <20201128213934.681065-11-ahmad@a3f.at>
 <20201129195042.iz25xbxifh75yryo@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5f1f0a9d-7207-99e3-58d2-b0790ecf8c40@pengutronix.de>
Date: Sun, 29 Nov 2020 21:20:04 +0100
MIME-Version: 1.0
In-Reply-To: <20201129195042.iz25xbxifh75yryo@pengutronix.de>
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
Subject: Re: [PATCH 11/11] doc: bcm283x: document use of mini-uart on
 Raspberry Pi Zero W / CM3
To: Roland Hieber <rhi@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Andrew John <andrew@mobius-embedded-systems.co.uk>, Robert Carnecky <robert@neopsis.com>, Rouven Czerwinski <rcz@pengutronix.de>

Hello,

On 29.11.20 20:50, Roland Hieber wrote:
> On Sat, Nov 28, 2020 at 10:39:34PM +0100, Ahmad Fatoum wrote:
>> As described in the UART configuration[1] article in the Raspberry Pi
>> Foundation documentation, Raspberry Pi 3 & 4 as well as Zero W use the
>> mini-uart as primary (easily user-accessible) UART. At least on the
>> Raspberry Zero W and CM3, we need to pass uart_2ndstage=1, so the
>> BootROM leaves the 8250 IP in a suitable state for use by barebox.
>> Document this.
>>
>> [1]: https://www.raspberrypi.org/documentation/configuration/uart.md
>>
>> Cc: Roland Hieber <rhi@pengutronix.de>
>> Cc: Rouven Czerwinski <rcz@pengutronix.de>
>> Cc: Robert Carnecky <robert@neopsis.com>
>> Cc: Andrew John <andrew@mobius-embedded-systems.co.uk>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  Documentation/boards/bcm2835.rst | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
>> index c896871e0d82..dbdfc2633173 100644
>> --- a/Documentation/boards/bcm2835.rst
>> +++ b/Documentation/boards/bcm2835.rst
>> @@ -23,6 +23,13 @@ Raspberry Pi
>>           kernel=barebox.img
>>           enable_uart=1
>>  
>> +     If you want to use the mini-uart instead of the PL011, you might need to additionally set::
>> +
>> +         uart_2ndstage=1
>> +
>> +     This is useful on newer boards like the Raspberry Pi Zero W and CM3, which route the
>> +     more easily accessible primary UART to the mini-uart.
> 
> This seems to be non-optional on RPi Zero W, so I would word it more
> strongly.
>
> With this series, at least barebox boots, which is better than in master
> :-) However, I cannot get the stock kernel (/boot/kernel.img) to boot on
> Zero W, and I cannot figure out why:
> 
>     barebox@RaspberryPi Zero W:/ cat /boot/config.txt 
>     enable_uart=1
>     kernel=barebox.img
>     uart_2ndstage=1
>     barebox@RaspberryPi Zero W:/ global bootm.image=/boot/kernel.img
>     barebox@RaspberryPi Zero W:/ global bootm.oftree=/boot/bcm2708-rpi-0-w.dtb
>     barebox@RaspberryPi Zero W:/ global linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4 rootwait rw" 
>     barebox@RaspberryPi Zero W:/ bootm -v
> 
>     Loading ARM Linux zImage '/boot/kernel.img'
>     OS image not yet relocated
>     Passing control to ARM zImage handler
>     no OS load address, defaulting to 0x014e9000
>     no initrd load address, defaulting to 0x01a18000
>     Loading devicetree from '/boot/bcm2708-rpi-0-w.dtb'
>     commandline: console=ttyS1,115200n8 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait rw
> 
>     Starting kernel at 0x014e9000, oftree at 0x01a18000...
>     Starting kernel in secure mode
> 
> and then nothing happens at least for a minute.
> 
> I tried leaving 'uart_2ndstage=1' out, leaving 'enable_uart=1' out, setting
> 'console=ttyS1,115200n8' on the kernel command line, and setting
> 'console=ttyAMA0,115200n8' (as before), but nothing helped.
> 
> The same setup works on a RPI-1B (with bootm.oftree=/boot/bcm2708-rpi-b.dtb),
> so at least there's that :)
> 
> Did you do anything else for your Zero W?

Can you try `boot rpi` instead?

> 
>  - Roland
> 
>> +
>>       (For more information, refer to the `documentation for config.txt`_.)
>>  
>>    5. Connect to board's UART (115200 8N1);
>> -- 
>> 2.28.0
>>
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
