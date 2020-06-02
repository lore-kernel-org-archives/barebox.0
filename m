Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailex.mailcore.me ([94.136.40.146])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3g3-0002If-2n
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 09:57:48 +0000
From: "john@mobius-embedded-systems.co.uk"
 <andrew@mobius-embedded-systems.co.uk>
References: <00a601d638be$2f10f330$8d32d990$@mobius-embedded-systems.co.uk>
 <cf5280fe-d0e8-5fc9-bada-e95667ead7f9@pengutronix.de>
 <c52611ab-77d3-540c-2bd4-8959dc811510@pengutronix.de>
In-Reply-To: <c52611ab-77d3-540c-2bd4-8959dc811510@pengutronix.de>
Date: Tue, 2 Jun 2020 10:57:44 +0100
Message-ID: <00e501d638c4$438feea0$caafcbe0$@mobius-embedded-systems.co.uk>
MIME-Version: 1.0
Content-Language: en-gb
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
Subject: RE: Mini UART support for Raspberry Pi CM3 ?
To: 'Ahmad Fatoum' <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

Hi Ahmad

I have been using v2020.05 but I believe I had enabled all consoles so I'll
try setting it to none and see how that goes.

Thanks

John

-----Original Message-----
From: barebox <barebox-bounces@lists.infradead.org> On Behalf Of Ahmad
Fatoum
Sent: 02 June 2020 10:55
To: john@mobius-embedded-systems.co.uk
<andrew@mobius-embedded-systems.co.uk>; barebox@lists.infradead.org
Subject: Re: Mini UART support for Raspberry Pi CM3 ?

On 6/2/20 11:43 AM, Ahmad Fatoum wrote:
> On 6/2/20 11:14 AM, john@mobius-embedded-systems.co.uk wrote:
>> Hi
>>
>> I have been trying to get the mini UART (UART1) to work in Barebox on 
>> the RPI Compute Module 3+.  I already have the changes made in 
>> config.txt and this works fine when I boot into the main Linux code.  
>> However, in Barebox, the output always comes out on the main UART 
>> (UART0) and that is wired to the Bluetooth module on my platform.  I have
tried modifying the device
>> trees and cannot seem to get any output.   I also ensured that I added
the
>> RPI CM3 output target as a config in rpi_defconfig.   
>>
>> I've tried turning off the PL011 config option and also changing the 
>> device tree to reference UART1 and set the chosen stdout-path to 
>> point to this UART, but when I do this I just get a lack of any serial
output.
>>
>> I am also wanting to use the alternate pins (32 & 33) for UART1, so I 
>> am thinking that something else needs to be changed.  Has anyone 
>> managed to get this to work?
> 
> Which barebox version are you on? v2020.03.0 contains a series for 
> mini UART support culminating in ab76f9d09d3b ("ARM: rpi: choose 
> miniuart as stdout"), which sounds like something you will want to have.

Oh, I see now that this is in since v2019.03.0. I assume you are already on
a newer version?

> Also what's you "Console activation strategy"? (Kconfig symbols
> CONSOLE_ACTIVATE_.*) You'll want to have CONSOLE_ACTIVATE_NONE, so 
> only the stdout-path from the device tree is activated by default.
> 
> Cheers
> Ahmad
> 
>>
>> Regards
>>
>> John
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
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


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
