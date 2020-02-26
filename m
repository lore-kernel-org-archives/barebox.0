Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yIl-0002s4-AS
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 15:08:47 +0000
References: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
 <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
 <88405b89-494c-f510-ecb4-810f8b6e0b91@eurek.it>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5d328910-2009-b83f-014a-75a4847ea235@pengutronix.de>
Date: Wed, 26 Feb 2020 16:08:40 +0100
MIME-Version: 1.0
In-Reply-To: <88405b89-494c-f510-ecb4-810f8b6e0b91@eurek.it>
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
Subject: Re: Barebox as first and second stage bootloader
To: gianluca <gianlucarenzi@eurek.it>, barebox@lists.infradead.org

Hello,

On 2/26/20 3:46 PM, gianluca wrote:
>> Not sure how this relates to booting over USB? You shouldn't need any
>> fuses burnt (but you can probably burn some to stop fallback to DFU)
>>
> 
> I was trying to say that I didn't know how the fallback is managed DFU via serial, usb or whatever or it is managed by some OTP fuses.

For development use, you can use the BOOT pins to configure DFU:
https://www.barebox.org/doc/latest/boards/stm32mp.html#boot-source-selection

>>> I suppose they are TF-A for first stage bootloader and SPL for the second one.
>>>
>>> The images built by Barebox (start_stm32mp157c_dk2.pblb[.stm32] and barebox-stm32mp157c-dk2.img) are suitable to be used as first stage bootloader running from internal SRAM and the .img as the second stage bootloader running from external SDRAM DDR???
>>
>> No, they aren't. The current barebox implementation doesn't set up SDRAM and doesn't install
>> a secure monitor.
>>
> 
> So I need a simple implementation of a SDRAM setup, a secure monitor (TF-A). What do you are using at the moment?

I am using TF-A v2.2. I thought about having a simple SDRAM setup in barebox
for flashing purposes, but got talked out of it, because that was code that's
untested unless you are doing a initial bring up and would be prone to bit rot.

Either go all the way, or don't.

> My goals are to setup the SDRAM and the secure monitor via USB (with DFU STM32 Cube Programmer), then loading via usb (using the same STM32 Cube Programmer) the barebox-stm32mp157c-dk2.img in the external SDRAM addresses.

I haven't tested this, but it should work. barebox doesn't need anything
special to be flashed by the DFU.

> When barebox is done, it will download from a TFTP server the production stuff (SDRAM setup, secure monitor, barebox-stm32mp157c-dk2-PRODUCTION.img) and write those stuff into eMMC partitions.

Doesn't the STM32 Cube Programmer already come with the necessary infrastructure
to partition the eMMC and write the images over USB?

>> USB on the STM32MP1 is not yet complete. I posted some basic patches for the PHY, but we still
>> need host USB driver adjustments and a gadget driver for the DWC2.
>>
> 
> Using the above procedure the USB support is given only by ROM Code written by ST, not by Barebox.

Not exactly, you communicate with the ROM Code to get TF-A into On-Chip RAM. Then you talk with
TF-A to get SSBL into SDRAM. Then you talk with SSBL to flash the rest. That's how the
STM32 Cube Programmer does it.

See below[0].

>>> Is there somebody who is working with STM32 Cube Programmer or DFU-Utils to obtain this boot??
>>
>> I don't think so. We will want to have a solution for this eventually though. Probably some
>> wrapper script that uses DFU to talk to BootROM, then to vendor TF-A, then to barebox.
>>
> 
> Having this wrapper script will be great. I will be grateful for the rest of my (working) life. ;-P

I'll take a look, once we have USB gadget support on the STM32.
Can't say for sure when this will be though. There are means[1] to
accelerate this however. ;-)

>> As I understood, that's what the STM32CubeProgrammer is doing and it's shipped with
>> a FSBL and SSBL already for bootstrapping a system. Have you tried using that to
>> flash barebox?
>>
> 
> Not really. I will check asap. In that way I could run barebox from a bootstrapped system using STM32CubeProgrammer FSBL and SSBL and hooking at the procedure as explained above.

AN5275[0] says that it's really a three stage process like I described.

If you manage to flash barebox with it, a Documentation patch about how to use the CLI version
of the tool would be very much appreciated.


[0]: https://www.st.com/content/ccc/resource/technical/document/application_note/group1/63/b3/70/f6/82/33/4e/5e/DM00589815/files/DM00589815.pdf/jcr:content/translations/en.DM00589815.pd
[1]: https://www.pengutronix.de/en/services/integration_testing.html

Cheers
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
