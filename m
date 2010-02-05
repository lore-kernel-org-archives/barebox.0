Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f223.google.com ([209.85.219.223])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NdSSS-00085I-12
	for barebox@lists.infradead.org; Fri, 05 Feb 2010 17:59:12 +0000
Received: by ewy23 with SMTP id 23so540841ewy.4
	for <barebox@lists.infradead.org>; Fri, 05 Feb 2010 09:59:06 -0800 (PST)
Message-ID: <4B6C5C5E.2020208@tylerlabs.com>
Date: Fri, 05 Feb 2010 13:58:54 -0400
From: "Tyler W. Wilson" <tyler@tylerlabs.com>
MIME-Version: 1.0
References: <4B6C4678.9060007@tylerlabs.com>
	<20100205174959.GA18291@pengutronix.de>
In-Reply-To: <20100205174959.GA18291@pengutronix.de>
Reply-To: barebox@tylerlabs.com
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox for leopardboard
To: barebox@lists.infradead.org

On 2/5/2010 1:49 PM, Sascha Hauer wrote:
> Hi Tyler,
>
> On Fri, Feb 05, 2010 at 12:25:28PM -0400, Tyler W. Wilson wrote:
>    
>> I am curious if anybody has done any work on getting barebox running on
>> the leopardboard, so I do not reproduce effort.
>>
>> I am especially interested in setting up a bootloader that directly
>> supports USB and DFU, so that I do not need to use the UART/serial port.
>>      
> I know nothing about the leopardboard, from googling I found out that
> this is a beagleboard with a camera connected to it, right? Barebox runs
> on the beagleboard, but unfortunately we do not have USB support for it.
> You would have to port the usb driver for it, then DFU should work.
> As a first shot you can compile the beagleboard defconfig and see how
> far you get.
>
> Sascha
>
>    
Unfortunately, it is a little different - it uses a DaVinci DM355 
processor, which is an ARM9 + custom DSP. The beagleboard uses an OMAP3x 
of course. Unfortunately, even I am confused on the TI naming scheme as 
to what is an OMAP versus what is a DaVinci.

I will probably do as you suggest - start with the beagleboard configs 
and also look at the leopardboard code in the ti u-boot repo. Hopefully 
that will give me enough data to get the basic barebox running.

The USB worries me, since I am just familiar enough with it to know how 
complex it can be. Time will tell.

Thank you for your input.

Tyler

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
