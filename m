Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-1.e-mind.com ([188.94.192.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xxl-0003T9-QN
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 14:47:05 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-1.e-mind.com (Postfix) with ESMTP id E7109849403
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2020 14:46:58 +0000 (UTC)
Received: from submit-1.e-mind.com ([127.0.0.1])
 by localhost (submit-1.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KOZCqT869oJ for <barebox@lists.infradead.org>;
 Wed, 26 Feb 2020 15:46:58 +0100 (CET)
Received: from submit-4.e-mind.com (submit-4.e-mind.com [188.94.192.50])
 by submit-1.e-mind.com (Postfix) with ESMTPS id 96443842D75
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2020 15:46:58 +0100 (CET)
Received: from localhost (unknown [127.0.0.1])
 by submit-4.e-mind.com (Postfix) with ESMTP id 9376183FE05
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2020 14:46:58 +0000 (UTC)
Received: from submit-4.e-mind.com ([127.0.0.1])
 by localhost (submit-4.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8sCTPig9sn6w for <barebox@lists.infradead.org>;
 Wed, 26 Feb 2020 15:46:58 +0100 (CET)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-4.e-mind.com (Postfix) with SMTP id 862D983FE02
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2020 15:46:58 +0100 (CET)
References: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
 <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <88405b89-494c-f510-ecb4-810f8b6e0b91@eurek.it>
Date: Wed, 26 Feb 2020 15:46:54 +0100
MIME-Version: 1.0
In-Reply-To: <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
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

On 02/26/2020 03:28 PM, Ahmad Fatoum wrote:
> Hello,
>
> On 2/26/20 12:57 PM, gianluca wrote:
>> Hello,
>> I was wondering if it possible to program Barebox (2020.01 or later) as first and second stage bootloader using the STM32 Programmer CLI tool.
>
> FSBL is not supported at the moment. We use TF-A for that.

OK, I suppose that.

>
>> I have the stm32mp157 evk-dk2 and I would like to have a working bootloader (running from SDRAM) via USB programming.
>>
>> I do not know how the OTP Fuses are set for trusted boot or simple SPL.
>
> Not sure how this relates to booting over USB? You shouldn't need any
> fuses burnt (but you can probably burn some to stop fallback to DFU)
>

I was trying to say that I didn't know how the fallback is managed DFU 
via serial, usb or whatever or it is managed by some OTP fuses.


>> I suppose they are TF-A for first stage bootloader and SPL for the second one.
>>
>> The images built by Barebox (start_stm32mp157c_dk2.pblb[.stm32] and barebox-stm32mp157c-dk2.img) are suitable to be used as first stage bootloader running from internal SRAM and the .img as the second stage bootloader running from external SDRAM DDR???
>
> No, they aren't. The current barebox implementation doesn't set up SDRAM and doesn't install
> a secure monitor.
>

So I need a simple implementation of a SDRAM setup, a secure monitor 
(TF-A). What do you are using at the moment?

My goals are to setup the SDRAM and the secure monitor via USB (with DFU 
STM32 Cube Programmer), then loading via usb (using the same STM32 Cube 
Programmer) the barebox-stm32mp157c-dk2.img in the external SDRAM addresses.

When barebox is done, it will download from a TFTP server the production 
stuff (SDRAM setup, secure monitor, 
barebox-stm32mp157c-dk2-PRODUCTION.img) and write those stuff into eMMC 
partitions.

> USB on the STM32MP1 is not yet complete. I posted some basic patches for the PHY, but we still
> need host USB driver adjustments and a gadget driver for the DWC2.
>

Using the above procedure the USB support is given only by ROM Code 
written by ST, not by Barebox.

>> Is there somebody who is working with STM32 Cube Programmer or DFU-Utils to obtain this boot??
>
> I don't think so. We will want to have a solution for this eventually though. Probably some
> wrapper script that uses DFU to talk to BootROM, then to vendor TF-A, then to barebox.
>

Having this wrapper script will be great. I will be grateful for the 
rest of my (working) life. ;-P


> As I understood, that's what the STM32CubeProgrammer is doing and it's shipped with
> a FSBL and SSBL already for bootstrapping a system. Have you tried using that to
> flash barebox?
>

Not really. I will check asap. In that way I could run barebox from a 
bootstrapped system using STM32CubeProgrammer FSBL and SSBL and hooking 
at the procedure as explained above.


Thanks a lot

Gianluca Renzi
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
