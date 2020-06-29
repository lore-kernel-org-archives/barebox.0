Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jptsE-0000Yy-KE
 for barebox@lists.infradead.org; Mon, 29 Jun 2020 13:31:03 +0000
References: <925732743.424285.1592919941556@mail.vodafone.de>
 <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
 <245646662.425432.1592925096458@mail.vodafone.de>
 <d999acb9-ed34-7b02-42cf-675a152ddee3@pengutronix.de>
 <517310923.70062.1593427992397@mail.vodafone.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <595dc8c8-09c8-81ad-d730-23781e207cbd@pengutronix.de>
Date: Mon, 29 Jun 2020 15:30:59 +0200
MIME-Version: 1.0
In-Reply-To: <517310923.70062.1593427992397@mail.vodafone.de>
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
Subject: Re: reset / watchdog on an imx7d soc
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hello,

On 6/29/20 12:53 PM, Giorgio Dal Molin wrote:
> Hi,
> 
>> On June 29, 2020 at 10:44 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>>
>> Hello Giorgio,
>>
>> On 6/23/20 5:11 PM, Giorgio Dal Molin wrote:
>>> Hi Fabio,
>>>
>>> thank you for your quick reply.
>>>
>>> I've already found the errata you linked in your mail but I had no success
>>> applying the suggestion there; maybe I'm doing it wrong.
>>> Let's take the Option 3 there:
>>
>> Does reset within Linux (with say the imx_v6_v7_defconfg) work?
> 
> No. I see the same behavior also with the kernel: after a 'shutdown -r'
> the system 'goes down' but doesn't reboot, it just hang:
> 
> ~ # shutdown -r
> system is going down for reboot NOW
> ...
> [   46.248222] 000: ci_hdrc ci_hdrc.0: remove, state 1
> [   46.248253] 000: usb usb1: USB disconnect, device number 1
> [   46.248263] 000: usb 1-1: USB disconnect, device number 2
> 
> 
> The same happens if I kill the 'watchdog' process: after ~2 seconds
> the system just hangs.
> 
> I'm sure there must be a solution because the original u-boot bootloader
> for the cpu module I'm using reboots the system as expected, through the wdog1;
> unfortunately it's not so trivial to find what makes the difference.

Linux probably attempts reset via PSCI. Check for psci_system_reset
in your vendor's U-Boot and transplant it into barebox.

> 
> giorgio
> 
> 
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
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
