Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ytV-00048r-DJ
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 15:46:42 +0000
References: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
 <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
 <88405b89-494c-f510-ecb4-810f8b6e0b91@eurek.it>
 <5d328910-2009-b83f-014a-75a4847ea235@pengutronix.de>
 <76d54e08-0051-3069-015c-727a6bd9a38f@eurek.it>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4e386cf3-69f3-fd0a-dfae-2827cc2b1c5e@pengutronix.de>
Date: Wed, 26 Feb 2020 16:46:38 +0100
MIME-Version: 1.0
In-Reply-To: <76d54e08-0051-3069-015c-727a6bd9a38f@eurek.it>
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

On 2/26/20 4:30 PM, gianluca wrote:
>>> My goals are to setup the SDRAM and the secure monitor via USB (with DFU STM32 Cube Programmer), then loading via usb (using the same STM32 Cube Programmer) the barebox-stm32mp157c-dk2.img in the external SDRAM addresses.
>>
>> I haven't tested this, but it should work. barebox doesn't need anything
>> special to be flashed by the DFU.
>>
> 
> Not flashed into eMMC but stored into external SDRAM then let it run from there.
>>> When barebox is done, it will download from a TFTP server the production stuff (SDRAM setup, secure monitor, barebox-stm32mp157c-dk2-PRODUCTION.img) and write those stuff into eMMC partitions.
>>
>> Doesn't the STM32 Cube Programmer already come with the necessary infrastructure
>> to partition the eMMC and write the images over USB?
>>
> 
> Using the latest en.stm32cubeprog_v2-3-0.zip of 172Mb I have found nothing. Maybe I am the dumbest person in the world, but a quick search I was not be able to find anything useful for that.

Haven't tried myself, so that's why I asked for documentation patches when you figure
it out ^^.

>>> Using the above procedure the USB support is given only by ROM Code written by ST, not by Barebox.
>>
>> Not exactly, you communicate with the ROM Code to get TF-A into On-Chip RAM. Then you talk with
>> TF-A to get SSBL into SDRAM. Then you talk with SSBL to flash the rest. That's how the
>> STM32 Cube Programmer does it.
>>
> 
> the TF-A talk to get SSBL into SDRAM could be done with STM32Cube Programmer? I.e. the TF-A know something about the USB stuff??

ST's TF-A fork does. Upstream TF-A doesn't. The Programmer software uses vendor TF-A.

> What about the ethernet support (with tftpboot) in Barebox for this STM32MP157 SoC???

It works fine on the two boards I've tried. If it doesn't for you, send a bug report.

>> See below[0].
>>
> 
> Error 404

Sorry, forgot a letter:
https://www.st.com/content/ccc/resource/technical/document/application_note/group1/63/b3/70/f6/82/33/4e/5e/DM00589815/files/DM00589815.pdf/jcr:content/translations/en.DM00589815.pdf

>> I'll take a look, once we have USB gadget support on the STM32.
>> Can't say for sure when this will be though. There are means[1] to
>> accelerate this however. ;-)
>>
> 
> For sure, but from a production point of view, the usb must be connected as little as possible. It is better to download everything from Ethernet and/or from NFS rootfilesystem to me.

Why though? You need USB anyway to get at least FSBL and SSBL onto the board, why
not use it to flash the rootfs as well? Or upload kernel and initramfs to barebox
and have barebox boot them?

I've so far used network boot only for development, so I am interested
on how you're doing it.

>> If you manage to flash barebox with it, a Documentation patch about how to use the CLI version
>> of the tool would be very much appreciated.
> 
> Of course! Even the support for our new boards too! ;-)

Great! Looking forward to it.


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
