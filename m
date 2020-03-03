Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91aa-0001JX-5M
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 07:03:37 +0000
References: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
 <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
 <88405b89-494c-f510-ecb4-810f8b6e0b91@eurek.it>
 <5d328910-2009-b83f-014a-75a4847ea235@pengutronix.de>
 <76d54e08-0051-3069-015c-727a6bd9a38f@eurek.it>
 <4e386cf3-69f3-fd0a-dfae-2827cc2b1c5e@pengutronix.de>
 <fb81fdd3-b674-ce0b-e472-ec8e606e4131@eurek.it>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ed3555cc-7c1d-7e0a-2b37-0bd356f79627@pengutronix.de>
Date: Tue, 3 Mar 2020 08:03:34 +0100
MIME-Version: 1.0
In-Reply-To: <fb81fdd3-b674-ce0b-e472-ec8e606e4131@eurek.it>
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
To: gianluca <gianlucarenzi@eurek.it>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

On 2/26/20 5:37 PM, gianluca wrote:
> On 02/26/2020 04:46 PM, Ahmad Fatoum wrote:
> Ok. Now you know: there is NOTHING ABOUT FSBL or SSBL as well.

How you mean?

> So I suppose if I do not change the ethernet phy or anything else from evalboard everything from Ethernet will work as-is.

Yes. The realtek PHY on the DK-2 works nicely. Make sure to check the SoC errata sheet,
there's one about booting from eMMC that may be relevant to you.

>>> For sure, but from a production point of view, the usb must be connected as little as possible. It is better to download everything from Ethernet and/or from NFS rootfilesystem to me.
>>
>> Why though? You need USB anyway to get at least FSBL and SSBL onto the board, why
>> not use it to flash the rootfs as well? Or upload kernel and initramfs to barebox
>> and have barebox boot them?
>>
>> I've so far used network boot only for development, so I am interested
>> on how you're doing it.
>>
> 
> Depends on how many board you are planning to produce. Actually we have a board version based on iMX28 and the procedure is the same:
> 
> 1- load via imx-usb-loader the bootlets and barebox (takes a couple of seconds)
> 
> 2- let barebox download uImage and device-tree blob from tftp server (takes 5/6 seconds)
> 
> 3- boot into linux. this very small (busybox based linux) write on eMMC the bootlets and the barebox as well then poweroff itself (boot and flash will take less than a minute)
> 
> 4- The operator take the board and put it in a rack with other 24 boards. It will powerup and load bootlets + barebox and download uImage and boot from a NFS Server.
> 
> 5- This NFS server will flash the eMMC with rootfs and application data. When done it will flash some leds (it takes less than 10 minutes)
> 
> 6- At this point when done, the operator will bring back the board to the programming place so it can complete the procedure. When rebooted the board will ask for a specific ethernet MAC Address given via USB BarCode Reader. At the end the MAC-HW sticker will be placed on the board. That's it.
> 
> In this way we did not use the microSD connector nor USB Host connector because the customer does not want that. It needs to cut down the cost as much as possible.
> 
> The same procedure should be used with the same board based on STM32MP1 SoC.

I see. Thanks for the perspective. For the STM32MP, I think it would be better if you
had the flashing tool directly write the SSBL and FSBL. Then you can disconnect
and have barebox boot Linux from network as usual.

>>>> If you manage to flash barebox with it, a Documentation patch about how to use the CLI version
>>>> of the tool would be very much appreciated.
>>>
>>> Of course! Even the support for our new boards too! ;-)
>>
>> Great! Looking forward to it.
>>
> 
> Sure.
> 
> Gianluca Renzi

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
