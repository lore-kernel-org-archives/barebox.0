Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyYjo-00013h-3f
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 09:09:21 +0000
References: <20190219120612.728-1-a.fatoum@pengutronix.de>
 <20190219120612.728-3-a.fatoum@pengutronix.de>
 <20190219204233.GA14204@ravnborg.org>
 <7820ced1-0a40-9bad-85ac-f3711161b96a@pengutronix.de>
 <20190220075552.uwkd46bevpdl775t@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6be6c901-8f12-6239-d3f8-0cf1aed3153f@pengutronix.de>
Date: Tue, 26 Feb 2019 10:09:18 +0100
MIME-Version: 1.0
In-Reply-To: <20190220075552.uwkd46bevpdl775t@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>

Hello Sascha,

On 20/2/19 08:55, Sascha Hauer wrote:
> On Tue, Feb 19, 2019 at 10:10:02PM +0100, Ahmad Fatoum wrote:
>> Hello Sam,
>>
>> On 19/2/19 21:42, Sam Ravnborg wrote:
>>> Hi Ahmad.
>>>
>>> On Tue, Feb 19, 2019 at 01:06:10PM +0100, Ahmad Fatoum wrote:
>>>> This is in line with other platforms such as i.MX, which allow
>>>> specifying a debug port. As we can't use port indices because
>>>> the UARTs aren't mapped consecutively, allow specifying a hex
>>>> base at configuration time.
>>>>
>>>> A side effect of this patch is that sama5d4's HAVE_AT91_DBGU2
>>>> is now honored as well. Previously anything besides DBGU0
>>>> defaulted to DBGU1.
>>>
>>> This approch hardcoded the DBGU address based on the configuration.
>>> Can you somehow come up with something that is run-time configured?
>>
>> I think it should remain build-time configurable, to account for cases
>> such as when the designated debug port isn't usable for whatever reason
>> (e.g. its exposed via a USB-to-UART bridge and you want to use a proper
>> UART, because you hate that the disconnection on power cycle..).
> 
> Something like this should work:
> 
> config AT91_DEBUG_DEFAULT_BASE
> 	hex
> 	default 0xfffff200 if AT91_DBGU_AT91RM9200
> 	default 0xffffee00 if AT91_DBGU_AT91SAM9263
> 	default 0xfc069000 if AT91_DBGU_AT91SAMA5D4
> 
> choice
> 	prompt "Choose Lowlevel debug UART"
> 
> config AT91_DBGU_AT91RM9200
> 	bool "AT91RM9200, AT91SAM926[01], AT91SAM9x5, AT91SAM9N12"
> config AT91_DBGU_AT91SAM9263
> 	bool "AT91SAM9263, AT91SAM9G45, ARCH_SAMA5D3"
> config AT91_DBGU_AT91SAMA5D4
> 	bool "AT91SAMA5D4"
> endchoice
> 
> This lets you choose the right one if multiple SoCs are enabled during
> build. Of course it only works if you choose the correct one for the SoC
> you are running on later.

I would like to keep it configurable, i.e. the user can choose which
UART port to choose. Is this ok? 

> 
> Sascha
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
