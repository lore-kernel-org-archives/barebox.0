Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xfg-00039I-Od
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 14:28:24 +0000
References: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
Date: Wed, 26 Feb 2020 15:28:18 +0100
MIME-Version: 1.0
In-Reply-To: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
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

On 2/26/20 12:57 PM, gianluca wrote:
> Hello,
> I was wondering if it possible to program Barebox (2020.01 or later) as first and second stage bootloader using the STM32 Programmer CLI tool.

FSBL is not supported at the moment. We use TF-A for that.

> I have the stm32mp157 evk-dk2 and I would like to have a working bootloader (running from SDRAM) via USB programming.
> 
> I do not know how the OTP Fuses are set for trusted boot or simple SPL.

Not sure how this relates to booting over USB? You shouldn't need any
fuses burnt (but you can probably burn some to stop fallback to DFU)

> I suppose they are TF-A for first stage bootloader and SPL for the second one.
> 
> The images built by Barebox (start_stm32mp157c_dk2.pblb[.stm32] and barebox-stm32mp157c-dk2.img) are suitable to be used as first stage bootloader running from internal SRAM and the .img as the second stage bootloader running from external SDRAM DDR???

No, they aren't. The current barebox implementation doesn't set up SDRAM and doesn't install
a secure monitor.

USB on the STM32MP1 is not yet complete. I posted some basic patches for the PHY, but we still
need host USB driver adjustments and a gadget driver for the DWC2. 

> Is there somebody who is working with STM32 Cube Programmer or DFU-Utils to obtain this boot??

I don't think so. We will want to have a solution for this eventually though. Probably some
wrapper script that uses DFU to talk to BootROM, then to vendor TF-A, then to barebox.

As I understood, that's what the STM32CubeProgrammer is doing and it's shipped with
a FSBL and SSBL already for bootstrapping a system. Have you tried using that to
flash barebox?

Cheers
Ahmad

> 
> Regards,
> Gianluca Renzi


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
