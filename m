Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-3.e-mind.com ([188.94.192.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ydS-0004xO-0R
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 15:30:11 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-3.e-mind.com (Postfix) with ESMTP id 051BF8362D1
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2020 15:30:01 +0000 (UTC)
Received: from submit-3.e-mind.com ([127.0.0.1])
 by localhost (submit-3.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TT6lAg_gil0j for <barebox@lists.infradead.org>;
 Wed, 26 Feb 2020 16:30:00 +0100 (CET)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-3.e-mind.com (Postfix) with SMTP id A2852830F7E
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2020 16:30:00 +0100 (CET)
References: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
 <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
 <88405b89-494c-f510-ecb4-810f8b6e0b91@eurek.it>
 <5d328910-2009-b83f-014a-75a4847ea235@pengutronix.de>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <76d54e08-0051-3069-015c-727a6bd9a38f@eurek.it>
Date: Wed, 26 Feb 2020 16:30:00 +0100
MIME-Version: 1.0
In-Reply-To: <5d328910-2009-b83f-014a-75a4847ea235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox as first and second stage bootloader
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

On 02/26/2020 04:08 PM, Ahmad Fatoum wrote:
> Hello,
>
> On 2/26/20 3:46 PM, gianluca wrote:
>>> Not sure how this relates to booting over USB? You shouldn't need any
>>> fuses burnt (but you can probably burn some to stop fallback to DFU)
>>>
>>
>> I was trying to say that I didn't know how the fallback is managed DFU via serial, usb or whatever or it is managed by some OTP fuses.
>
> For development use, you can use the BOOT pins to configure DFU:
> https://www.barebox.org/doc/latest/boards/stm32mp.html#boot-source-selection
>

Ok I will check that.

>>
>> So I need a simple implementation of a SDRAM setup, a secure monitor (TF-A). What do you are using at the moment?
>
> I am using TF-A v2.2. I thought about having a simple SDRAM setup in barebox
> for flashing purposes, but got talked out of it, because that was code that's
> untested unless you are doing a initial bring up and would be prone to bit rot.
>
> Either go all the way, or don't.
>

I understand. If TF-A v2.2 is setting the SDRAM correctly and if it is 
installing a secure monitor, I can use that.

>> My goals are to setup the SDRAM and the secure monitor via USB (with DFU STM32 Cube Programmer), then loading via usb (using the same STM32 Cube Programmer) the barebox-stm32mp157c-dk2.img in the external SDRAM addresses.
>
> I haven't tested this, but it should work. barebox doesn't need anything
> special to be flashed by the DFU.
>

Not flashed into eMMC but stored into external SDRAM then let it run 
from there.

>> When barebox is done, it will download from a TFTP server the production stuff (SDRAM setup, secure monitor, barebox-stm32mp157c-dk2-PRODUCTION.img) and write those stuff into eMMC partitions.
>
> Doesn't the STM32 Cube Programmer already come with the necessary infrastructure
> to partition the eMMC and write the images over USB?
>

Using the latest en.stm32cubeprog_v2-3-0.zip of 172Mb I have found 
nothing. Maybe I am the dumbest person in the world, but a quick search 
I was not be able to find anything useful for that.

>> Using the above procedure the USB support is given only by ROM Code written by ST, not by Barebox.
>
> Not exactly, you communicate with the ROM Code to get TF-A into On-Chip RAM. Then you talk with
> TF-A to get SSBL into SDRAM. Then you talk with SSBL to flash the rest. That's how the
> STM32 Cube Programmer does it.
>

the TF-A talk to get SSBL into SDRAM could be done with STM32Cube 
Programmer? I.e. the TF-A know something about the USB stuff??

What about the ethernet support (with tftpboot) in Barebox for this 
STM32MP157 SoC???

> See below[0].
>

Error 404

>>>> Is there somebody who is working with STM32 Cube Programmer or DFU-Utils to obtain this boot??
>>>
>>> I don't think so. We will want to have a solution for this eventually though. Probably some
>>> wrapper script that uses DFU to talk to BootROM, then to vendor TF-A, then to barebox.
>>>
>>
>> Having this wrapper script will be great. I will be grateful for the rest of my (working) life. ;-P
>
> I'll take a look, once we have USB gadget support on the STM32.
> Can't say for sure when this will be though. There are means[1] to
> accelerate this however. ;-)
>

For sure, but from a production point of view, the usb must be connected 
as little as possible. It is better to download everything from Ethernet 
and/or from NFS rootfilesystem to me.

>>> As I understood, that's what the STM32CubeProgrammer is doing and it's shipped with
>>> a FSBL and SSBL already for bootstrapping a system. Have you tried using that to
>>> flash barebox?
>>>
>>
>> Not really. I will check asap. In that way I could run barebox from a bootstrapped system using STM32CubeProgrammer FSBL and SSBL and hooking at the procedure as explained above.
>
> AN5275[0] says that it's really a three stage process like I described.
>

Like above: PAGE NOT FOUND 404


> If you manage to flash barebox with it, a Documentation patch about how to use the CLI version
> of the tool would be very much appreciated.
>
>

Of course! Even the support for our new boards too! ;-)

> [0]: https://www.st.com/content/ccc/resource/technical/document/application_note/group1/63/b3/70/f6/82/33/4e/5e/DM00589815/files/DM00589815.pdf/jcr:content/translations/en.DM00589815.pd
> [1]: https://www.pengutronix.de/en/services/integration_testing.html
>


Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
