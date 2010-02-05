Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NdSnV-00061v-0h
	for barebox@lists.infradead.org; Fri, 05 Feb 2010 18:20:53 +0000
Date: Fri, 5 Feb 2010 19:20:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100205182045.GB18291@pengutronix.de>
References: <4B6C4678.9060007@tylerlabs.com>
	<20100205174959.GA18291@pengutronix.de>
	<4B6C5C5E.2020208@tylerlabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B6C5C5E.2020208@tylerlabs.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox for leopardboard
To: barebox@tylerlabs.com
Cc: barebox@lists.infradead.org

On Fri, Feb 05, 2010 at 01:58:54PM -0400, Tyler W. Wilson wrote:
> On 2/5/2010 1:49 PM, Sascha Hauer wrote:
>> Hi Tyler,
>>
>> On Fri, Feb 05, 2010 at 12:25:28PM -0400, Tyler W. Wilson wrote:
>>    
>>> I am curious if anybody has done any work on getting barebox running on
>>> the leopardboard, so I do not reproduce effort.
>>>
>>> I am especially interested in setting up a bootloader that directly
>>> supports USB and DFU, so that I do not need to use the UART/serial port.
>>>      
>> I know nothing about the leopardboard, from googling I found out that
>> this is a beagleboard with a camera connected to it, right? Barebox runs
>> on the beagleboard, but unfortunately we do not have USB support for it.
>> You would have to port the usb driver for it, then DFU should work.
>> As a first shot you can compile the beagleboard defconfig and see how
>> far you get.
>>
>> Sascha
>>
>>    
> Unfortunately, it is a little different - it uses a DaVinci DM355  
> processor, which is an ARM9 + custom DSP. The beagleboard uses an OMAP3x  
> of course. Unfortunately, even I am confused on the TI naming scheme as  
> to what is an OMAP versus what is a DaVinci.

Then I'm afraid you have to start porting from scratch. If you're lucky
they share some peripherals.

>
> I will probably do as you suggest - start with the beagleboard configs  
> and also look at the leopardboard code in the ti u-boot repo. Hopefully  
> that will give me enough data to get the basic barebox running.

Experience showed that it's a good way to start barebox from U-Boot as a
second stage loader and add the low level init stuff later.This way you
should be running up quite fast. Feel free to ask further questions
about it.

>
> The USB worries me, since I am just familiar enough with it to know how  
> complex it can be. Time will tell

What kind of controller does this SoC have, EHCI, OHCI?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
