Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwCgw-00037s-Op
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 21:12:40 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1gwCgv-00071h-8L
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 22:12:37 +0100
References: <20190219120612.728-1-a.fatoum@pengutronix.de>
 <20190219120612.728-3-a.fatoum@pengutronix.de>
 <20190219204233.GA14204@ravnborg.org>
 <7820ced1-0a40-9bad-85ac-f3711161b96a@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <11c78a49-dd9e-50bb-9781-81761672c2b5@pengutronix.de>
Date: Tue, 19 Feb 2019 22:12:35 +0100
MIME-Version: 1.0
In-Reply-To: <7820ced1-0a40-9bad-85ac-f3711161b96a@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ARM: at91: debug_ll: make UART base address
 configurable
To: barebox@lists.infradead.org

Hello,

On 19/2/19 22:10, Ahmad Fatoum wrote:
> Hello Sam,
> 
> On 19/2/19 21:42, Sam Ravnborg wrote:
>> Hi Ahmad.
>>
>> On Tue, Feb 19, 2019 at 01:06:10PM +0100, Ahmad Fatoum wrote:
>>> This is in line with other platforms such as i.MX, which allow
>>> specifying a debug port. As we can't use port indices because
>>> the UARTs aren't mapped consecutively, allow specifying a hex
>>> base at configuration time.
>>>
>>> A side effect of this patch is that sama5d4's HAVE_AT91_DBGU2
>>> is now honored as well. Previously anything besides DBGU0
>>> defaulted to DBGU1.
>>
>> This approch hardcoded the DBGU address based on the configuration.
>> Can you somehow come up with something that is run-time configured?
> 
> I think it should remain build-time configurable, to account for cases
> such as when the designated debug port isn't usable for whatever reason
> (e.g. its exposed via a USB-to-UART bridge and you want to use a proper
> UART, because you hate that the disconnection on power cycle..).
> 
> The hard coded values are just some often applicable defaults.
> 
>> So we can continue towards the goal to have multi-image support
>> for at91.
>> The current approch will limit us to a single type of SOC -
>> and we may try to combine more than one SOC in the same multi-iamge
>> sometime in the future.
>>
>> Maybe each board have to call an debug_ll_init(address) function or similar.
>> If not called we can use the default which is the common address
>> for most at91 SOCs.
> 
> It's a low level debug option, my understanding is that you only enable it
> when one specific entry point fails to load on your board and you need some early
> output to start debugging.
> It shouldn't be kept on by default. Indeed only 6 defconfigs out of 126 ARM defconfigs
> turn it on. (One of them my fresh microchip_ksz9477_evb_bootstrap_mmc_defconfig, oops..)

Thinking about it, I think its ok to leave it on for a bootstrap defconfig. multi-image
and size-constrained first stage bootloaders aren't a good mix anyway.

> 
> For the general task of having a console in PBL, there is pbl_set_putc,
> which boards code could configure.
> 
>> Or maybe something smarter.
>>
>> 	Sam
>>
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
